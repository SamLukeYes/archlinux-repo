#!/usr/bin/env fish

cd x86_64/

for i in db files
    rm -v SamLukeYes.$i
    cp -v SamLukeYes.$i.tar.gz SamLukeYes.$i
end