
# BASH Templater

Very simple templating system that replaces 
`{{VAR}}` in templatenfiles with the value of
the environment variable `$VAR` environment value
Supports default values by writting {{VAR=value}} 
in templates

See  
http://code.haleby.se/2015/11/20/simple-templating-engine-in-bash/  
and/or  
http://blog.lavoie.sl/2012/11/simple-templating-system-using-bash.html  
for some blog posts about usage


## Installation

To install templater on linux or mac type:

```
$ mkdir -p ~/.local/bin/
$ sudo curl -L https://raw.githubusercontent.com/owenstranathan/bash-templater/master/templater.sh -o ~/.local/bin/templater
$ sudo chmod +x ~/.local/bin/templater
```

Alternately if you have the program `install` 
on your system you can use that with curl
```
$ mkdir -p ~/.local/bin/
$ curl https://raw.githubusercontent.com/owenstranathan/bash-templater/master/templater.sh
$ install templater.sh ~/.local/bin/templater
```
if you haven't configured ~/.local/bin to be a part of your path I recommed doing that


## Usage

```
$ VAR=value templater <template>
```

Read variables from file:

```
$ templater <template> -f variables.txt
```

If you have a file names `.env` in your calling directory, templater will automatically
load the variables specified in you `.env` file into its environment

Example:


To stop templater from printing warning messages

`$ templater <template> -s`

To make templater run over an entire directory of templates

`$ templater <template-dir>`

Templater will by default render the templates witha default delimiter of `\n---\n`
but you can set this to be anything you like by using the `-d` option for example

`$ templater <template-dir> -d "####DELIMITER####"`

will separate template file with the string `####DELIMITER####`

#### Examples

See [examples](examples/)

#### Author(s)

[Sébastien Lavoie](https://github.com/lavoiesl/bash-templater)

[Johan Haleby](https://github.com/johanhaleby/bash-templater)

[Owen Stranathan](https://github.com/owenstranathan/bash-templater)
