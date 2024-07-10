# Dockerfile

# Use the official Ruby image from Docker Hub
FROM ruby:3.0.3

# Set the working directory inside the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 4567 to the outside world
EXPOSE 80

# Command to run the application
CMD ["ruby", "app.rb"]
