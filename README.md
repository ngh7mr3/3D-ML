# 3D ML
3D ML labs using trimesh, pytorch3d and sketchfab

## Lab 1
Choose initial model and convert mesh representation into voxels/point cloud.
Used model - [Cybertruck](https://sketchfab.com/3d-models/low-poly-tesla-cybertruck-5d5d84862b1046b7983433938cd9fbe6)

1. Mesh representation
![Original mesh](img/orig_mesh.jpg)
2. Voxels representation
![Voxels representation](img/voxels.jpg)
3. Point cloud representation
![Cloud point](img/point_cloud.jpg)

## Lab 2
### ICP algorithm
1. Combined models containing "error"
![ICP Source](img/ipc_source.jpg)
2. Restored version result
![ICP Result](img/ipc.jpg)

### Make a cybertruck from sphere!
![Cybertruck animation](img/sphere_to_cybertruck.gif)

## Final lab
1. Load points cloud of some environment and find some car (using CloudCompare)
![Car to plane](img/car_on_map.jpg)
3. Clean out bad points from it and convert cloud to mesh (using Meshlab)
![Car to plane](img/meshlab.jpg)
![Car to plane](img/car_mesh.jpg)
4. Using previous steps from labs 1&2 convert car's mesh into plane's mesh (note: convex hull is used)
![Car to plane](img/car_to_plane.gif)
