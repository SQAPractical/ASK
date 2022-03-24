*HOW TO PUSH YOUR CHANGES TO GIT HUB*

1. Cut your own branch from `master` locally, typing:
    `git checkout -b name_of_your_branch`
    and create remote copy
    `git push --set-upstream origin name_of_your_branch`
    The name of your local branch must match the name of your remote branch.
    Example (You can see in terminal):
    `* [new branch]      nik -> nik`

2. Type `git branch` to verify that you created the branch
    (your currently branch will appear in green)

    ----
3. Make your changes

    ----                        

4.  Run `git status` - your changes will appear in red

5. Add ALL your changes to staging by typing `git add .`

    OR

   To add some of the changes, instead `git add .` you can assign path to the file
    you want to commit after adding
    Example: `git add /Users/sofia/IdeaProjects/AssessmentControl/src/test/resources/features/1.ObjectsPropertiesMethods/firstTest.feature`
6. Type `git status` to check that you added all the changes
    (they will be shown in green)

7. To add your changes from stage to your branch, type `git commit -m "your_message_explaining_what_you_modified"`

8. Switch to master to update code on master branch
    Type:  `git checkout master `
     And then: `git pull`

9. Switch to your branch again
    Type `git checkout name_of_your_branch`

10. Type `git merge master` to make sure there won't be any conflicts in your future pull request.

11. Run project to double check if it is not broken (if you fixed something, you need
to commit changes one more time)

12. If there are no conflicts, you can push to github.
    Being on your branch, type `git push`

13. Once you collected all the changes on your remote branch,
    you can go ahead and create a Pull request on GitHub.

14. Switch to local master to update it `git checkout master`, and `git pull`

15. Then switch to your branch `git checkout your_branch_name`

16. And update your branch `git merge master`
(With this command you will take changes from your local master and copy it to your branch)
    
Repeat steps 3-16 for each complete task
