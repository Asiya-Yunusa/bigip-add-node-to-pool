# bigip-add-node-to-pool
This script is designed to add a create a BIG-IP LTM node, monitor and pool. It then creates a pool attachment to add the node to the pool.

The current issue is referencing an attribute of the pool and od to create the node attachment. And also referncing an attribute of the monitor to assign to a pool. 
