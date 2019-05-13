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
