default[:elasticsearch_version] = "1.1.0"
default[:elasticsearch_checksum] = "2002f605faff46ff072a012e3194e2260e4a0394"
default[:elasticsearch_clustername] = "#{node[:environment][:name]}"
default[:elasticsearch_home] = "/data/elasticsearch"
default[:elasticsearch_s3_gateway_bucket] = "elasticsearch_#{node[:environment][:name]}"
default[:elasticsearch_heap_size] = 1000
default[:elasticsearch_fdulimit] = nil #  nofiles limit make this something like 32768, see /etc/security/limits.conf
default[:elasticsearch_defaultreplicas] = 1 # replicas are in addition to the original, so 1 replica means 2 copies of each shard
default[:elasticsearch_defaultshards] = 6 # 6*2 shards per index distributes evenly across 3, 4, or 6 nodes
