#!/usr/bin/perl -w

%hari = (1 => "Ahad",
         2 => "Isnin",
         3 => "Selasa",
         4 => "Rabu",
         5 => "Khamis",
         6 => "Jumaat",
         7 => "Sabtu");

# print satu-satu
# print "Print satu-satu:\n";
# print $hari{1}, "\n";
# print $hari{2}, "\n";
# print $hari{3}, "\n";
# print $hari{4}, "\n";
# print $hari{5}, "\n";
# print $hari{6}, "\n";
# print $hari{7}, "\n";

# print guna loop
# print "Print guna loop:\n";
# foreach $keys (keys %hari) {
#     print "$keys => $hari{$keys}\n";
# }
# data akan keluar berterabur sebab fungsi hash tu sendiri
# (aku pun tak paham, mungkin kena tengok implementasi fungsi tu sendiri)

# print "Nak tengok isi hash ada beberapa cara:\n";
# foreach $key (keys %hari) {
#     print "($key, $hari{$key})\n";
# }

# foreach $val (values %hari) {
#     print "(?, $val)\n";
# }

while (($x, $y) = each %hari) {
    print "($x, $y)\n";
}