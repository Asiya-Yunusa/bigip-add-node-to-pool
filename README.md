# bigip-add-node-to-pool
This script is designed to add a create a BIG-IP LTM node, monitor and pool. It then creates a pool attachment to add the node to the pool.

The current issue is referencing an attribute of the pool and od to create the node attachment. And also referncing an attribute of the monitor to assign to a pool. 

Erros I am getting:

![image](https://user-images.githubusercontent.com/43571838/169081617-65c39704-6404-49d3-96cf-b8d3750ec2ab.png)

![image](https://user-images.githubusercontent.com/43571838/169081721-425447ab-c2f9-4376-a4ae-f67022fa2343.png)

![image](https://user-images.githubusercontent.com/43571838/169081817-819ed919-434e-40cc-855d-d329cb0ac44d.png)


