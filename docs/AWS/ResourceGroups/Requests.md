## Module AWS.ResourceGroups.Requests

#### `createGroup`

``` purescript
createGroup :: forall eff. Service -> CreateGroupInput -> Aff (exception :: EXCEPTION | eff) CreateGroupOutput
```

<p>Creates a group with a specified name, description, and resource query.</p>

#### `deleteGroup`

``` purescript
deleteGroup :: forall eff. Service -> DeleteGroupInput -> Aff (exception :: EXCEPTION | eff) DeleteGroupOutput
```

<p>Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.</p>

#### `getGroup`

``` purescript
getGroup :: forall eff. Service -> GetGroupInput -> Aff (exception :: EXCEPTION | eff) GetGroupOutput
```

<p>Returns information about a specified resource group.</p>

#### `getGroupQuery`

``` purescript
getGroupQuery :: forall eff. Service -> GetGroupQueryInput -> Aff (exception :: EXCEPTION | eff) GetGroupQueryOutput
```

<p>Returns the resource query associated with the specified resource group.</p>

#### `getTags`

``` purescript
getTags :: forall eff. Service -> GetTagsInput -> Aff (exception :: EXCEPTION | eff) GetTagsOutput
```

<p>Returns a list of tags that are associated with a resource, specified by an ARN.</p>

#### `listGroupResources`

``` purescript
listGroupResources :: forall eff. Service -> ListGroupResourcesInput -> Aff (exception :: EXCEPTION | eff) ListGroupResourcesOutput
```

<p>Returns a list of ARNs of resources that are members of a specified resource group.</p>

#### `listGroups`

``` purescript
listGroups :: forall eff. Service -> ListGroupsInput -> Aff (exception :: EXCEPTION | eff) ListGroupsOutput
```

<p>Returns a list of existing resource groups in your account.</p>

#### `searchResources`

``` purescript
searchResources :: forall eff. Service -> SearchResourcesInput -> Aff (exception :: EXCEPTION | eff) SearchResourcesOutput
```

<p>Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.</p>

#### `tag`

``` purescript
tag :: forall eff. Service -> TagInput -> Aff (exception :: EXCEPTION | eff) TagOutput
```

<p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.</p>

#### `untag`

``` purescript
untag :: forall eff. Service -> UntagInput -> Aff (exception :: EXCEPTION | eff) UntagOutput
```

<p>Deletes specified tags from a specified resource.</p>

#### `updateGroup`

``` purescript
updateGroup :: forall eff. Service -> UpdateGroupInput -> Aff (exception :: EXCEPTION | eff) UpdateGroupOutput
```

<p>Updates an existing group with a new or changed description. You cannot update the name of a resource group.</p>

#### `updateGroupQuery`

``` purescript
updateGroupQuery :: forall eff. Service -> UpdateGroupQueryInput -> Aff (exception :: EXCEPTION | eff) UpdateGroupQueryOutput
```

<p>Updates the resource query of a group.</p>


