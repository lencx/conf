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