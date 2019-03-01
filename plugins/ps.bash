# -----------------------------------------------------
# ps - report a snapshot of the current processes
# -----------------------------------------------------

function p () {
  ps aux | grep "$@"
}
