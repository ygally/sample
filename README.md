# sample

`npm ftest` to run fake test

`npm test` to run mocha tests

`npm run serve` to launch server in fg (production)

# Local Run App

`npm start` to launch as a service

`npm reload` to reload service

`npm stop` to stop service

`npm logs` to follow logs of the service

Go there to see it : http://localhost:3000/

# Install a docker registry locally

`docker run -d -p 5000:5000 --restart always --name registry registry:2`

# Build Docker Image

`docker build -t sample:latest .`

`docker tag sample:latest localhost:5000/sample:latest`

`docker push localhost:5000/sample:latest`

# Run Docker Image

`docker run -dp 127.0.0.1:8090:3000 --rm --name Sample localhost:5000/sample:latest`

Go there to see it : http://localhost:8090/
