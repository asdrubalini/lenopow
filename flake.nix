{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.lenopow = writeShellScript "builder.sh" ''
        echo "hi, my name is ''${0}" # escape bash variable
        echo "hi, my hash is ${sha256}" # use nix variable
        echo "hello world" >output.txt
      '';
  };
}
