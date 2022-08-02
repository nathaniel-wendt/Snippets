# Common Git Commands

## Working with Branches
action | command
---|---
View all branches | ```git branch -a```
View all remote branches | ```git branch -r```
View current branch info | ```git status```
Switching branches | ```git checkout <branch-name>```
Create and switch to new local branch | ```git checkout -b <branch-name>```
Delete/Force Delete Local Branch | ```git branch -d <local-branch>``` <br /> ```git branch -D <local-branch>```
Nuke all local changes (revert to mainline) | ```git reset --hard origin/mainline```
Undo last commit (but keep changes) | ```git reset --soft HEAD~1```

## Stashing Changes
action | command
---|---
to stash | ```git stash```
to view | ```git stash list```
most recent | ```git stash apply```
select | ```git stash applly stash@{2}```
delete all | ```git stash clear```
