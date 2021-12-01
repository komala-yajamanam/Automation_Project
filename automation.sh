#install apache2

sudo apt-get update
sudo apt-get install apache2
sudo systemctl --type=service --state=active
sudo systemctl start apache2.service


#Create a tar archive of apache2 access logs and error logs


timestamp=`date +%d%m%Y-%H%M%S`
cd ~
cd /tmp/
tar -zcvf komala-httpd-logs-${timestamp}.tar.gz /var/log/apache2/



#install AWS CLI manually before writing and testing the script.sudo apt update

sudo apt install awscli

#run the AWS CLI command and copy the archive to the s3 bucket.


aws s3 \
cp /tmp/komala-httpd-logs-${timestamp}.tar.gz \
s3://upgrad-komala/komala-httpd-logs-${timestamp}.tar.gz



