function inside_ask_repo() {
  git status > /dev/null 2>&1 
  if [ $? -ne 0 ]; then
    exit 1
  fi

  if [  2 = $(git remote -v | grep "instedd/ask" | wc -l) ]; then
    exit 0
  fi

  exit 1
}

function asktest() {
  if $(inside_ask_repo); then
    docker-compose run --rm app mix test "${1}"
  else
    echo "This is not the instedd/ask repo, go bother somewhere else."
  fi
}

function askiex() {
  if $(inside_ask_repo); then
    docker exec -it ask_app_1 iex -S mix
  else
    echo "This is not the instedd/ask repo, go bother somewhere else."
  fi
}

function askrun() {
  if $(inside_ask_repo); then
    docker-compose run --rm app "$@"
  else
    echo "This is not the instedd/ask repo, go bother somewhere else."
  fi
}