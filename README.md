# NotifyWho?! plugin #
Version:    2.0-beta v1
Author:     Jay Allen
Date:       February 27th, 2008
Home:       http://jayallen.org/projects/notifywho

#### BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA ####

    This version is a beta version. Please do not use it in
    production. Also, while some things have changed, most of
    it should be familiar for users of NotifyWho v1. I will
    get around to updating the documentation shortly if
    you're confused.
    
    Also please see TODO.txt for what is still to be done.

#### BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA BETA ####


## INTRODUCTION ##

The NotifyWho?! plugin enables you to control exactly who should receive
entry, comment and TrackBack notifications for each blog.

You can configure the plugin to send them to:

    * The Entry author (MT default)
    * One or more arbitrary email addresses
    * The blog's address book (i.e. notification list)
    * Any of the above

For entry notifications, you can configure the plugin to send them automatically or to simply provide defaults for the Share entry screen.  Automatic notifications can be disabled on a per entry basis by toggling the link directly about the entry save/preview buttons.

## Requirements ##

    * Movable Type 4.1 or higher
    * A working email notification system
    * Ability to install plugins
    * Permission to configure a blog and its plugins


## INSTALLATION ##

Unpack the plugin archive and upload the entire notifywho folder to the
plugins folder in your MT directory. The files installed and their locations
should match that shown below:

    MT_DIR/
            plugins/
                    NotifyWho/
                              lib/
                                  NotifyWho.pm
                                  NotifyWho/
                                            L10N/
                                                 en_us.pm
                              notifywho.pl
                              tmpl/
                                   blog_config.tmpl
            mt-static/
                      plugins/
                              NotifyWho/
                                        notifywho.js

All files should have permissions which make them readable by the web 
server (chmod 644 or rw-r--r--). You don't have to worry about this unless 
your FTP software modifies or fails to mirror the permissions upon upload 
without asking. (Pssst! Time to get new FTP software...)

