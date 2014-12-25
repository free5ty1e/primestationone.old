XAcidWarp - Acidwarp X Windows port by Boris Gjenero <bgjenero@sympatico.ca>

This is README.X for XAcidWarp.  This only deals with X-related things.  You
may also want to take a look at README.


Quick Start Instructions
------------------------

1. Look at the Makefile and see if there is anything you need to change
2. make
3. Run ./xacidwarp in X and see if it works.  (Press q to quit)
4. make install if you want to install it


More detailed info
------------------

The X port of AcidWarp uses LibXPCE, a PseudoColor (palettized video
mode) emulation library by Boris Gjenero.  The rest is more-or-less
unchanged.  LibXPCE may be found in the libxpce subdirectory.  In
there you will also find a file named xconfig.h which allows you to
change various things about the X support before you compile the
library.  You probably won't need to change anything there.  If you want 
to know more about LibXPCE look at the README in that directory.

There are also way too many X-related command line options.  It's all
documented in the man page.  You can also use the -h command line
option to get help.


Notes on some problems you may encounter:
-----------------------------------------

If you get errors about xf86dga.h or the Xxf86dga library you probably
don't have the XFree86-DGA extension, and you should disable it in
libxpce/xconfig.h and remove -lXxf86dga from the Makefile

If you get errors about XShm.h, the Xext library or XShm* functions,
you probably don't have the MIT-SHM extension and you should disable
it in libxpce/xconfig.h and remove -lXext from the Makefile.

If make install complains make sure you have selected the right
destination directories in the Makefile.

I should probably use autoconf or something.


Credits
-------

LibXPCE and the porting of Acidwarp to X was done by Boris Gjenero
<bgjenero@sympatico.ca>.  It is based on the SVGALib port of Acidwarp
which was done by Steven Wills <willssl@jmu.edu>.  That was based on
the original AcidWarp for DOS by Noah Spurrier and Mark Bilk.




