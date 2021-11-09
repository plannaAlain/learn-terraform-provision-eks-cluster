docker build -t webapp .
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 941283148711.dkr.ecr.us-west-2.amazonaws.com
docker tag webapp:latest 941283148711.dkr.ecr.us-west-2.amazonaws.com/plannatest:latest
docker push 941283148711.dkr.ecr.us-west-2.amazonaws.com/plannatest:latest