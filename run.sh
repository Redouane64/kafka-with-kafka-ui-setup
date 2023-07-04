#!/bin/bash

kafka_data_dir=kafka_data

if [ ! -d $kafka_data_dir ]; then
  mkdir $kafka_data_dir
  chown -R 1001:1001 $kafka_data_dir
fi

docker compose up -d
