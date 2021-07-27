# Source
https://www.youtube.com/watch?v=vVTExFrUxE4

https://www.youtube.com/watch?v=k5PeywcbVYc

# with user and password
https://www.youtube.com/watch?v=-XzMfd4XQak
<pre><code>
To see replicaset run following command
rs.status().set

Commands used to create replication configuration:

Steps to configure replica set in three nodes:
step 1:
From node one:
db = (new Mongo('localhost:27017')).getDB('test')

step 2:
#Config for connecting three nodes together (execute this from one of the node)
config = {
  "_id": "comments",
  "members": [
    {
      "_id": 0,
      "host": "node1:27017"
    },
    {
      "_id": 1,
      "host": "node2:27017"
    },
    {
      "_id": 2,
      "host": "node3:27017"
    }
  ]
}
step 3:
#after writing the config file, we need to initiate to start replicating data of "comments" replica set

rs.initiate(config)

</pre></code>
