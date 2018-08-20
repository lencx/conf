# Mac Command

## Common Command

```bash
# 评估禁用
sudo spctl --master-disable

# 评估状态
spctl --status
# assessments enabled
# assessments disabled

# 评估启用
sudo spctl --master-enable

# Current path
# return working directory name
pwd

# format and display the on-line manual pages
man

# List all Mac shells
ls /bin/*sh
# Current shell
echo $SHELL
# Switching shell
chsh -s /bin/zsh
$(which bash)
/bin/zsh --login

# display disk usage statistics
du
# du -hs *
# du -shc *

# line numbering filter
nl

# word, line, character, and byte count
wc

# displays a calendar and the date of easter
cal

# change file access and modification times
touch

#  display the last part of a file
tail

# transfer a URL
curl

# manipulate tape archives
tar

## Create directory
## example:
# mkdir test
mkdir <file name>

## Change current directory
## ..: `up directory`
## example:
# cd test
# cd ..
cd [file path]

## Move files/directory
mv source target

## Copy files/directory
cp -R source_file target_file


## list directory contents
ls

## change file access and modification times
touch [file]
## write arguments to the standard output
echo
## concatenate and print files
cat

## process
## display and update sorted information about processes
top
## terminate or signal a process
kill [pid]

## clear the terminal screen
clear
## ~/.zshrc alias
cls

## ~/.zshrc alias
del [file]

## word, line, character, and byte count
wc [file]

date
time
## displays a calendar and the date of Easter
cal

# process status
ps -A|grep <name>
```

## [Set locale terminal setting on Mac OS X](http://webplay.pro/linux/set-locale-terminal-settings-mac-os-x.html)

```bash
# run
locale

# output
LANG=
LC_COLLATE="C"
LC_CTYPE="UTF-8"
LC_MESSAGES="C"
LC_MONETARY="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_ALL=

######
# vi ~/.zshrc
export LC_ALL=en_US.UTF-8

# run
locale

# output
LANG="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
```