{
  # inputs = {};
  outputs = {nixpkgs, ...}: 
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    # devShells.x86_64-linux.default = {};
    devShell.x86_64-linux = pkgs.mkShell {
      packages = with pkgs; [
        (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
          # select Python packages here
          bcrypt
          requests
        ]))
        k9s
        kubectl
        talosctl
      ];
      # buildInputs = [
      #   pkgs.gcc.cc.lib
      # ];
      shellHook = ''
        echo Woop!
        export KUBECONFIG="$(pwd)/../kubeconfig.yaml"
        #LD_LIBRARY_PATH=${pkgs.gcc.cc.lib}/lib/
      '';
    };
  };
}