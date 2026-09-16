### vv

<p align="center">
  <img src="assets/vv-icon-dark.svg" width="180" alt="My Project logo">
</p>

![Version](https://img.shields.io/badge/version-v0.1.0-CC6E84)
![License](https://img.shields.io/badge/license-MIT-green)
***

`vv` is a simple shell utility tool meant to be used for toggling virtual environments for [`venv`](https://github.com/pypa/virtualenv) and [`uv`](https://github.com/astral-sh/uv) projects.

it is a drop in replacement for `source .venv/bin/activate` and `deactivate`.

<p align="center">
  <img src="assets/carbon.png" width="500" alt="carbon example">
</p>

<br>

#### Install

install the latest version with curl
```zsh
curl -fsSL https://raw.githubusercontent.com/zian-feng/vv/main/install.sh | sh
```

install the latest stable version `v0.1.0`
```zsh
curl -fsSL https://raw.githubusercontent.com/zian-feng/vv/v0.1.0/install.sh | sh
```

homebrew tap
```zsh
brew tap zian-feng/vv https://github.com/zian-feng/vv
brew install vv
```

<br>

#### Usage

From the root of your project (the directory containing `.venv`), run:
```zsh
vv
```



<!-- #### Project Structure -->
<!-- ```zsh
  vv/
    README.md
    LICENSE
    vv.sh
    test/
      vv.bats
    Formula/
      vv.rb
``` -->


