aws cloudformation create-stack --stack-name Jenkins --template-body file://ProvisionJenkins.yaml --capabilities CAPABILITY_NAMED_IAM
watch -n1 aws cloudformation describe-stacks --stack-name Jenkins --query 'Stacks[0].StackStatus'
aws cloudformation describe-stacks --stack-name Jenkins --query 'Stacks[0].Outputs[0].OutputValue'
aws cloudformation delete-stack --stack-name Jenkins
tail -f /var/log/cloud-init-output.log
