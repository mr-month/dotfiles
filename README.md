# How to
**Do not create symlinks in here.** Instead move the config files here and create symlink in the original location.

``` bash
cd  # run this from $HOME
ln -s dotfiles/.<FILE> .
```

Why? **tl;dr**: See [this article](https://codingkilledthecat.wordpress.com/2012/08/08/git-dotfiles-and-hardlinks).

**Long story**: git only records a symlink as a symlink. For hardlinks, it there is problem on updates.
It will replace the hardlink with a new file with updated contents, not update the file (hardlink).

Solution is to have the "real" files in here and symlink to it from `HOME` directory.
