echo "Anti-Conflict Script - Resolves all the conflicts in pwd by keeping "their" version"
echo "Checking for Conflicts ... this might take some time ..."

for out in $(echo $(grep -r "<<<<<<< HEAD" * | cut -f1 -d ':'))
do
	echo "Resolving found conflict - $out"
	git checkout --theirs "$out"
	echo "Adding to Staging area - $out"
	git add "$out"
	echo " "
done

echo "Done resolving . Happy Commiting !"
