#!/bin/bash
set -e

if [[ "$1" = 'serve' ]]; then

	# Start server
	exec java -jar $JAVA_ARGS \
		-Xmx$JAVA_HEAP_SIZE -Xms$JAVA_HEAP_SIZE \
		$SERVER_PATH/paper.jar \
		$SPIGOT_ARGS \
		--bukkit-settings $CONFIG_PATH/bukkit.yml \
		--spigot-settings $CONFIG_PATH/spigot.yml \
		--commands-settings $CONFIG_PATH/commands.yml \
		--paper-settings $CONFIG_PATH/paper.yml \
		--config $PROPERTIES_LOCATION \
		--plugins $PLUGINS_PATH \
		--world-dir $WORLDS_PATH \
		$PAPERSPIGOT_ARGS
fi

exec "$@"
