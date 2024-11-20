#!/bin/sh

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:{{ cookiecutter.organization_name }}/{{ cookiecutter.project_slug }}.git
git push -u origin main
