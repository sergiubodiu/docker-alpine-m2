# Connect to Concourse

    fly -t demo login -c http://192.168.100.4:8080

## Creacte pipeline 

    echo y | fly -t demo set-pipeline -p m2 -c pipeline.yml -l credentials.yml

    fly -t demo up -p m2
