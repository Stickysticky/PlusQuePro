./vendor/bin/sail up -d
echo "Containers are up"
./vendor/bin/sail artisan app:store-trending-week-movies
./vendor/bin/sail artisan app:store-trending-day-movies
echo "The app is ready. Use http://localhost for the app (with a navigator without CORS policy) and http://localhost:8081/ to see the database (id: 'root', pass: 'password')."
echo "An account must be created on the app to see movies."