# LaMachine Brew

LaMachine is a software distribution of NLP software developed by the Language Machines research group and CLST (Radboud University Nijmegen), as well as TiCC (Tilburg University). This repository provides a tap with which the software can be installed using homebrew. 

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

All libraries and dependencies should be build with the same underlying icu4c version. When updating a specific component of lamachine fails, please first reinstall all its dependencies. For example, should the installation of ucto fail, but you already have ticcutils and libfolia installed, run:

```bash
$ brew uninstall libfolia ticcutils
$ brew install ucto
```

## Known Issues

Please checkout the [Issues](https://github.com/fbkarsdorp/homebrew-lamachine/issues) page for a list of all known issues.


## Acknowledgements

All praise should go to the Language Machines research group and CLST (Radboud University Nijmegen), as well as TiCC (Tilburg University).
