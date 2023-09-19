set -e

echo "Deploying application..."

#Enter maintenance mode
(php artisan down --message 'The app is being (quickly!) updated. Please try again in a minute') || true

	#Update codebase
	git pull origin master

#Exit maintenace mode
php artisan up

echo "Applcation deployed!"