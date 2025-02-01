#!/bin/sh

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:{{ cookiecutter.organization_name }}/{{ cookiecutter.project_name }}.git

if [ "{{ cookiecutter.git_push }}" == "True" ]; then
  git push -u origin main
else
  echo "Push to GitHub is skipped."
fi
