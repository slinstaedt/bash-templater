
# BASH Templater

Very simple templating system that replaces 
`{{VAR}}` in template files with the value of
the environment variable `$VAR` environment value
Supports default values by writting {{VAR=value}} 
in templates


## Installation

To install templater on linux or mac type:

```
$ PREFIX=/usr/local/bin make install
```


## Usage

```
$ VAR=value templater <template>
```

Read variables from file:

```
$ templater <template> -f variables.txt
```

If you have a file named `.env` in your calling directory, templater will automatically
load the variables specified in you `.env` file into its environment

Example:


To stop templater from printing warning messages

```
$ templater <template> -s`
```

Templater will also read files from a directory

`$ templater <template-dir>`

Templater will by default render the templates witha default delimiter of `\n---\n`
but you can set this to be anything you like by using the `-d` option for example

`$ templater <template-dir> -d "####DELIMITER####"`

will separate template file with the string `####DELIMITER####`

##### NOTE

Templater does not use `getopts` to get options so stringing options like `-ps` is **not** supported.

#### Examples

See [examples](examples/)

#### Testing

Use my simple testing script [bashtest](https://github.com/owenstranathan/bashtest)

run this in the main project directory

`$ bashtest`

#### More Resources


See  
http://code.haleby.se/2015/11/20/simple-templating-engine-in-bash/  
and/or  
http://blog.lavoie.sl/2012/11/simple-templating-system-using-bash.html  
for some blog posts about usage

#### Author(s)

[Sébastien Lavoie](https://github.com/lavoiesl/bash-templater)

[Johan Haleby](https://github.com/johanhaleby/bash-templater)

[Owen Stranathan](https://github.com/owenstranathan/bash-templater)
