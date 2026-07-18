vv() {
  if [ -n "${VIRTUAL_ENV:-}" ]; then
    deactivate
    return
  fi

  if [ -f ".venv/bin/activate" ]; then
    . ".venv/bin/activate"
    return
  fi

  printf 'vv: no .venv/bin/activate found\n' >&2
  return 1
}
