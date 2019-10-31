#!/usr/bin/perl -w

# hash
%days = ("Sun" => "Sunday",
         "Mon" => "Monday",
         "Tue" => "Tuesday",
         "Wed" => "Wednesday",
         "Thu" => "Thursday",
         "Fri" => "Friday",
         "Sat" => "Saturday");

# accessing individual components of a hash
print $days{"Sat"}, "\n";
print $days{"Fri"}, "\n";
# print $days{"dog"};
# print $days{0};

# inserts a new key (key,value)
$days{"Ahad"} = "hari cuti";
print $days{"Ahad"}, "\n";

#replaces value for key "Sun"
$days{"Sun"} = "weekend";
print $days{"Sun"}, "\n";