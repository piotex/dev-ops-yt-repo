current_datetime=$(curl -s "http://worldtimeapi.org/api/timezone/Europe/Warsaw" | grep -oE '"datetime":"[^"]+"' | cut -d'"' -f4)
date -s "$current_datetime"

#### one liner ;) ####
sudo date -s $(curl -s "http://worldtimeapi.org/api/timezone/Europe/Warsaw" | grep -oE '"datetime":"[^"]+"' | cut -d'"' -f4)
######################
