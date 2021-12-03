# `csi-nfs-driver-patched`

https://github.com/kubernetes-csi/csi-driver-nfs lacks a critical dependency for
using some NFS V3 services (that is, a present /etc/protocols file). This
missing dependency can be provided by installing `netbase`, which is exactly
what this image does.

This fixes `Output: mount.nfs: Protocol not supported`.

Hopefully we will see a fix for this implemented upstream, in the meantime,
feel free to take this image.

See the following issue at the upstream repository for more information:
https://github.com/kubernetes-csi/csi-driver-nfs/issues/251