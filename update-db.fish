#!/usr/bin/env fish

cd x86_64/

for i in (ls *.tar.zst)
    repo-add -p SamLukeYes.db.tar.gz $i
end

for i in db files
    rm -v SamLukeYes.$i
    cp -v SamLukeYes.$i.tar.gz SamLukeYes.$i
end