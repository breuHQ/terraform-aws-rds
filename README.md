# Network module with VPC and subnets

Opinionated terraform module to setup AWS RDS in a given VPC and a private subnet.

## Intputs

| Name               | Description                                                                                                                  | Default Value | Required |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------- | ------------- | -------- |
| db_identifier      | Database Identifier                                                                                                          | -             | Yes      |
| environment        | Environment, For tags                                                                                                        | -             | Yes      |
| db_name            | Database Name                                                                                                                | -             | Yes      |
| db_user            | Database User                                                                                                                | -             | Yes      |
| db_pass            | Database Password                                                                                                            | -             | Yes      |
| engine             | Engine                                                                                                                       | -             | Yes      |
| engine_version     | Database Version e.g For Posgres, it can be 11, 12                                                                           | -             | Yes      |
| instance_class     | The machine instance class from [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) | -             | Yes      |
| security_group     | Security Group                                                                                                               | -             | Yes      |
| private_subnet_ids | Private Subnet ID                                                                                                            | -             | Yes      |
| storage_type       | Storage Type                                                                                                                 | -             | Yes      |

## Outputs

| Name     | Description           |
| -------- | --------------------- |
| db_houst | The database host URL |