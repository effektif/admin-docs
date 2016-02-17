Effektif adminstrators guide
============================

The Effektif administrators guide uses [Sphinx](http://sphinx-doc.org/) to create the documentation as HTML and PDF. Sphinx is a Python library. The documentation itself is written using reStructuredText with some Sphinx flavor and is available in english and german. The online version can be found here: [Effektif administrators guide](http://effektif-administrators-guide.readthedocs.org/)

### Prerequisites
* [Python](https://www.python.org/downloads/)
    * you can go with version 2.7.x, but 3.x should work as well
* [PIP](https://pypi.python.org/pypi/pip)
    * whenever you are using pip it is highly recommended to use [virtualenv](http://virtualenv.readthedocs.org/en/latest/)
    * [virtualenv](http://virtualenv.readthedocs.org/en/latest/) gets even better with [virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/)

Install all dependencies via
`pip install -r requirements.txt`

### Setup
In order to edit the documentation, you will want to install Sphinx on your local machine. Therefore, make sure you have Python and [PIP](https://pypi.python.org/pypi/pip) installed.

1. Clone the repository to your system.
1. Install Python module dependencies - [PIP](https://pypi.python.org/pypi/pip), termcolor and tabulate:

		sudo easy_install pip
		sudo easy_install termcolor
		sudo easy_install tabulate

2. Set language environment variables:

		export LC_ALL=en_US.UTF-8
		export LANG=en_US.UTF-8

3. (optional) You might want to [set up a virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/).
4. Install all requirements:

		pip install -r requirements

This will install all necessary modules including Sphinx.

### Edit the documentation
The source files are located in `docs`. The file `index.rst` is the main documentation file that includes all the other source files. In general, the source files are divided by chapters.

The directory `_static` contains static files like images that are referenced in the documentation and are included during the build process. The static files are divided by language, with english being used as the default if no translated version of the artefact exists.

The directory `_locale` contains the translation files (\*.po) that have be adjusted after changing the source files.

Some helpful resources regarding Sphinx and reST:
* http://rest-sphinx-memo.readthedocs.org/en/latest/ReST.html
* http://sphinx-doc.org/

### Building the documentation
In general you can easily build the docs from the root directory by running

    ./build.sh <de|en>

This will output the docs as HTML into docs/_build. If you want to build to something other than HTML, you can proceed as follows:

	cd docs
	make html

Or apply another output parameter to the build script, e.g.:

	./build.sh <de|en> latexpdf

Have a look at  `docs/Makefile` for more information about the available output formats.

To build the documentation for a specific language you need to use the language specifc conf.yp files. Those are located in the respective lang_code subdirectories, i.e. de or en.

### Updating translations
When you edited the documentation, you have to update the translations as well. Every time you build the documentation, the translation files are updated automatically.
In order to update the translation, update the respective \*.po files in `docs/_locale`.

Always commit the \*.mo files as well, because they are required by readthedocs to create the german translation.

### Create the artifacts
Before you can create PDF files locally you need to set up an appropriate latex environment. On MacOs you can for instance install [MacTex](http://tug.org/mactex/).


