#!/bin/bash

#set -e

ARISC_CONFIG_FILE=${LICHEE_BOARD_CONFIG_DIR}/arisc.config

pmu_type_parse()
{
	rm -f $ARISC_CONFIG_FILE
	touch $ARISC_CONFIG_FILE
	echo "export LICHEE_ARISC_DEFDIR=ar100s" >> $ARISC_CONFIG_FILE
	echo "export LICHEE_ARISC_DEFCONFIG=sun60iw2p1_defconfig" >> $ARISC_CONFIG_FILE
}

pmu_type_parse