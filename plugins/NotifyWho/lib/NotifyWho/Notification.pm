# NotifyWho?! plugin for Movable Type
# Author: Jay Allen, Six Apart (http://www.sixapart.com)
# Released under the Artistic License
#
# $Id: Notification.pm 504 2008-02-28 02:11:03Z jallen $

package NotifyWho::Notification;

use strict;
use MT::Object;
use base 'MT::Object';

__PACKAGE__->install_properties({
    column_defs => {
        'id'                => 'integer not null auto_increment',
        'blog_id'           => 'integer not null',
        'entry_id'          => 'integer not null',
        'list'              => 'boolean',
        'email'             => 'string(75)',
    },
    indexes => {
        blog_id             => 1,
        entry_id            => 1,
        list                => 1,
        email               => 1,
    },
    child_of => 'MT::Blog',
    audit => 1,
    datasource => 'nwho_notification',
    primary_key => 'id',
});

sub save_multiple {
    my ($class, $args) = @_;
    ref($class) and return $class->error('save_multiple is a class method');
    
    # Creating NotifyWho::Notification records
    foreach my $email (@{$args->{recipients}}) {
        $email =~ s{(.*?<|\s|>.*)}{}g;
        my $note = $class->new();
        $note->set_values({
            'blog_id'           => $args->{blog_id},
            'entry_id'          => $args->{entry_id},
            'email'             => $email,
        });
        unless ($note->save) {
            my $msg 
                = 'Could not save NotifyWho notification: '.$note->errstr;
            MT->log({
                message  => $msg,
                level    => MT::Log::ERROR(),
                class    => 'system',
                category => 'notifywho'
            });
            # require MT::Log::Log4perl;
            # my $logger = MT::Log::Log4perl->new();
            # $logger->error($msg);
        }
    }
}        

1;
