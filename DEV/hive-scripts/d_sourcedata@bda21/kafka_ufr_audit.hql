CREATE EXTERNAL TABLE d_sourcedata.kafka_ufr_audit(
	  createdate string , 
	  applicationcode string , 
	  servicename string , 
	  customerpineq string , 
	  employeeid string , 
	  employeelogin string , 
	  employeebranchnumber string , 
	  employeebranchmnemonic string , 
	  employeeeqprofile string , 
	  channel string , 
	  operation string , 
	  statuscode string , 
	  esiaaccountid string )
	ROW FORMAT SERDE 
	  'org.apache.hive.hcatalog.data.JsonSerDe' 
	WITH SERDEPROPERTIES ( 
	  'ignore.malformed.json'='true') 
	STORED AS INPUTFORMAT 
	  'org.apache.hadoop.mapred.TextInputFormat' 
	OUTPUTFORMAT 
	  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
	LOCATION
	  'hdfs://bda21/dev/d_sourcedata/db/kafka_ufr_audit';