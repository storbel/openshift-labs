
#### Pod logs display

 dump pod logs (stdout)
`oc logs my-pod   `{{execute}}
 dump pod logs, with label name=myLabel (stdout)                              
`oc logs -l name=myLabel `{{execute}}    
 dump pod logs (stdout) for a previous instantiation of a container                   
`oc logs my-pod --previous`{{execute}}       
 dump pod container logs (stdout, multi-container case)               
`oc logs my-pod -c my-container`{{execute}} 
 dump pod logs, with label name=myLabel (stdout)              
`oc logs -l name=myLabel -c my-container   `{{execute}}     
 dump pod container logs (stdout, multi-container case) for a previous instantiation of a container
`oc logs my-pod -c my-container --previous  `{{execute}}    
 stream pod logs (stdout)
`oc logs -f my-pod `{{execute}}
 stream pod container logs (stdout, multi-container case)
                             
`oc logs -f my-pod -c my-container`{{execute}}
 stream all pods logs with label name=myLabel (stdout)              
`oc logs -f -l name=myLabel --all-containers    `{{execute}}

