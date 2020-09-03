# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: ram

using AWS.Compat
using AWS.UUIDs
"""
    AcceptResourceShareInvitation()

Accepts an invitation to a resource share from another AWS account.

# Required Parameters
- `resourceShareInvitationArn`: The Amazon Resource Name (ARN) of the invitation.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
"""

accept_resource_share_invitation(resourceShareInvitationArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/acceptresourceshareinvitation", Dict{String, Any}("resourceShareInvitationArn"=>resourceShareInvitationArn); aws_config=aws_config)
accept_resource_share_invitation(resourceShareInvitationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/acceptresourceshareinvitation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareInvitationArn"=>resourceShareInvitationArn), args)); aws_config=aws_config)

"""
    AssociateResourceShare()

Associates the specified resource share with the specified principals and resources.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `principals`: The principals.
- `resourceArns`: The Amazon Resource Names (ARN) of the resources.
"""

associate_resource_share(resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/associateresourceshare", Dict{String, Any}("resourceShareArn"=>resourceShareArn); aws_config=aws_config)
associate_resource_share(resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/associateresourceshare", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    AssociateResourceSharePermission()

Associates a permission with a resource share.

# Required Parameters
- `permissionArn`: The ARN of the AWS RAM permission to associate with the resource share.
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `replace`: Indicates whether the permission should replace the permissions that are currently associated with the resource share. Use true to replace the current permissions. Use false to add the permission to the current permission.
"""

associate_resource_share_permission(permissionArn, resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/associateresourcesharepermission", Dict{String, Any}("permissionArn"=>permissionArn, "resourceShareArn"=>resourceShareArn); aws_config=aws_config)
associate_resource_share_permission(permissionArn, resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/associateresourcesharepermission", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("permissionArn"=>permissionArn, "resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    CreateResourceShare()

Creates a resource share.

# Required Parameters
- `name`: The name of the resource share.

# Optional Parameters
- `allowExternalPrincipals`: Indicates whether principals outside your AWS organization can be associated with a resource share.
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `permissionArns`: The ARNs of the permissions to associate with the resource share. If you do not specify an ARN for the permission, AWS RAM automatically attaches the default version of the permission for each resource type.
- `principals`: The principals to associate with the resource share. The possible values are IDs of AWS accounts, the ARN of an OU or organization from AWS Organizations.
- `resourceArns`: The Amazon Resource Names (ARN) of the resources to associate with the resource share.
- `tags`: One or more tags.
"""

create_resource_share(name; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/createresourceshare", Dict{String, Any}("name"=>name); aws_config=aws_config)
create_resource_share(name, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/createresourceshare", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("name"=>name), args)); aws_config=aws_config)

"""
    DeleteResourceShare()

Deletes the specified resource share.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
"""

delete_resource_share(resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("DELETE", "/deleteresourceshare", Dict{String, Any}("resourceShareArn"=>resourceShareArn); aws_config=aws_config)
delete_resource_share(resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("DELETE", "/deleteresourceshare", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    DisassociateResourceShare()

Disassociates the specified principals or resources from the specified resource share.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `principals`: The principals.
- `resourceArns`: The Amazon Resource Names (ARNs) of the resources.
"""

disassociate_resource_share(resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/disassociateresourceshare", Dict{String, Any}("resourceShareArn"=>resourceShareArn); aws_config=aws_config)
disassociate_resource_share(resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/disassociateresourceshare", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    DisassociateResourceSharePermission()

Disassociates an AWS RAM permission from a resource share.

# Required Parameters
- `permissionArn`: The ARN of the permission to disassociate from the resource share.
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
"""

disassociate_resource_share_permission(permissionArn, resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/disassociateresourcesharepermission", Dict{String, Any}("permissionArn"=>permissionArn, "resourceShareArn"=>resourceShareArn); aws_config=aws_config)
disassociate_resource_share_permission(permissionArn, resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/disassociateresourcesharepermission", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("permissionArn"=>permissionArn, "resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    EnableSharingWithAwsOrganization()

Enables resource sharing within your AWS Organization. The caller must be the master account for the AWS Organization.

"""

enable_sharing_with_aws_organization(; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/enablesharingwithawsorganization"; aws_config=aws_config)
enable_sharing_with_aws_organization(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/enablesharingwithawsorganization", args; aws_config=aws_config)

"""
    GetPermission()

Gets the contents of an AWS RAM permission in JSON format.

# Required Parameters
- `permissionArn`: The ARN of the permission.

# Optional Parameters
- `permissionVersion`: The identifier for the version of the permission.
"""

get_permission(permissionArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getpermission", Dict{String, Any}("permissionArn"=>permissionArn); aws_config=aws_config)
get_permission(permissionArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getpermission", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("permissionArn"=>permissionArn), args)); aws_config=aws_config)

"""
    GetResourcePolicies()

Gets the policies for the specified resources that you own and have shared.

# Required Parameters
- `resourceArns`: The Amazon Resource Names (ARN) of the resources.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
- `principal`: The principal.
"""

get_resource_policies(resourceArns; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourcepolicies", Dict{String, Any}("resourceArns"=>resourceArns); aws_config=aws_config)
get_resource_policies(resourceArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourcepolicies", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArns"=>resourceArns), args)); aws_config=aws_config)

"""
    GetResourceShareAssociations()

Gets the resources or principals for the resource shares that you own.

# Required Parameters
- `associationType`: The association type. Specify PRINCIPAL to list the principals that are associated with the specified resource share. Specify RESOURCE to list the resources that are associated with the specified resource share.

# Optional Parameters
- `associationStatus`: The association status.
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
- `principal`: The principal. You cannot specify this parameter if the association type is RESOURCE.
- `resourceArn`: The Amazon Resource Name (ARN) of the resource. You cannot specify this parameter if the association type is PRINCIPAL.
- `resourceShareArns`: The Amazon Resource Names (ARN) of the resource shares.
"""

get_resource_share_associations(associationType; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourceshareassociations", Dict{String, Any}("associationType"=>associationType); aws_config=aws_config)
get_resource_share_associations(associationType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourceshareassociations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("associationType"=>associationType), args)); aws_config=aws_config)

"""
    GetResourceShareInvitations()

Gets the invitations for resource sharing that you've received.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
- `resourceShareArns`: The Amazon Resource Names (ARN) of the resource shares.
- `resourceShareInvitationArns`: The Amazon Resource Names (ARN) of the invitations.
"""

get_resource_share_invitations(; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourceshareinvitations"; aws_config=aws_config)
get_resource_share_invitations(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourceshareinvitations", args; aws_config=aws_config)

"""
    GetResourceShares()

Gets the resource shares that you own or the resource shares that are shared with you.

# Required Parameters
- `resourceOwner`: The type of owner.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `name`: The name of the resource share.
- `nextToken`: The token for the next page of results.
- `resourceShareArns`: The Amazon Resource Names (ARN) of the resource shares.
- `resourceShareStatus`: The status of the resource share.
- `tagFilters`: One or more tag filters.
"""

get_resource_shares(resourceOwner; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourceshares", Dict{String, Any}("resourceOwner"=>resourceOwner); aws_config=aws_config)
get_resource_shares(resourceOwner, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/getresourceshares", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceOwner"=>resourceOwner), args)); aws_config=aws_config)

"""
    ListPendingInvitationResources()

Lists the resources in a resource share that is shared with you but that the invitation is still pending for.

# Required Parameters
- `resourceShareInvitationArn`: The Amazon Resource Name (ARN) of the invitation.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
"""

list_pending_invitation_resources(resourceShareInvitationArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listpendinginvitationresources", Dict{String, Any}("resourceShareInvitationArn"=>resourceShareInvitationArn); aws_config=aws_config)
list_pending_invitation_resources(resourceShareInvitationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listpendinginvitationresources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareInvitationArn"=>resourceShareInvitationArn), args)); aws_config=aws_config)

"""
    ListPermissions()

Lists the AWS RAM permissions.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
- `resourceType`: Specifies the resource type for which to list permissions. For example, to list only permissions that apply to EC2 subnets, specify ec2:Subnet.
"""

list_permissions(; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listpermissions"; aws_config=aws_config)
list_permissions(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listpermissions", args; aws_config=aws_config)

"""
    ListPrincipals()

Lists the principals that you have shared resources with or that have shared resources with you.

# Required Parameters
- `resourceOwner`: The type of owner.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
- `principals`: The principals.
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.
- `resourceShareArns`: The Amazon Resource Names (ARN) of the resource shares.
- `resourceType`: The resource type. Valid values: codebuild:Project | codebuild:ReportGroup | ec2:CapacityReservation | ec2:DedicatedHost | ec2:Subnet | ec2:TrafficMirrorTarget | ec2:TransitGateway | imagebuilder:Component | imagebuilder:Image | imagebuilder:ImageRecipe | license-manager:LicenseConfiguration I resource-groups:Group | rds:Cluster | route53resolver:ResolverRule 
"""

list_principals(resourceOwner; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listprincipals", Dict{String, Any}("resourceOwner"=>resourceOwner); aws_config=aws_config)
list_principals(resourceOwner, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listprincipals", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceOwner"=>resourceOwner), args)); aws_config=aws_config)

"""
    ListResourceSharePermissions()

Lists the AWS RAM permissions that are associated with a resource share.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
"""

list_resource_share_permissions(resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listresourcesharepermissions", Dict{String, Any}("resourceShareArn"=>resourceShareArn); aws_config=aws_config)
list_resource_share_permissions(resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listresourcesharepermissions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    ListResourceTypes()

Lists the shareable resource types supported by AWS RAM.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
"""

list_resource_types(; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listresourcetypes"; aws_config=aws_config)
list_resource_types(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listresourcetypes", args; aws_config=aws_config)

"""
    ListResources()

Lists the resources that you added to a resource shares or the resources that are shared with you.

# Required Parameters
- `resourceOwner`: The type of owner.

# Optional Parameters
- `maxResults`: The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned nextToken value.
- `nextToken`: The token for the next page of results.
- `principal`: The principal.
- `resourceArns`: The Amazon Resource Names (ARN) of the resources.
- `resourceShareArns`: The Amazon Resource Names (ARN) of the resource shares.
- `resourceType`: The resource type. Valid values: codebuild:Project | codebuild:ReportGroup | ec2:CapacityReservation | ec2:DedicatedHost | ec2:Subnet | ec2:TrafficMirrorTarget | ec2:TransitGateway | imagebuilder:Component | imagebuilder:Image | imagebuilder:ImageRecipe | license-manager:LicenseConfiguration I resource-groups:Group | rds:Cluster | route53resolver:ResolverRule 
"""

list_resources(resourceOwner; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listresources", Dict{String, Any}("resourceOwner"=>resourceOwner); aws_config=aws_config)
list_resources(resourceOwner, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/listresources", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceOwner"=>resourceOwner), args)); aws_config=aws_config)

"""
    PromoteResourceShareCreatedFromPolicy()

Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in AWS RAM. Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in AWS RAM.  

# Required Parameters
- `resourceShareArn`: The ARN of the resource share to promote.

"""

promote_resource_share_created_from_policy(resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/promoteresourcesharecreatedfrompolicy", Dict{String, Any}("resourceShareArn"=>resourceShareArn); aws_config=aws_config)
promote_resource_share_created_from_policy(resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/promoteresourcesharecreatedfrompolicy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)

"""
    RejectResourceShareInvitation()

Rejects an invitation to a resource share from another AWS account.

# Required Parameters
- `resourceShareInvitationArn`: The Amazon Resource Name (ARN) of the invitation.

# Optional Parameters
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
"""

reject_resource_share_invitation(resourceShareInvitationArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/rejectresourceshareinvitation", Dict{String, Any}("resourceShareInvitationArn"=>resourceShareInvitationArn); aws_config=aws_config)
reject_resource_share_invitation(resourceShareInvitationArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/rejectresourceshareinvitation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareInvitationArn"=>resourceShareInvitationArn), args)); aws_config=aws_config)

"""
    TagResource()

Adds the specified tags to the specified resource share that you own.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.
- `tags`: One or more tags.

"""

tag_resource(resourceShareArn, tags; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/tagresource", Dict{String, Any}("resourceShareArn"=>resourceShareArn, "tags"=>tags); aws_config=aws_config)
tag_resource(resourceShareArn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/tagresource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn, "tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes the specified tags from the specified resource share that you own.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.
- `tagKeys`: The tag keys of the tags to remove.

"""

untag_resource(resourceShareArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/untagresource", Dict{String, Any}("resourceShareArn"=>resourceShareArn, "tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceShareArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/untagresource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn, "tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateResourceShare()

Updates the specified resource share that you own.

# Required Parameters
- `resourceShareArn`: The Amazon Resource Name (ARN) of the resource share.

# Optional Parameters
- `allowExternalPrincipals`: Indicates whether principals outside your AWS organization can be associated with a resource share.
- `clientToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
- `name`: The name of the resource share.
"""

update_resource_share(resourceShareArn; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/updateresourceshare", Dict{String, Any}("resourceShareArn"=>resourceShareArn); aws_config=aws_config)
update_resource_share(resourceShareArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = ram("POST", "/updateresourceshare", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceShareArn"=>resourceShareArn), args)); aws_config=aws_config)
