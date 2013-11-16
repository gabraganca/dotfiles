# Config files

This is a repo to keep my ``.*rc`` and other config files versioned.
This helps if I am working in more than one computer (work + home + travel notebook).
With this, I am sure that I am running the same stuff everywhere.

Just clone it to some directory and copy files to your home to try them out.
**Don't forget to backup your personal files before!**

# Subtree

This repo uses `git subtree` to manage external dependecies.
Gustavo from the future, you do not remember subtree, here is a quick cheatsheet of how 
to use it.

To add a new subtree:

`git remote add -f remote_name remote_path`

`git subtree add --prefix path_where_repo_goes remote_name branch --squash`

Now **remember**, separate what you commit to the subtree and to the main repo!
If you are contributing to a subtree, commit the changes and make a push to that subtree:

`git subtree push --prefix=path_where_repo_goes remote_name branch`

And to pull changes from a subtree remote:

`git fetch remote_name branch`

`git subtree pull --prefix path_where_repo_goes remote_name branch --squash`

See [this post](http://blogs.atlassian.com/2013/05/alternatives-to-git-submodule-git-subtree/) for more info.
