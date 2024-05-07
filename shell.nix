with import <nixpkgs> {};

pkgs.mkShell {
  name = "python-study-group";

  nativeBuildInputs = with pkgs; [
    git        # For version control (if needed)
    python311Full   
    python311Packages.pip
    python311Packages.venvShellHook
    python311Packages.pipx
    poetry
  ];

  LANGUAGE = "Python";
  VERSION  = "python --version";

  shellHook = ''
    # Optional: Set up a virtual environment when entering the shell
    python3 -m venv .venv
    source .venv/bin/activate
    echo "Welcome to $LANGUAGE Development Environment"
    $VERSION
  '';
}
