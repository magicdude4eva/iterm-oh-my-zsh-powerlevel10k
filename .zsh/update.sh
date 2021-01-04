echo "- Upgrade ZSH"
env ZSH=$ZSH sh $ZSH/tools/upgrade.sh

echo "- Upgrade oh-my-zsh"
cd ~/.oh-my-zsh
git pull
git submodule update --init --recursive

echo "- Plugins & Themes"
cd ~/.oh-my-zsh/custom/plugins/
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;
cd ~/.oh-my-zsh/custom/themes
find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;
