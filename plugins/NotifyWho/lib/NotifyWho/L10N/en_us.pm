# NotifyWho plugin for Movable Type
# Author: Jay Allen, Six Apart (http://www.sixapart.com)
# Released under the Artistic License
#
# $Id: en_us.pm 177 2007-01-19 11:59:32Z jallen $

# NotifyWho?! localization file
#
# This package defines the English phrases used by the plugin 
# and can be used as a basis for localization of NotifyWho?!
#
# To create a localization, simply do the following:
#
# 1) Create a copy of this file with a name beginning with your 
#    language code and ending in '.pm'.  For example, a French 
#    localization file would be named 'fr.pm'.
# 2) Translate the strings on the right side of the => operators
#    below.  You must use a backslash to escape single quotes.
# 3) Replace all occurances of 'en_us' in this file with your 
#    own language code
#
package NotifyWho::L10N::en_us;

use strict;
use base 'NotifyWho::L10N';
use vars qw( %Lexicon );

%Lexicon = (
    'INVALID_EMAIL'                 =>  'is not a valid email address',
    'PLUGIN_SETTING_DESCRIPTION'    =>  'Specify below who should be notified of new comments and TrackBacks on this blog.',
    'AUTHOR'                        =>  'Author:',
    'NOTIFY_AUTHOR_LABEL'           =>  'Notify the entry author',
    'OTHERS'                        =>  'Others:',
    'NOTIFYWHO_PLUGIN_DESCRIPTION'  =>  'Enables you to better control comment and TrackBack email notifications.',
    'OTHERS_FIELD_HINT'             =>  'Enter email addresses if desired',
    'FEEDBACK_CONTROL_NOTICE'       =>  'These settings control the comment/TrackBack notification recipients if notifications are enabled.  Separate multiple recipients with commas and/or spaces.',

    # DUPLICATED LITERAL KEYS
    'email address contains invalid characters'                 =>    'email address contains invalid characters',
    'email address contains non-ascii characters'               =>    'email address contains non-ascii characters',
    'email address must contain an @'                           =>    'email address must contain an @',
    'email address must not start with @'                       =>    'email address must not start with @',
    'email address must contain only one @'                     =>    'email address must contain only one @',
    'email address must contain a period in the domain name'    =>    'email address must contain a period in the domain name',
    'period must not immediately follow @ in email address'     =>    'period must not immediately follow @ in email address',
    'period must not immediately precede @ in email address'    =>    'period must not immediately precede @ in email address',
    'two periods must not be adjacent in email address'         =>    'two periods must not be adjacent in email address',
    'invalid primary domain in email address'                   =>    'invalid primary domain in email address',
);

if ($MT::VERSION < 3.3) {
    require MT::L10N::en_us;
    $MT::L10N::en_us::Lexicon{$_} = $Lexicon{$_}
        foreach keys %Lexicon;
}
    
1;
