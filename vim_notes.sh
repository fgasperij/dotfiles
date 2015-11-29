NOTES_DIRECTORY=~/notes/

function open_notes() {
  vim "$NOTES_DIRECTORY"
}

function todos() {
  vim "${NOTES_DIRECTORY}todo_note.md"
}

function note() {
  if [ $# -gt 2 ]; then
    echo "Usage `note note_name`"
    exit 1
  fi

  NOTE_NAME=$1
  vim "${NOTES_DIRECTORY}${NOTE_NAME}"
}
