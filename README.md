# nanoPage Demo

This is a demo app for [*nanoPage*](https://github.com/mayeranalytics/nanopage), a minimal static flat file CMS based on [Haskell](http://www.haskell.org)
[Spock](htp://spock.li). 

## Run the demo app

#### Download

We'll assume you have the Haskell Tool Stack installed on your system. If not, follow the instructions on [haskellstack.org](https://docs.haskellstack.org/en/stable/README/).

First, download *nanoPage* from the repository on [github](https://github.com/mayeranalytics/nanoPage/).

```bash
cd some/good/location
git clone --recursive git@github.com:mayeranalytics/nanopage-demo.git
```

This will create a folder `nanopage-demo/`containing the demo app and the *nanoPage* source code in a git submodule.

#### Build

Next build the demo app 

```bash
make Demo	# or
APPDIR=$PWD/Demo stack --local-bin-path Demo/bin/ install
```

The environment variable `APPDIR` tells the compiler where the content directory can be found (absolute paths needed!). The stack option `—local-bin-path` tells the linker to install the executable in the standard location `bin/` underneath the `APPDIR`. Compilation of the *nanoPage* source code may take a minute or two, and when building it the *first time* Stack will also download and install all required packages which will take additional time. Normally you have to compile *nanoPage* only once to be able to run it in admin mode.

#### Run the demo app in admin mode

In admin mode files are served from the local `content/` folder.

```bash
Demo/bin/demo-app -m ADMIN -C Demo/content
```

The app will automatically open the browser for you and navigate to `http://localhost:3000`. See [Running the Server](#running-the-server) below for more details.

#### Deploy the app

The executable is fully self contained, so all there is to do is copy it to the server and run it.
