iid=$(aws ec2 describe-instances \
  --filters "Name=tag:Name,Values=slave" \
  --query "Reservations[*].Instances[*].InstanceId" \
  --output text)
pid=$(aws ec2 describe-instances \
  --instance-ids "$iid" \
  --query "Reservations[*].Instances[*].PublicIpAddress" \
  --output text)
echo $iid
echo $pid
touch new
echo $pid >> new
cat new
