## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4.37.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | ~> 4.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.37.0 |
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | 4.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_container_cluster.auto_cluster](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_container_cluster) | resource |
| [google-beta_google_container_cluster.primary_cluster](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_container_cluster) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_router.gke-net-router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.gke_cloud_nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.gke_auto_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.gke_standard_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_container_node_pool.custom-node_pool](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_node_pool) | resource |
| [google_project_service.compute](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_master_ipv4_cidr_block"></a> [auto\_master\_ipv4\_cidr\_block](#input\_auto\_master\_ipv4\_cidr\_block) | The ipv4 cidr block that the GKE masters use | `any` | n/a | yes |
| <a name="input_disable_http_load_balancing"></a> [disable\_http\_load\_balancing](#input\_disable\_http\_load\_balancing) | Enable HTTP Load balancing GCP integration | `bool` | `false` | no |
| <a name="input_enable_private_endpoint"></a> [enable\_private\_endpoint](#input\_enable\_private\_endpoint) | When true, the cluster's private endpoint is used as the cluster endpoint and access through the public endpoint is disabled. | `bool` | `false` | no |
| <a name="input_enable_private_nodes"></a> [enable\_private\_nodes](#input\_enable\_private\_nodes) | Enable Private-IP Only GKE Nodes | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The newly created GCP project ID | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | The GCP Region | `string` | `"us-central1"` | no |
| <a name="input_gke_pool_disk_size_gb"></a> [gke\_pool\_disk\_size\_gb](#input\_gke\_pool\_disk\_size\_gb) | n/a | `string` | n/a | yes |
| <a name="input_gke_pool_disk_type"></a> [gke\_pool\_disk\_type](#input\_gke\_pool\_disk\_type) | n/a | `string` | `"pd-standard"` | no |
| <a name="input_gke_pool_image_type"></a> [gke\_pool\_image\_type](#input\_gke\_pool\_image\_type) | n/a | `string` | n/a | yes |
| <a name="input_gke_pool_machine_type"></a> [gke\_pool\_machine\_type](#input\_gke\_pool\_machine\_type) | Node Pool specific variables | `string` | n/a | yes |
| <a name="input_gke_pool_node_count"></a> [gke\_pool\_node\_count](#input\_gke\_pool\_node\_count) | n/a | `number` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | The GKE version of Kubernetes | `string` | `""` | no |
| <a name="input_logging_service"></a> [logging\_service](#input\_logging\_service) | The logging service that the cluster should write logs to. | `string` | `"logging.googleapis.com/kubernetes"` | no |
| <a name="input_master_ipv4_cidr_block"></a> [master\_ipv4\_cidr\_block](#input\_master\_ipv4\_cidr\_block) | The ipv4 cidr block that the GKE masters use | `any` | n/a | yes |
| <a name="input_monitoring_service"></a> [monitoring\_service](#input\_monitoring\_service) | The GCP monitoring service scope | `string` | `"monitoring.googleapis.com/kubernetes"` | no |
| <a name="input_network_auto_cidr"></a> [network\_auto\_cidr](#input\_network\_auto\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_network_cidr"></a> [network\_cidr](#input\_network\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_org"></a> [org](#input\_org) | n/a | `string` | n/a | yes |
| <a name="input_pods_auto_cidr"></a> [pods\_auto\_cidr](#input\_pods\_auto\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_pods_auto_cidr_name"></a> [pods\_auto\_cidr\_name](#input\_pods\_auto\_cidr\_name) | n/a | `string` | `"gke-auto-pods"` | no |
| <a name="input_pods_cidr"></a> [pods\_cidr](#input\_pods\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_pods_cidr_name"></a> [pods\_cidr\_name](#input\_pods\_cidr\_name) | n/a | `string` | `"gke-standard-pods"` | no |
| <a name="input_pods_range_name"></a> [pods\_range\_name](#input\_pods\_range\_name) | The pre-defined IP Range the Cluster should use to provide IP addresses to pods | `string` | `""` | no |
| <a name="input_product"></a> [product](#input\_product) | n/a | `string` | n/a | yes |
| <a name="input_release_channel"></a> [release\_channel](#input\_release\_channel) | The release channel of this cluster | `string` | `""` | no |
| <a name="input_services_auto_cidr"></a> [services\_auto\_cidr](#input\_services\_auto\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_services_auto_cidr_name"></a> [services\_auto\_cidr\_name](#input\_services\_auto\_cidr\_name) | n/a | `string` | `"gke-auto-services"` | no |
| <a name="input_services_cidr"></a> [services\_cidr](#input\_services\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_services_cidr_name"></a> [services\_cidr\_name](#input\_services\_cidr\_name) | n/a | `string` | `"gke-standard-services"` | no |
| <a name="input_services_range_name"></a> [services\_range\_name](#input\_services\_range\_name) | The pre-defined IP Range the Cluster should use to provide IP addresses to services | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_autopilot_endpoint"></a> [autopilot\_endpoint](#output\_autopilot\_endpoint) | n/a |
| <a name="output_autopilot_id"></a> [autopilot\_id](#output\_autopilot\_id) | n/a |
| <a name="output_autopilot_master_version"></a> [autopilot\_master\_version](#output\_autopilot\_master\_version) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
| <a name="output_gke-net-router-name"></a> [gke-net-router-name](#output\_gke-net-router-name) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_master_version"></a> [master\_version](#output\_master\_version) | n/a |
| <a name="output_name"></a> [name](#output\_name) | The name of the VPC being created |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | The id of the VPC being created |
| <a name="output_network_self_link"></a> [network\_self\_link](#output\_network\_self\_link) | The URI of the VPC being created |
| <a name="output_subnet_auto_selflink"></a> [subnet\_auto\_selflink](#output\_subnet\_auto\_selflink) | n/a |
| <a name="output_subnet_standard_selflink"></a> [subnet\_standard\_selflink](#output\_subnet\_standard\_selflink) | n/a |
