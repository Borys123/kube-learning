1.
k config get contexts -o name 
k config view --raw

2. 
/etc/falco/
cat /var/log/syslog | grep falco 

"Launch Package Management Process in Container"
spawned_process
container
package_mgmt_procs

3.
--kubernetes-service-node-port=0
then delete the svc kubernetes

4. PodSecurityStandard
labels:
  pod-security.kubernetes.io/enforce: baseline

5.
kube-bench run --targets=master
kube-bench run --targets=node

6.
sha512sum
cat compare.txt | uniq

7.
k get crd

8. Kubernetes dashboard
edit deployment and maybe svc!
--authentication-mode=token

9.
apparmor_parser
apparmor_status
annotation under POD!

10.
RuntimeClass
under POD:
  runtimeClassName

11.
ETCDCTL_API=3 etcdctl \
-- cert \
-- key \ 
-- cacert \
get /registry/secrets/namespace/secret

12. Hacking
k get all
k exec pod1 cat /etc/secret-volume/password 
k exec -it pod3 -- sh
  mount | grep serviceaccount
  ls /run/secrets/kubernetes.io/serviceaccount 
  curl https://kubernetes.default/api/v1/namespaces/restricted/secrets -H "Authorization: Bearer $(cat token-path)" -k

13.
ps aux | grep collector
strace -cw -p PID

14.
userGroups: ["system:nodes"]

15.
cat audit.log | grep "p.auster" | grep Secret | grep get | jq

16.
securityContext:
  readOnlyRootFilesystem: true
add an emptyDir: {}


17. 
netstat -plnt