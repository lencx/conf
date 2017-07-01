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

# display disk usage statistics
du
# du -hs *
# du -shc *

# display and update sorted information about processes
top

# line numbering filter
nl

# concatenate and print files
cat

# word, line, character, and byte count
wc

# displays a calendar and the date of easter
cal

# change file access and modification times
touch