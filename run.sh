if [ "$USE_UVICORN" = "true" ]
then
  if [ "$LOCAL_DEV" = "true" ]
  then
    uvicorn --host 0.0.0.0 --port 8080 src.app:app --reload
  else
    uvicorn --host 0.0.0.0 --port 8080 src.app:app
  fi
else
  gunicorn src.app:app --workers 2 --worker-class uvicorn.workers.UvicornWorker --bind 0.0.0.0:8080
fi
