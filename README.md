# Python Study Group

Study group for learning Python.

## Schedule 

- [ ] [week-1:Project Structure](https://github.com/rosera/python-study-group/blob/main/week-1/README.md)


## Nix Configuration

The [nix](https://nixos.org/download/) configuration below provides:

* git
* python3
* pip
* venv
* pipx
* poetry


### Python Study Group

1. To run:

```bash
nix-shell
```

2. Configuration can be extended as required.

```nix
with import <nixpkgs> {};

pkgs.mkShell {
  name = "python-study-group";

  nativeBuildInputs = with pkgs; [
    git        # For version control (if needed)
    python313   
    python3.pkgs.pip 
    python3.pkgs.virtualenv 
    python3.pkgs.pipx 
    python3.pkgs.poetry-core
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
```
