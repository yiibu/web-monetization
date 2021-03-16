# Web Monetization

Source files for [https://yiibu.github.io/web-monetization/](https://yiibu.github.io/web-monetization/).

Built with [mkdocs.org](https://www.mkdocs.org).

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

To activate Python MkDocs virtual environment:

`source $VENV/mkdocs/bin/activate`

To serve the documentation while editing:

`mkdocs serve`

To build a static site from the documentation:

`mkdocs build`

To force deploy the static site to Github Pages:

`mkdocs gh-deploy --force`

Note: a Github workflow exists to automatically deploy the static site to Github pages upon recieving an update to the 'main' branch, so you should never have to run 'mkdocs gh-deploy --force', just check in your changes to the main branch and wait a couple of minutes for the action to complete.

To deactivate the virtual environment:

`deactivate`

To publish a pdf and epub of the work using an installed version of [Pandoc](https://pandoc.org/) and [BasicText](http://www.tug.org/mactex/morepackages.html) enter:

`./publish.sh`

The pdf and epub files will be located in a folder called 'published'.