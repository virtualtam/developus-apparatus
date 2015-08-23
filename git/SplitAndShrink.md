# Split and shrink a repository
Ever wanted to split a repository into several parts, yet keep the corresponding
commit histories?

## Procedure
_Note: this is a copy of a memo, it needs to be rewritten for clarity_

```bash
# first, clone the original repository
git clone REPO REPO2
cd REPO2

# remove all unneeded files from this version
git filter-branch -f --prune-empty --index-filter "git rm --cached --ignore-unmatch FILES_AND_DIRS_TO_DELETE"
git gc --aggressive --prune=1day
git fsck --unreachable

# refresh the remote
git remote rm origin
git remote add origin ssh://HOST/REPO

# broforce push!
git push -f origin master

# cleanup our original repository
cd REPO
git filter-branch -f --prune-empty --index-filter "git rm --cached --ignore-unmatch OTHER_FILES_AND_DIRS_TO_DELETE"
git gc --aggressive --prune=1day
git fsck --unreachable

# broforce push!
git push -f origin master
```

## Articles
- [Extracting Parts of Git Repository and Keeping the History](http://ariya.ofilabs.com/2014/07/extracting-parts-of-git-repository-and-keeping-the-history.html)
- [Splitting and shrinking a git repository](https://home.regit.org/2010/08/splitting-and-shrinking-a-git-repository/)
