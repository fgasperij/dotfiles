function inside_ask_repo() {
  git status > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    exit 1
  fi

  if [  $(git remote -v | grep "instedd/ask" | wc -l) ]; then
    exit 0
  fi

  exit 1
}

function asktest() {
  if $(inside_ask_repo); then
    docker-compose run --rm app mix test ${1}
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
    docker-compose run --rm app $@
  else
    echo "This is not the instedd/ask repo, go bother somewhere else."
  fi
}

function askappdebug() {
  docker-compose run --service-ports --rm app iex -S mix phoenix.server
}

function askuprest() {
  docker-compose up db brunch
}

function askutils_help() {
cat "
  1. Run client tests.
  2. Update NPM dependencies.
  3. Exit.
"
}

# function askutils() {
#   askutils_help()
#   read option
#   while (true):
#     case option:
#       1 ->
#         docker-compose run --rm brunch npm test
#         exit
#       2 ->
#         docker-compose run --rm brunch npm install
#         exit
#       3 ->
#         exit
#       default ->
#         askutils_help()
#     end
#   end
# }
