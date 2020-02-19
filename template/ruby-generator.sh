#!/bin/bash

is_ruby_exist() {
    ruby -v &>/dev/null
    if [ $? -ne 0 ]
    then
        echo "Ruby not installed"
        exit_script
    fi
}

is_bundle_exist() {
    bundle -v &>/dev/null
    if [ $? -ne 0 ]
    then
        echo "Bundle not installed"
        exit_script
    fi
}

exit_script() {
    exit 1
}

exec_bundle() {
    cd ../$1 && bundle install
}

clone_template() {
    read -p "Enter project directory name: " project_name
    cp -pr ruby_template/ ../$project_name
    exec_bundle $project_name
}

check_requirement() {
    is_ruby_exist
    is_bundle_exist
}

generator() {
    clone_template
}

check_requirement
generator

