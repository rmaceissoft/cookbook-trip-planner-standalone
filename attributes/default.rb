default["trip-planner-client"]["app_name"] = "trip-planner-client"
default["trip-planner-client"]["deploy_to"] = "/opt/trip-planner-client"
default["trip-planner-client"]["server_name"] = "local.tripplannerclient.com"


### nodejs ###
override[:nodejs][:version] = "0.12.3"
override[:nodejs][:npm] = "2.9.1"
override[:nodejs][:source][:checksum] = 'e65d83c6f2c874e28f65c5e192ac0acd2bbb52bfcf9d77e33442d6765a3eb9da'


### NPM packages ###
# Global NPM modules that should installed on the system
default["trip-planner-client"]["npm"]["packages"] = ["gulp"]
