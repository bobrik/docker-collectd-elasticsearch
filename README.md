# Collect ceph metrics to graphite

This is dockerized version of [collectd-elasticsearch](https://github.com/phobos182/collectd-elasticsearch).
You only need docker to run this, elasticsearch to monitor and graphite to store metrics.

## Running

```
docker run -d -e GRAPHITE_HOST=<graphite host> -e ES_HOST=<es host> \
  -e ES_PORT=<es port> -e ES_CLUSTER=<es cluster name> bobrik/collectd-elasticsearch
```

Environment variables:

* `GRAPHITE_HOST` - host where carbon is listening for data.
* `GRAPHITE_PORT` - port where carbon is listening for data, `2003` by default.
* `GRAPHITE_PREFIX` - prefix for metrics in graphite, `collectd.` by default.
* `ES_CLUSTER` - elasticsearch cluster name to use in graphite.
* `ES_HOST` - elasticsearch host to monitor.
* `ES_PORT` - elasticsearch port number
* `ES_VERSION` - `0.9` or `1.0` as in collectd-elasticsearch plugin, `1.0` by default

# Authors

* [Ian Babrou](https://github.com/bobrik)
