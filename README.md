This is a base directory for the storage of ruby related projects that I have discovered for the purposes of testing.  Many of these will not be of any interest to anyone else.

In pulling this down, you probably won't want the entire repository but will rather want a single project.  Each project is in it's own directory and can but pulled with a git sparse checkout.

from: https://stackoverflow.com/questions/600079/how-do-i-clone-a-subdirectory-only-of-a-git-repository.

```
mkdir <repo>
cd <repo>
git init
git remote add -f origin https://github.com/bowdena/rubySamples.git
git config core.sparseCheckout true
echo "projectname/" >> .git/info/sparse-checkout
echo "someother/project" >> .git/info/sparse-checkout
git pull origin master
