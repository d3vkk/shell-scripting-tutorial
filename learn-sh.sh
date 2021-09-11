#!/bin/bash

#How to declare a hello world. This is how to make a comment
echo "Hello World!"

myname="Best Programmer"
#outputs the variable 'name'. Note: '$' sign only comes after the declaration 
echo "I am the $myname and this a test to show the functions"

# To put in an extra line
echo
#To make a constant variable. Note: no space before and after the equal sign
declare -r num1=23
#a number variable declaration
num2=44
#basic arithmetic functions
num3=$((num1+num2))
num4=$((num1-num2))
num5=$((num1*num2))
num6=$((num1/num2))
num7=$((num1%num2)) #modulus(remainder)
num8=$((num1**num2)) #squaring num1 with num2 

echo "$num3 ,$num4 ,$num5 ,$num6 ,$num7"

#Note i+=2 is the same as i = i + 2. The same goes for other variables the rest of the arithmetic functions

num9=99
let num9+=1 #you can use 'let' if you want. When you do don't use the '$' sign
echo "$num9"

num10=7
num11=99
echo "With Spaces: =$(( ++num10 ))" 
echo "Without spaces: =$((++num11))" #Note: having or not having spaces doesn't make any difference

#Using increments and decrements
num12=1
num13=2
num14=3
num15=4
echo "$((num12++))" #Increment is made AFTER the output #You can make an expression in the output
echo "$((++num13))" #Increment is made BEFORE the output
echo "$((num14--))" #Decrement is made AFTER the output
echo "$((--num15))" #Decrement is made BEFORE the output


#Using Floating Point Values i.e. Numbers with Decimals
num16=3.4
num17=6.5
num18=$(python -c "print $num16 + $num17") #S long as python (the programming language) is installed, its commands can be run from the terminal
echo "Using Python (programming language) to add two numbers: $num18"

#Prints text verbatim (as it sees it)
cat<< END
Thats The End Of Part 1, Moving On to Part 2
IGNORE THIS :#This comment doesn't work 
END
echo 
echo # To put in more extra lines
#Using Functions
getDate(){ #Name of function
date #gets the current date & time
return
}

getDate # Prints out the date

name="Walter" #Global Variable can be accessed outside the function
echo "$name" #Note: This works just as well as 
echo $name #This

LocalVar(){
 local name="Churchill" #Local variable can only be accessed within the function 
return
}

Localvar

getSum(){

 local num1=$2 #Note that the program ignores these repeated variables as they're local 
 local num2=$2

 local sum=$((num3+num4))
 
 echo $sum
}

num19=1
num20=1

sum=$(getSum num19 num20)
echo "The sum is $sum"

#NOT UNDERSTOOD ALL THE ABOVE -RESEARCH INTO PASSING VALUES USING FUNCTIONS IN SHELL SCRIPTING

#Using Conditional Statements
#Declares the string then 'name' stores the input. '-p' indicates it's a string
read -p "Hello tutee, What is your name?" name  
 
read -p "Hello $name, do you like this tutorial so far (Answer with a number from 1 to 10)" opinion 

echo 
#Note: '-gt' - greater than; '-lt' - lesser than; 'ge' - greater than or equal to; '-le' - lesser tahn or equal to; '-eq' - equal to; '-ne' - not equal to
#Also: == - equal to; != - not equal to; < -less than; > -greater than; <=  -less than or equal to; >= -greater than or equal to
if [ $opinion -ge 9 ] #Has to be spaced out like this
then
 echo "Really Glad You Like It! ^_^ "
elif [ $opinion -eq 8 ] #Else If 'opinion' is equal to 8, then do command 
then
 echo "Glad You Like It! ^_^ "
elif (($opinion == 7)); #Another way of doing the same, also has to be spaced out like this
then
 echo "Really! Only A 7?? :-("
else
 echo "*crickets*"
fi #close out with this every time

#Checks for even & odd numbers
if (( (($opinion % 2)) == 0 ))
then
 echo "An Even Number" 
else 
 echo "An Odd Number"
fi

#Using Conditional Operators
#Note: && - AND; || - OR; ! - NOT
if (($opinion < 0))&&(($opinion > -10))
then
 echo "WHAAAAAAT!! A NEGATIVE!! =-O"
fi

#An example of a shell script using the conditional opertaors
#Checks to see if directory is present, if not, makes one....

#[ -d ~/testfilefolder/ ] || mkdir ~/testfilefolder/ #spacing before & after the square brackets is necessary

#Creates a file in the directory & opens it up for editing

#touch ~/testfilefolder/testfile.txt && vim ~/testfilefolder/testfile.txt

#Using strings
str1=""
str2="Sad"
str3="Happy"

#Checking to see whether a string is not null/empty
if [ "$str1" ]; #Has to have a semicolon at the end
then 
 echo "This string is not null (empty)"
else
 echo "This string is null (empty)"
fi

#Checking to see whether a string has a value
if [ -z "$str1" ];
then
 echo "This string has no value"
else
 echo "This string has a value"
fi

#Comparing the value of two strings
if [ "$str2" == "$str3" ];
then
 echo "These two strings are similar"
else
 echo "These two strings are not similar"
fi
#Checking the alpahbetical order of two strings
if [ "$str2" < "$str3" ];
then
 echo "The first string is greater than the second string"
elif [ "$str2" > "$str3" ];
then
 echo "The first string is lesser than the second string"
fi

#RESEARCH THE LAST ONE ABOVE. THE ONE FOR THE ALPHABETICAL ORDER


#Using files
file1="./file1.txt" #Create these files first & ensure they're readeble by using the 'chmod' command
file2="./file2.txt"

#Checking to see whether the file exists
if [ -e "file1" ];
then 
 echo "file1.txt exists"
else
 echo "file1.txt doesn't exist"
fi
#Note: -f -normal file?; -r -readable file?; -w -writable file?; -x -executable file?; -d -directory?; -L (capital) -symbolic link; -p -named pipe?; -S (capital) -network socket?; -G (capital) -is the file owned by a group?; -O (capital) -is the file owned by a userid?;    

cat<< END
Refer to the source code for more & better details 
END

