package Dancer::Plugin::Browser::Detect;

use strict;
use warnings;
use Dancer ':syntax';
use Dancer::Plugin;
use HTTP::BrowserDetect;

=head1 NAME

Dancer::Plugin::Browser::Detect - easy to have info of the browser.

=encoding utf8

=cut

register browser_detect => sub {
    my $useragent = request->env->{HTTP_USER_AGENT};
    my $browser   = HTTP::BrowserDetect->new($useragent);
    return $browser;
};

register_plugin;

=head1 SYNOPSIS

    use Dancer;
    use Dancer::Plugin::Browser::Detect;

    get '/' => sub {
        my $browser = browser_detect();

        if ( $browser->windows && $browser->ie && $browser->major() < 6 ) {
            return "You have big failed, change your os, browser, and come back late.";
        }
    };
    
    dance;


=head1 DESCRIPTION

Provides an easy to have info of the browser. 
keyword within your L<Dancer> application.

=head1 AUTHOR

Natal Ngétal, C<< <hobbestigrou@erakis.im> >>

=head1 SEE ALSO

L<Dancer>
L<HTTP::BrowserDetect>

=cut 

1;
