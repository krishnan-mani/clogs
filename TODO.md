- Generate a simple Java webapp, using, for example:
```mvn archetype:generate -DarchetypeArtifactId=maven-archetype-webapp```

- Add a Dockerfile, build a docker image for the app, run a container using the image
- Sign up for a account at Docker Hub, create a repository to house images for the app
- Create a CI job to build the app, build the image, push the image to the Docker Hub repository
- Use automation to start a service for the app using the image specified, and send traffic to the app
- Create a CI job to promote the service using an image specified by the build number
