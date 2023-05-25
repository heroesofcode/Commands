#!/bin/bash

echo "                                                                            █████        
                                                                           ░░███         
  ██████   ██████  █████████████   █████████████    ██████   ████████    ███████   █████ 
 ███░░███ ███░░███░░███░░███░░███ ░░███░░███░░███  ░░░░░███ ░░███░░███  ███░░███  ███░░  
░███ ░░░ ░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███   ███████  ░███ ░███ ░███ ░███ ░░█████ 
░███  ███░███ ░███ ░███ ░███ ░███  ░███ ░███ ░███  ███░░███  ░███ ░███ ░███ ░███  ░░░░███
░░██████ ░░██████  █████░███ █████ █████░███ █████░░████████ ████ █████░░████████ ██████ 
 ░░░░░░   ░░░░░░  ░░░░░ ░░░ ░░░░░ ░░░░░ ░░░ ░░░░░  ░░░░░░░░ ░░░░ ░░░░░  ░░░░░░░░ ░░░░░░  
                                                                                         
                                                                                         
 "

echo "Welcome to commands"
echo "Commands was written in Shell Script to make everyday linux commands easier"
echo "João Lucas"
echo "
===============================================================================================
"

echo "Choose one of these options:"
echo "----------------------------"
echo "1 - List commands"
echo "2 - Exit"
echo "----------------------------"

function option_one() {
   echo "======================================================================================"
   echo "1 - ifconfig"
   echo "2 - apt update"
   echo "3 - list all files and their permissions"
   echo "4 - create folder"
   echo "5 - create archive"
   echo "6 - setup permissions"
   echo "7 - install package"
   echo "8 - Check version Kernel"
}

function validation_options() {
   read options
   echo "You chose the option $option"

   if [ "$options" == "1" ]
   then
   option_one

   elif [ "$options" == "2" ]
   then
   echo "Opcao 2"

   else
   echo "Option not exit"
   fi
}

validation_options
