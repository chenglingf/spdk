#!/usr/bin/env bash

set -e

testdir=$(readlink -f $(dirname $0))
rootdir=$testdir/../../..
source $rootdir/scripts/autotest_common.sh

timing_enter env

timing_enter vtophys
$testdir/vtophys/vtophys
timing_exit vtophys

timing_exit env