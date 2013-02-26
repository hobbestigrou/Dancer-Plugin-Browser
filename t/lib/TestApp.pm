package t::lib::TestApp;

use Dancer;
use Dancer::Plugin::Browser::Detect;

get '/' => sub {
    return browser_detect();;
};

1;
