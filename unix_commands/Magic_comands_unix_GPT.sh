#Finde all the elements fron 350 to 400 and give the total size

find . -type f -name 'fa_ees_1deg_*.cdf*' | grep -E 'fa_ees_1deg_([3][5-9][0-9]|400)\.cdf' | xargs du -ch | grep total$

#to zip files in the same range of the pattern
zip /Users/alberto/idl/cdf_1d_zip/cdf_350_400.zip $(find . -type f -name 'fa_ees_1deg_*.cdf*' | grep -E 'fa_ees_1deg_([3][5-9][0-9]|400)\.cdf')
#did not work

#Try2
find . -type f -name 'fa_ees_1deg_*.cdf*' | grep -E 'fa_ees_1deg_([3][5-9][0-9]|400)\.cdf' | xargs -I {} sh -c 'zip -j /Users/alberto/idl/cdf_1d_zip/cdf_350_400.zip "$@"' _ {}
#Worked

find . -type f -name 'fa_ees_1deg_*.cdf*' | grep -E 'fa_ees_1deg_([1-4][0-9][0-9][0-9])\.cdf' | xargs -I {} sh -c 'zip -u /Users/alberto/idl/cdf_1d_zip/cdf_350_4999.zip "$@"' _ {}

screen: command to run somenthing on the background
screen -S session_name #starts anew session with the name session name
screen -r session_name returns to the process running on screen named session_name

ctrl + a and d will detach the session
 
#enter a suspended job whit id number = id

fg %id

#Count the number of files in a directory
ls -1 | wc -l # vertical bar to combine commands


#Know the optons of a command on Shell
windows: command --help
unix: man command

#ABSOLUTE PATH
#PAth of any element from the root directory
#use TAB to complete paths when navigating the system
#use tilde to refers to home directory
cd - #same as back
mkdir -p path #create a directory with nested subdirectories
#On bash for Git, nano text editor.

touch filename #create an empty file

rm -i filename #receive a prompt before removing filename file or directory
cp -r director_in directory_out #copy full directory
rm -r dirname #recursive option allows to remove directories

#wildcards

?patttern #Exactly the pattern

wc -l pattern #count lines oc archives with a pattern

$ wc -l *.pdb > lenghts.txt #saves the lenghts of archive with pdb format in the file lenghts.txt
head filename #print first ten lines
head -n number filename #print the first number lines of filenames
tails #similar as head but with the end of the file
sort -n filename #organized by numbers on filename
echo #like print
echo text > filename #write on the first line
echo text >> filename #append textlines


#LOOPS ON BASH

for thing in list_of_things

do

proccedure


done

#when using the indexation variable remember to put $ before. Then $thing will be the right way to call the variable inside the loop

#RANGES
{initial..final}

#lOOPS ALSO WORK ON A SINGLE LINE
#Separate things by ;


#SAVE TO SCT or sh (shell commands file):saving command to a single file, may be helpful to save all the scripts that we are/were using

bash filename.sh #way to call the 

"$#" #number of variable to consider. This number must be according to the order the variables are input when the command is called

command.sh 1 2 3.....

#saving history of commands used
history #shows the history, and can be saved with the resources showed

#TO EXPLORE
sort

#to replace on vim
:line_i,line_fs/text to find/text to replace/g

#replace with % the frist two lines for doing it in the whole document

#delete between line l_i and l_f
:l_i,l_f,d

#get ip addres LAN
ipconfig getifaddr en0

#get ip address wireless
ipconfig getifaddr en1

#list only directories
ls -d /*

#on VIM number of coincidences of a pattern
:%s/pattern//gn

#on vim to read all lines of other document
:r path_to_the_other_document

#to transfer from git bash to m468 example with pdf
$scp -o KexAlgorithms=+diffie-hellman-group1-sha1 '8601notes5 2024.pdf' Alberto@128.101.218.50:/Users/alberto/

#supposely to get something form clayton
$pscp Alberto@128.101.218.50 /Users/clayton/idl/facs/src/go_fac/writeup.pdf C:\Alberto\documentos\Work_UMN_Solar_wind\FAC\clay_writeup.pdf

$scp -o KexAlgorithms=+diffie-hellman-group1-sha1 '8601_notes5_2024.pdf' Alberto@128.101.218.50:/Users/alberto/

#to get something from my directory

#supposely to get something form clayton
$pscp Alberto@128.101.218.50:/Users/alberto/idl/fac/go_fac.md go_fac.md