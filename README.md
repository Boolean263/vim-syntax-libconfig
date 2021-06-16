Simple syntax highlighting for libconfig-format configuration files.
Install it like you would any vim plugin.

There's currently no good way to detect such a file by its contents,
so you'll want to add a comment at the start or end of the file to the effect of

    # vim:filetype=libconfig

in order for this syntax to take effect.

For information on this format see:
<https://hyperrealm.com/libconfig/libconfig_manual.html#Configuration-Files>

Known issue: Comments containing `=` or `:` aren't highlighted properly.
