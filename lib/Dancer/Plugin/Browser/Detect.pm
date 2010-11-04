package Dancer::Plugin::Browser;

use strict;
use warnings;
use Dancer ':syntax';
use Dancer::Plugin;
use HTTP::BrowserDetect;

=head1 NAME

Dancer::Plugin::Browser - easy to have info of the browser.

=cut

our $VERSION = '0.1';

register browser_detect => sub {
    my $useragent = request->env->{HTTP_USER_AGENT};
    my $browser   = HTTP::BrowserDetect->new($useragent);
    return $browser;
};

register_plugin;

=head1 SYNOPSIS

    use Dancer;
    use Dancer::Plugin::Browser;

    get '/' => sub {
        my $browser = browser_detect();

        if ( browser->windows && browser->ie && browser->major() < 6 ) {
            return "You have big failed, change your os, browser, and come back late.";
        }
    };
    
    dance;


=head1 DESCRIPTION

Provides an easy to have info of the browser. 
keyword within your L<Dancer> application.

=head1 AUTHOR

Natal Ngétal, C<< <hobbestigrou@erakis.im> >>

=head1 CONTRIBUTING

This module is developed on Github at:

L<http://github.com/hobbestigrou/Dancer-Plugin-Browser>

Feel free to fork the repo and submit pull requests

=head1 BUGS

Please report any bugs or feature requests in github.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Dancer::Plugin::Browser

=head1 LICENSE AND COPYRIGHT

Copyright 2010 Natal Ngétal.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=head1 SEE ALSO

L<Dancer>
L<HTTP::BrowserDetect>

=cut 

1;
