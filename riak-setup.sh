docker exec <CONTAINER_ID> riak-admin bucket-type create data '{"props": {"allow_mult": true, "last_write_wins": false, "consistent": false }}';
docker exec <CONTAINER_ID> riak-admin bucket-type create maps '{"props": {"datatype":"map", "allow_mult": true, "last_write_wins": false, "consistent": false }}';
docker exec <CONTAINER_ID> riak-admin bucket-type create sets '{"props": {"datatype":"set", "allow_mult": true, "last_write_wins": false, "consistent": false }}';
docker exec <CONTAINER_ID> riak-admin bucket-type create counters '{"props": {"datatype":"counter", "allow_mult": true, "last_write_wins": false, "consistent": false }}';
docker exec <CONTAINER_ID> riak-admin bucket-type activate data;
docker exec <CONTAINER_ID> riak-admin bucket-type activate maps;
docker exec <CONTAINER_ID> riak-admin bucket-type activate sets;
docker exec <CONTAINER_ID> riak-admin bucket-type activate counters;
