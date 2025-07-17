#!/bin/bash
clear
bash compile.sh
TF_LOG=DEBUG terraform apply --auto-approve
TF_LOG=DEBUG terraform destroy --auto-approve

