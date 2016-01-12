branch=$1;
echo "Switching subdirectories to branch $branch"
for dir in ./*; do (cd "$dir" && echo "Switching $dir to $branch" && git checkout $branch && git pull); done