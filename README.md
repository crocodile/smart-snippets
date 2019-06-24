smart-snippets a.k.a. Dave
===================
Simple &amp; intuitive command line utility to store cheat sheet snippets
- - - - 

# Motivation #
People who work with command line prompts (a.k.a terminal) often need to memorise long commands, parameters or configuration values. When it's too much to remember we start digging into command help manuals, or search through cheatsheet artefacts such as online notes or jungles of post-its on our desks, in which cases we are taken out of our workflow and context, generally resulting in a loss of our focus and time.

# What is this? #
A tool for saving short notes, cheatsheets for terminal commands (or anything organised by text tags). In other words:

**A stupid simple command line utility to save single line code snippets.**

- - - - 
# Quick start: #
## Installation ##
```shell
   brew tap crocodile/tap
   brew install dave
```
## Save a snippet ##
```shell
   # I'd like to remember what ls -l does
   dave remember ls "ls -l" "Lists directory contents in a long format."
```
## Retrieve a snippet for a tag ##
(Tag is just a text look up identifier. Can be the name of the command or anything else.)
```shell
   # Tell me what the remembered snippets are for ls
   dave tellme ls
```
- - - - 
# In more detail: #
## Save a snippet ##
```shell
   dave remember [tag] [snippet] [description]
```
   or in short format:
```shell
   dave r [tag] [snippet] [description]
```
   or interactively via input prompts:
```shell
   dave r # follow the input prompts
```
## Retrieve a snippet for a tag ##
```shell
   dave tellme [tag]
```
   or in short format:
```shell
   dave t [tag]
```

## Show me all snippets as a csv file ##
(This will attempt to open a csv file with the application associated with it on your computer.)
```shell
   dave show
```
   or in short format:
```shell
   dave s
```

## Help ##
```shell
   dave help
```   
   or in short format:
```shell
   dave h
```      
## Get the version of this tool ##
```shell
   dave version
```
   or in short format:
```shell
   dave v
```

----

# Configurations: #
Snippets by default saved as a dave.csv file to the $HOME/.smart-snippets hiden folder. 

- Make sure you have the $HOME environmnet variable set
- To change the location of the `$HOME/.smart-snippets/dave.csv` file, move it to the desired location then update the filepath variable in the `$HOME/.smart-snippets/dave.conf` file. For example

```shell
   #!/bin/bash
   filepath=$HOME"/Documents/smart-snippets/dave.csv"   # Changed from filepath=$HOME"/.smart-snippets/dave.csv"
```
