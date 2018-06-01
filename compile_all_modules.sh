#! /bin/bash
set -eu

MODS=/home/yann/modules/

for dir in ${MODS}/*; do
	if [ -d "$dir" ]; then
		make clean -C "$dir"
		git -C "$dir" pull
		make -j`nproc` -C "$dir"
		sudo make install -C "$dir"
	fi
done

