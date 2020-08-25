export PATH="/usr/local/sbin:$PATH";
export PATH="/usr/local/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,private}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
