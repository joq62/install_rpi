#!/bin/bash
#cd /home/ubuntu
sudo erl -pa ebin -pa controller_app/ebin -sname controller -s boot_controller start -setcookie cookie_test
#-detached
echo Ok There you go!
