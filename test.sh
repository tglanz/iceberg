#!/bin/bash

./gradlew \
  -DsparkVersion=3.5 -DscalaVersions=2.12 \
  :iceberg-spark:iceberg-spark-extensions-3.5_2.12:test --tests '*' --tests '!TestCallStatementParser' \
  --rerun-tasks --console=plain
