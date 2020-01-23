




`oc apply -f pod.yml`{{execute}}


  Run pod as interactive shell
`oc run -i --tty busybox --image=busybox -- sh `{{execute}}
`oc run nginx --image=nginx --restart=Never -n `{{execute}}
 Run pod nginx in a specific namespace mynamespace 
 Run pod nginx and write its spec into a file called pod.yaml                                        
`oc run nginx --image=nginx --restart=Never    --dry-run -o yaml > pod.yaml`{{execute}}
  Attach to Running Container
`oc attach my-pod -i                           
 Listen on port 5000 on the local machine and forward to port 6000 on my-pod
`oc port-forward my-pod 5000:6000   `{{execute}}            
 Run command in existing pod (1 container case)
`oc exec my-pod -- ls / `{{execute}}                     
 Run command in existing pod (multi-container case)
`oc exec my-pod -c my-container -- ls /    `{{execute}}     
 Show metrics for a given pod and its containers
`oc top pod POD_NAME --containers   `{{execute}}            

