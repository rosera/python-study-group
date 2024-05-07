with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "python-study-group";

  buildInputs = [
    git        # For version control (if needed)
    python3   
    python3.pkgs.pip 
    python3.pkgs.virtualenv 
    python3.pkgs.pipx 
    python3.pkgs.poetry-core
  ];

  shellHook = ''
    # Optional: Set up a virtual environment when entering the shell
    python3 -m venv .venv
    source .venv/bin/activate
  '';
}
