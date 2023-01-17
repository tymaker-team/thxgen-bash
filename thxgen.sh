#!/bin/sh
printf "Welcome to thxgen.sh! \033[1;31mplease\033[0m do not input a/an in any of the questions.\n"
read -p "Who are you writing to? " one
read -p "What gift did you get from $one? e.g.: 'shirt' " two
read -p "What kind of party did you invite $one to? e.g.: baby shower " thr
read -p "What is your name? " fou
read -p "What is this person to you? e.g.: parent " fiv
read -p "How would you describe your $fiv $one? e.g.: nauseating " six
read -p "What do you like doing with $one? e.g.: coding Bash " sev
read -p "Here is your letter so far. Press enter." forget
printf "Dear $one,\nThank you so much for getting me my $two. Thank you for coming to my $thr. I enjoy $sev with you. You are a $six $fiv!\nFrom,\n$fou\n"
read -p "Save to file? (y/n) " saveyorn
if [ $saveyorn = "y" ]
then
read -p "Enter filename. " filename
printf "Dear $one,\nThank you so much for getting me my $two. Thank you for coming to my $thr. I enjoy $sev with you. You are a $six $fiv!\nFrom,\n$fou\n" > $filename
printf "Saved to $filename."
elif [ $saveyorn = "n" ]
then
exit
fi
