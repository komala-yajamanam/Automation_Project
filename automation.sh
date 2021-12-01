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



#web page to get the metadata of the archived logs. 
 cd /var/www/html
cat /var/www/html/inventory.html

size=$(find "komala-httpd-logs-${timestamp}.tar.gz" -printf "%s")
echo  "httpd-log    ${timestamp}    tar    $size" >> /var/www/html/inventory.html


# create a cron job file

crontab -r
crontab -u root -l
sudo touch /etc/cron.d/automation
echo "40 14 * * * sh /root/Automation_Project/automation.sh" > /etc/cron.d/automation
sudo /usr/bin/crontab /etc/cron.d/automation
crontab -u root -l

