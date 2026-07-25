#!/bin/sh

set -eu

repo="${VV_REPO:-https://raw.githubusercontent.com/zian-feng/vv/main}"
install_dir="${VV_INSTALL_DIR:-$HOME/.local/share/vv}"

need_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    printf 'vv: required command not found: %s\n' "$1" >&2
    exit 1
  fi
}

need_cmd curl

mkdir -p "$install_dir"

curl -fsSL "$repo/vv.sh" -o "$install_dir/vv.sh"
curl -fsSL "$repo/vv.fish" -o "$install_dir/vv.fish"

shell_name="${SHELL##*/}"

case "$shell_name" in
  zsh)
    config_file="${ZDOTDIR:-$HOME}/.zshrc"
    source_line="source \"$install_dir/vv.sh\""
    ;;
  bash)
    config_file="$HOME/.bashrc"
    source_line="source \"$install_dir/vv.sh\""
    ;;
  sh)
    config_file="$HOME/.profile"
    source_line=". \"$install_dir/vv.sh\""
    ;;
  fish)
    config_dir="${XDG_CONFIG_HOME:-$HOME/.config}/fish"
    config_file="$config_dir/config.fish"
    source_line="source \"$install_dir/vv.fish\""
    ;;
  *)
    printf 'vv: unsupported shell: %s\n' "$shell_name" >&2
    printf 'Installed files to: %s\n' "$install_dir" >&2
    printf 'Manually source one of:\n' >&2
    printf '  source "%s/vv.sh"\n' "$install_dir" >&2
    printf '  source "%s/vv.fish"\n' "$install_dir" >&2
    exit 1
    ;;
esac

mkdir -p "$(dirname "$config_file")"
touch "$config_file"

if grep -F "$source_line" "$config_file" >/dev/null 2>&1; then
  printf 'vv already configured in %s\n' "$config_file"
else
  {
    printf '\n# vv\n'
    printf '%s\n' "$source_line"
  } >>"$config_file"

  printf 'Added vv to %s\n' "$config_file"
fi

printf 'vv installed to %s\n' "$install_dir"
printf 'Restart your shell or run:\n'
printf '  %s\n' "$source_line"
