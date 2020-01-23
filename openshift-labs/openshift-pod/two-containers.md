


`oc apply -f two-containers.yml`


`oc get pod -o wide`


oc describe pod 

# dump pod logs (stdout)
oc logs my-pod   
# dump pod logs, with label name=myLabel (stdout)                              
oc logs -l name=myLabel     
# dump pod logs (stdout) for a previous instantiation of a container                   
oc logs my-pod --previous                      
oc logs my-pod -c my-container                 # dump pod container logs (stdout, multi-container case)
oc logs -l name=myLabel -c my-container        # dump pod logs, with label name=myLabel (stdout)
oc logs my-pod -c my-container --previous      # dump pod container logs (stdout, multi-container case) for a previous instantiation of a container
oc logs -f my-pod                              # stream pod logs (stdout)
oc logs -f my-pod -c my-container              # stream pod container logs (stdout, multi-container case)
oc logs -f -l name=myLabel --all-containers    # stream all pods logs with label name=myLabel (stdout)
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

