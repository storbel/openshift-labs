




oc apply -f pod.yml



oc run -i --tty busybox --image=busybox -- sh  # Run pod as interactive shell
oc run nginx --image=nginx --restart=Never -n 
mynamespace                                         # Run pod nginx in a specific namespace
oc run nginx --image=nginx --restart=Never     # Run pod nginx and write its spec into a file called pod.yaml
--dry-run -o yaml > pod.yaml

oc attach my-pod -i                            # Attach to Running Container
oc port-forward my-pod 5000:6000               # Listen on port 5000 on the local machine and forward to port 6000 on my-pod
oc exec my-pod -- ls /                         # Run command in existing pod (1 container case)
oc exec my-pod -c my-container -- ls /         # Run command in existing pod (multi-container case)
oc top pod POD_NAME --containers               # Show metrics for a given pod and its containers

