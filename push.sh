#!/bin/sh
# aws s3api create-bucket --bucket gnu-sergio-nuxt --region us-east-1 
# aws s3 website s3://gnu-sergio-nuxt/ --index-document index.html --error-document index.html
# aws s3api put-bucket-versioning --bucket gnu-sergio-nuxt --versioning-configuration Status=Enabled
# aws s3api put-bucket-policy --bucket gnu-sergio-nuxt --policy file://policy.json
npm run generate
aws s3 cp dist s3://gnu-sergio-nuxt --recursive