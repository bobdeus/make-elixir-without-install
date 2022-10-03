# ./Dockerfile

# Extend from the official Elixir image.
FROM elixir:latest

# Keep this line to keep the container running
ENTRYPOINT ["tail", "-f", "/dev/null"]

# Create app directory and copy the Elixir projects into it.
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install Hex package manager.
# By using `--force`, we don't need to type "Y" to confirm the installation.
RUN mix local.hex --force

# Compile the project if there is a project you could uncomment these lines.
# RUN mix local.rebar --force
# RUN mix deps.get
# RUN mix do compile