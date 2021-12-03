# syntax = docker/dockerfile:1.0-experimental
# Build the manager binary
FROM mcr.microsoft.com/k8s/csi/nfs-csi:v3.0.0

RUN clean-install netbase

