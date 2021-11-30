# Automation_Project
Task 1: Set Up Necessary Infrastructure
Create an IAM role, a security group, an S3 bucket and launch an EC2 instance.
 

Details of the task:
Firstly, create an IAM role that can be attached to an EC2 instance, and attach a policy ‘AmazonS3FullAccess’. Use the role name as ‘YourFirstName_CourseAssignment’ and tag (key, value) as (EC2, S3Full).

Next, create a security group with the name ‘SG_YourFirstName’ and description as ‘Required for Course Assignment’ which opens inbound connections to ports 80, 443 and 22. Put the name tag as ‘WebServer Sec’ on the security group.

Now, set up an EC2 instance in the North Virginia (us-east-1) region:

Select AMI as ‘Ubuntu Server 18.04 LTS (HVM)’ and instance type as ‘t2.micro’.
This EC2 instance has to be created in default VPC.
Attach the IAM role which was created previously.
Create a tag with the key ‘Name’ and value ‘Web Server’ for the EC2 instance.
Attach the security group to the EC2 instance and launch it.
Finally, create an S3 bucket with the name ‘upgrad-<YourFName>’ or anything if not available.
  
  Task-2
  Host Script On Github
Initialise a Git repository with the name ‘Automation_Project’ and update the readme.md file which explains the project. This repository will now host your automation script 
Create a new ‘Dev’ branch and commit the script into it. 
Create a pull request from the ‘Dev’ to the master (called as ‘main’) branch in your GitHub repository. 
Finally, create a tag named ‘Automation-v0.1’ after you merge the ‘Dev’ branch to the main branch. You can use Github UI for the pull request and tagging ​​​
