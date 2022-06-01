#!/bin/bash

tput clear
tput bold
tput cup 0 15
echo Please tell me hopw your day is going
tput cup 1 10
echo 1 - terrible
tput cup 2 10
echo 2 - not great
tput cup 3 10
echo 3 - so-so
tput cup 4 10
echo 4 - fairly good but nothing special
tput cup 5 10
echo 5 - amaziong, excellent

tput bold
tput cup 7 15
read -rsn1 -p "Enter your choice, 1-5" choice

tput cup 10 15

returnMsg()
{
 if [ $choice = 1 ]; then
  tput setaf 1
  figlet -c -f poison Dumpster Fire
elif [ $choice = 2 ]; then
  tput setaf 5
  figlet -c -f doh What the Hell??
elif [ $choice = 3 ]; then
  tput setaf 3
  figlet -c -f dotmatrix Feels a bit chilly
elif [ $choice = 4 ]; then
  tput setaf 4
  figlet -c -f epic Sunshine and Roses
elif [ $choice = 5 ]; then
  tput setaf 2
  figlet -c -f lean Walking on Clouds
else
  tput setaf 1
  figlet -c -f cyberlarge Directions can be tough to follow, please try again
fi
}

returnMsg
