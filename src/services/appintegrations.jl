# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: appintegrations
using AWS.Compat
using AWS.UUIDs

"""
    create_data_integration(name)
    create_data_integration(name, params::Dict{String,<:Any})

Creates and persists a DataIntegration resource.  You cannot create a DataIntegration
association for a DataIntegration that has been previously associated. Use a different
DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.

# Arguments
- `name`: The name of the DataIntegration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
- `"Description"`: A description of the DataIntegration.
- `"KmsKey"`: The KMS key for the DataIntegration.
- `"ScheduleConfig"`: The name of the data and how often it should be pulled from the
  source.
- `"SourceURI"`: The URI of the data source.
- `"Tags"`: One or more tags.
"""
function create_data_integration(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "POST",
        "/dataIntegrations",
        Dict{String,Any}("Name" => Name, "ClientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_data_integration(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "POST",
        "/dataIntegrations",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("Name" => Name, "ClientToken" => string(uuid4())),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_event_integration(event_bridge_bus, event_filter, name)
    create_event_integration(event_bridge_bus, event_filter, name, params::Dict{String,<:Any})

Creates an EventIntegration, given a specified name, description, and a reference to an
Amazon EventBridge bus in your account and a partner event source that pushes events to
that bus. No objects are created in the your account, only metadata that is persisted on
the EventIntegration control plane.

# Arguments
- `event_bridge_bus`: The EventBridge bus.
- `event_filter`: The event filter.
- `name`: The name of the event integration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
- `"Description"`: The description of the event integration.
- `"Tags"`: One or more tags.
"""
function create_event_integration(
    EventBridgeBus, EventFilter, Name; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "POST",
        "/eventIntegrations",
        Dict{String,Any}(
            "EventBridgeBus" => EventBridgeBus,
            "EventFilter" => EventFilter,
            "Name" => Name,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_event_integration(
    EventBridgeBus,
    EventFilter,
    Name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "POST",
        "/eventIntegrations",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "EventBridgeBus" => EventBridgeBus,
                    "EventFilter" => EventFilter,
                    "Name" => Name,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_data_integration(identifier)
    delete_data_integration(identifier, params::Dict{String,<:Any})

Deletes the DataIntegration. Only DataIntegrations that don't have any
DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the
underlying Amazon AppFlow flow and service linked role.   You cannot create a
DataIntegration association for a DataIntegration that has been previously associated. Use
a different DataIntegration, or recreate the DataIntegration using the
CreateDataIntegration API.

# Arguments
- `identifier`: A unique identifier for the DataIntegration.

"""
function delete_data_integration(
    Identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "DELETE",
        "/dataIntegrations/$(Identifier)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_data_integration(
    Identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "DELETE",
        "/dataIntegrations/$(Identifier)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_event_integration(name)
    delete_event_integration(name, params::Dict{String,<:Any})

Deletes the specified existing event integration. If the event integration is associated
with clients, the request is rejected.

# Arguments
- `name`: The name of the event integration.

"""
function delete_event_integration(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "DELETE",
        "/eventIntegrations/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_event_integration(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "DELETE",
        "/eventIntegrations/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_data_integration(identifier)
    get_data_integration(identifier, params::Dict{String,<:Any})

Returns information about the DataIntegration.  You cannot create a DataIntegration
association for a DataIntegration that has been previously associated. Use a different
DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.

# Arguments
- `identifier`: A unique identifier.

"""
function get_data_integration(Identifier; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "GET",
        "/dataIntegrations/$(Identifier)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_data_integration(
    Identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "GET",
        "/dataIntegrations/$(Identifier)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_event_integration(name)
    get_event_integration(name, params::Dict{String,<:Any})

Returns information about the event integration.

# Arguments
- `name`: The name of the event integration.

"""
function get_event_integration(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "GET",
        "/eventIntegrations/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_event_integration(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/eventIntegrations/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_data_integration_associations(identifier)
    list_data_integration_associations(identifier, params::Dict{String,<:Any})

Returns a paginated list of DataIntegration associations in the account.  You cannot create
a DataIntegration association for a DataIntegration that has been previously associated.
Use a different DataIntegration, or recreate the DataIntegration using the
CreateDataIntegration API.

# Arguments
- `identifier`: A unique identifier for the DataIntegration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_data_integration_associations(
    Identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/dataIntegrations/$(Identifier)/associations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_data_integration_associations(
    Identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "GET",
        "/dataIntegrations/$(Identifier)/associations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_data_integrations()
    list_data_integrations(params::Dict{String,<:Any})

Returns a paginated list of DataIntegrations in the account.  You cannot create a
DataIntegration association for a DataIntegration that has been previously associated. Use
a different DataIntegration, or recreate the DataIntegration using the
CreateDataIntegration API.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_data_integrations(; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "GET", "/dataIntegrations"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_data_integrations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/dataIntegrations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_event_integration_associations(name)
    list_event_integration_associations(name, params::Dict{String,<:Any})

Returns a paginated list of event integration associations in the account.

# Arguments
- `name`: The name of the event integration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_event_integration_associations(
    Name; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/eventIntegrations/$(Name)/associations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_event_integration_associations(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/eventIntegrations/$(Name)/associations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_event_integrations()
    list_event_integrations(params::Dict{String,<:Any})

Returns a paginated list of event integrations in the account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return per page.
- `"nextToken"`: The token for the next set of results. Use the value returned in the
  previous response in the next request to retrieve the next set of results.
"""
function list_event_integrations(; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "GET", "/eventIntegrations"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_event_integrations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/eventIntegrations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags for the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds the specified tags to the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.
- `tags`: One or more tags.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes the specified tags from the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource.
- `tag_keys`: The tag keys.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_data_integration(identifier)
    update_data_integration(identifier, params::Dict{String,<:Any})

Updates the description of a DataIntegration.  You cannot create a DataIntegration
association for a DataIntegration that has been previously associated. Use a different
DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.

# Arguments
- `identifier`: A unique identifier for the DataIntegration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the DataIntegration.
- `"Name"`: The name of the DataIntegration.
"""
function update_data_integration(
    Identifier; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "PATCH",
        "/dataIntegrations/$(Identifier)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_data_integration(
    Identifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return appintegrations(
        "PATCH",
        "/dataIntegrations/$(Identifier)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_event_integration(name)
    update_event_integration(name, params::Dict{String,<:Any})

Updates the description of an event integration.

# Arguments
- `name`: The name of the event integration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: The description of the event inegration.
"""
function update_event_integration(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return appintegrations(
        "PATCH",
        "/eventIntegrations/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_event_integration(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return appintegrations(
        "PATCH",
        "/eventIntegrations/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
