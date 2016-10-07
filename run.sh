#!/bin/sh

set -e

envtpl --keep-template /etc/collectd/collectd.conf.tpl

collectd -f
