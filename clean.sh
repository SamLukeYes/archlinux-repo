#!/usr/bin/env bash
cd x86_64
mv .git/config .
rm -rf .git
git init
mv config .git