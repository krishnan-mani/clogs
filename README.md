# clogs
=======

# Generate a simple Java webapp, using, for example:
```mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp```

# Add a Dockerfile
# Build a docker image for the application
# Run a container using the image
# Create a CI job to clone the repository, build the application, create an image, and push the image to a registry, tagged with a build number
# Create a CI job to start a service using an image specified by the build number
# Create automation to setup the URL to the service for QA, and route traffic to it
# Create automation to setup the URL to the service for LIVE, and route traffic to it
# Create a CI job to promote the service using an image specified by the build number
