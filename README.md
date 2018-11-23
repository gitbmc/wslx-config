# wslx-config
WSL (Windows Subsystem for Linux) configuration to support VcXsrv

Dependencies
============

Windows:

1. WSL (tested with Ubuntu 18.04)
2. VcXsrv (tested with 64-bit 1.20.1.3/4)

Unix
====

1. Homeshick
2. X Windows utilities (xrdb, etc.; e.g., Ubuntu package x11-xserver-utils)
3. Emacs (tested with 26.1) (optional: can remove from .xinitrc or replace...)

Instructions:

1. Install homeshick
2. Add/install "castle"; e.g., homeshick clone gitbmc/wslx-config
3. Copy files in SOMEWHERE_IN_WINDOWS_PATH to a directory in the Windows PATH
4. Create shortcut to Xapps.xlaunch in
   %APPDATA%\Windows\Start Menu\Programs\Startup (optional: launch on start-up)
