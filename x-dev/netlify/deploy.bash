#!/usr/bin/env bash

readonly ROOT_DIR=$(readlink -e "$(dirname $0)/../..")
readonly DIVIDER="────────────────────────────────────────────────────────────────────────"

main() {
  show_versions
  do_hugo_npm_install
  do_hugo_build
}

# ---------------- Versions ----------------
show_versions() {
  echo -e "\n${DIVIDER}\nINFO: Versions"
  echo node version: $(node --version)
  echo npm version: $(npm --version)
  hugo version
}

# ---------------- Hugo ----------------
do_hugo_npm_install() {
  echo -e "\n${DIVIDER}\nTASK: Hugo: npm install"
  set -e
  cd "${ROOT_DIR}/hugo"
  npm install
}

do_hugo_build() {
  echo -e "\n${DIVIDER}\nTASK: Hugo: Build"
  set -e
  cd "${ROOT_DIR}/hugo"
  npm run hugo:build
}

main

#=======================================================================
# Notes:
#  - Using deploy script instead of &&-chain of commands because
#    Netlify would not always do npm install so deploy would fail.
#    Could not find why so now this script always does npm install.
#  - Using bash, not python, because Netlify doesn't print stdout
#    in correct order (all subprocess first; then all print after).
#    Could not find why so using bash.
