

-- | <fullname>AWS Resource Groups</fullname> <p>AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service databases, and Amazon S3 buckets into groups using criteria that you define as tags. A resource group is a collection of resources that match the resource types specified in a query, and share one or more tags or portions of tags. You can create a group of resources based on their roles in your cloud infrastructure, lifecycle stages, regions, application layers, or virtually any criteria. Resource groups enable you to automate management tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in AWS Systems Manager that shows AWS Config compliance and other monitoring data about member resources.</p> <p>To create a resource group, build a resource query, and specify tags that identify the criteria that members of the group have in common. Tags are key-value pairs.</p> <p>For more information about Resource Groups, see the <a href="https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html">AWS Resource Groups User Guide</a>.</p> <p>AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of operations.</p> <ul> <li> <p>Create, Read, Update, and Delete (CRUD) operations on resource groups and resource query entities</p> </li> <li> <p>Applying, editing, and removing tags from resource groups</p> </li> <li> <p>Resolving resource group member ARNs so they can be returned as search results</p> </li> <li> <p>Getting data about resources that are members of a group</p> </li> <li> <p>Searching AWS resources based on a resource query</p> </li> </ul>
module AWS.ResourceGroups where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Creates a group with a specified name, description, and resource query.</p>
createGroup :: forall eff. CreateGroupInput -> Aff (exception :: EXCEPTION | eff) CreateGroupOutput
createGroup = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "createGroup"


-- | <p>Deletes a specified resource group. Deleting a resource group does not delete resources that are members of the group; it only deletes the group structure.</p>
deleteGroup :: forall eff. DeleteGroupInput -> Aff (exception :: EXCEPTION | eff) DeleteGroupOutput
deleteGroup = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "deleteGroup"


-- | <p>Returns information about a specified resource group.</p>
getGroup :: forall eff. GetGroupInput -> Aff (exception :: EXCEPTION | eff) GetGroupOutput
getGroup = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "getGroup"


-- | <p>Returns the resource query associated with the specified resource group.</p>
getGroupQuery :: forall eff. GetGroupQueryInput -> Aff (exception :: EXCEPTION | eff) GetGroupQueryOutput
getGroupQuery = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "getGroupQuery"


-- | <p>Returns a list of tags that are associated with a resource, specified by an ARN.</p>
getTags :: forall eff. GetTagsInput -> Aff (exception :: EXCEPTION | eff) GetTagsOutput
getTags = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "getTags"


-- | <p>Returns a list of ARNs of resources that are members of a specified resource group.</p>
listGroupResources :: forall eff. ListGroupResourcesInput -> Aff (exception :: EXCEPTION | eff) ListGroupResourcesOutput
listGroupResources = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "listGroupResources"


-- | <p>Returns a list of existing resource groups in your account.</p>
listGroups :: forall eff. ListGroupsInput -> Aff (exception :: EXCEPTION | eff) ListGroupsOutput
listGroups = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "listGroups"


-- | <p>Returns a list of AWS resource identifiers that matches a specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.</p>
searchResources :: forall eff. SearchResourcesInput -> Aff (exception :: EXCEPTION | eff) SearchResourcesOutput
searchResources = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "searchResources"


-- | <p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.</p>
tag :: forall eff. TagInput -> Aff (exception :: EXCEPTION | eff) TagOutput
tag = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "tag"


-- | <p>Deletes specified tags from a specified resource.</p>
untag :: forall eff. UntagInput -> Aff (exception :: EXCEPTION | eff) UntagOutput
untag = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "untag"


-- | <p>Updates an existing group with a new or changed description. You cannot update the name of a resource group.</p>
updateGroup :: forall eff. UpdateGroupInput -> Aff (exception :: EXCEPTION | eff) UpdateGroupOutput
updateGroup = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "updateGroup"


-- | <p>Updates the resource query of a group.</p>
updateGroupQuery :: forall eff. UpdateGroupQueryInput -> Aff (exception :: EXCEPTION | eff) UpdateGroupQueryOutput
updateGroupQuery = Request.request service method  where
    service = Request.ServiceName "ResourceGroups"
    method = Request.MethodName "updateGroupQuery"


-- | <p>The request does not comply with validation rules that are defined for the request parameters.</p>
newtype BadRequestException = BadRequestException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where
  show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBadRequestException :: Encode BadRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": (NullOrUndefined Nothing) }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype CreateGroupInput = CreateGroupInput 
  { "Name" :: (GroupName)
  , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription)
  , "ResourceQuery" :: (ResourceQuery)
  , "Tags" :: NullOrUndefined.NullOrUndefined (Tags)
  }
derive instance newtypeCreateGroupInput :: Newtype CreateGroupInput _
derive instance repGenericCreateGroupInput :: Generic CreateGroupInput _
instance showCreateGroupInput :: Show CreateGroupInput where
  show = genericShow
instance decodeCreateGroupInput :: Decode CreateGroupInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateGroupInput :: Encode CreateGroupInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateGroupInput from required parameters
newCreateGroupInput :: GroupName -> ResourceQuery -> CreateGroupInput
newCreateGroupInput _Name _ResourceQuery = CreateGroupInput { "Name": _Name, "ResourceQuery": _ResourceQuery, "Description": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs CreateGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupInput' :: GroupName -> ResourceQuery -> ( { "Name" :: (GroupName) , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription) , "ResourceQuery" :: (ResourceQuery) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } -> {"Name" :: (GroupName) , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription) , "ResourceQuery" :: (ResourceQuery) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } ) -> CreateGroupInput
newCreateGroupInput' _Name _ResourceQuery customize = (CreateGroupInput <<< customize) { "Name": _Name, "ResourceQuery": _ResourceQuery, "Description": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype CreateGroupOutput = CreateGroupOutput 
  { "Group" :: NullOrUndefined.NullOrUndefined (Group)
  , "ResourceQuery" :: NullOrUndefined.NullOrUndefined (ResourceQuery)
  , "Tags" :: NullOrUndefined.NullOrUndefined (Tags)
  }
derive instance newtypeCreateGroupOutput :: Newtype CreateGroupOutput _
derive instance repGenericCreateGroupOutput :: Generic CreateGroupOutput _
instance showCreateGroupOutput :: Show CreateGroupOutput where
  show = genericShow
instance decodeCreateGroupOutput :: Decode CreateGroupOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateGroupOutput :: Encode CreateGroupOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateGroupOutput from required parameters
newCreateGroupOutput :: CreateGroupOutput
newCreateGroupOutput  = CreateGroupOutput { "Group": (NullOrUndefined Nothing), "ResourceQuery": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs CreateGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupOutput' :: ( { "Group" :: NullOrUndefined.NullOrUndefined (Group) , "ResourceQuery" :: NullOrUndefined.NullOrUndefined (ResourceQuery) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } -> {"Group" :: NullOrUndefined.NullOrUndefined (Group) , "ResourceQuery" :: NullOrUndefined.NullOrUndefined (ResourceQuery) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } ) -> CreateGroupOutput
newCreateGroupOutput'  customize = (CreateGroupOutput <<< customize) { "Group": (NullOrUndefined Nothing), "ResourceQuery": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype DeleteGroupInput = DeleteGroupInput 
  { "GroupName" :: (GroupName)
  }
derive instance newtypeDeleteGroupInput :: Newtype DeleteGroupInput _
derive instance repGenericDeleteGroupInput :: Generic DeleteGroupInput _
instance showDeleteGroupInput :: Show DeleteGroupInput where
  show = genericShow
instance decodeDeleteGroupInput :: Decode DeleteGroupInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteGroupInput :: Encode DeleteGroupInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteGroupInput from required parameters
newDeleteGroupInput :: GroupName -> DeleteGroupInput
newDeleteGroupInput _GroupName = DeleteGroupInput { "GroupName": _GroupName }

-- | Constructs DeleteGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupInput' :: GroupName -> ( { "GroupName" :: (GroupName) } -> {"GroupName" :: (GroupName) } ) -> DeleteGroupInput
newDeleteGroupInput' _GroupName customize = (DeleteGroupInput <<< customize) { "GroupName": _GroupName }



newtype DeleteGroupOutput = DeleteGroupOutput 
  { "Group" :: NullOrUndefined.NullOrUndefined (Group)
  }
derive instance newtypeDeleteGroupOutput :: Newtype DeleteGroupOutput _
derive instance repGenericDeleteGroupOutput :: Generic DeleteGroupOutput _
instance showDeleteGroupOutput :: Show DeleteGroupOutput where
  show = genericShow
instance decodeDeleteGroupOutput :: Decode DeleteGroupOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteGroupOutput :: Encode DeleteGroupOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteGroupOutput from required parameters
newDeleteGroupOutput :: DeleteGroupOutput
newDeleteGroupOutput  = DeleteGroupOutput { "Group": (NullOrUndefined Nothing) }

-- | Constructs DeleteGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupOutput' :: ( { "Group" :: NullOrUndefined.NullOrUndefined (Group) } -> {"Group" :: NullOrUndefined.NullOrUndefined (Group) } ) -> DeleteGroupOutput
newDeleteGroupOutput'  customize = (DeleteGroupOutput <<< customize) { "Group": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The caller is not authorized to make the request.</p>
newtype ForbiddenException = ForbiddenException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where
  show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeForbiddenException :: Encode ForbiddenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ForbiddenException from required parameters
newForbiddenException :: ForbiddenException
newForbiddenException  = ForbiddenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ForbiddenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForbiddenException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ForbiddenException
newForbiddenException'  customize = (ForbiddenException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype GetGroupInput = GetGroupInput 
  { "GroupName" :: (GroupName)
  }
derive instance newtypeGetGroupInput :: Newtype GetGroupInput _
derive instance repGenericGetGroupInput :: Generic GetGroupInput _
instance showGetGroupInput :: Show GetGroupInput where
  show = genericShow
instance decodeGetGroupInput :: Decode GetGroupInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupInput :: Encode GetGroupInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupInput from required parameters
newGetGroupInput :: GroupName -> GetGroupInput
newGetGroupInput _GroupName = GetGroupInput { "GroupName": _GroupName }

-- | Constructs GetGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupInput' :: GroupName -> ( { "GroupName" :: (GroupName) } -> {"GroupName" :: (GroupName) } ) -> GetGroupInput
newGetGroupInput' _GroupName customize = (GetGroupInput <<< customize) { "GroupName": _GroupName }



newtype GetGroupOutput = GetGroupOutput 
  { "Group" :: NullOrUndefined.NullOrUndefined (Group)
  }
derive instance newtypeGetGroupOutput :: Newtype GetGroupOutput _
derive instance repGenericGetGroupOutput :: Generic GetGroupOutput _
instance showGetGroupOutput :: Show GetGroupOutput where
  show = genericShow
instance decodeGetGroupOutput :: Decode GetGroupOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupOutput :: Encode GetGroupOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupOutput from required parameters
newGetGroupOutput :: GetGroupOutput
newGetGroupOutput  = GetGroupOutput { "Group": (NullOrUndefined Nothing) }

-- | Constructs GetGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupOutput' :: ( { "Group" :: NullOrUndefined.NullOrUndefined (Group) } -> {"Group" :: NullOrUndefined.NullOrUndefined (Group) } ) -> GetGroupOutput
newGetGroupOutput'  customize = (GetGroupOutput <<< customize) { "Group": (NullOrUndefined Nothing) }



newtype GetGroupQueryInput = GetGroupQueryInput 
  { "GroupName" :: (GroupName)
  }
derive instance newtypeGetGroupQueryInput :: Newtype GetGroupQueryInput _
derive instance repGenericGetGroupQueryInput :: Generic GetGroupQueryInput _
instance showGetGroupQueryInput :: Show GetGroupQueryInput where
  show = genericShow
instance decodeGetGroupQueryInput :: Decode GetGroupQueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupQueryInput :: Encode GetGroupQueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupQueryInput from required parameters
newGetGroupQueryInput :: GroupName -> GetGroupQueryInput
newGetGroupQueryInput _GroupName = GetGroupQueryInput { "GroupName": _GroupName }

-- | Constructs GetGroupQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupQueryInput' :: GroupName -> ( { "GroupName" :: (GroupName) } -> {"GroupName" :: (GroupName) } ) -> GetGroupQueryInput
newGetGroupQueryInput' _GroupName customize = (GetGroupQueryInput <<< customize) { "GroupName": _GroupName }



newtype GetGroupQueryOutput = GetGroupQueryOutput 
  { "GroupQuery" :: NullOrUndefined.NullOrUndefined (GroupQuery)
  }
derive instance newtypeGetGroupQueryOutput :: Newtype GetGroupQueryOutput _
derive instance repGenericGetGroupQueryOutput :: Generic GetGroupQueryOutput _
instance showGetGroupQueryOutput :: Show GetGroupQueryOutput where
  show = genericShow
instance decodeGetGroupQueryOutput :: Decode GetGroupQueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetGroupQueryOutput :: Encode GetGroupQueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetGroupQueryOutput from required parameters
newGetGroupQueryOutput :: GetGroupQueryOutput
newGetGroupQueryOutput  = GetGroupQueryOutput { "GroupQuery": (NullOrUndefined Nothing) }

-- | Constructs GetGroupQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupQueryOutput' :: ( { "GroupQuery" :: NullOrUndefined.NullOrUndefined (GroupQuery) } -> {"GroupQuery" :: NullOrUndefined.NullOrUndefined (GroupQuery) } ) -> GetGroupQueryOutput
newGetGroupQueryOutput'  customize = (GetGroupQueryOutput <<< customize) { "GroupQuery": (NullOrUndefined Nothing) }



newtype GetTagsInput = GetTagsInput 
  { "Arn" :: (GroupArn)
  }
derive instance newtypeGetTagsInput :: Newtype GetTagsInput _
derive instance repGenericGetTagsInput :: Generic GetTagsInput _
instance showGetTagsInput :: Show GetTagsInput where
  show = genericShow
instance decodeGetTagsInput :: Decode GetTagsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetTagsInput :: Encode GetTagsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetTagsInput from required parameters
newGetTagsInput :: GroupArn -> GetTagsInput
newGetTagsInput _Arn = GetTagsInput { "Arn": _Arn }

-- | Constructs GetTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsInput' :: GroupArn -> ( { "Arn" :: (GroupArn) } -> {"Arn" :: (GroupArn) } ) -> GetTagsInput
newGetTagsInput' _Arn customize = (GetTagsInput <<< customize) { "Arn": _Arn }



newtype GetTagsOutput = GetTagsOutput 
  { "Arn" :: NullOrUndefined.NullOrUndefined (GroupArn)
  , "Tags" :: NullOrUndefined.NullOrUndefined (Tags)
  }
derive instance newtypeGetTagsOutput :: Newtype GetTagsOutput _
derive instance repGenericGetTagsOutput :: Generic GetTagsOutput _
instance showGetTagsOutput :: Show GetTagsOutput where
  show = genericShow
instance decodeGetTagsOutput :: Decode GetTagsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetTagsOutput :: Encode GetTagsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetTagsOutput from required parameters
newGetTagsOutput :: GetTagsOutput
newGetTagsOutput  = GetTagsOutput { "Arn": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs GetTagsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsOutput' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (GroupArn) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (GroupArn) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } ) -> GetTagsOutput
newGetTagsOutput'  customize = (GetTagsOutput <<< customize) { "Arn": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



-- | <p>A resource group.</p>
newtype Group = Group 
  { "GroupArn" :: (GroupArn)
  , "Name" :: (GroupName)
  , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription)
  }
derive instance newtypeGroup :: Newtype Group _
derive instance repGenericGroup :: Generic Group _
instance showGroup :: Show Group where
  show = genericShow
instance decodeGroup :: Decode Group where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroup :: Encode Group where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Group from required parameters
newGroup :: GroupArn -> GroupName -> Group
newGroup _GroupArn _Name = Group { "GroupArn": _GroupArn, "Name": _Name, "Description": (NullOrUndefined Nothing) }

-- | Constructs Group's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroup' :: GroupArn -> GroupName -> ( { "GroupArn" :: (GroupArn) , "Name" :: (GroupName) , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription) } -> {"GroupArn" :: (GroupArn) , "Name" :: (GroupName) , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription) } ) -> Group
newGroup' _GroupArn _Name customize = (Group <<< customize) { "GroupArn": _GroupArn, "Name": _Name, "Description": (NullOrUndefined Nothing) }



newtype GroupArn = GroupArn String
derive instance newtypeGroupArn :: Newtype GroupArn _
derive instance repGenericGroupArn :: Generic GroupArn _
instance showGroupArn :: Show GroupArn where
  show = genericShow
instance decodeGroupArn :: Decode GroupArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupArn :: Encode GroupArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GroupDescription = GroupDescription String
derive instance newtypeGroupDescription :: Newtype GroupDescription _
derive instance repGenericGroupDescription :: Generic GroupDescription _
instance showGroupDescription :: Show GroupDescription where
  show = genericShow
instance decodeGroupDescription :: Decode GroupDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupDescription :: Encode GroupDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GroupList = GroupList (Array Group)
derive instance newtypeGroupList :: Newtype GroupList _
derive instance repGenericGroupList :: Generic GroupList _
instance showGroupList :: Show GroupList where
  show = genericShow
instance decodeGroupList :: Decode GroupList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupList :: Encode GroupList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GroupName = GroupName String
derive instance newtypeGroupName :: Newtype GroupName _
derive instance repGenericGroupName :: Generic GroupName _
instance showGroupName :: Show GroupName where
  show = genericShow
instance decodeGroupName :: Decode GroupName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupName :: Encode GroupName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The underlying resource query of a resource group. Resources that match query results are part of the group.</p>
newtype GroupQuery = GroupQuery 
  { "GroupName" :: (GroupName)
  , "ResourceQuery" :: (ResourceQuery)
  }
derive instance newtypeGroupQuery :: Newtype GroupQuery _
derive instance repGenericGroupQuery :: Generic GroupQuery _
instance showGroupQuery :: Show GroupQuery where
  show = genericShow
instance decodeGroupQuery :: Decode GroupQuery where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGroupQuery :: Encode GroupQuery where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GroupQuery from required parameters
newGroupQuery :: GroupName -> ResourceQuery -> GroupQuery
newGroupQuery _GroupName _ResourceQuery = GroupQuery { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }

-- | Constructs GroupQuery's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupQuery' :: GroupName -> ResourceQuery -> ( { "GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } -> {"GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } ) -> GroupQuery
newGroupQuery' _GroupName _ResourceQuery customize = (GroupQuery <<< customize) { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }



-- | <p>An internal error occurred while processing the request.</p>
newtype InternalServerErrorException = InternalServerErrorException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where
  show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ListGroupResourcesInput = ListGroupResourcesInput 
  { "GroupName" :: (GroupName)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListGroupResourcesInput :: Newtype ListGroupResourcesInput _
derive instance repGenericListGroupResourcesInput :: Generic ListGroupResourcesInput _
instance showListGroupResourcesInput :: Show ListGroupResourcesInput where
  show = genericShow
instance decodeListGroupResourcesInput :: Decode ListGroupResourcesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupResourcesInput :: Encode ListGroupResourcesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupResourcesInput from required parameters
newListGroupResourcesInput :: GroupName -> ListGroupResourcesInput
newListGroupResourcesInput _GroupName = ListGroupResourcesInput { "GroupName": _GroupName, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListGroupResourcesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupResourcesInput' :: GroupName -> ( { "GroupName" :: (GroupName) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"GroupName" :: (GroupName) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListGroupResourcesInput
newListGroupResourcesInput' _GroupName customize = (ListGroupResourcesInput <<< customize) { "GroupName": _GroupName, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListGroupResourcesOutput = ListGroupResourcesOutput 
  { "ResourceIdentifiers" :: NullOrUndefined.NullOrUndefined (ResourceIdentifierList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListGroupResourcesOutput :: Newtype ListGroupResourcesOutput _
derive instance repGenericListGroupResourcesOutput :: Generic ListGroupResourcesOutput _
instance showListGroupResourcesOutput :: Show ListGroupResourcesOutput where
  show = genericShow
instance decodeListGroupResourcesOutput :: Decode ListGroupResourcesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupResourcesOutput :: Encode ListGroupResourcesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupResourcesOutput from required parameters
newListGroupResourcesOutput :: ListGroupResourcesOutput
newListGroupResourcesOutput  = ListGroupResourcesOutput { "NextToken": (NullOrUndefined Nothing), "ResourceIdentifiers": (NullOrUndefined Nothing) }

-- | Constructs ListGroupResourcesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupResourcesOutput' :: ( { "ResourceIdentifiers" :: NullOrUndefined.NullOrUndefined (ResourceIdentifierList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ResourceIdentifiers" :: NullOrUndefined.NullOrUndefined (ResourceIdentifierList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListGroupResourcesOutput
newListGroupResourcesOutput'  customize = (ListGroupResourcesOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "ResourceIdentifiers": (NullOrUndefined Nothing) }



newtype ListGroupsInput = ListGroupsInput 
  { "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListGroupsInput :: Newtype ListGroupsInput _
derive instance repGenericListGroupsInput :: Generic ListGroupsInput _
instance showListGroupsInput :: Show ListGroupsInput where
  show = genericShow
instance decodeListGroupsInput :: Decode ListGroupsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupsInput :: Encode ListGroupsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupsInput from required parameters
newListGroupsInput :: ListGroupsInput
newListGroupsInput  = ListGroupsInput { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsInput' :: ( { "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListGroupsInput
newListGroupsInput'  customize = (ListGroupsInput <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListGroupsOutput = ListGroupsOutput 
  { "Groups" :: NullOrUndefined.NullOrUndefined (GroupList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListGroupsOutput :: Newtype ListGroupsOutput _
derive instance repGenericListGroupsOutput :: Generic ListGroupsOutput _
instance showListGroupsOutput :: Show ListGroupsOutput where
  show = genericShow
instance decodeListGroupsOutput :: Decode ListGroupsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListGroupsOutput :: Encode ListGroupsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListGroupsOutput from required parameters
newListGroupsOutput :: ListGroupsOutput
newListGroupsOutput  = ListGroupsOutput { "Groups": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsOutput' :: ( { "Groups" :: NullOrUndefined.NullOrUndefined (GroupList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Groups" :: NullOrUndefined.NullOrUndefined (GroupList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListGroupsOutput
newListGroupsOutput'  customize = (ListGroupsOutput <<< customize) { "Groups": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The request uses an HTTP method which is not allowed for the specified resource.</p>
newtype MethodNotAllowedException = MethodNotAllowedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeMethodNotAllowedException :: Newtype MethodNotAllowedException _
derive instance repGenericMethodNotAllowedException :: Generic MethodNotAllowedException _
instance showMethodNotAllowedException :: Show MethodNotAllowedException where
  show = genericShow
instance decodeMethodNotAllowedException :: Decode MethodNotAllowedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMethodNotAllowedException :: Encode MethodNotAllowedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MethodNotAllowedException from required parameters
newMethodNotAllowedException :: MethodNotAllowedException
newMethodNotAllowedException  = MethodNotAllowedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs MethodNotAllowedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMethodNotAllowedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> MethodNotAllowedException
newMethodNotAllowedException'  customize = (MethodNotAllowedException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>One or more resources specified in the request do not exist.</p>
newtype NotFoundException = NotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Query = Query String
derive instance newtypeQuery :: Newtype Query _
derive instance repGenericQuery :: Generic Query _
instance showQuery :: Show Query where
  show = genericShow
instance decodeQuery :: Decode Query where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQuery :: Encode Query where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype QueryType = QueryType String
derive instance newtypeQueryType :: Newtype QueryType _
derive instance repGenericQueryType :: Generic QueryType _
instance showQueryType :: Show QueryType where
  show = genericShow
instance decodeQueryType :: Decode QueryType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeQueryType :: Encode QueryType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where
  show = genericShow
instance decodeResourceArn :: Decode ResourceArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceArn :: Encode ResourceArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The ARN of a resource, and its resource type.</p>
newtype ResourceIdentifier = ResourceIdentifier 
  { "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn)
  , "ResourceType" :: NullOrUndefined.NullOrUndefined (ResourceType)
  }
derive instance newtypeResourceIdentifier :: Newtype ResourceIdentifier _
derive instance repGenericResourceIdentifier :: Generic ResourceIdentifier _
instance showResourceIdentifier :: Show ResourceIdentifier where
  show = genericShow
instance decodeResourceIdentifier :: Decode ResourceIdentifier where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceIdentifier :: Encode ResourceIdentifier where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceIdentifier from required parameters
newResourceIdentifier :: ResourceIdentifier
newResourceIdentifier  = ResourceIdentifier { "ResourceArn": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }

-- | Constructs ResourceIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceIdentifier' :: ( { "ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn) , "ResourceType" :: NullOrUndefined.NullOrUndefined (ResourceType) } -> {"ResourceArn" :: NullOrUndefined.NullOrUndefined (ResourceArn) , "ResourceType" :: NullOrUndefined.NullOrUndefined (ResourceType) } ) -> ResourceIdentifier
newResourceIdentifier'  customize = (ResourceIdentifier <<< customize) { "ResourceArn": (NullOrUndefined Nothing), "ResourceType": (NullOrUndefined Nothing) }



newtype ResourceIdentifierList = ResourceIdentifierList (Array ResourceIdentifier)
derive instance newtypeResourceIdentifierList :: Newtype ResourceIdentifierList _
derive instance repGenericResourceIdentifierList :: Generic ResourceIdentifierList _
instance showResourceIdentifierList :: Show ResourceIdentifierList where
  show = genericShow
instance decodeResourceIdentifierList :: Decode ResourceIdentifierList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceIdentifierList :: Encode ResourceIdentifierList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The query that is used to define a resource group or a search for resources.</p>
newtype ResourceQuery = ResourceQuery 
  { "Type" :: (QueryType)
  , "Query" :: (Query)
  }
derive instance newtypeResourceQuery :: Newtype ResourceQuery _
derive instance repGenericResourceQuery :: Generic ResourceQuery _
instance showResourceQuery :: Show ResourceQuery where
  show = genericShow
instance decodeResourceQuery :: Decode ResourceQuery where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceQuery :: Encode ResourceQuery where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceQuery from required parameters
newResourceQuery :: Query -> QueryType -> ResourceQuery
newResourceQuery _Query _Type = ResourceQuery { "Query": _Query, "Type": _Type }

-- | Constructs ResourceQuery's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceQuery' :: Query -> QueryType -> ( { "Type" :: (QueryType) , "Query" :: (Query) } -> {"Type" :: (QueryType) , "Query" :: (Query) } ) -> ResourceQuery
newResourceQuery' _Query _Type customize = (ResourceQuery <<< customize) { "Query": _Query, "Type": _Type }



newtype ResourceType = ResourceType String
derive instance newtypeResourceType :: Newtype ResourceType _
derive instance repGenericResourceType :: Generic ResourceType _
instance showResourceType :: Show ResourceType where
  show = genericShow
instance decodeResourceType :: Decode ResourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceType :: Encode ResourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SearchResourcesInput = SearchResourcesInput 
  { "ResourceQuery" :: (ResourceQuery)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeSearchResourcesInput :: Newtype SearchResourcesInput _
derive instance repGenericSearchResourcesInput :: Generic SearchResourcesInput _
instance showSearchResourcesInput :: Show SearchResourcesInput where
  show = genericShow
instance decodeSearchResourcesInput :: Decode SearchResourcesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSearchResourcesInput :: Encode SearchResourcesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SearchResourcesInput from required parameters
newSearchResourcesInput :: ResourceQuery -> SearchResourcesInput
newSearchResourcesInput _ResourceQuery = SearchResourcesInput { "ResourceQuery": _ResourceQuery, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs SearchResourcesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResourcesInput' :: ResourceQuery -> ( { "ResourceQuery" :: (ResourceQuery) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ResourceQuery" :: (ResourceQuery) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> SearchResourcesInput
newSearchResourcesInput' _ResourceQuery customize = (SearchResourcesInput <<< customize) { "ResourceQuery": _ResourceQuery, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype SearchResourcesOutput = SearchResourcesOutput 
  { "ResourceIdentifiers" :: NullOrUndefined.NullOrUndefined (ResourceIdentifierList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeSearchResourcesOutput :: Newtype SearchResourcesOutput _
derive instance repGenericSearchResourcesOutput :: Generic SearchResourcesOutput _
instance showSearchResourcesOutput :: Show SearchResourcesOutput where
  show = genericShow
instance decodeSearchResourcesOutput :: Decode SearchResourcesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSearchResourcesOutput :: Encode SearchResourcesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SearchResourcesOutput from required parameters
newSearchResourcesOutput :: SearchResourcesOutput
newSearchResourcesOutput  = SearchResourcesOutput { "NextToken": (NullOrUndefined Nothing), "ResourceIdentifiers": (NullOrUndefined Nothing) }

-- | Constructs SearchResourcesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResourcesOutput' :: ( { "ResourceIdentifiers" :: NullOrUndefined.NullOrUndefined (ResourceIdentifierList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"ResourceIdentifiers" :: NullOrUndefined.NullOrUndefined (ResourceIdentifierList) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> SearchResourcesOutput
newSearchResourcesOutput'  customize = (SearchResourcesOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "ResourceIdentifiers": (NullOrUndefined Nothing) }



newtype TagInput = TagInput 
  { "Arn" :: (GroupArn)
  , "Tags" :: (Tags)
  }
derive instance newtypeTagInput :: Newtype TagInput _
derive instance repGenericTagInput :: Generic TagInput _
instance showTagInput :: Show TagInput where
  show = genericShow
instance decodeTagInput :: Decode TagInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagInput :: Encode TagInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TagInput from required parameters
newTagInput :: GroupArn -> Tags -> TagInput
newTagInput _Arn _Tags = TagInput { "Arn": _Arn, "Tags": _Tags }

-- | Constructs TagInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagInput' :: GroupArn -> Tags -> ( { "Arn" :: (GroupArn) , "Tags" :: (Tags) } -> {"Arn" :: (GroupArn) , "Tags" :: (Tags) } ) -> TagInput
newTagInput' _Arn _Tags customize = (TagInput <<< customize) { "Arn": _Arn, "Tags": _Tags }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where
  show = genericShow
instance decodeTagKey :: Decode TagKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKey :: Encode TagKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where
  show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagKeyList :: Encode TagKeyList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype TagOutput = TagOutput 
  { "Arn" :: NullOrUndefined.NullOrUndefined (GroupArn)
  , "Tags" :: NullOrUndefined.NullOrUndefined (Tags)
  }
derive instance newtypeTagOutput :: Newtype TagOutput _
derive instance repGenericTagOutput :: Generic TagOutput _
instance showTagOutput :: Show TagOutput where
  show = genericShow
instance decodeTagOutput :: Decode TagOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagOutput :: Encode TagOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TagOutput from required parameters
newTagOutput :: TagOutput
newTagOutput  = TagOutput { "Arn": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }

-- | Constructs TagOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagOutput' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (GroupArn) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (GroupArn) , "Tags" :: NullOrUndefined.NullOrUndefined (Tags) } ) -> TagOutput
newTagOutput'  customize = (TagOutput <<< customize) { "Arn": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing) }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where
  show = genericShow
instance decodeTagValue :: Decode TagValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagValue :: Encode TagValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Tags = Tags (StrMap.StrMap TagValue)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where
  show = genericShow
instance decodeTags :: Decode Tags where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTags :: Encode Tags where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The caller has exceeded throttling limits.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The request has not been applied because it lacks valid authentication credentials for the target resource.</p>
newtype UnauthorizedException = UnauthorizedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where
  show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnauthorizedException :: Encode UnauthorizedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype UntagInput = UntagInput 
  { "Arn" :: (GroupArn)
  , "Keys" :: (TagKeyList)
  }
derive instance newtypeUntagInput :: Newtype UntagInput _
derive instance repGenericUntagInput :: Generic UntagInput _
instance showUntagInput :: Show UntagInput where
  show = genericShow
instance decodeUntagInput :: Decode UntagInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUntagInput :: Encode UntagInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UntagInput from required parameters
newUntagInput :: GroupArn -> TagKeyList -> UntagInput
newUntagInput _Arn _Keys = UntagInput { "Arn": _Arn, "Keys": _Keys }

-- | Constructs UntagInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagInput' :: GroupArn -> TagKeyList -> ( { "Arn" :: (GroupArn) , "Keys" :: (TagKeyList) } -> {"Arn" :: (GroupArn) , "Keys" :: (TagKeyList) } ) -> UntagInput
newUntagInput' _Arn _Keys customize = (UntagInput <<< customize) { "Arn": _Arn, "Keys": _Keys }



newtype UntagOutput = UntagOutput 
  { "Arn" :: NullOrUndefined.NullOrUndefined (GroupArn)
  , "Keys" :: NullOrUndefined.NullOrUndefined (TagKeyList)
  }
derive instance newtypeUntagOutput :: Newtype UntagOutput _
derive instance repGenericUntagOutput :: Generic UntagOutput _
instance showUntagOutput :: Show UntagOutput where
  show = genericShow
instance decodeUntagOutput :: Decode UntagOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUntagOutput :: Encode UntagOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UntagOutput from required parameters
newUntagOutput :: UntagOutput
newUntagOutput  = UntagOutput { "Arn": (NullOrUndefined Nothing), "Keys": (NullOrUndefined Nothing) }

-- | Constructs UntagOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagOutput' :: ( { "Arn" :: NullOrUndefined.NullOrUndefined (GroupArn) , "Keys" :: NullOrUndefined.NullOrUndefined (TagKeyList) } -> {"Arn" :: NullOrUndefined.NullOrUndefined (GroupArn) , "Keys" :: NullOrUndefined.NullOrUndefined (TagKeyList) } ) -> UntagOutput
newUntagOutput'  customize = (UntagOutput <<< customize) { "Arn": (NullOrUndefined Nothing), "Keys": (NullOrUndefined Nothing) }



newtype UpdateGroupInput = UpdateGroupInput 
  { "GroupName" :: (GroupName)
  , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription)
  }
derive instance newtypeUpdateGroupInput :: Newtype UpdateGroupInput _
derive instance repGenericUpdateGroupInput :: Generic UpdateGroupInput _
instance showUpdateGroupInput :: Show UpdateGroupInput where
  show = genericShow
instance decodeUpdateGroupInput :: Decode UpdateGroupInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateGroupInput :: Encode UpdateGroupInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateGroupInput from required parameters
newUpdateGroupInput :: GroupName -> UpdateGroupInput
newUpdateGroupInput _GroupName = UpdateGroupInput { "GroupName": _GroupName, "Description": (NullOrUndefined Nothing) }

-- | Constructs UpdateGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupInput' :: GroupName -> ( { "GroupName" :: (GroupName) , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription) } -> {"GroupName" :: (GroupName) , "Description" :: NullOrUndefined.NullOrUndefined (GroupDescription) } ) -> UpdateGroupInput
newUpdateGroupInput' _GroupName customize = (UpdateGroupInput <<< customize) { "GroupName": _GroupName, "Description": (NullOrUndefined Nothing) }



newtype UpdateGroupOutput = UpdateGroupOutput 
  { "Group" :: NullOrUndefined.NullOrUndefined (Group)
  }
derive instance newtypeUpdateGroupOutput :: Newtype UpdateGroupOutput _
derive instance repGenericUpdateGroupOutput :: Generic UpdateGroupOutput _
instance showUpdateGroupOutput :: Show UpdateGroupOutput where
  show = genericShow
instance decodeUpdateGroupOutput :: Decode UpdateGroupOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateGroupOutput :: Encode UpdateGroupOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateGroupOutput from required parameters
newUpdateGroupOutput :: UpdateGroupOutput
newUpdateGroupOutput  = UpdateGroupOutput { "Group": (NullOrUndefined Nothing) }

-- | Constructs UpdateGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupOutput' :: ( { "Group" :: NullOrUndefined.NullOrUndefined (Group) } -> {"Group" :: NullOrUndefined.NullOrUndefined (Group) } ) -> UpdateGroupOutput
newUpdateGroupOutput'  customize = (UpdateGroupOutput <<< customize) { "Group": (NullOrUndefined Nothing) }



newtype UpdateGroupQueryInput = UpdateGroupQueryInput 
  { "GroupName" :: (GroupName)
  , "ResourceQuery" :: (ResourceQuery)
  }
derive instance newtypeUpdateGroupQueryInput :: Newtype UpdateGroupQueryInput _
derive instance repGenericUpdateGroupQueryInput :: Generic UpdateGroupQueryInput _
instance showUpdateGroupQueryInput :: Show UpdateGroupQueryInput where
  show = genericShow
instance decodeUpdateGroupQueryInput :: Decode UpdateGroupQueryInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateGroupQueryInput :: Encode UpdateGroupQueryInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateGroupQueryInput from required parameters
newUpdateGroupQueryInput :: GroupName -> ResourceQuery -> UpdateGroupQueryInput
newUpdateGroupQueryInput _GroupName _ResourceQuery = UpdateGroupQueryInput { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }

-- | Constructs UpdateGroupQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupQueryInput' :: GroupName -> ResourceQuery -> ( { "GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } -> {"GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } ) -> UpdateGroupQueryInput
newUpdateGroupQueryInput' _GroupName _ResourceQuery customize = (UpdateGroupQueryInput <<< customize) { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }



newtype UpdateGroupQueryOutput = UpdateGroupQueryOutput 
  { "GroupQuery" :: NullOrUndefined.NullOrUndefined (GroupQuery)
  }
derive instance newtypeUpdateGroupQueryOutput :: Newtype UpdateGroupQueryOutput _
derive instance repGenericUpdateGroupQueryOutput :: Generic UpdateGroupQueryOutput _
instance showUpdateGroupQueryOutput :: Show UpdateGroupQueryOutput where
  show = genericShow
instance decodeUpdateGroupQueryOutput :: Decode UpdateGroupQueryOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateGroupQueryOutput :: Encode UpdateGroupQueryOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateGroupQueryOutput from required parameters
newUpdateGroupQueryOutput :: UpdateGroupQueryOutput
newUpdateGroupQueryOutput  = UpdateGroupQueryOutput { "GroupQuery": (NullOrUndefined Nothing) }

-- | Constructs UpdateGroupQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupQueryOutput' :: ( { "GroupQuery" :: NullOrUndefined.NullOrUndefined (GroupQuery) } -> {"GroupQuery" :: NullOrUndefined.NullOrUndefined (GroupQuery) } ) -> UpdateGroupQueryOutput
newUpdateGroupQueryOutput'  customize = (UpdateGroupQueryOutput <<< customize) { "GroupQuery": (NullOrUndefined Nothing) }

