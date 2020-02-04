# GPG
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
echo -e "\ngpg --armor --export [your key ID here]"
echo -e "\ngit config --global user.signingkey [your key ID here]"
