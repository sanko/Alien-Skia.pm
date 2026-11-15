use v5.40;
#
package Alien::Skia v0.0.1 {
    use feature 'class';
    no warnings 'experimental::class';
    use Alien::Xrepo::Runtime;
    use Config ();

    class Alien::Skia : isa(Alien::Xrepo::Runtime) {

        method recipe {
            my %defaults = ( gpu => true, nvpr => true, pdf => false, $self->install_opts );
            if ( $ENV{ALIEN_SDL3_XMAKE_DEBUG} ) {
                $defaults{verbose}   = 1;
                $defaults{diagnosis} = 1;
            }
            return {
                name     => 'Alien-SDL3',
                packages => [ { name => 'skia' } ],
                defaults => \%defaults,

                #~ local_repos => ['recipes']
            };
        }
    }
};
#
1;
