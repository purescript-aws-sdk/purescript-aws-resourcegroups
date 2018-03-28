
module AWS.ResourceGroups.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ResourceGroups as ResourceGroups
import AWS.ResourceGroups.Types as ResourceGroupsTypes


-- | <p>Creates a group with a specified name, description, and resource query.</p>
createGroup :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.CreateGroupInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.CreateGroupOutput
createGroup (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createGroup"


-- | <p>Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.</p>
deleteGroup :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.DeleteGroupInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.DeleteGroupOutput
deleteGroup (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteGroup"


-- | <p>Returns information about a specified resource group.</p>
getGroup :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.GetGroupInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.GetGroupOutput
getGroup (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getGroup"


-- | <p>Returns the resource query associated with the specified resource group.</p>
getGroupQuery :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.GetGroupQueryInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.GetGroupQueryOutput
getGroupQuery (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getGroupQuery"


-- | <p>Returns a list of tags that are associated with a resource, specified by an ARN.</p>
getTags :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.GetTagsInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.GetTagsOutput
getTags (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTags"


-- | <p>Returns a list of ARNs of resources that are members of a specified resource group.</p>
listGroupResources :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.ListGroupResourcesInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.ListGroupResourcesOutput
listGroupResources (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGroupResources"


-- | <p>Returns a list of existing resource groups in your account.</p>
listGroups :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.ListGroupsInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.ListGroupsOutput
listGroups (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listGroups"


-- | <p>Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.</p>
searchResources :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.SearchResourcesInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.SearchResourcesOutput
searchResources (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "searchResources"


-- | <p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.</p>
tag :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.TagInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.TagOutput
tag (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tag"


-- | <p>Deletes specified tags from a specified resource.</p>
untag :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.UntagInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.UntagOutput
untag (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untag"


-- | <p>Updates an existing group with a new or changed description. You cannot update the name of a resource group.</p>
updateGroup :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.UpdateGroupInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.UpdateGroupOutput
updateGroup (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateGroup"


-- | <p>Updates the resource query of a group.</p>
updateGroupQuery :: forall eff. ResourceGroups.Service -> ResourceGroupsTypes.UpdateGroupQueryInput -> Aff (exception :: EXCEPTION | eff) ResourceGroupsTypes.UpdateGroupQueryOutput
updateGroupQuery (ResourceGroups.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateGroupQuery"
