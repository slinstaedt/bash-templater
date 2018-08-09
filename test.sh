#!/bin/bash

[[ $TRACE ]] && set -x

function check() {
    if [[ $1 -eq 0 ]]; then
        echo OK
    else
        echo Differences found
        exit 1
    fi
}

(
    cd examples/composition/ 
    diff -u <(USER=nobody DOMAIN=example.com ../../templater.sh vhost-php.tpl.conf) vhost-php.conf
    check $?
)
# (
#     cd examples/render-dir 
#     diff -u <(bash ../../templater.sh templates -f variables.txt) render.yaml
#     check $?
# )
# (
#     cd examples/simple/ 
#     diff -u <(bash ../../templater.sh nginx.yaml.tmpl) nginx.yaml
#     check $?
# )

