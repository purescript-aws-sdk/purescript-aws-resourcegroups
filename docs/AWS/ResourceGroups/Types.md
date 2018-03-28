## Module AWS.ResourceGroups.Types

#### `options`

``` purescript
options :: Options
```

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The request does not comply with validation rules that are defined for the request parameters.</p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `CreateGroupInput`

``` purescript
newtype CreateGroupInput
  = CreateGroupInput { "Name" :: GroupName, "Description" :: NullOrUndefined (GroupDescription), "ResourceQuery" :: ResourceQuery, "Tags" :: NullOrUndefined (Tags) }
```

##### Instances
``` purescript
Newtype CreateGroupInput _
Generic CreateGroupInput _
Show CreateGroupInput
Decode CreateGroupInput
Encode CreateGroupInput
```

#### `newCreateGroupInput`

``` purescript
newCreateGroupInput :: GroupName -> ResourceQuery -> CreateGroupInput
```

Constructs CreateGroupInput from required parameters

#### `newCreateGroupInput'`

``` purescript
newCreateGroupInput' :: GroupName -> ResourceQuery -> ({ "Name" :: GroupName, "Description" :: NullOrUndefined (GroupDescription), "ResourceQuery" :: ResourceQuery, "Tags" :: NullOrUndefined (Tags) } -> { "Name" :: GroupName, "Description" :: NullOrUndefined (GroupDescription), "ResourceQuery" :: ResourceQuery, "Tags" :: NullOrUndefined (Tags) }) -> CreateGroupInput
```

Constructs CreateGroupInput's fields from required parameters

#### `CreateGroupOutput`

``` purescript
newtype CreateGroupOutput
  = CreateGroupOutput { "Group" :: NullOrUndefined (Group), "ResourceQuery" :: NullOrUndefined (ResourceQuery), "Tags" :: NullOrUndefined (Tags) }
```

##### Instances
``` purescript
Newtype CreateGroupOutput _
Generic CreateGroupOutput _
Show CreateGroupOutput
Decode CreateGroupOutput
Encode CreateGroupOutput
```

#### `newCreateGroupOutput`

``` purescript
newCreateGroupOutput :: CreateGroupOutput
```

Constructs CreateGroupOutput from required parameters

#### `newCreateGroupOutput'`

``` purescript
newCreateGroupOutput' :: ({ "Group" :: NullOrUndefined (Group), "ResourceQuery" :: NullOrUndefined (ResourceQuery), "Tags" :: NullOrUndefined (Tags) } -> { "Group" :: NullOrUndefined (Group), "ResourceQuery" :: NullOrUndefined (ResourceQuery), "Tags" :: NullOrUndefined (Tags) }) -> CreateGroupOutput
```

Constructs CreateGroupOutput's fields from required parameters

#### `DeleteGroupInput`

``` purescript
newtype DeleteGroupInput
  = DeleteGroupInput { "GroupName" :: GroupName }
```

##### Instances
``` purescript
Newtype DeleteGroupInput _
Generic DeleteGroupInput _
Show DeleteGroupInput
Decode DeleteGroupInput
Encode DeleteGroupInput
```

#### `newDeleteGroupInput`

``` purescript
newDeleteGroupInput :: GroupName -> DeleteGroupInput
```

Constructs DeleteGroupInput from required parameters

#### `newDeleteGroupInput'`

``` purescript
newDeleteGroupInput' :: GroupName -> ({ "GroupName" :: GroupName } -> { "GroupName" :: GroupName }) -> DeleteGroupInput
```

Constructs DeleteGroupInput's fields from required parameters

#### `DeleteGroupOutput`

``` purescript
newtype DeleteGroupOutput
  = DeleteGroupOutput { "Group" :: NullOrUndefined (Group) }
```

##### Instances
``` purescript
Newtype DeleteGroupOutput _
Generic DeleteGroupOutput _
Show DeleteGroupOutput
Decode DeleteGroupOutput
Encode DeleteGroupOutput
```

#### `newDeleteGroupOutput`

``` purescript
newDeleteGroupOutput :: DeleteGroupOutput
```

Constructs DeleteGroupOutput from required parameters

#### `newDeleteGroupOutput'`

``` purescript
newDeleteGroupOutput' :: ({ "Group" :: NullOrUndefined (Group) } -> { "Group" :: NullOrUndefined (Group) }) -> DeleteGroupOutput
```

Constructs DeleteGroupOutput's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ForbiddenException`

``` purescript
newtype ForbiddenException
  = ForbiddenException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The caller is not authorized to make the request.</p>

##### Instances
``` purescript
Newtype ForbiddenException _
Generic ForbiddenException _
Show ForbiddenException
Decode ForbiddenException
Encode ForbiddenException
```

#### `newForbiddenException`

``` purescript
newForbiddenException :: ForbiddenException
```

Constructs ForbiddenException from required parameters

#### `newForbiddenException'`

``` purescript
newForbiddenException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ForbiddenException
```

Constructs ForbiddenException's fields from required parameters

#### `GetGroupInput`

``` purescript
newtype GetGroupInput
  = GetGroupInput { "GroupName" :: GroupName }
```

##### Instances
``` purescript
Newtype GetGroupInput _
Generic GetGroupInput _
Show GetGroupInput
Decode GetGroupInput
Encode GetGroupInput
```

#### `newGetGroupInput`

``` purescript
newGetGroupInput :: GroupName -> GetGroupInput
```

Constructs GetGroupInput from required parameters

#### `newGetGroupInput'`

``` purescript
newGetGroupInput' :: GroupName -> ({ "GroupName" :: GroupName } -> { "GroupName" :: GroupName }) -> GetGroupInput
```

Constructs GetGroupInput's fields from required parameters

#### `GetGroupOutput`

``` purescript
newtype GetGroupOutput
  = GetGroupOutput { "Group" :: NullOrUndefined (Group) }
```

##### Instances
``` purescript
Newtype GetGroupOutput _
Generic GetGroupOutput _
Show GetGroupOutput
Decode GetGroupOutput
Encode GetGroupOutput
```

#### `newGetGroupOutput`

``` purescript
newGetGroupOutput :: GetGroupOutput
```

Constructs GetGroupOutput from required parameters

#### `newGetGroupOutput'`

``` purescript
newGetGroupOutput' :: ({ "Group" :: NullOrUndefined (Group) } -> { "Group" :: NullOrUndefined (Group) }) -> GetGroupOutput
```

Constructs GetGroupOutput's fields from required parameters

#### `GetGroupQueryInput`

``` purescript
newtype GetGroupQueryInput
  = GetGroupQueryInput { "GroupName" :: GroupName }
```

##### Instances
``` purescript
Newtype GetGroupQueryInput _
Generic GetGroupQueryInput _
Show GetGroupQueryInput
Decode GetGroupQueryInput
Encode GetGroupQueryInput
```

#### `newGetGroupQueryInput`

``` purescript
newGetGroupQueryInput :: GroupName -> GetGroupQueryInput
```

Constructs GetGroupQueryInput from required parameters

#### `newGetGroupQueryInput'`

``` purescript
newGetGroupQueryInput' :: GroupName -> ({ "GroupName" :: GroupName } -> { "GroupName" :: GroupName }) -> GetGroupQueryInput
```

Constructs GetGroupQueryInput's fields from required parameters

#### `GetGroupQueryOutput`

``` purescript
newtype GetGroupQueryOutput
  = GetGroupQueryOutput { "GroupQuery" :: NullOrUndefined (GroupQuery) }
```

##### Instances
``` purescript
Newtype GetGroupQueryOutput _
Generic GetGroupQueryOutput _
Show GetGroupQueryOutput
Decode GetGroupQueryOutput
Encode GetGroupQueryOutput
```

#### `newGetGroupQueryOutput`

``` purescript
newGetGroupQueryOutput :: GetGroupQueryOutput
```

Constructs GetGroupQueryOutput from required parameters

#### `newGetGroupQueryOutput'`

``` purescript
newGetGroupQueryOutput' :: ({ "GroupQuery" :: NullOrUndefined (GroupQuery) } -> { "GroupQuery" :: NullOrUndefined (GroupQuery) }) -> GetGroupQueryOutput
```

Constructs GetGroupQueryOutput's fields from required parameters

#### `GetTagsInput`

``` purescript
newtype GetTagsInput
  = GetTagsInput { "Arn" :: GroupArn }
```

##### Instances
``` purescript
Newtype GetTagsInput _
Generic GetTagsInput _
Show GetTagsInput
Decode GetTagsInput
Encode GetTagsInput
```

#### `newGetTagsInput`

``` purescript
newGetTagsInput :: GroupArn -> GetTagsInput
```

Constructs GetTagsInput from required parameters

#### `newGetTagsInput'`

``` purescript
newGetTagsInput' :: GroupArn -> ({ "Arn" :: GroupArn } -> { "Arn" :: GroupArn }) -> GetTagsInput
```

Constructs GetTagsInput's fields from required parameters

#### `GetTagsOutput`

``` purescript
newtype GetTagsOutput
  = GetTagsOutput { "Arn" :: NullOrUndefined (GroupArn), "Tags" :: NullOrUndefined (Tags) }
```

##### Instances
``` purescript
Newtype GetTagsOutput _
Generic GetTagsOutput _
Show GetTagsOutput
Decode GetTagsOutput
Encode GetTagsOutput
```

#### `newGetTagsOutput`

``` purescript
newGetTagsOutput :: GetTagsOutput
```

Constructs GetTagsOutput from required parameters

#### `newGetTagsOutput'`

``` purescript
newGetTagsOutput' :: ({ "Arn" :: NullOrUndefined (GroupArn), "Tags" :: NullOrUndefined (Tags) } -> { "Arn" :: NullOrUndefined (GroupArn), "Tags" :: NullOrUndefined (Tags) }) -> GetTagsOutput
```

Constructs GetTagsOutput's fields from required parameters

#### `Group`

``` purescript
newtype Group
  = Group { "GroupArn" :: GroupArn, "Name" :: GroupName, "Description" :: NullOrUndefined (GroupDescription) }
```

<p>A resource group.</p>

##### Instances
``` purescript
Newtype Group _
Generic Group _
Show Group
Decode Group
Encode Group
```

#### `newGroup`

``` purescript
newGroup :: GroupArn -> GroupName -> Group
```

Constructs Group from required parameters

#### `newGroup'`

``` purescript
newGroup' :: GroupArn -> GroupName -> ({ "GroupArn" :: GroupArn, "Name" :: GroupName, "Description" :: NullOrUndefined (GroupDescription) } -> { "GroupArn" :: GroupArn, "Name" :: GroupName, "Description" :: NullOrUndefined (GroupDescription) }) -> Group
```

Constructs Group's fields from required parameters

#### `GroupArn`

``` purescript
newtype GroupArn
  = GroupArn String
```

##### Instances
``` purescript
Newtype GroupArn _
Generic GroupArn _
Show GroupArn
Decode GroupArn
Encode GroupArn
```

#### `GroupDescription`

``` purescript
newtype GroupDescription
  = GroupDescription String
```

##### Instances
``` purescript
Newtype GroupDescription _
Generic GroupDescription _
Show GroupDescription
Decode GroupDescription
Encode GroupDescription
```

#### `GroupList`

``` purescript
newtype GroupList
  = GroupList (Array Group)
```

##### Instances
``` purescript
Newtype GroupList _
Generic GroupList _
Show GroupList
Decode GroupList
Encode GroupList
```

#### `GroupName`

``` purescript
newtype GroupName
  = GroupName String
```

##### Instances
``` purescript
Newtype GroupName _
Generic GroupName _
Show GroupName
Decode GroupName
Encode GroupName
```

#### `GroupQuery`

``` purescript
newtype GroupQuery
  = GroupQuery { "GroupName" :: GroupName, "ResourceQuery" :: ResourceQuery }
```

<p>The underlying resource query of a resource group. Resources that match query results are part of the group.</p>

##### Instances
``` purescript
Newtype GroupQuery _
Generic GroupQuery _
Show GroupQuery
Decode GroupQuery
Encode GroupQuery
```

#### `newGroupQuery`

``` purescript
newGroupQuery :: GroupName -> ResourceQuery -> GroupQuery
```

Constructs GroupQuery from required parameters

#### `newGroupQuery'`

``` purescript
newGroupQuery' :: GroupName -> ResourceQuery -> ({ "GroupName" :: GroupName, "ResourceQuery" :: ResourceQuery } -> { "GroupName" :: GroupName, "ResourceQuery" :: ResourceQuery }) -> GroupQuery
```

Constructs GroupQuery's fields from required parameters

#### `InternalServerErrorException`

``` purescript
newtype InternalServerErrorException
  = InternalServerErrorException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>An internal error occurred while processing the request.</p>

##### Instances
``` purescript
Newtype InternalServerErrorException _
Generic InternalServerErrorException _
Show InternalServerErrorException
Decode InternalServerErrorException
Encode InternalServerErrorException
```

#### `newInternalServerErrorException`

``` purescript
newInternalServerErrorException :: InternalServerErrorException
```

Constructs InternalServerErrorException from required parameters

#### `newInternalServerErrorException'`

``` purescript
newInternalServerErrorException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InternalServerErrorException
```

Constructs InternalServerErrorException's fields from required parameters

#### `ListGroupResourcesInput`

``` purescript
newtype ListGroupResourcesInput
  = ListGroupResourcesInput { "GroupName" :: GroupName, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListGroupResourcesInput _
Generic ListGroupResourcesInput _
Show ListGroupResourcesInput
Decode ListGroupResourcesInput
Encode ListGroupResourcesInput
```

#### `newListGroupResourcesInput`

``` purescript
newListGroupResourcesInput :: GroupName -> ListGroupResourcesInput
```

Constructs ListGroupResourcesInput from required parameters

#### `newListGroupResourcesInput'`

``` purescript
newListGroupResourcesInput' :: GroupName -> ({ "GroupName" :: GroupName, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "GroupName" :: GroupName, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> ListGroupResourcesInput
```

Constructs ListGroupResourcesInput's fields from required parameters

#### `ListGroupResourcesOutput`

``` purescript
newtype ListGroupResourcesOutput
  = ListGroupResourcesOutput { "ResourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListGroupResourcesOutput _
Generic ListGroupResourcesOutput _
Show ListGroupResourcesOutput
Decode ListGroupResourcesOutput
Encode ListGroupResourcesOutput
```

#### `newListGroupResourcesOutput`

``` purescript
newListGroupResourcesOutput :: ListGroupResourcesOutput
```

Constructs ListGroupResourcesOutput from required parameters

#### `newListGroupResourcesOutput'`

``` purescript
newListGroupResourcesOutput' :: ({ "ResourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList), "NextToken" :: NullOrUndefined (NextToken) } -> { "ResourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListGroupResourcesOutput
```

Constructs ListGroupResourcesOutput's fields from required parameters

#### `ListGroupsInput`

``` purescript
newtype ListGroupsInput
  = ListGroupsInput { "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListGroupsInput _
Generic ListGroupsInput _
Show ListGroupsInput
Decode ListGroupsInput
Encode ListGroupsInput
```

#### `newListGroupsInput`

``` purescript
newListGroupsInput :: ListGroupsInput
```

Constructs ListGroupsInput from required parameters

#### `newListGroupsInput'`

``` purescript
newListGroupsInput' :: ({ "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> ListGroupsInput
```

Constructs ListGroupsInput's fields from required parameters

#### `ListGroupsOutput`

``` purescript
newtype ListGroupsOutput
  = ListGroupsOutput { "Groups" :: NullOrUndefined (GroupList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListGroupsOutput _
Generic ListGroupsOutput _
Show ListGroupsOutput
Decode ListGroupsOutput
Encode ListGroupsOutput
```

#### `newListGroupsOutput`

``` purescript
newListGroupsOutput :: ListGroupsOutput
```

Constructs ListGroupsOutput from required parameters

#### `newListGroupsOutput'`

``` purescript
newListGroupsOutput' :: ({ "Groups" :: NullOrUndefined (GroupList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Groups" :: NullOrUndefined (GroupList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListGroupsOutput
```

Constructs ListGroupsOutput's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MethodNotAllowedException`

``` purescript
newtype MethodNotAllowedException
  = MethodNotAllowedException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The request uses an HTTP method which is not allowed for the specified resource.</p>

##### Instances
``` purescript
Newtype MethodNotAllowedException _
Generic MethodNotAllowedException _
Show MethodNotAllowedException
Decode MethodNotAllowedException
Encode MethodNotAllowedException
```

#### `newMethodNotAllowedException`

``` purescript
newMethodNotAllowedException :: MethodNotAllowedException
```

Constructs MethodNotAllowedException from required parameters

#### `newMethodNotAllowedException'`

``` purescript
newMethodNotAllowedException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> MethodNotAllowedException
```

Constructs MethodNotAllowedException's fields from required parameters

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>One or more resources specified in the request do not exist.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `Query`

``` purescript
newtype Query
  = Query String
```

##### Instances
``` purescript
Newtype Query _
Generic Query _
Show Query
Decode Query
Encode Query
```

#### `QueryType`

``` purescript
newtype QueryType
  = QueryType String
```

##### Instances
``` purescript
Newtype QueryType _
Generic QueryType _
Show QueryType
Decode QueryType
Encode QueryType
```

#### `ResourceArn`

``` purescript
newtype ResourceArn
  = ResourceArn String
```

##### Instances
``` purescript
Newtype ResourceArn _
Generic ResourceArn _
Show ResourceArn
Decode ResourceArn
Encode ResourceArn
```

#### `ResourceIdentifier`

``` purescript
newtype ResourceIdentifier
  = ResourceIdentifier { "ResourceArn" :: NullOrUndefined (ResourceArn), "ResourceType" :: NullOrUndefined (ResourceType) }
```

<p>The ARN of a resource, and its resource type.</p>

##### Instances
``` purescript
Newtype ResourceIdentifier _
Generic ResourceIdentifier _
Show ResourceIdentifier
Decode ResourceIdentifier
Encode ResourceIdentifier
```

#### `newResourceIdentifier`

``` purescript
newResourceIdentifier :: ResourceIdentifier
```

Constructs ResourceIdentifier from required parameters

#### `newResourceIdentifier'`

``` purescript
newResourceIdentifier' :: ({ "ResourceArn" :: NullOrUndefined (ResourceArn), "ResourceType" :: NullOrUndefined (ResourceType) } -> { "ResourceArn" :: NullOrUndefined (ResourceArn), "ResourceType" :: NullOrUndefined (ResourceType) }) -> ResourceIdentifier
```

Constructs ResourceIdentifier's fields from required parameters

#### `ResourceIdentifierList`

``` purescript
newtype ResourceIdentifierList
  = ResourceIdentifierList (Array ResourceIdentifier)
```

##### Instances
``` purescript
Newtype ResourceIdentifierList _
Generic ResourceIdentifierList _
Show ResourceIdentifierList
Decode ResourceIdentifierList
Encode ResourceIdentifierList
```

#### `ResourceQuery`

``` purescript
newtype ResourceQuery
  = ResourceQuery { "Type" :: QueryType, "Query" :: Query }
```

<p>The query that is used to define a resource group or a search for resources.</p>

##### Instances
``` purescript
Newtype ResourceQuery _
Generic ResourceQuery _
Show ResourceQuery
Decode ResourceQuery
Encode ResourceQuery
```

#### `newResourceQuery`

``` purescript
newResourceQuery :: Query -> QueryType -> ResourceQuery
```

Constructs ResourceQuery from required parameters

#### `newResourceQuery'`

``` purescript
newResourceQuery' :: Query -> QueryType -> ({ "Type" :: QueryType, "Query" :: Query } -> { "Type" :: QueryType, "Query" :: Query }) -> ResourceQuery
```

Constructs ResourceQuery's fields from required parameters

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

##### Instances
``` purescript
Newtype ResourceType _
Generic ResourceType _
Show ResourceType
Decode ResourceType
Encode ResourceType
```

#### `SearchResourcesInput`

``` purescript
newtype SearchResourcesInput
  = SearchResourcesInput { "ResourceQuery" :: ResourceQuery, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype SearchResourcesInput _
Generic SearchResourcesInput _
Show SearchResourcesInput
Decode SearchResourcesInput
Encode SearchResourcesInput
```

#### `newSearchResourcesInput`

``` purescript
newSearchResourcesInput :: ResourceQuery -> SearchResourcesInput
```

Constructs SearchResourcesInput from required parameters

#### `newSearchResourcesInput'`

``` purescript
newSearchResourcesInput' :: ResourceQuery -> ({ "ResourceQuery" :: ResourceQuery, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "ResourceQuery" :: ResourceQuery, "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> SearchResourcesInput
```

Constructs SearchResourcesInput's fields from required parameters

#### `SearchResourcesOutput`

``` purescript
newtype SearchResourcesOutput
  = SearchResourcesOutput { "ResourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype SearchResourcesOutput _
Generic SearchResourcesOutput _
Show SearchResourcesOutput
Decode SearchResourcesOutput
Encode SearchResourcesOutput
```

#### `newSearchResourcesOutput`

``` purescript
newSearchResourcesOutput :: SearchResourcesOutput
```

Constructs SearchResourcesOutput from required parameters

#### `newSearchResourcesOutput'`

``` purescript
newSearchResourcesOutput' :: ({ "ResourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList), "NextToken" :: NullOrUndefined (NextToken) } -> { "ResourceIdentifiers" :: NullOrUndefined (ResourceIdentifierList), "NextToken" :: NullOrUndefined (NextToken) }) -> SearchResourcesOutput
```

Constructs SearchResourcesOutput's fields from required parameters

#### `TagInput`

``` purescript
newtype TagInput
  = TagInput { "Arn" :: GroupArn, "Tags" :: Tags }
```

##### Instances
``` purescript
Newtype TagInput _
Generic TagInput _
Show TagInput
Decode TagInput
Encode TagInput
```

#### `newTagInput`

``` purescript
newTagInput :: GroupArn -> Tags -> TagInput
```

Constructs TagInput from required parameters

#### `newTagInput'`

``` purescript
newTagInput' :: GroupArn -> Tags -> ({ "Arn" :: GroupArn, "Tags" :: Tags } -> { "Arn" :: GroupArn, "Tags" :: Tags }) -> TagInput
```

Constructs TagInput's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagOutput`

``` purescript
newtype TagOutput
  = TagOutput { "Arn" :: NullOrUndefined (GroupArn), "Tags" :: NullOrUndefined (Tags) }
```

##### Instances
``` purescript
Newtype TagOutput _
Generic TagOutput _
Show TagOutput
Decode TagOutput
Encode TagOutput
```

#### `newTagOutput`

``` purescript
newTagOutput :: TagOutput
```

Constructs TagOutput from required parameters

#### `newTagOutput'`

``` purescript
newTagOutput' :: ({ "Arn" :: NullOrUndefined (GroupArn), "Tags" :: NullOrUndefined (Tags) } -> { "Arn" :: NullOrUndefined (GroupArn), "Tags" :: NullOrUndefined (Tags) }) -> TagOutput
```

Constructs TagOutput's fields from required parameters

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Tags`

``` purescript
newtype Tags
  = Tags (StrMap TagValue)
```

##### Instances
``` purescript
Newtype Tags _
Generic Tags _
Show Tags
Decode Tags
Encode Tags
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The caller has exceeded throttling limits.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UnauthorizedException`

``` purescript
newtype UnauthorizedException
  = UnauthorizedException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The request has not been applied because it lacks valid authentication credentials for the target resource.</p>

##### Instances
``` purescript
Newtype UnauthorizedException _
Generic UnauthorizedException _
Show UnauthorizedException
Decode UnauthorizedException
Encode UnauthorizedException
```

#### `newUnauthorizedException`

``` purescript
newUnauthorizedException :: UnauthorizedException
```

Constructs UnauthorizedException from required parameters

#### `newUnauthorizedException'`

``` purescript
newUnauthorizedException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> UnauthorizedException
```

Constructs UnauthorizedException's fields from required parameters

#### `UntagInput`

``` purescript
newtype UntagInput
  = UntagInput { "Arn" :: GroupArn, "Keys" :: TagKeyList }
```

##### Instances
``` purescript
Newtype UntagInput _
Generic UntagInput _
Show UntagInput
Decode UntagInput
Encode UntagInput
```

#### `newUntagInput`

``` purescript
newUntagInput :: GroupArn -> TagKeyList -> UntagInput
```

Constructs UntagInput from required parameters

#### `newUntagInput'`

``` purescript
newUntagInput' :: GroupArn -> TagKeyList -> ({ "Arn" :: GroupArn, "Keys" :: TagKeyList } -> { "Arn" :: GroupArn, "Keys" :: TagKeyList }) -> UntagInput
```

Constructs UntagInput's fields from required parameters

#### `UntagOutput`

``` purescript
newtype UntagOutput
  = UntagOutput { "Arn" :: NullOrUndefined (GroupArn), "Keys" :: NullOrUndefined (TagKeyList) }
```

##### Instances
``` purescript
Newtype UntagOutput _
Generic UntagOutput _
Show UntagOutput
Decode UntagOutput
Encode UntagOutput
```

#### `newUntagOutput`

``` purescript
newUntagOutput :: UntagOutput
```

Constructs UntagOutput from required parameters

#### `newUntagOutput'`

``` purescript
newUntagOutput' :: ({ "Arn" :: NullOrUndefined (GroupArn), "Keys" :: NullOrUndefined (TagKeyList) } -> { "Arn" :: NullOrUndefined (GroupArn), "Keys" :: NullOrUndefined (TagKeyList) }) -> UntagOutput
```

Constructs UntagOutput's fields from required parameters

#### `UpdateGroupInput`

``` purescript
newtype UpdateGroupInput
  = UpdateGroupInput { "GroupName" :: GroupName, "Description" :: NullOrUndefined (GroupDescription) }
```

##### Instances
``` purescript
Newtype UpdateGroupInput _
Generic UpdateGroupInput _
Show UpdateGroupInput
Decode UpdateGroupInput
Encode UpdateGroupInput
```

#### `newUpdateGroupInput`

``` purescript
newUpdateGroupInput :: GroupName -> UpdateGroupInput
```

Constructs UpdateGroupInput from required parameters

#### `newUpdateGroupInput'`

``` purescript
newUpdateGroupInput' :: GroupName -> ({ "GroupName" :: GroupName, "Description" :: NullOrUndefined (GroupDescription) } -> { "GroupName" :: GroupName, "Description" :: NullOrUndefined (GroupDescription) }) -> UpdateGroupInput
```

Constructs UpdateGroupInput's fields from required parameters

#### `UpdateGroupOutput`

``` purescript
newtype UpdateGroupOutput
  = UpdateGroupOutput { "Group" :: NullOrUndefined (Group) }
```

##### Instances
``` purescript
Newtype UpdateGroupOutput _
Generic UpdateGroupOutput _
Show UpdateGroupOutput
Decode UpdateGroupOutput
Encode UpdateGroupOutput
```

#### `newUpdateGroupOutput`

``` purescript
newUpdateGroupOutput :: UpdateGroupOutput
```

Constructs UpdateGroupOutput from required parameters

#### `newUpdateGroupOutput'`

``` purescript
newUpdateGroupOutput' :: ({ "Group" :: NullOrUndefined (Group) } -> { "Group" :: NullOrUndefined (Group) }) -> UpdateGroupOutput
```

Constructs UpdateGroupOutput's fields from required parameters

#### `UpdateGroupQueryInput`

``` purescript
newtype UpdateGroupQueryInput
  = UpdateGroupQueryInput { "GroupName" :: GroupName, "ResourceQuery" :: ResourceQuery }
```

##### Instances
``` purescript
Newtype UpdateGroupQueryInput _
Generic UpdateGroupQueryInput _
Show UpdateGroupQueryInput
Decode UpdateGroupQueryInput
Encode UpdateGroupQueryInput
```

#### `newUpdateGroupQueryInput`

``` purescript
newUpdateGroupQueryInput :: GroupName -> ResourceQuery -> UpdateGroupQueryInput
```

Constructs UpdateGroupQueryInput from required parameters

#### `newUpdateGroupQueryInput'`

``` purescript
newUpdateGroupQueryInput' :: GroupName -> ResourceQuery -> ({ "GroupName" :: GroupName, "ResourceQuery" :: ResourceQuery } -> { "GroupName" :: GroupName, "ResourceQuery" :: ResourceQuery }) -> UpdateGroupQueryInput
```

Constructs UpdateGroupQueryInput's fields from required parameters

#### `UpdateGroupQueryOutput`

``` purescript
newtype UpdateGroupQueryOutput
  = UpdateGroupQueryOutput { "GroupQuery" :: NullOrUndefined (GroupQuery) }
```

##### Instances
``` purescript
Newtype UpdateGroupQueryOutput _
Generic UpdateGroupQueryOutput _
Show UpdateGroupQueryOutput
Decode UpdateGroupQueryOutput
Encode UpdateGroupQueryOutput
```

#### `newUpdateGroupQueryOutput`

``` purescript
newUpdateGroupQueryOutput :: UpdateGroupQueryOutput
```

Constructs UpdateGroupQueryOutput from required parameters

#### `newUpdateGroupQueryOutput'`

``` purescript
newUpdateGroupQueryOutput' :: ({ "GroupQuery" :: NullOrUndefined (GroupQuery) } -> { "GroupQuery" :: NullOrUndefined (GroupQuery) }) -> UpdateGroupQueryOutput
```

Constructs UpdateGroupQueryOutput's fields from required parameters


