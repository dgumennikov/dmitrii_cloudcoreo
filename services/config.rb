## This file was auto-generated by CloudCoreo CLI
	## This file was automatically generated using the CloudCoreo CLI
	##
	## This config.rb file exists to create and maintain services not related to compute.
	## for example, a VPC might be maintained using:
	##
	## coreo_aws_vpc_vpc "my-vpc" do
	##   action :sustain
	##   cidr "12.0.0.0/16"
	##   internet_gateway true
	## end
	##

coreo_aws_advisor_alert "test_alert" do
	action :define
	service :elb
	display_name "Heartbeat check"
	description "This check finds out what load balancers have healthcheck intervals > 2 mins"
	objectives ["load_balancers"]
	audit_objects["load_balancer_description.health_check.interval"]
	operators [">"]
	alert_when [120]
end