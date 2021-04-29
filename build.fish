#!/usr/bin/env fish

echo "Building packages: $argv"
cd x86_64

for i in $argv
    cd ../$i
    git pull --rebase=true
    extra-x86_64-build
    set filename (ls *.pkg.tar.zst)
    gpg -b $filename
    mv $filename{,.sig} ../x86_64
    cd ../x86_64
    repo-add SamLukeYes.db.tar.gz $filename
end

for i in db files
    rm -v SamLukeYes.$i
    cp -v SamLukeYes.$i.tar.gz SamLukeYes.$i
end