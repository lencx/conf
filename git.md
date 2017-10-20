# Git

## Command

```bash
git init
# git add -A
git add .

# git commit -a -m "first commit" (add && commit)
git commit -m "first commit"
git remote add origin git@github.com:lencx/test.git
git pull
git push -u origin master
git push --force

git status
git diff
git merge

git reset --hard <sha1>
```

### Branch

```bash
git branch
git branch -d <branchname>
# forced to delete
git branch -D <branchname>

git checkout
git checkout -b <branchname>
```

### Tags

```bash
git tag
git tag -a v1.0 -m "my version 1.0"
git show v1.0
git push origin <tagname>
git push origin --tags
# delete tag
git tag -d <tagname>
git push origin :refs/tags/<tagname>
```

## .gitconfig

```.gitconfig
[user]
      name = Len
      email = cxin1314@gmail.com
[alias]
      st = status
      ci = commit
      co = checkout
      br = branch
      df = diff
      lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
      last = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -1 HEAD
[core]
      editor = emacs
```