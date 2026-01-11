# Homebrew Tap Setup

This directory contains the Homebrew Formula template for `te`.

## Setup Instructions

1. **Create a new GitHub repository** named `homebrew-tap`:
   ```bash
   # On GitHub, create: yusukeshib/homebrew-tap
   ```

2. **Copy the Formula to your new repo**:
   ```bash
   git clone https://github.com/yusukeshib/homebrew-tap
   cd homebrew-tap
   mkdir -p Formula
   cp /path/to/te/homebrew/Formula/te.rb Formula/
   ```

3. **After creating a GitHub Release**, update the sha256 values:
   ```bash
   # Download the release artifacts and generate sha256
   curl -L https://github.com/yusukeshib/te/releases/download/v0.1.2/te-aarch64-apple-darwin.tar.gz -o te-aarch64-apple-darwin.tar.gz
   shasum -a 256 te-aarch64-apple-darwin.tar.gz

   # Update the sha256 values in Formula/te.rb
   ```

4. **Commit and push**:
   ```bash
   git add Formula/te.rb
   git commit -m "Add te formula v0.1.2"
   git push
   ```

5. **Test installation**:
   ```bash
   brew tap yusukeshib/tap
   brew install te
   te --help
   ```

## Updating for New Releases

1. Update the `version` in `Formula/te.rb`
2. Download new release artifacts and update sha256 values
3. Commit and push changes

## Alternative: Use the checksums.txt from releases

The GitHub Release workflow automatically generates `checksums.txt` with all sha256 values.
Download it from the release page and copy the values to the Formula.
