# LaMachine Brew 

[![Build Status](https://travis-ci.com/fbkarsdorp/homebrew-lamachine.svg?branch=master)](https://travis-ci.com/fbkarsdorp/homebrew-lamachine)

LaMachine was a software distribution of NLP software developed by the Language Machines research group and CLST (Radboud University Nijmegen), as well as TiCC (Tilburg University). This repository provides a tap with which the software can be installed using homebrew. Although the LaMachine distribution itself is deprecated, this tap for homebrew is still very much relevant to install various NLP software on macOS.


## Install

If you still use the deprecated tap homebrew-science, now is the time to untap it:

``` bash
$ brew untap homebrew/science
```

Some examples:

```bash
$ brew tap fbkarsdorp/homebrew-lamachine
$ brew install ucto  # for a fast and really accurate natural language tokenizer
$ brew install frog
```

## Troubleshooting

### Linking frogdata

After installing frog and frogdata, link the data using something like:

``` bash
ln -s /usr/local/opt/frogdata/share/frog/ /usr/local/Cellar/frog/<VERSION-NUMBER>/share
```

where \<VERSION-NUMBER\> refers to the installed version of frog. To find out which version
you're using, execute the following:

``` bash
brew info frog
```

### icu4c

All libraries and dependencies should be build with the same underlying icu4c version. When updating a specific component of lamachine fails, please first reinstall all its dependencies. For example, should the installation of ucto fail, but you already have ticcutils and libfolia installed, run:

```bash
$ brew uninstall libfolia ticcutils
$ brew install ucto
```

## Known Issues

Please checkout the [Issues](https://github.com/fbkarsdorp/homebrew-lamachine/issues) page for a list of all known issues.


## Acknowledgements

All praise should go to the Language Machines research group and CLST (Radboud University Nijmegen), as well as TiCC (Tilburg University).
