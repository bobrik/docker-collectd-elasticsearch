Hostname "{{ ES_HOST }}"

FQDNLookup false
Interval 10
Timeout 2
ReadThreads 5

LoadPlugin write_graphite

<Plugin "write_graphite">
 <Carbon>
   Host "{{ GRAPHITE_HOST }}"
   Port "{{ GRAPHITE_PORT | default("2003") }}"
   Protocol "tcp"
   Prefix "{{ GRAPHITE_PREFIX | default("collectd.") }}"
   StoreRates true
   AlwaysAppendDS false
   SeparateInstances true
 </Carbon>
</Plugin>

<LoadPlugin "python">
    Globals true
</LoadPlugin>

<Plugin "python">
    ModulePath "/usr/share/collectd/plugins/elasticsearch"

    Import "elasticsearch"

    <Module "elasticsearch">
        Host "{{ ES_HOST }}"
        Port "{{ ES_PORT }}"
        Cluster "{{ ES_CLUSTER }}"
        Version "{{ ES_VERSION | default("1.0") }}"
    </Module>
</Plugin>
