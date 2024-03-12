# minio
Helm chart for MinIO packaged by Bitnami

## Links
* [GitHub: bitnami/charts](https://github.com/bitnami/charts/tree/main/bitnami/minio)
* [Docker Hub: bitnami/minio](https://hub.docker.com/r/bitnami/minio/)
* [Artifact Hub: bitnami/minio](https://artifacthub.io/packages/helm/bitnami/minio/)

## s3cmd
Below is an example `s3cmd` config file (`~/.s3cfg`):
```
[default]
access_key = admin
secret_key = password
host_base = minio.tom.lan
host_bucket = minio.tom.lan
check_ssl_certificate = False
check_ssl_hostname = True
human_readable_sizes = True
```
