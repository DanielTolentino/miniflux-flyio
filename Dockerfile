# Use the official Miniflux image as base
FROM miniflux/miniflux:latest

# Set environment variables
ENV DATABASE_URL=postgres://miniflux:secret@db/miniflux?sslmode=disable
ENV RUN_MIGRATIONS=1
ENV CREATE_ADMIN=1
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=secret
ENV BASE_URL=https://reader.danieltolentino.tech/
# Expose port 8080
EXPOSE 8080

# Start the Miniflux application
CMD ["miniflux", "server"]
