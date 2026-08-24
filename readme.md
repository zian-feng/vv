### vv
<p align="center">
  <img src="assets/logo-dark.png" width="180" alt="My Project logo">
</p>

***

`vv` is a simple shell utility tool meant to be used for toggling virtual environments for [`venv`](https://github.com/pypa/virtualenv) and [`uv`](https://github.com/astral-sh/uv) projects.

it is a drop in replacement for `source .venv/bin/activate` and `deactivate`.


  ![vv usage example](assets/carbon.png)

```zsh
curl -fsSL https://raw.githubusercontent.com/zian-feng/vv/main/install.sh | sh
```


#### Usage

From the root of your project (the directory containing `.venv`), run:
```zsh
vv
```



#### Project Structure

```zsh
  vv/
    README.md
    LICENSE
    vv.sh
    test/
      vv.bats
    Formula/
      vv.rb
```


