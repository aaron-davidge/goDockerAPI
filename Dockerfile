FROM golang:alpine 

# dockers package dependency 
RUN apk add --no-cache git

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
# RUN go get -d -v ./...

# Install the package
# RUN go install -v ./...

# This container exposes port 8080 to the outside world
EXPOSE 80 

# build app and name it app, and copy into pwd in container
# RUN go build -o ./app .

# Run the executable
CMD ["go", "run", "main.go"]

# terminal: docker build -t app .