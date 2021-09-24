#!/usr/bin/env bash

./clean.sh
./update-db.fish

cd x86_64/
git add -A
git commit -m "force push"
git push --force