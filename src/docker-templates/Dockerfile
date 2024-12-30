# Use a Ruby base image
FROM ruby:3.3.0-slim AS base

# Set the working directory inside the container
WORKDIR /rails

# Install system dependencies
RUN apt-get update -qq && apt-get install --no-install-recommends -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn \
  libvips \
  curl \
  && rm -rf /var/lib/apt/lists/*

# Set environment variables for Rails (can be overridden in Kubernetes/Compose)
ENV RAILS_ENV=production \
    RAILS_SERVE_STATIC_FILES=true \
    RAILS_LOG_TO_STDOUT=true \
    BUNDLE_PATH=/usr/local/bundle \
    BUNDLE_DEPLOYMENT=1

# Copy Gemfiles and install Ruby dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install --without development test

# Copy the entire app code
COPY . .

# Precompile assets (optional step for production)
RUN RAILS_ENV=production bundle exec rake assets:precompile

# Expose port 3000 for the Rails app
EXPOSE 3000

# Set default user to avoid running as root in the container
RUN useradd -m rails && chown -R rails:rails /rails
USER rails

# Command to start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
