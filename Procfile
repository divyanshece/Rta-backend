release: python manage.py migrate --noinput
web: bash -c "python manage.py migrate --noinput && daphne -b 0.0.0.0 -p $PORT ehazira.asgi:application"
