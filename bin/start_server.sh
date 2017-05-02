#!/bin/bash

# エラーで処理中断
set -ex

if [ "${MANUAL}" = "" ]; then
  RAILS_ENV=${RAILS_ENV} bin/rails db:create
  RAILS_ENV=${RAILS_ENV} bin/rails db:migrate

  if [ "${RAILS_ENV}" = "development" ]; then
    bin/webpack-dev-server > log/webpack-dev-server.log 2>&1 &
  fi

  RAILS_ENV=${RAILS_ENV} bin/start_rails.sh
else
  echo "******* MANUAL MODE *******"
  echo start the server with the following command.
  echo "#start rails server"
  echo "bin/start_dev_server"
  echo ""
  tail -f < /dev/null
fi

