#!/bin/bash
aws ec2 describe-instances --profile gs  --query "Reservations[].Instances[?Tags[?Key == 'aws:cloudformation:logical-id' && (contains(Value, 'workerAutoScalingGroup')||contains(Value, 'MasterInstance'))][]][].[InstanceId,InstanceType, Tags[?Key=='Name'].Value | [0]]" --output text
