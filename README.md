
**Branch Management**

**_Creating a new branch_**

* Always create new branch from `development` branch
* Example:

`git checkout development`

`git pull origin development`

`git checkout -b new_branch`


**Deploy a branch to the dev server**
* Merge your new branch with `master` branch
* Example:

`git checkout master`

`git pull origin master`

`git merge new_branch`

`git push origin master`


**Deploy a branch to the production server**
* Merge your new branch with `development` branch
* Then merge `development` branch with `production` branch
* Example:

`git checkout development`

`git pull origin development`

`git merge new_branch`

`git checkout productionn`

`git pull origin productionn`

`git merge development`

`git push origin productionn`
