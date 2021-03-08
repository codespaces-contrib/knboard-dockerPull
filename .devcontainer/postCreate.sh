cd backend
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements/local.txt
docker-compose -f ../services.yml up --d
python manage.py migrate
echo "Ac0mPl3xP@55w0rd" | python manage.py createsuperuser --username admin --email a@a.com --noinput
python manage.py loaddata avatars