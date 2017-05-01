#!/bin/bash

# エラーで処理中断
set -ex

if [ "${MANUAL}" = "" ]; then
  RAILS_ENV=${RAILS_ENV} bundle exec rails db:create
  RAILS_ENV=${RAILS_ENV} bundle exec rails db:migrate

  RAILS_ENV=${RAILS_ENV} bin/start_rails.sh
else
  echo "******* MANUAL MODE *******"
  echo start the server with the following command.
  echo "#start rails server"
  echo "bin/start_dev_server"
  echo ""
  tail -f < /dev/null
fi

