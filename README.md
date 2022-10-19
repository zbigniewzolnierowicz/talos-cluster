## IP addresses

- Virtualization servers
  - HP Z240 (asterix.homelab.local) - 10.1.0.1
    - Minecraft (mc.homelab.local, mc.asterix.homelab.local) - 10.1.0.2
    - Kubernetes Node #1 (k8s-0.homelab.local, k8s-0.asterix.homelab.local) - 10.1.0.3
    - Kubernetes Node #2 (k8s-2.homelab.local, k8s-1.asterix.homelab.local) - 10.1.0.3
  - Lenovo ThinkCentre (thinkcentre.homelab.local) - 10.1.1.1

## Things I had to do:

1. Set up the Talos cluster
2. Install Cilium
3. Install MetalLB

## Issues

### MetalLB not allowing access to pods

Namespace probably doesn't have the labels. Look up [here](https://metallb.universe.tf/installation/#installation-with-helm).

## Commands

### Wipe everything

```sh
talosctl reset --system-labels-to-wipe STATE --system-labels-to-wipe EPHEMERAL --graceful=false --reboot -n <nodeip/name>
```
