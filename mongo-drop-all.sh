#!/bin/sh


command -v 'mongo' >/dev/null 2>&1 || {
  echo >&2 'mongo must be installed.';
  exit 1
}

# credit: http://stackoverflow.com/a/16908246/1720453
mongo \
  --quiet \
  --eval \
  '
    print()
    db
    .getMongo()
    .getDBNames()
    .forEach(function (name) {
      print("  \033[36m" + "drop" + "\033[m", name)
      db
      .getSiblingDB(name)
      .dropDatabase()
    })
    print()
  '
