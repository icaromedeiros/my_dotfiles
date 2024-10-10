# Disclaimer

This is for my own personal use.
Some stuff might not work for you but it is shared here because it's important :)

Some of my thoughts on the topic are [in my blog](http://www.icaromedeiros.com.br/dotfiles-what-they-are-why-you-need-one-where-they-live-how-to-do-it.html).

# Before everything

Download `dotfiles-master` (because you still don't have git):
`https://github.com/icaromedeiros/dotfiles/archive/master.zip`

Update software:

```sh
sudo softwareupdate -ia --verbose
```

# Install brew

To be safe, follow instructions from `brew.sh` or use:

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

# Install Python / Pyenv

Install Python first than others formulas `sh python/python.sh`

# Brew packages install

`sh brew/packages.sh`
