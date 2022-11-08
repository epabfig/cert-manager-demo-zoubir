gcp_project_id = "$PROJECT_ID"
org            = "$ORG"
product        = "$PRODUCT"
environment    = "$ENV>"
#gke-standard subnet vars
network_cidr  = "10.130.0.0/24"
pods_cidr     = "10.0.0.0/16"
services_cidr = "10.100.0.0/23"

//gke specific
enable_private_nodes   = "true"
master_ipv4_cidr_block = "172.16.0.0/28"   # Using Table 1 `kubectl api range` for GKE Standard
kubernetes_version     = "1.22.12-gke.2300" # From GKE Cluster requirements
release_channel        = "UNSPECIFIED"         # From GKE Cluster requirements

//pool specific
gke_pool_node_count   = "1"
gke_pool_image_type   = "COS_CONTAINERD"
gke_pool_disk_size_gb = "100"
gke_pool_machine_type = "e2-medium"
