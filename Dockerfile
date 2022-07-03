FROM node:16-alpine

# set a working directory
WORKDIR /usr/src/app

# copy package.json and package-lock.json
COPY package*.json ./

# run a clean install
RUN npm ci

# copy the source folder to src folder inside the workdir.
COPY src ./src

# expose the port 5432
EXPOSE 5432

# run a executable
ENTRYPOINT ["/usr/local/bin/npm", "run"]

# pass a start command
CMD ["start"]