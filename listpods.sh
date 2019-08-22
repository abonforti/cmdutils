#!/bin/bash

if [ $1 = "dev" ]; then
		kubectl config use-context goep-dev-aksap
    watch -n1 "kubectl -n dev-ap1 get pods | grep ^hybris-"
elif [ $1 = "syt" ]; then
		kubectl config use-context goep-tst-aksap
    watch -n1 "kubectl -n syt-ap1 get pods | grep ^hybris-"
elif [ $1 = "int" ]; then
    printf "Not yet implemented"
fi