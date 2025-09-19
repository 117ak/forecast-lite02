#!/bin/bash
pip install -r requirements.txt
exec gunicorn -b 0.0.0.0:${PORT:-8080} app:app
