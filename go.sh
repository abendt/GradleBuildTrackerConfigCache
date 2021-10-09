#!/bin/bash

goal_configcache() {
	./gradlew --configuration-cache myTask
}

goal_plain() {
	./gradlew myTask
}

goal_help() {
	echo "usage: $0 <goal>
	available goals

	plain: 		invoke gradle without the configuration cache
	configcache: 	invoke with configuration cache enabled
"
exit 1
}

main() {
  local TARGET=${1:-}
  if [ -n "${TARGET}" ] && type -t "goal_$TARGET" &>/dev/null; then
    "goal_$TARGET" "${@:2}"
  else
    goal_help
  fi
}

main "$@"
