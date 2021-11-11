#!/bin/sh
aws --profile production-new  sso login
kubectx production-new
sudo kubefwd svc -n ovp -c ~/.kube/config/stage-new.kubeconfig