cd /home/runner/work/opencollective-frontend/opencollective-frontend/opencollective-api
echo "> Restoring opencollective_dvl database for e2e testing";
PGHOST=localhost PGUSER=postgres npm run db:restore
npm run db:migrate
if [ $? -ne 0 ]; then
  echo "Error with restoring opencollective_dvl, exiting"
  exit 1;
else
  echo "✓ API is setup";
fi
