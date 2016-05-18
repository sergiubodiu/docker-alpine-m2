#!/bin/bash
echo y | fly -t demo set-pipeline -p m2 -c pipeline.yml -l credentials.yml
