# FZF

Small utility functions using fzf.

* [fgl()](#fgl)
* [fe()](#fe)
* [vf()](#vf)
* [vg()](#vg)
* [fh()](#fh)
* [tm()](#tm)
* [fzkill()](#fzkill)


## fgl()

Figlet font selector -> copy to clipboard.

### Arguments

* **...** (string): Word or words to make into ascii art.

## fe()

fe - fuzzy edit.

### Arguments

* **$1** (string): Name of the file to edit.

## vf()

vf - fuzzy open with vim from anywhere

### Example

```bash
vf word1 word2 ... (even part of a file name)
```

## vg()

fuzzy grep - open via ag
vg() {
## fh()

Search command history with FZF.
fh() {
## tm()

Create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)

### Example

```bash
tm # will allow you to select your tmux session via fzf.
```

### Arguments

* **$1** (string): Session name

## fzkill()

fzkill - kill process
fzkill() {
