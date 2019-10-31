#!/usr/local/bin/perl -w

$count = 0;
$filename = 'snapshot';
$cmd = $ARGV[0] or die "usage: $0 <load || save>";

### save
if ($cmd eq 'save') {
    for $file (glob ".$filename.*") { # checking to see if snapshots already exist, increment count if so
        if ( -e $file and -d $file) {
            $count++;
        }
    }
    
    mkdir ".$filename.$count"; # making a new dir with the new incremented count
    
    foreach $files (glob "*") {
        next if $files =~ m/^\.[A-Za-z]+.*$/; # ignore files starting with period
        next if $files =~ m/snapshot\.pl/; # ignore itself
        
        open $fh, "<", $files or die "$0: could not open file: $!"; # open file for reading
        open $anotherfh, ">", (glob ".$filename.$count/$files") or die "$0: $!"; # open file for writing, creates file if it does not exist

        while ($line = <$fh>) {
            print $anotherfh "$line"; # printing contents of $fh into $anotherfh
        }

        close $fh;
        close $anotherfh;
    };
    
    print "Creating $filename $count\n";
### load
} elsif ($cmd eq 'load') {
    for $file (glob ".$filename.*") { # literally just copying and pasting from above
        if ( -e $file and -d $file) {
            $count++;
        }
    }
    
    mkdir ".$filename.$count";
    
    foreach $files (glob "*") {
        next if $files =~ m/^\.[A-Za-z]+.*$/;
        next if $files =~ m/snapshot\.pl/;
        
        open $fh, "<", "$files" or die "$0: could not open file: $!";
        open $anotherfh, ">", (glob ".$filename.$count/$files") or die "$0: $!";

        while ($line = <$fh>) {
            print $anotherfh "$line";
        }

        close $fh;
        close $anotherfh;
    };
    
    print "Creating $filename $count\n";
    
    ### load functionality starts here ###
    $n = $ARGV[1] if (defined $ARGV[1]) or die "usage: $0 load <snapshot-number>"; # grabbing the number n from command-line
    
    foreach $files (glob "*") {
        open $snapshot, "<", (glob ".$filename.$n/$files") or die "$0: $!";
        open $curr, ">", $files or die "$0: could not open file: $!";
        
        while ($line = <$snapshot>) {
            print $curr "$line";
        }
        
        close $snapshot;
        close $curr;
    };
    
    print "Restoring $filename $n\n";
};


