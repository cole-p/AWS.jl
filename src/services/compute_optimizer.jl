# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: compute_optimizer

using AWS.Compat
using AWS.UUIDs
"""
    DescribeRecommendationExportJobs()

Describes recommendation export jobs created in the last seven days. Use the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions to request an export of your recommendations. Then use the DescribeRecommendationExportJobs action to view your export jobs.

# Optional Parameters
- `filters`: An array of objects that describe a filter to return a more specific list of export jobs.
- `jobIds`: The identification numbers of the export jobs to return. An export job ID is returned when you create an export using the ExportAutoScalingGroupRecommendations or ExportEC2InstanceRecommendations actions. All export jobs created in the last seven days are returned if this parameter is omitted.
- `maxResults`: The maximum number of export jobs to return with a single request. To retrieve the remaining results, make another request with the returned NextToken value.
- `nextToken`: The token to advance to the next page of export jobs.
"""

describe_recommendation_export_jobs(; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("DescribeRecommendationExportJobs"; aws_config=aws_config)
describe_recommendation_export_jobs(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("DescribeRecommendationExportJobs", args; aws_config=aws_config)

"""
    ExportAutoScalingGroupRecommendations()

Exports optimization recommendations for Auto Scaling groups. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Auto Scaling group export job in progress per AWS Region.

# Required Parameters
- `s3DestinationConfig`: An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket name and key prefix for the export job. You must create the destination Amazon S3 bucket for your recommendations export before you create the export job. Compute Optimizer does not create the S3 bucket for you. After you create the S3 bucket, ensure that it has the required permission policy to allow Compute Optimizer to write the export file to it. If you plan to specify an object prefix when you create the export job, you must include the object prefix in the policy that you add to the S3 bucket. For more information, see Amazon S3 Bucket Policy for Compute Optimizer in the Compute Optimizer user guide.

# Optional Parameters
- `accountIds`: The IDs of the AWS accounts for which to export Auto Scaling group recommendations. If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to export recommendations. This parameter cannot be specified together with the include member accounts parameter. The parameters are mutually exclusive. Recommendations for member accounts are not included in the export if this parameter, or the include member accounts parameter, is omitted. You can specify multiple account IDs per request.
- `fieldsToExport`: The recommendations data to include in the export file.
- `fileFormat`: The format of the export file. The only export file format currently supported is Csv.
- `filters`: An array of objects that describe a filter to export a more specific set of Auto Scaling group recommendations.
- `includeMemberAccounts`: Indicates whether to include recommendations for resources in all member accounts of the organization if your account is the master account of an organization. The member accounts must also be opted in to Compute Optimizer. Recommendations for member accounts of the organization are not included in the export file if this parameter is omitted. This parameter cannot be specified together with the account IDs parameter. The parameters are mutually exclusive. Recommendations for member accounts are not included in the export if this parameter, or the account IDs parameter, is omitted.
"""

export_auto_scaling_group_recommendations(s3DestinationConfig; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("ExportAutoScalingGroupRecommendations", Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig); aws_config=aws_config)
export_auto_scaling_group_recommendations(s3DestinationConfig, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("ExportAutoScalingGroupRecommendations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig), args)); aws_config=aws_config)

"""
    ExportEC2InstanceRecommendations()

Exports optimization recommendations for Amazon EC2 instances. Recommendations are exported in a comma-separated values (.csv) file, and its metadata in a JavaScript Object Notation (.json) file, to an existing Amazon Simple Storage Service (Amazon S3) bucket that you specify. For more information, see Exporting Recommendations in the Compute Optimizer User Guide. You can have only one Amazon EC2 instance export job in progress per AWS Region.

# Required Parameters
- `s3DestinationConfig`: An object to specify the destination Amazon Simple Storage Service (Amazon S3) bucket name and key prefix for the export job. You must create the destination Amazon S3 bucket for your recommendations export before you create the export job. Compute Optimizer does not create the S3 bucket for you. After you create the S3 bucket, ensure that it has the required permission policy to allow Compute Optimizer to write the export file to it. If you plan to specify an object prefix when you create the export job, you must include the object prefix in the policy that you add to the S3 bucket. For more information, see Amazon S3 Bucket Policy for Compute Optimizer in the Compute Optimizer user guide.

# Optional Parameters
- `accountIds`: The IDs of the AWS accounts for which to export instance recommendations. If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to export recommendations. This parameter cannot be specified together with the include member accounts parameter. The parameters are mutually exclusive. Recommendations for member accounts are not included in the export if this parameter, or the include member accounts parameter, is omitted. You can specify multiple account IDs per request.
- `fieldsToExport`: The recommendations data to include in the export file.
- `fileFormat`: The format of the export file. The only export file format currently supported is Csv.
- `filters`: An array of objects that describe a filter to export a more specific set of instance recommendations.
- `includeMemberAccounts`: Indicates whether to include recommendations for resources in all member accounts of the organization if your account is the master account of an organization. The member accounts must also be opted in to Compute Optimizer. Recommendations for member accounts of the organization are not included in the export file if this parameter is omitted. Recommendations for member accounts are not included in the export if this parameter, or the account IDs parameter, is omitted.
"""

export_ec2_instance_recommendations(s3DestinationConfig; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("ExportEC2InstanceRecommendations", Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig); aws_config=aws_config)
export_ec2_instance_recommendations(s3DestinationConfig, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("ExportEC2InstanceRecommendations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("s3DestinationConfig"=>s3DestinationConfig), args)); aws_config=aws_config)

"""
    GetAutoScalingGroupRecommendations()

Returns Auto Scaling group recommendations. AWS Compute Optimizer currently generates recommendations for Auto Scaling groups that are configured to run instances of the M, C, R, T, and X instance families. The service does not generate recommendations for Auto Scaling groups that have a scaling policy attached to them, or that do not have the same values for desired, minimum, and maximum capacity. In order for Compute Optimizer to analyze your Auto Scaling groups, they must be of a fixed size. For more information, see the AWS Compute Optimizer User Guide.

# Optional Parameters
- `accountIds`: The IDs of the AWS accounts for which to return Auto Scaling group recommendations. If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to return Auto Scaling group recommendations. Only one account ID can be specified per request.
- `autoScalingGroupArns`: The Amazon Resource Name (ARN) of the Auto Scaling groups for which to return recommendations.
- `filters`: An array of objects that describe a filter that returns a more specific list of Auto Scaling group recommendations.
- `maxResults`: The maximum number of Auto Scaling group recommendations to return with a single request. To retrieve the remaining results, make another request with the returned NextToken value.
- `nextToken`: The token to advance to the next page of Auto Scaling group recommendations.
"""

get_auto_scaling_group_recommendations(; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetAutoScalingGroupRecommendations"; aws_config=aws_config)
get_auto_scaling_group_recommendations(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetAutoScalingGroupRecommendations", args; aws_config=aws_config)

"""
    GetEC2InstanceRecommendations()

Returns Amazon EC2 instance recommendations. AWS Compute Optimizer currently generates recommendations for Amazon Elastic Compute Cloud (Amazon EC2) and Amazon EC2 Auto Scaling. It generates recommendations for M, C, R, T, and X instance families. For more information, see the AWS Compute Optimizer User Guide.

# Optional Parameters
- `accountIds`: The IDs of the AWS accounts for which to return instance recommendations. If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to return instance recommendations. Only one account ID can be specified per request.
- `filters`: An array of objects that describe a filter that returns a more specific list of instance recommendations.
- `instanceArns`: The Amazon Resource Name (ARN) of the instances for which to return recommendations.
- `maxResults`: The maximum number of instance recommendations to return with a single request. To retrieve the remaining results, make another request with the returned NextToken value.
- `nextToken`: The token to advance to the next page of instance recommendations.
"""

get_ec2_instance_recommendations(; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetEC2InstanceRecommendations"; aws_config=aws_config)
get_ec2_instance_recommendations(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetEC2InstanceRecommendations", args; aws_config=aws_config)

"""
    GetEC2RecommendationProjectedMetrics()

Returns the projected utilization metrics of Amazon EC2 instance recommendations.

# Required Parameters
- `endTime`: The time stamp of the last projected metrics data point to return.
- `instanceArn`: The Amazon Resource Name (ARN) of the instances for which to return recommendation projected metrics.
- `period`: The granularity, in seconds, of the projected metrics data points.
- `startTime`: The time stamp of the first projected metrics data point to return.
- `stat`: The statistic of the projected metrics.

"""

get_ec2_recommendation_projected_metrics(endTime, instanceArn, period, startTime, stat; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetEC2RecommendationProjectedMetrics", Dict{String, Any}("endTime"=>endTime, "instanceArn"=>instanceArn, "period"=>period, "startTime"=>startTime, "stat"=>stat); aws_config=aws_config)
get_ec2_recommendation_projected_metrics(endTime, instanceArn, period, startTime, stat, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetEC2RecommendationProjectedMetrics", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("endTime"=>endTime, "instanceArn"=>instanceArn, "period"=>period, "startTime"=>startTime, "stat"=>stat), args)); aws_config=aws_config)

"""
    GetEnrollmentStatus()

Returns the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is the master account of an organization, this action also confirms the enrollment status of member accounts within the organization.

"""

get_enrollment_status(; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetEnrollmentStatus"; aws_config=aws_config)
get_enrollment_status(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetEnrollmentStatus", args; aws_config=aws_config)

"""
    GetRecommendationSummaries()

Returns the optimization findings for an account. For example, it returns the number of Amazon EC2 instances in an account that are under-provisioned, over-provisioned, or optimized. It also returns the number of Auto Scaling groups in an account that are not optimized, or optimized.

# Optional Parameters
- `accountIds`: The IDs of the AWS accounts for which to return recommendation summaries. If your account is the master account of an organization, use this parameter to specify the member accounts for which you want to return recommendation summaries. Only one account ID can be specified per request.
- `maxResults`: The maximum number of recommendation summaries to return with a single request. To retrieve the remaining results, make another request with the returned NextToken value.
- `nextToken`: The token to advance to the next page of recommendation summaries.
"""

get_recommendation_summaries(; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetRecommendationSummaries"; aws_config=aws_config)
get_recommendation_summaries(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("GetRecommendationSummaries", args; aws_config=aws_config)

"""
    UpdateEnrollmentStatus()

Updates the enrollment (opt in) status of an account to the AWS Compute Optimizer service. If the account is a master account of an organization, this action can also be used to enroll member accounts within the organization.

# Required Parameters
- `status`: The new enrollment status of the account. Accepted options are Active or Inactive. You will get an error if Pending or Failed are specified.

# Optional Parameters
- `includeMemberAccounts`: Indicates whether to enroll member accounts of the organization if the your account is the master account of an organization.
"""

update_enrollment_status(status; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("UpdateEnrollmentStatus", Dict{String, Any}("status"=>status); aws_config=aws_config)
update_enrollment_status(status, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = compute_optimizer("UpdateEnrollmentStatus", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("status"=>status), args)); aws_config=aws_config)
