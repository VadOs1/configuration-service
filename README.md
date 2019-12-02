# Configuration Service

# Build
- **gradlew clean build**

# Run Docker
- **docker run -p 8080:8080 -e encrypt.key=key vadimdissa/configuration-service:1.0.0**

# Local url
- **http://localhost:8080/application-default.yml**

# AWS ECS Deployment
- **(aws ecr get-login --no-include-email --region us-east-1)**
- **docker tag vadimdissa/configuration-service:1.0.0 065320792144.dkr.ecr.us-east-1.amazonaws.com/vadimdissa/configuration-service:1.0.0**
- **docker tag vadimdissa/configuration-service:1.0.0 065320792144.dkr.ecr.us-east-1.amazonaws.com/vadimdissa/configuration-service:latest**
- **docker push 065320792144.dkr.ecr.us-east-1.amazonaws.com/vadimdissa/configuration-service:1.0.0**
- **docker push 065320792144.dkr.ecr.us-east-1.amazonaws.com/vadimdissa/configuration-service:latest**