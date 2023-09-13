# Common Git Commands

## Working with Branches
action | command
---|---
View all branches | ```git branch -a```
View all remote branches | ```git branch -r```
View current branch info | ```git status```
Switching branches | ```git checkout <branch-name>```
Create and switch to new local branch | ```git checkout -b <branch-name>```
Create branch from another branch | ```git checkout -b <new-branch> <existing-branch>```
Delete/Force Delete Local Branch | ```git branch -d <local-branch>``` <br /> ```git branch -D <local-branch>```
Nuke all local changes (revert to mainline) | ```git reset --hard origin/mainline```
Undo last commit (but keep changes) | ```git reset --soft HEAD~1```
Revert 'Undo last commit' | ```git reset --soft HEAD@{1}```

## Stashing Changes
action | command
---|---
create a stash | ```git stash```
view all stashes | ```git stash list```
apply most recent (keep stash) | ```git stash apply```
apply most recent (delete stash) | ```git stash pop```
apply a specific stash | ```git stash apply stash@{2}```
delete all | ```git stash clear```

## Making Commits
action | command
---|---
stage a single file | ```git add myFile.js```
stage all files | ```git add .```
unstage all files (keep changes) | ```git reset```
unstage a file (keep changes) | ```git restore --staged myFile.js```
unstage a file (delete changes) | ```git restore myFile.js```
create commit | ```git commit```
create commit (shorthand) | ```git commit -m "your commit title"```
save commit message (vim) | ```:wq```
abort mid message (vim) | ```:cq```


---
## Permanently remove commits from your remote branch

⚠️ only do this if nobody has checked out your code
1. checkout your local branch ```git checkout <branch-name>```
2. use ```git log``` to copy the commit hash
3. delete the commit ```git reset --hard <sha>```
4. push your change to remote ```git push --force```

If you want to delete your latest commit use the shorthand:
1. checkout your local branch ```git checkout <branch-name>```
2. delete the latest commit ```git reset --hard HEAD^``` (```HEAD~2``` for last 2 commits, etc.)
3. push your change to remote ```git push --force```

### Resources
- [Common Git commands every tester should know](https://devqa.io/git-cheat-sheet-for-testers/)
- [Practical guide to using the git stash command](https://opensource.com/article/21/4/git-stash)
- [Git Commit Best Practices](https://gist.github.com/luismts/495d982e8c5b1a0ced4a57cf3d93cf60)
