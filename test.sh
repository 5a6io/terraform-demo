#!/bin/bash

IP=$(terraform output -raw public_ip)
curl $IP:8080
