self: super:
{
    filet = super.callPackage ./pkgs/filet { };
    kiwmi = super.callPackage ./pkgs/kiwmi { };
}
