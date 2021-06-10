#!/bin/bash
# set -x
echo "before set: $@"
set -- echo hi $@
echo "after set: $@"
