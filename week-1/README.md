# Python Study Group
## Hello, project management


Make sure you have these tools installed on your machine or Cloud Shell Editor
* Python 3
* Pip
* Venv
* Pipx 

Now install Poetry by running `pipx install poetry` in a terminal window. 
After installing you may have to run `pipx ensurepath` to make the poetry 
command available on your path, reload your shell profile or open a new 
terminal window for the changes to take effect.

> __Note:__ An alternative is to use a nix-shell that provides the required dev environment.

```bash
nix-shell --pure
```

## Poetry Template 

1. Use Poetry to create the hello-world template 

```bash
poetry new --src hello-world
```

## Add a License

2. Add licence

Visit the [Apache.org](https://www.apache.org/licenses/LICENSE-2.0) site to 
get the [text licence](https://www.apache.org/licenses/LICENSE-2.0.txt)


## Add Hello World Code

Change to the `hello-world/src/hello_world` folder

The __main__.py file serves as the entry point when you execute a Python 
package (a collection of modules organized in a directory).

1. Create a new file `__main.py__`
2. Add the following code:

```python
from .greet import friendly_greeting
print(friendly_greeting()
```

3. Create a new file `greet.py`
4. Add the following code:
```python
def friendly_greeting():
    return "Hello, World!"
```

## Run Hello World Code


Change to the `hello-world/src` folder

1. Run the command:
```bash
python -m hello_world
```

__Expected Output__
```bash
Hello, World!
```

## Add Hello World Test

Change to the `hello-world/tests` folder

1. Create a new file `test_greet.py`
2. Add the following code:

```python
def test_greeting():
    assert friendly_greeting() == "Hello, World!"
```


## Add Dependencies

Change to the `hello-world` folder

1. Add `pytest`

```python
poetry add pytest --group test
```

2. Add `ruff`

```python
poetry add ruff --group lint 
```


## Testing the Environment

In the `hello-world` folder

1. Run ruff check
```bash
poetry run ruff check
```

2. Run ruff format
```bash
poetry run ruff format
```

3. Perform poetry installation
```bash
poetry install
```

4. Run pytest
```bash
poetry run pytest
```

5. Run poetry on the hello_world folder
```bash
poetry run python -m hello_world
```


## Bundle the package

In the `hello-world` folder
Bundle the package using poetry

1. Bundle package
```bash
poetry build
```
