# Getting-Started-with-the-Linux-Command-Line
course link: https://app.pluralsight.com/library/courses/getting-started-linux-command-line/table-of-contents

course: https://app.pluralsight.com/player?course=getting-started-linux-command-line&author=david-clinton&name=9b4f83c0-61e7-49a3-aec9-a46b1f2c1836&clip=0&mode=live

--------------------------

man wget
wget wordpress.org/latest.tar.gz
sudo apt install man-db
sudo apt update

sudo apt install info
info
info wget examples simple

cd /usr/share/doc/wget
ls
less README
clear

wget --help
wget --help | less
type wget


----------------------

ls -a
less .bashrc

ssh ubuntu@10.0.70.110
less .profile

less /etc/profile


cat /etc/passwd

--------------

ls --all

man ls

ip addr
ip s

ls -l
ls -lh
ls -lht

ls -l /etc

tar xzf zipfile.tar.gz (to unzip)

cd (home directory)

ls -a

history

touch this is my story (crete four directory)

rm * (remove all)

touch "this is my story" (create single directory)

touch another\ four\ word\ name

touch another-four-word-name


---------------------

pwd

mkdir

nano file1 (ctrl + x and y to save)

touch file2

cp file1 newdata/  (Single file copy)
cp file* newdata/ (called globbing... series of files copy)


rm file? 

rm file*

mv ../file* .

rm *

rmdir

--------------------------

locate filename (search quickly)
sudo updatedb (update index)

sudo nano /etc/adduser.conf

cat /var/log/syslog

cat /etc/group | grep ubuntu
cat /etc/group | grep ubuntu > newfile (overwrite)
cat /etc/group | grep ubuntu >> newfile (append)


head /etc/group
tail /etc/group

cut -d: -f3 /etc/group
cut -d: -f3 /etc/group sort -n
cut -d: -f3 /etc/group sort -rn

wc /etc/group (word count)

mysql -u root -p < mydatabase.sql

echo "Hello"
echo "Hello" >> myfile.txt
cat myfile.txt

wget pluralsight.comm
wget pulralsight.comm 2> errorfile.txt
cat errorfile.txt


----------------------------------

.tar.gz

tar xzf latest.tar.gz (unzip)

tar czf newarchive.tar.gz wordpress/ (zip)

tar cf largearchive.tar wordpress/
ls -l
gzip largearchive.tar
ls -l

wget themezipfileUrl
unzip akismet.4.1.zip

zip newname.zip * (zip)

-------------------------------------

PERIPERRALS 
lsusb (for usb devices)
lspci (pci slots)

sudo lshw 

sudo lshw > lshw-output (to text file to read)
less lshw-output

ls /lib/modules/ (kernel modules)
uname -r (which is running right now)


ls /lib/modules/`uname -r`

cd /lib/modules/`uname -r`/kernel
cd sound
ls
lsmod | grep sound
modprobe soundcore

------------------------------------------

ip route show

sudo dhclient

ip addr

route

ifconfig

netstat -i
netstat -l

ss -i

-------------------------------------------

host jamilxt.com

ping jamilxt.com

ping 8.8.8.8

cat /etc/resolv.conf

systemd-resolve --status

sudo nano /etc/hosts

-------------------------------------------

OPENssl Tool

cd /etc/ssh
ls
sudo nano ssh_config
sudo nano sshd_config

ssh ubuntu@10.0.31.131
exit

ssh -p 2222 ubuntu@10.0.31.131

ssh -i /home/username/mykeyfile.pem ubuntu@10.0.31.131 (amazon EC2 platform)
exit

SCP = Secure Copy

scp update-local.sh ubuntu@10.0.31.131:/home/ubuntu
then type password...
update-local.sh (result)


----------------------------------------------

Bash Scripting

nano myscript.sh
ls
./myscript.sh (permission denied)
chmod +x myscript.sh
./myscript.sh (run successfully)

code:
#!/bin/bash
declare -i number1
declare -i number2
declare -i total
echo "What's your favorite number?"
	read number1
echo "What number do you really hate?"
	read number2
total=$number1*$number2
	echo "Aha! They equal " $total
exit 0
----------------------------------------------

theloop.sh
code:
#!/bin/bash
for i in {0..10..2}
	do
		echo "We've been through this $i times already!"
	done

----------------------------------------------

touch file1 file2 file3

newloop.sh
code:
#!/bin/bash
for filename in file1 file2 file3
	do
		echo "Important stuff" >> $filename
	done

----------------------------------------------

colors.sh
code:
#!/bin/bash
echo "What's your favorite color?"
read text1
echo "What's your best friend's favourite color?"
read text2
	if test $text1 != $text2; then
		echo "I guess opposites attract."
	else
		echo "You two do think alike!"
	fi
exit 0

----------------------------------------------

counter.sh
code:
#!/bin/bash
declare -i counter
counter=10
	while [ $counter -gt 2 ]; do
		echo The counter is $counter
		counter=counter-1
	done
exit 0

----------------------------------------------

weather.sh
code:
#!/bin/bash
echo "What's tomorrow's weather going to be like?"
read weather
	case $weather in
		sunny | warm )	echo "Nice! I love it when it's " $weather;;
		cloudy | cool ) echo "Not bad..." $weather" is ok, too";;
		rainy | cold ) echo "Yuk!" $weather " weather is depressing";;
		* ) echo "Sorry, I'm not familiar with that weather system.";;
	esac
exit 0

----------------------------------------------


resource: https://bootstrap-it.com/linux-cli

























