# consynthance
Studying consonance as a result of vocal similarity  

## Usage 

You'll need to install [essentia](https://essentia.upf.edu/documentation/), which has a platform dependant installation process. See [here](https://essentia.upf.edu/documentation/installing.html).

On macOS you can do this with homebrew
```
brew tap MTG/essentia
brew install essentia --HEAD --without-python@2
```

If  you are using virtualenv make sure to include site packages for this to work
```
python3 -m venv env/ --system-site-packages 
```

Install requirements
```
pip install -r requirements.txt
```

Launch the notebooks
```
jupyter notebook
```