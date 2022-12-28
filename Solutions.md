Error1: 
(k8s-Cluster_Manual)

kubeadm init
...
[preflight] Running pre-flight checks
error execution phase preflight: [preflight] Some fatal errors occurred:
	[ERROR CRI]: container runtime is not running: output: time="2020-09-24T11:49:16Z" level=fatal msg="getting status of runtime failed: rpc error: code = Unimplemented desc = unknown service runtime.v1alpha2.RuntimeService"
, error: exit status 1

Solution:

$ rm /etc/containerd/config.toml
$ systemctl restart containerd
$ kubeadm init