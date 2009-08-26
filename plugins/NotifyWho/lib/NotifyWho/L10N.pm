# NotifyWho?! plugin for Movable Type
# Author: Jay Allen, Six Apart (http://www.sixapart.com)
# Released under the Artistic License
#
# $Id: L10N.pm 504 2008-02-28 02:11:03Z jallen $

package NotifyWho::L10N;
use strict;

eval {
    require MT::Plugin::L10N; 
    @NotifyWho::L10N::ISA = ('MT::Plugin::L10N');
};
# use base 'MT::Plugin::L10N';

1;
