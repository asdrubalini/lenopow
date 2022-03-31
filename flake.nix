{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.lenopow;

    packages.x86_64-linux.lenopow = 
      let
        pkgs = import nixpkgs { system = "x86_64-linux"; };
      in
        pkgs.writeShellScriptBin "lenopow" (builtins.readFile ./lenopow);
  };
}
