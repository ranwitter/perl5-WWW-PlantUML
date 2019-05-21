package WWW::PlantUML;

use 5.006;
use strict;
use warnings;

use Carp;
use Lingua::PlantUML::Encode qw(encode_p);

=head1 NAME

WWW::PlantUML - The great new WWW::PlantUML!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';
our $PLANTUML_BASE_URL = 'http://www.plantuml.com/plantuml';

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use WWW::PlantUML;

    my $foo = WWW::PlantUML->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub new {
    my $class = shift;
    my %args  = (
        'baseurl'  => $ENV{PLANTUML_BASE_URL} || $PLANTUML_BASE_URL,
        'contexts' => ('png','svg','txt'),
        @_,
    );
 
    return bless { %args }, $class;
}

=head2 function2

=cut

sub fetch_url {
    my $self           = shift;
    my $base           = $self->{'baseurl'};
   # my $path           = $self->{'infopath'};
    #my ( $type, $code ) = $self->_parse_args(@_);
    my $type          = shift;
    my $code          = shift;

    my $ncoded = encode_p($code); 
    my $url = defined $type ? "$base/$type/$ncoded" : "$base/txt/$ncoded";
    return $url;
}

=head1 AUTHOR

Rangana Sudesha Withanage, C<< <rwi at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-www-plantuml at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=WWW-PlantUML>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc WWW::PlantUML


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=WWW-PlantUML>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/WWW-PlantUML>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/WWW-PlantUML>

=item * Search CPAN

L<https://metacpan.org/release/WWW-PlantUML>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is copyright (c) 2019 by Rangana Sudesha Withanage.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.


=cut

1; # End of WWW::PlantUML
