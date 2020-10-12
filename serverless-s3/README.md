# Serverless S3

When you deploy using the serverless framework it creates a s3 bucket for you. This can have increased security if you just add a few extra values to the serverless.yml file.

``` bash
  deploymentBucket:
    maxPreviousDeploymentArtifacts: 1
    blockPublicAccess: true
    serverSideEncryption: AES256
    tags:
      Application: ${self:custom.application}
      Serverless : "true"
```
