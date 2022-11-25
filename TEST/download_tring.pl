#!/usr/bin/perl
    use strict;
    use warnings;
    use Net::FTP;

    my $ftp_site     = '95.107.162.50';
    my $ftp_dir      = 'EPG';
    my $ftp_user     = 'telekom1';
    my $ftp_password = 'teleKOM$';
    my $glob         = '*.dat';
    my @remote_files;

    my $ftp = Net::FTP->new($ftp_site) 
        or die "Could not connect to $ftp_site: $!";

    $ftp->login($ftp_user, $ftp_password) 
        or die "Could not login to $ftp_site with user $ftp_user: $!";

    $ftp->cwd($ftp_dir) 
        or die "Could not change remote working " . 
                 "directory to $ftp_dir on $ftp_site";

    @remote_files = $ftp->ls($glob);

    foreach my $file (@remote_files) {
        $ftp->get($file);
    }

    $ftp->quit();
