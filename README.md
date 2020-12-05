# kustomize loki stack


## Usage

1. 修改 `resources/loki/loki.secret.yml` 相关的 s3 地址。

```yaml
  aws:
    bucketnames: bucketname
    s3: https://akid:akey@localhost:9000
    s3forcepathstyle: true
```

2. 执行 `make apply` 进行部署。


