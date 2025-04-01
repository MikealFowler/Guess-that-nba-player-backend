#!/bin/sh

# Wait until the DB is accepting connections
echo "⏳ Waiting for Postgres at $DATABASE_URL..."

until nc -z db 5432; do
  sleep 1
done

echo "✅ Postgres is ready!"

# Run the normal startup command
npx prisma migrate deploy
node prisma/seedplayers.js
node server.js