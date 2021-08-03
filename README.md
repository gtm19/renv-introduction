## renv-introduction

This is a repo containing the code for some presentation slides introducing 
colleagues to the basics of the [`renv` R package](https://rstudio.github.io/renv/index.html).

## Development

In order to work on this presentation, firstly clone the repo and then run, in
the R console:

```r
renv::restore()
```

Then, in RStudio, you can run the following command to serve the slides:

```r
xaringan::infinite_moon_reader("index.Rmd")
```

If you are not using RStudio, you will have to install [Pandoc](https://pandoc.org/installing.html#macos). 

With macOS / Homebrew, in your terminal:

```sh
brew install pandoc
```

Then you can render/serve the slides by running (in the terminal):

```sh
make serve
```
