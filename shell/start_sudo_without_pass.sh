#!/usr/bin/expect


# This script is need to install spawn


set passwd "123456"

cd ~/software/dowsDNS-master
spawn sudo python run.py
expect {
	#当上一个提示语的最后一行匹配到“Password”关键字则执行send命令，并且
    "Password" {
        send "$passwd\n"
        interact
    }
}
