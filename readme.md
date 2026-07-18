### vv

  <!-- <p align="center">
    <img src="assets/logo-dark.png" alt="vv usage example" width="300">
  </p> -->

***

`vv` is a simple scripted shell tool meant to be used for toggling virtual environments for `venv` and `uv` projects.

it is a drop in replacement for `source .venv/bin/activate` and `deactivate`.


  ![vv usage example](assets/carbon.png)


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


