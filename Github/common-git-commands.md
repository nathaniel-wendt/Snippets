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
Reverting 'Undo last commit' | ```git reset --soft HEAD@{1}```

## Stashing Changes
action | command
---|---
to stash | ```git stash```
to view | ```git stash list```
apply most recent | ```git stash apply```
select specific | ```git stash apply stash@{2}```
delete all | ```git stash clear```

---
When making changes to my local `.gitignore`, run the following to prevent it from showing in staged changes:
```
git update-index --skip-worktree <file_name>
```
If I ever need to undo this, I can run:
```
git -update-index no-skip-worktree .gitignore
```
