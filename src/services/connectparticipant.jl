# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: connectparticipant
using AWS.Compat
using AWS.UUIDs

"""
    complete_attachment_upload(attachment_ids, client_token, x-_amz-_bearer)
    complete_attachment_upload(attachment_ids, client_token, x-_amz-_bearer, params::Dict{String,<:Any})

Allows you to confirm that the attachment has been uploaded using the pre-signed URL
provided in StartAttachmentUpload API.  The Amazon Connect Participant Service APIs do not
use Signature Version 4 authentication.

# Arguments
- `attachment_ids`: A list of unique identifiers for the attachments.
- `client_token`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
- `x-_amz-_bearer`: The authentication token associated with the participant's connection.

"""
function complete_attachment_upload(
    AttachmentIds,
    ClientToken,
    X_Amz_Bearer;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/complete-attachment-upload",
        Dict{String,Any}(
            "AttachmentIds" => AttachmentIds,
            "ClientToken" => ClientToken,
            "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function complete_attachment_upload(
    AttachmentIds,
    ClientToken,
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/complete-attachment-upload",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AttachmentIds" => AttachmentIds,
                    "ClientToken" => ClientToken,
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_participant_connection(type, x-_amz-_bearer)
    create_participant_connection(type, x-_amz-_bearer, params::Dict{String,<:Any})

Creates the participant's connection. Note that ParticipantToken is used for invoking this
API instead of ConnectionToken. The participant token is valid for the lifetime of the
participant – until they are part of a contact. The response URL for WEBSOCKET Type has a
connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL
and subscribe to the desired topic.  For chat, you need to publish the following on the
established websocket connection:
{\"topic\":\"aws/subscribe\",\"content\":{\"topics\":[\"aws/chat\"]}}  Upon websocket URL
expiry, as specified in the response ConnectionExpiry parameter, clients need to call this
API again to obtain a new websocket URL and perform the same steps as before.  Message
streaming support: This API can also be used together with the StartContactStreaming API to
create a participant connection for chat contacts that are not using a websocket. For more
information about message streaming, Enable real-time chat message streaming in the Amazon
Connect Administrator Guide.  Feature specifications: For information about feature
specifications, such as the allowed number of open websocket connections per participant,
see Feature specifications in the Amazon Connect Administrator Guide.   The Amazon Connect
Participant Service APIs do not use Signature Version 4 authentication.

# Arguments
- `type`: Type of connection information required.
- `x-_amz-_bearer`: This is a header parameter. The ParticipantToken as obtained from
  StartChatContact API response.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ConnectParticipant"`: Amazon Connect Participant is used to mark the participant as
  connected for message streaming.
"""
function create_participant_connection(
    Type, X_Amz_Bearer; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectparticipant(
        "POST",
        "/participant/connection",
        Dict{String,Any}(
            "Type" => Type, "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_participant_connection(
    Type,
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/connection",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Type" => Type,
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disconnect_participant(x-_amz-_bearer)
    disconnect_participant(x-_amz-_bearer, params::Dict{String,<:Any})

Disconnects a participant. Note that ConnectionToken is used for invoking this API instead
of ParticipantToken. The Amazon Connect Participant Service APIs do not use Signature
Version 4 authentication.

# Arguments
- `x-_amz-_bearer`: The authentication token associated with the participant's connection.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
"""
function disconnect_participant(
    X_Amz_Bearer; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectparticipant(
        "POST",
        "/participant/disconnect",
        Dict{String,Any}(
            "ClientToken" => string(uuid4()),
            "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function disconnect_participant(
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/disconnect",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClientToken" => string(uuid4()),
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_attachment(attachment_id, x-_amz-_bearer)
    get_attachment(attachment_id, x-_amz-_bearer, params::Dict{String,<:Any})

Provides a pre-signed URL for download of a completed attachment. This is an asynchronous
API for use with active contacts. The Amazon Connect Participant Service APIs do not use
Signature Version 4 authentication.

# Arguments
- `attachment_id`: A unique identifier for the attachment.
- `x-_amz-_bearer`: The authentication token associated with the participant's connection.

"""
function get_attachment(
    AttachmentId, X_Amz_Bearer; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectparticipant(
        "POST",
        "/participant/attachment",
        Dict{String,Any}(
            "AttachmentId" => AttachmentId,
            "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_attachment(
    AttachmentId,
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/attachment",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AttachmentId" => AttachmentId,
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_transcript(x-_amz-_bearer)
    get_transcript(x-_amz-_bearer, params::Dict{String,<:Any})

Retrieves a transcript of the session, including details about any attachments. Note that
ConnectionToken is used for invoking this API instead of ParticipantToken. The Amazon
Connect Participant Service APIs do not use Signature Version 4 authentication.

# Arguments
- `x-_amz-_bearer`: The authentication token associated with the participant's connection.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ContactId"`: The contactId from the current contact chain for which transcript is
  needed.
- `"MaxResults"`: The maximum number of results to return in the page. Default: 10.
- `"NextToken"`: The pagination token. Use the value returned previously in the next
  subsequent request to retrieve the next set of results.
- `"ScanDirection"`: The direction from StartPosition from which to retrieve message.
  Default: BACKWARD when no StartPosition is provided, FORWARD with StartPosition.
- `"SortOrder"`: The sort order for the records. Default: DESCENDING.
- `"StartPosition"`: A filtering option for where to start.
"""
function get_transcript(X_Amz_Bearer; aws_config::AbstractAWSConfig=global_aws_config())
    return connectparticipant(
        "POST",
        "/participant/transcript",
        Dict{String,Any}("headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_transcript(
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/transcript",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer)
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    send_event(content_type, x-_amz-_bearer)
    send_event(content_type, x-_amz-_bearer, params::Dict{String,<:Any})

Sends an event. Note that ConnectionToken is used for invoking this API instead of
ParticipantToken. The Amazon Connect Participant Service APIs do not use Signature Version
4 authentication.

# Arguments
- `content_type`: The content type of the request. Supported types are:
  application/vnd.amazonaws.connect.event.typing
  application/vnd.amazonaws.connect.event.connection.acknowledged
- `x-_amz-_bearer`: The authentication token associated with the participant's connection.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
- `"Content"`: The content of the event to be sent (for example, message text). This is not
  yet supported.
"""
function send_event(
    ContentType, X_Amz_Bearer; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectparticipant(
        "POST",
        "/participant/event",
        Dict{String,Any}(
            "ContentType" => ContentType,
            "ClientToken" => string(uuid4()),
            "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function send_event(
    ContentType,
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/event",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ContentType" => ContentType,
                    "ClientToken" => string(uuid4()),
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    send_message(content, content_type, x-_amz-_bearer)
    send_message(content, content_type, x-_amz-_bearer, params::Dict{String,<:Any})

Sends a message. Note that ConnectionToken is used for invoking this API instead of
ParticipantToken. The Amazon Connect Participant Service APIs do not use Signature Version
4 authentication.

# Arguments
- `content`: The content of the message.
- `content_type`: The type of the content. Supported types are text/plain.
- `x-_amz-_bearer`: The authentication token associated with the connection.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of the request.
"""
function send_message(
    Content, ContentType, X_Amz_Bearer; aws_config::AbstractAWSConfig=global_aws_config()
)
    return connectparticipant(
        "POST",
        "/participant/message",
        Dict{String,Any}(
            "Content" => Content,
            "ContentType" => ContentType,
            "ClientToken" => string(uuid4()),
            "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function send_message(
    Content,
    ContentType,
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/message",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Content" => Content,
                    "ContentType" => ContentType,
                    "ClientToken" => string(uuid4()),
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_attachment_upload(attachment_name, attachment_size_in_bytes, client_token, content_type, x-_amz-_bearer)
    start_attachment_upload(attachment_name, attachment_size_in_bytes, client_token, content_type, x-_amz-_bearer, params::Dict{String,<:Any})

Provides a pre-signed Amazon S3 URL in response for uploading the file directly to S3. The
Amazon Connect Participant Service APIs do not use Signature Version 4 authentication.

# Arguments
- `attachment_name`: A case-sensitive name of the attachment being uploaded.
- `attachment_size_in_bytes`: The size of the attachment in bytes.
- `client_token`: A unique case sensitive identifier to support idempotency of request.
- `content_type`: Describes the MIME file type of the attachment. For a list of supported
  file types, see Feature specifications in the Amazon Connect Administrator Guide.
- `x-_amz-_bearer`: The authentication token associated with the participant's connection.

"""
function start_attachment_upload(
    AttachmentName,
    AttachmentSizeInBytes,
    ClientToken,
    ContentType,
    X_Amz_Bearer;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/start-attachment-upload",
        Dict{String,Any}(
            "AttachmentName" => AttachmentName,
            "AttachmentSizeInBytes" => AttachmentSizeInBytes,
            "ClientToken" => ClientToken,
            "ContentType" => ContentType,
            "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_attachment_upload(
    AttachmentName,
    AttachmentSizeInBytes,
    ClientToken,
    ContentType,
    X_Amz_Bearer,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return connectparticipant(
        "POST",
        "/participant/start-attachment-upload",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AttachmentName" => AttachmentName,
                    "AttachmentSizeInBytes" => AttachmentSizeInBytes,
                    "ClientToken" => ClientToken,
                    "ContentType" => ContentType,
                    "headers" => Dict{String,Any}("X-Amz-Bearer" => X_Amz_Bearer),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
