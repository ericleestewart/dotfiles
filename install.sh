# Copy .zshrc to ~
echo "Installing .zshrc"
cp .zshrc $HOME/

# Create ~/bin directory if it doesn't exist.
if [ ! -d "$HOME/bin" ]; then
  echo "Creating $HOME/bin."
  mkdir -p "$HOME/bin"
fi
