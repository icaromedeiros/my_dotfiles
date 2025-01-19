# Installs latest Python 3 and pyenv
brew install python3 && brew install pyenv

# Python last 2 minor versions
pyenv install -s 3.12.7
pyenv install -s 3.11.10

pyenv global 3.12.7

# echo "\n\n...Remember to review pyenv global."
