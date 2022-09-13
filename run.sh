#!/bin/bash

OUTPUT=$(pylint main.py)
SCORE=$(sed -n '$s/[^0-9]*\([0-9.]*\).*/\1/p' <<< "$OUTPUT")

echo $SCORE
