# installation and setup
* clone repo
    ``` shell
    # clone the repo
    git clone https://github.com/mr-month/dotfiles ~/dotfiles
    ```

* (OPTIONAL) set up "write access"
  * create (password-protected!) SSH key pair and register it with GitHub
  * add the following to `~/.ssh/config`
    ``` text
    Host github.com-mr-month
        AddKeysToAgent yes
        HostName github.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/<PUBLIC KEY>
    ```
  * change remote URL for `push` only
    ``` shell
    git remote set-url --push origin git@github.com-mr-month:mr-month/dotfiles.git
    ```

# TODOs
## zshrc
Start by removing comments then change Antigen equivalent.

Then try to replicate (step by step) in plain zsh
([reddit comment](https://www.reddit.com/r/zsh/comments/ah17q7/comment/eeanr85)
pointing to [this repository](https://gitlab.com/yramagicman/stow-dotfiles/-/tree/master))

## inspiration
* [this dotfiles repo](https://gitlab.com/yramagicman/stow-dotfiles) (seems the person seriously
  knows his stuff&hellip;?)


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

# Some decisions, context, &hellip; for my future self's reference

## zsh configuration (TO BE DETERMINED)
Should I be using frameworks and managers or write it myself? Seems the frameworks are
in many cases obstructions for what is basically "set a couple of options in zsh, fetch a couple
repos and source them"&hellip;

## different URL for `fetch` and `push`
It is possible to configure `git` to use different URL for `fetch` and `push` with the same remote.
Documentation recommends that both URLs point to the same location (otherwise different remote
should be used). This way we can have `https://github...` for unauthenticated "read-only" updates
and `git@github...` for pushing new updates using password-protected SSH key authentication.


## i3 is dead, long live AwesomeWM
For some time I had been questioning my earlier decision to go with Awesome WM as my first tiling
window manager instead of trying the simpler i3. With new setup (and consequent ability to "do it
right this time"), I'd decided to give i3 a try. It took all of an afternoon's worth of trying
and researching to figure out just what a mistake that was&hellip; See reasoning below.

### workspaces shared accross monitors
In i3, all monitors share workspaces (and associated bindings). AwesomeWM has an even stronger
mechanism of `tags`, however, in simplest case, you can use these tags as workspaces and they're
scoped to monitors. Effect? In Awesome, you'll never run out of workspaces (if you do, you're
a window-opening maniac) and it's intuitive to switch between them.

On i3 you're limited to 10 workspaces and switching between them requires overhead of keeping
mental tabs on "which workspace is on which monitor". It is possible to create another set
of workspaces by using the `Fn` keys as well, however, that's twice as many workspaces to keep
in precious head-space and also does not scale to dynamically adding more than two monitors.
The same behaviour as in Awesome can probably be implemented by using external scripts (either
existing Python wrappers or just `jq`, but&hellip; it's just workarounds for missing functionality).

### strictly tiling window manager
While i3 can switch window into fullscreen mode, there's no support for minimizing windows
(except for using so called `scratchpad` workspace). Maximizing windows also doesn't seem to be
an intended workflow. In AwesomeWM you can enjoy the productivity, mouse-free benefits of a tiling
window manager while having the option to use floating windows and minimization.

### resolution
While it would be possible to make i3 work, the AwesomeWM has the functionality out-of-the-box,
is highly configurable anyways, and the defaults work as expected and wanted. As for making it
pretty, only the sky (and one's time and effort) is the limit.
