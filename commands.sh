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
   echo "========================================="
   echo "1 - ifconfig"
   echo "2 - apt update"
   echo "3 - list all files and their permissions"
   echo "4 - create folder"
   echo "5 - create archive"
   echo "6 - setup permissions"
   echo "7 - install package"
   echo "8 - check version kernel"
}

function validation_option_one() {
   echo "--------------------------"
   echo "Choose one of these options:"

   read options

   if [ "$options" == "1" ]
   then
   echo "----ifconfig----"
   echo ""
   ifconfig

   elif [ "$options" == "2" ]
   then
   echo "----apt update----"
   echo ""
   sudo apt-get update

   elif [ "$options" == "3" ]
   then
   echo "----list all files and their permissions----"
   echo ""
   ls -la

   elif [ "$options" == "4" ]
   then
   echo "----create folder----"
   echo ""
   echo "What will the name of your folder be?"

   read folder
   mkdir $folder

   elif [ "$options" == "5" ]
   then
   echo "----create archive----"
   echo "What will the name of your archive be?"

   read archive
   touch $archive

   elif [ "$options" == "6" ]
   then
   echo "----setup permissions----"
   echo "Permission:"
   read permission
   echo ""

   echo "Archive:"
   read archive
   echo ""

   chmod $permission $archive

   elif [ "$options" == "7" ]
   then
   echo "----install package----"
   echo "Package name:"

   read package
   sudo apt-get install $package

   elif [ "$options" == "8" ]
   then
   echo "---check version kernel---"
   uname -r

   else
   echo "Option not exit"
   fi

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
   echo "Bye Bye!"
   fi
}

validation_options
validation_option_one
