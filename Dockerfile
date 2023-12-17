# Use the official Miniflux image as base
FROM miniflux/miniflux:2.0.51

# Set environment variables
ENV DATABASE_URL=postgres://postgres:dbpswd@db.zrjsmispnqiugnchdung.supabase.co:5432/postgres?sslmode=require
ENV RUN_MIGRATIONS=1
ENV CREATE_ADMIN=1
ENV ADMIN_USERNAME=admin
ENV ADMIN_PASSWORD=secret
ENV BASE_URL=https://reader.danieltolentino.tech/
ENV WEBAUTHN=1
# Expose port 8080
EXPOSE 8080

# Start the Miniflux application
CMD ["miniflux", "server"]
