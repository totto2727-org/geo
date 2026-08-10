{
  description = "MoonBit geospatial library";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1";
    moonbit-overlay = {
      url = "github:totto2727/moonbit-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      moonbit-overlay,
      ...
    }:
    let
      supportedSystems = [
        "aarch64-darwin"
        "x86_64-linux"
      ];
      forEachSystem = nixpkgs.lib.genAttrs supportedSystems;
      forSystem = system:
        import nixpkgs {
          inherit system;
          overlays = [ moonbit-overlay.overlays.default ];
        };
    in
    {
      devShells = forEachSystem (
        system:
        let
          pkgs = forSystem system;
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.git
              pkgs.moonbit-bin.moonbit.latest
            ];
          };
        }
      );

      checks = forEachSystem (
        system:
        let
          pkgs = forSystem system;
        in
        {
          source-contract = pkgs.runCommand "geo-source-contract" { nativeBuildInputs = [ pkgs.gnugrep ]; } ''
            grep -Fx 'name = "totto2727/geo"' ${self}/moon.mod
            grep -Fx 'repository = "https://github.com/totto2727-org/geo"' ${self}/moon.mod
            test ! -e ${self}/package.nix
            touch "$out"
          '';
        }
      );
    };
}
