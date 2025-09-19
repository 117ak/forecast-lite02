#!/bin/bash
pip install -r requirements.txt
# 使用 gunicorn 啟動，會更穩定
exec gunicorn -b 0.0.0.0:${PORT:-8080} app:app
