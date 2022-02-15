#!/bin/bash

cat >> perftracker_django/settings_local.py << EOD
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'pt',
        'USER': 'postgres',
        'PASSWORD': 'example',
        'HOST': 'postgres',
        'PORT': '5432',
    }
}
EOD
