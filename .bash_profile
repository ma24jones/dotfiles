export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,private}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv virtualenv-init -)"

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
