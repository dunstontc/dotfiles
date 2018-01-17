# irssi/docs/formats.txt

> Irssi's colors that you can use in text formats, hilights, etc. :

| value              | text            | text         | background |
|--------------------|-----------------|--------------|------------|
| %k      %K      %0 | black           | dark grey    | black      |
| %r      %R      %1 | red             | bold red     | red        |
| %g      %G      %2 | green           | bold green   | green      |
| %y      %Y      %3 | yellow          | bold yellow  | yellow     |
| %b      %B      %4 | blue            | bold blue    | blue       |
| %m      %M      %5 | magenta         | bold magenta | magenta    |
| %p      %P         | magenta           (think: purple)           |
| %c      %C      %6 | cyan            | bold cyan    | cyan       |
| %w      %W      %7 | white           | bold white   | white      |
| %n      %N         | Changes the color to "default color", 
                       removing all other coloring and formatting. 

`%N` is always the terminal's default color. 
`%n` is usually too, except in themes it changes to "previous color",
ie. hello = `"%Rhello%n"` and `"%G{hello} world"` would print hello in red, 
and `%n` would turn back into `%G` making world green.


| value                | effect                                            |
|----------------------|---------------------------------------------------|
| %F                   | Blinking on/off (think: flash)                    |
| %U                   | Underline on/off                                  |
| %8                   | Reverse on/off                                    |
| %9 or   %_           | Bold on/off                                       |
| %I                   | Italic on/off                                     |
| %:                   | Insert newline                                    |
| %                    | Marks the indentation position                    |
| %#                   | Monospace font on/off (useful with lists and GUI) |
| %%                   | A single %                                        |
| %XAB     or     %xAB | Color from extended plane (A=1-7, B=0-Z)          |
| %ZAABBCC or %zAABBCC | HTML color (in hex notation)                      |


> In .theme files %n works a bit differently. 
> See default.theme for more information.


MIRC colors that you can use when writing text to channel:

| value    | foreground (fg)      | background (bg)            |
| -------- | -------------------- | -------------------------  |
| 0        | white                | light gray   + blinking fg |
| 1        | black                | black                      |
| 2        | blue                 | blue                       |
| 3        | green                | green                      |
| 4        | light red            | red          + blinking fg |
| 5        | red                  | red                        |
| 6        | magenta (purple)     | magenta                    |
| 7        | orange               | orange                     |
| 8        | yellow               | orange       + blinking fg |
| 9        | light green          | green        + blinking fg |
| 10       | cyan                 | cyan                       |
| 11       | light cyan           | cyan         + blinking fg |
| 12       | light blue           | blue         + blinking fg |
| 13       | light magenta        | magenta      + blinking fg |
| 14       | gray                 | black        + blinking fg |
| 15       | light gray           | light gray                 |

>  These colors may differ depending on your terminal. In particular
>  the meaning for background may be the same as for the foreground
>  (bright colors, no blinking), and orange often looks like brown or
>  dark yellow.

 How to use these colors ('#' means a number as MIRC color code):

 <Ctrl>-b        set bold
 <Ctrl>-c#[,#]   set foreground and optionally background color
 <Ctrl>-o        reset all formats to plain text
 <Ctrl>-v        set inverted color mode
 <Ctrl>-_        set underline
 <Ctrl>-7        same as <Ctrl>-_

 To reset a mode set it again, f.e.
   `<Ctrl-C>3<Ctrl-V>FOO<Ctrl-V>BAR`
 creates black on green FOO followed by a green on black BAR

--------------------------------------------------------------------------------

When testing changes, the easiest way to reload the theme is with `/RELOAD`.
This reloads the configuration file too, so if you did any changes remember
to `/SAVE` it first. Remember also that `/SAVE` overwrites the theme file with
old data so keep backups `:)`

## Templates:

The real text formats that irssi uses are the ones you can find with
`/FORMAT` command. Back in the old days all the colors and texts were mixed
up in those formats, and it was really hard to change the colors since you
might have had to change them in tens of different places. 
So, then came this templating system.

Now the `/FORMAT`s don't have any colors in them, and they also have very
little other styling. Most of the stuff you need to change is in this
theme file. If you can't change something here, you can always go back
to change the `/FORMAT`s directly, they're also saved in these .theme files.

So .. the templates. They're those `{blahblah}` parts you see all over the
`/FORMAT`s and here. Their usage is simply `{name parameter1 parameter2}`.
When irssi sees this kind of text, it goes to find "name" from abstracts
block below and sets "parameter1" into $0 and "parameter2" into $1 (you
can have more parameters of course). Templates can have subtemplates.
Here's a small example:
  `/FORMAT format hello {colorify {underline world}}`
  `abstracts = { colorify = "%G$0-%n"; underline = "%U$0-%U"; }`
When irssi expands the templates in "format", the final string would be:
  `hello %G%Uworld%U%n`
ie. underlined bright green "world" text.
and why "$0-", why not "$0"? `$0` would only mean the first parameter,
`$0-` means all the parameters. 
With `{underline hello world}` you'd really want to underline both of the words, 
not just the hello (and world would actually be removed entirely).

## Colors:

You can find definitions for the color format codes in docs/formats.txt.

There's one difference here though. `%n` format. Normally it means the
default color of the terminal (white mostly), but here it means the
"reset color back to the one it was in higher template". For example
if there was `/FORMAT test %g{foo}bar`, and `foo = "%Y$0%n"`, irssi would
print yellow "foo" (as set with `%Y`) but "bar" would be green, which was
set at the beginning before the `{foo}` template. If there wasn't the `%g`
at start, the normal behaviour of `%n` would occur. If you _really_ want
to use the terminal's default color, use `%N`.

#############################################################################
