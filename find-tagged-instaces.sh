#!/bin/bash
aws ec2 describe-instances --profile gs --query "Reservations[].Instances[?Tags[?Key == 'aws:cloudformation:logical-id' && contains(Value, 'workerAutoScalingGroup')][]][].[InstanceId,InstanceType]"  --output text
