echo -e "Syncing from manifest...\n"
repo sync -c -j$(nproc --all) -f --force-sync --no-clone-bundle --no-tags
