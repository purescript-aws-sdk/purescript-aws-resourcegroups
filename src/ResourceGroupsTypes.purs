
module AWS.ResourceGroups.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The request does not comply with validation rules that are defined for the request parameters.</p>
newtype BadRequestException = BadRequestException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "Message": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "Message": Nothing }



newtype CreateGroupInput = CreateGroupInput 
  { "Name" :: (GroupName)
  , "Description" :: Maybe (GroupDescription)
  , "ResourceQuery" :: (ResourceQuery)
  , "Tags" :: Maybe (Tags)
  }
derive instance newtypeCreateGroupInput :: Newtype CreateGroupInput _
derive instance repGenericCreateGroupInput :: Generic CreateGroupInput _
instance showCreateGroupInput :: Show CreateGroupInput where show = genericShow
instance decodeCreateGroupInput :: Decode CreateGroupInput where decode = genericDecode options
instance encodeCreateGroupInput :: Encode CreateGroupInput where encode = genericEncode options

-- | Constructs CreateGroupInput from required parameters
newCreateGroupInput :: GroupName -> ResourceQuery -> CreateGroupInput
newCreateGroupInput _Name _ResourceQuery = CreateGroupInput { "Name": _Name, "ResourceQuery": _ResourceQuery, "Description": Nothing, "Tags": Nothing }

-- | Constructs CreateGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupInput' :: GroupName -> ResourceQuery -> ( { "Name" :: (GroupName) , "Description" :: Maybe (GroupDescription) , "ResourceQuery" :: (ResourceQuery) , "Tags" :: Maybe (Tags) } -> {"Name" :: (GroupName) , "Description" :: Maybe (GroupDescription) , "ResourceQuery" :: (ResourceQuery) , "Tags" :: Maybe (Tags) } ) -> CreateGroupInput
newCreateGroupInput' _Name _ResourceQuery customize = (CreateGroupInput <<< customize) { "Name": _Name, "ResourceQuery": _ResourceQuery, "Description": Nothing, "Tags": Nothing }



newtype CreateGroupOutput = CreateGroupOutput 
  { "Group" :: Maybe (Group)
  , "ResourceQuery" :: Maybe (ResourceQuery)
  , "Tags" :: Maybe (Tags)
  }
derive instance newtypeCreateGroupOutput :: Newtype CreateGroupOutput _
derive instance repGenericCreateGroupOutput :: Generic CreateGroupOutput _
instance showCreateGroupOutput :: Show CreateGroupOutput where show = genericShow
instance decodeCreateGroupOutput :: Decode CreateGroupOutput where decode = genericDecode options
instance encodeCreateGroupOutput :: Encode CreateGroupOutput where encode = genericEncode options

-- | Constructs CreateGroupOutput from required parameters
newCreateGroupOutput :: CreateGroupOutput
newCreateGroupOutput  = CreateGroupOutput { "Group": Nothing, "ResourceQuery": Nothing, "Tags": Nothing }

-- | Constructs CreateGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateGroupOutput' :: ( { "Group" :: Maybe (Group) , "ResourceQuery" :: Maybe (ResourceQuery) , "Tags" :: Maybe (Tags) } -> {"Group" :: Maybe (Group) , "ResourceQuery" :: Maybe (ResourceQuery) , "Tags" :: Maybe (Tags) } ) -> CreateGroupOutput
newCreateGroupOutput'  customize = (CreateGroupOutput <<< customize) { "Group": Nothing, "ResourceQuery": Nothing, "Tags": Nothing }



newtype DeleteGroupInput = DeleteGroupInput 
  { "GroupName" :: (GroupName)
  }
derive instance newtypeDeleteGroupInput :: Newtype DeleteGroupInput _
derive instance repGenericDeleteGroupInput :: Generic DeleteGroupInput _
instance showDeleteGroupInput :: Show DeleteGroupInput where show = genericShow
instance decodeDeleteGroupInput :: Decode DeleteGroupInput where decode = genericDecode options
instance encodeDeleteGroupInput :: Encode DeleteGroupInput where encode = genericEncode options

-- | Constructs DeleteGroupInput from required parameters
newDeleteGroupInput :: GroupName -> DeleteGroupInput
newDeleteGroupInput _GroupName = DeleteGroupInput { "GroupName": _GroupName }

-- | Constructs DeleteGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupInput' :: GroupName -> ( { "GroupName" :: (GroupName) } -> {"GroupName" :: (GroupName) } ) -> DeleteGroupInput
newDeleteGroupInput' _GroupName customize = (DeleteGroupInput <<< customize) { "GroupName": _GroupName }



newtype DeleteGroupOutput = DeleteGroupOutput 
  { "Group" :: Maybe (Group)
  }
derive instance newtypeDeleteGroupOutput :: Newtype DeleteGroupOutput _
derive instance repGenericDeleteGroupOutput :: Generic DeleteGroupOutput _
instance showDeleteGroupOutput :: Show DeleteGroupOutput where show = genericShow
instance decodeDeleteGroupOutput :: Decode DeleteGroupOutput where decode = genericDecode options
instance encodeDeleteGroupOutput :: Encode DeleteGroupOutput where encode = genericEncode options

-- | Constructs DeleteGroupOutput from required parameters
newDeleteGroupOutput :: DeleteGroupOutput
newDeleteGroupOutput  = DeleteGroupOutput { "Group": Nothing }

-- | Constructs DeleteGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteGroupOutput' :: ( { "Group" :: Maybe (Group) } -> {"Group" :: Maybe (Group) } ) -> DeleteGroupOutput
newDeleteGroupOutput'  customize = (DeleteGroupOutput <<< customize) { "Group": Nothing }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>The caller is not authorized to make the request.</p>
newtype ForbiddenException = ForbiddenException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where decode = genericDecode options
instance encodeForbiddenException :: Encode ForbiddenException where encode = genericEncode options

-- | Constructs ForbiddenException from required parameters
newForbiddenException :: ForbiddenException
newForbiddenException  = ForbiddenException { "Message": Nothing }

-- | Constructs ForbiddenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForbiddenException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ForbiddenException
newForbiddenException'  customize = (ForbiddenException <<< customize) { "Message": Nothing }



newtype GetGroupInput = GetGroupInput 
  { "GroupName" :: (GroupName)
  }
derive instance newtypeGetGroupInput :: Newtype GetGroupInput _
derive instance repGenericGetGroupInput :: Generic GetGroupInput _
instance showGetGroupInput :: Show GetGroupInput where show = genericShow
instance decodeGetGroupInput :: Decode GetGroupInput where decode = genericDecode options
instance encodeGetGroupInput :: Encode GetGroupInput where encode = genericEncode options

-- | Constructs GetGroupInput from required parameters
newGetGroupInput :: GroupName -> GetGroupInput
newGetGroupInput _GroupName = GetGroupInput { "GroupName": _GroupName }

-- | Constructs GetGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupInput' :: GroupName -> ( { "GroupName" :: (GroupName) } -> {"GroupName" :: (GroupName) } ) -> GetGroupInput
newGetGroupInput' _GroupName customize = (GetGroupInput <<< customize) { "GroupName": _GroupName }



newtype GetGroupOutput = GetGroupOutput 
  { "Group" :: Maybe (Group)
  }
derive instance newtypeGetGroupOutput :: Newtype GetGroupOutput _
derive instance repGenericGetGroupOutput :: Generic GetGroupOutput _
instance showGetGroupOutput :: Show GetGroupOutput where show = genericShow
instance decodeGetGroupOutput :: Decode GetGroupOutput where decode = genericDecode options
instance encodeGetGroupOutput :: Encode GetGroupOutput where encode = genericEncode options

-- | Constructs GetGroupOutput from required parameters
newGetGroupOutput :: GetGroupOutput
newGetGroupOutput  = GetGroupOutput { "Group": Nothing }

-- | Constructs GetGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupOutput' :: ( { "Group" :: Maybe (Group) } -> {"Group" :: Maybe (Group) } ) -> GetGroupOutput
newGetGroupOutput'  customize = (GetGroupOutput <<< customize) { "Group": Nothing }



newtype GetGroupQueryInput = GetGroupQueryInput 
  { "GroupName" :: (GroupName)
  }
derive instance newtypeGetGroupQueryInput :: Newtype GetGroupQueryInput _
derive instance repGenericGetGroupQueryInput :: Generic GetGroupQueryInput _
instance showGetGroupQueryInput :: Show GetGroupQueryInput where show = genericShow
instance decodeGetGroupQueryInput :: Decode GetGroupQueryInput where decode = genericDecode options
instance encodeGetGroupQueryInput :: Encode GetGroupQueryInput where encode = genericEncode options

-- | Constructs GetGroupQueryInput from required parameters
newGetGroupQueryInput :: GroupName -> GetGroupQueryInput
newGetGroupQueryInput _GroupName = GetGroupQueryInput { "GroupName": _GroupName }

-- | Constructs GetGroupQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupQueryInput' :: GroupName -> ( { "GroupName" :: (GroupName) } -> {"GroupName" :: (GroupName) } ) -> GetGroupQueryInput
newGetGroupQueryInput' _GroupName customize = (GetGroupQueryInput <<< customize) { "GroupName": _GroupName }



newtype GetGroupQueryOutput = GetGroupQueryOutput 
  { "GroupQuery" :: Maybe (GroupQuery)
  }
derive instance newtypeGetGroupQueryOutput :: Newtype GetGroupQueryOutput _
derive instance repGenericGetGroupQueryOutput :: Generic GetGroupQueryOutput _
instance showGetGroupQueryOutput :: Show GetGroupQueryOutput where show = genericShow
instance decodeGetGroupQueryOutput :: Decode GetGroupQueryOutput where decode = genericDecode options
instance encodeGetGroupQueryOutput :: Encode GetGroupQueryOutput where encode = genericEncode options

-- | Constructs GetGroupQueryOutput from required parameters
newGetGroupQueryOutput :: GetGroupQueryOutput
newGetGroupQueryOutput  = GetGroupQueryOutput { "GroupQuery": Nothing }

-- | Constructs GetGroupQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetGroupQueryOutput' :: ( { "GroupQuery" :: Maybe (GroupQuery) } -> {"GroupQuery" :: Maybe (GroupQuery) } ) -> GetGroupQueryOutput
newGetGroupQueryOutput'  customize = (GetGroupQueryOutput <<< customize) { "GroupQuery": Nothing }



newtype GetTagsInput = GetTagsInput 
  { "Arn" :: (GroupArn)
  }
derive instance newtypeGetTagsInput :: Newtype GetTagsInput _
derive instance repGenericGetTagsInput :: Generic GetTagsInput _
instance showGetTagsInput :: Show GetTagsInput where show = genericShow
instance decodeGetTagsInput :: Decode GetTagsInput where decode = genericDecode options
instance encodeGetTagsInput :: Encode GetTagsInput where encode = genericEncode options

-- | Constructs GetTagsInput from required parameters
newGetTagsInput :: GroupArn -> GetTagsInput
newGetTagsInput _Arn = GetTagsInput { "Arn": _Arn }

-- | Constructs GetTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsInput' :: GroupArn -> ( { "Arn" :: (GroupArn) } -> {"Arn" :: (GroupArn) } ) -> GetTagsInput
newGetTagsInput' _Arn customize = (GetTagsInput <<< customize) { "Arn": _Arn }



newtype GetTagsOutput = GetTagsOutput 
  { "Arn" :: Maybe (GroupArn)
  , "Tags" :: Maybe (Tags)
  }
derive instance newtypeGetTagsOutput :: Newtype GetTagsOutput _
derive instance repGenericGetTagsOutput :: Generic GetTagsOutput _
instance showGetTagsOutput :: Show GetTagsOutput where show = genericShow
instance decodeGetTagsOutput :: Decode GetTagsOutput where decode = genericDecode options
instance encodeGetTagsOutput :: Encode GetTagsOutput where encode = genericEncode options

-- | Constructs GetTagsOutput from required parameters
newGetTagsOutput :: GetTagsOutput
newGetTagsOutput  = GetTagsOutput { "Arn": Nothing, "Tags": Nothing }

-- | Constructs GetTagsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTagsOutput' :: ( { "Arn" :: Maybe (GroupArn) , "Tags" :: Maybe (Tags) } -> {"Arn" :: Maybe (GroupArn) , "Tags" :: Maybe (Tags) } ) -> GetTagsOutput
newGetTagsOutput'  customize = (GetTagsOutput <<< customize) { "Arn": Nothing, "Tags": Nothing }



-- | <p>A resource group.</p>
newtype Group = Group 
  { "GroupArn" :: (GroupArn)
  , "Name" :: (GroupName)
  , "Description" :: Maybe (GroupDescription)
  }
derive instance newtypeGroup :: Newtype Group _
derive instance repGenericGroup :: Generic Group _
instance showGroup :: Show Group where show = genericShow
instance decodeGroup :: Decode Group where decode = genericDecode options
instance encodeGroup :: Encode Group where encode = genericEncode options

-- | Constructs Group from required parameters
newGroup :: GroupArn -> GroupName -> Group
newGroup _GroupArn _Name = Group { "GroupArn": _GroupArn, "Name": _Name, "Description": Nothing }

-- | Constructs Group's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroup' :: GroupArn -> GroupName -> ( { "GroupArn" :: (GroupArn) , "Name" :: (GroupName) , "Description" :: Maybe (GroupDescription) } -> {"GroupArn" :: (GroupArn) , "Name" :: (GroupName) , "Description" :: Maybe (GroupDescription) } ) -> Group
newGroup' _GroupArn _Name customize = (Group <<< customize) { "GroupArn": _GroupArn, "Name": _Name, "Description": Nothing }



newtype GroupArn = GroupArn String
derive instance newtypeGroupArn :: Newtype GroupArn _
derive instance repGenericGroupArn :: Generic GroupArn _
instance showGroupArn :: Show GroupArn where show = genericShow
instance decodeGroupArn :: Decode GroupArn where decode = genericDecode options
instance encodeGroupArn :: Encode GroupArn where encode = genericEncode options



newtype GroupDescription = GroupDescription String
derive instance newtypeGroupDescription :: Newtype GroupDescription _
derive instance repGenericGroupDescription :: Generic GroupDescription _
instance showGroupDescription :: Show GroupDescription where show = genericShow
instance decodeGroupDescription :: Decode GroupDescription where decode = genericDecode options
instance encodeGroupDescription :: Encode GroupDescription where encode = genericEncode options



newtype GroupList = GroupList (Array Group)
derive instance newtypeGroupList :: Newtype GroupList _
derive instance repGenericGroupList :: Generic GroupList _
instance showGroupList :: Show GroupList where show = genericShow
instance decodeGroupList :: Decode GroupList where decode = genericDecode options
instance encodeGroupList :: Encode GroupList where encode = genericEncode options



newtype GroupName = GroupName String
derive instance newtypeGroupName :: Newtype GroupName _
derive instance repGenericGroupName :: Generic GroupName _
instance showGroupName :: Show GroupName where show = genericShow
instance decodeGroupName :: Decode GroupName where decode = genericDecode options
instance encodeGroupName :: Encode GroupName where encode = genericEncode options



-- | <p>The underlying resource query of a resource group. Resources that match query results are part of the group.</p>
newtype GroupQuery = GroupQuery 
  { "GroupName" :: (GroupName)
  , "ResourceQuery" :: (ResourceQuery)
  }
derive instance newtypeGroupQuery :: Newtype GroupQuery _
derive instance repGenericGroupQuery :: Generic GroupQuery _
instance showGroupQuery :: Show GroupQuery where show = genericShow
instance decodeGroupQuery :: Decode GroupQuery where decode = genericDecode options
instance encodeGroupQuery :: Encode GroupQuery where encode = genericEncode options

-- | Constructs GroupQuery from required parameters
newGroupQuery :: GroupName -> ResourceQuery -> GroupQuery
newGroupQuery _GroupName _ResourceQuery = GroupQuery { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }

-- | Constructs GroupQuery's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGroupQuery' :: GroupName -> ResourceQuery -> ( { "GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } -> {"GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } ) -> GroupQuery
newGroupQuery' _GroupName _ResourceQuery customize = (GroupQuery <<< customize) { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }



-- | <p>An internal error occurred while processing the request.</p>
newtype InternalServerErrorException = InternalServerErrorException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where decode = genericDecode options
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where encode = genericEncode options

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "Message": Nothing }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "Message": Nothing }



newtype ListGroupResourcesInput = ListGroupResourcesInput 
  { "GroupName" :: (GroupName)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListGroupResourcesInput :: Newtype ListGroupResourcesInput _
derive instance repGenericListGroupResourcesInput :: Generic ListGroupResourcesInput _
instance showListGroupResourcesInput :: Show ListGroupResourcesInput where show = genericShow
instance decodeListGroupResourcesInput :: Decode ListGroupResourcesInput where decode = genericDecode options
instance encodeListGroupResourcesInput :: Encode ListGroupResourcesInput where encode = genericEncode options

-- | Constructs ListGroupResourcesInput from required parameters
newListGroupResourcesInput :: GroupName -> ListGroupResourcesInput
newListGroupResourcesInput _GroupName = ListGroupResourcesInput { "GroupName": _GroupName, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListGroupResourcesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupResourcesInput' :: GroupName -> ( { "GroupName" :: (GroupName) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"GroupName" :: (GroupName) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> ListGroupResourcesInput
newListGroupResourcesInput' _GroupName customize = (ListGroupResourcesInput <<< customize) { "GroupName": _GroupName, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListGroupResourcesOutput = ListGroupResourcesOutput 
  { "ResourceIdentifiers" :: Maybe (ResourceIdentifierList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListGroupResourcesOutput :: Newtype ListGroupResourcesOutput _
derive instance repGenericListGroupResourcesOutput :: Generic ListGroupResourcesOutput _
instance showListGroupResourcesOutput :: Show ListGroupResourcesOutput where show = genericShow
instance decodeListGroupResourcesOutput :: Decode ListGroupResourcesOutput where decode = genericDecode options
instance encodeListGroupResourcesOutput :: Encode ListGroupResourcesOutput where encode = genericEncode options

-- | Constructs ListGroupResourcesOutput from required parameters
newListGroupResourcesOutput :: ListGroupResourcesOutput
newListGroupResourcesOutput  = ListGroupResourcesOutput { "NextToken": Nothing, "ResourceIdentifiers": Nothing }

-- | Constructs ListGroupResourcesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupResourcesOutput' :: ( { "ResourceIdentifiers" :: Maybe (ResourceIdentifierList) , "NextToken" :: Maybe (NextToken) } -> {"ResourceIdentifiers" :: Maybe (ResourceIdentifierList) , "NextToken" :: Maybe (NextToken) } ) -> ListGroupResourcesOutput
newListGroupResourcesOutput'  customize = (ListGroupResourcesOutput <<< customize) { "NextToken": Nothing, "ResourceIdentifiers": Nothing }



newtype ListGroupsInput = ListGroupsInput 
  { "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListGroupsInput :: Newtype ListGroupsInput _
derive instance repGenericListGroupsInput :: Generic ListGroupsInput _
instance showListGroupsInput :: Show ListGroupsInput where show = genericShow
instance decodeListGroupsInput :: Decode ListGroupsInput where decode = genericDecode options
instance encodeListGroupsInput :: Encode ListGroupsInput where encode = genericEncode options

-- | Constructs ListGroupsInput from required parameters
newListGroupsInput :: ListGroupsInput
newListGroupsInput  = ListGroupsInput { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsInput' :: ( { "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> ListGroupsInput
newListGroupsInput'  customize = (ListGroupsInput <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListGroupsOutput = ListGroupsOutput 
  { "Groups" :: Maybe (GroupList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListGroupsOutput :: Newtype ListGroupsOutput _
derive instance repGenericListGroupsOutput :: Generic ListGroupsOutput _
instance showListGroupsOutput :: Show ListGroupsOutput where show = genericShow
instance decodeListGroupsOutput :: Decode ListGroupsOutput where decode = genericDecode options
instance encodeListGroupsOutput :: Encode ListGroupsOutput where encode = genericEncode options

-- | Constructs ListGroupsOutput from required parameters
newListGroupsOutput :: ListGroupsOutput
newListGroupsOutput  = ListGroupsOutput { "Groups": Nothing, "NextToken": Nothing }

-- | Constructs ListGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListGroupsOutput' :: ( { "Groups" :: Maybe (GroupList) , "NextToken" :: Maybe (NextToken) } -> {"Groups" :: Maybe (GroupList) , "NextToken" :: Maybe (NextToken) } ) -> ListGroupsOutput
newListGroupsOutput'  customize = (ListGroupsOutput <<< customize) { "Groups": Nothing, "NextToken": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p>The request uses an HTTP method which is not allowed for the specified resource.</p>
newtype MethodNotAllowedException = MethodNotAllowedException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeMethodNotAllowedException :: Newtype MethodNotAllowedException _
derive instance repGenericMethodNotAllowedException :: Generic MethodNotAllowedException _
instance showMethodNotAllowedException :: Show MethodNotAllowedException where show = genericShow
instance decodeMethodNotAllowedException :: Decode MethodNotAllowedException where decode = genericDecode options
instance encodeMethodNotAllowedException :: Encode MethodNotAllowedException where encode = genericEncode options

-- | Constructs MethodNotAllowedException from required parameters
newMethodNotAllowedException :: MethodNotAllowedException
newMethodNotAllowedException  = MethodNotAllowedException { "Message": Nothing }

-- | Constructs MethodNotAllowedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMethodNotAllowedException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> MethodNotAllowedException
newMethodNotAllowedException'  customize = (MethodNotAllowedException <<< customize) { "Message": Nothing }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>One or more resources specified in the request do not exist.</p>
newtype NotFoundException = NotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "Message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "Message": Nothing }



newtype Query = Query String
derive instance newtypeQuery :: Newtype Query _
derive instance repGenericQuery :: Generic Query _
instance showQuery :: Show Query where show = genericShow
instance decodeQuery :: Decode Query where decode = genericDecode options
instance encodeQuery :: Encode Query where encode = genericEncode options



newtype QueryType = QueryType String
derive instance newtypeQueryType :: Newtype QueryType _
derive instance repGenericQueryType :: Generic QueryType _
instance showQueryType :: Show QueryType where show = genericShow
instance decodeQueryType :: Decode QueryType where decode = genericDecode options
instance encodeQueryType :: Encode QueryType where encode = genericEncode options



newtype ResourceArn = ResourceArn String
derive instance newtypeResourceArn :: Newtype ResourceArn _
derive instance repGenericResourceArn :: Generic ResourceArn _
instance showResourceArn :: Show ResourceArn where show = genericShow
instance decodeResourceArn :: Decode ResourceArn where decode = genericDecode options
instance encodeResourceArn :: Encode ResourceArn where encode = genericEncode options



-- | <p>The ARN of a resource, and its resource type.</p>
newtype ResourceIdentifier = ResourceIdentifier 
  { "ResourceArn" :: Maybe (ResourceArn)
  , "ResourceType" :: Maybe (ResourceType)
  }
derive instance newtypeResourceIdentifier :: Newtype ResourceIdentifier _
derive instance repGenericResourceIdentifier :: Generic ResourceIdentifier _
instance showResourceIdentifier :: Show ResourceIdentifier where show = genericShow
instance decodeResourceIdentifier :: Decode ResourceIdentifier where decode = genericDecode options
instance encodeResourceIdentifier :: Encode ResourceIdentifier where encode = genericEncode options

-- | Constructs ResourceIdentifier from required parameters
newResourceIdentifier :: ResourceIdentifier
newResourceIdentifier  = ResourceIdentifier { "ResourceArn": Nothing, "ResourceType": Nothing }

-- | Constructs ResourceIdentifier's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceIdentifier' :: ( { "ResourceArn" :: Maybe (ResourceArn) , "ResourceType" :: Maybe (ResourceType) } -> {"ResourceArn" :: Maybe (ResourceArn) , "ResourceType" :: Maybe (ResourceType) } ) -> ResourceIdentifier
newResourceIdentifier'  customize = (ResourceIdentifier <<< customize) { "ResourceArn": Nothing, "ResourceType": Nothing }



newtype ResourceIdentifierList = ResourceIdentifierList (Array ResourceIdentifier)
derive instance newtypeResourceIdentifierList :: Newtype ResourceIdentifierList _
derive instance repGenericResourceIdentifierList :: Generic ResourceIdentifierList _
instance showResourceIdentifierList :: Show ResourceIdentifierList where show = genericShow
instance decodeResourceIdentifierList :: Decode ResourceIdentifierList where decode = genericDecode options
instance encodeResourceIdentifierList :: Encode ResourceIdentifierList where encode = genericEncode options



-- | <p>The query that is used to define a resource group or a search for resources.</p>
newtype ResourceQuery = ResourceQuery 
  { "Type" :: (QueryType)
  , "Query" :: (Query)
  }
derive instance newtypeResourceQuery :: Newtype ResourceQuery _
derive instance repGenericResourceQuery :: Generic ResourceQuery _
instance showResourceQuery :: Show ResourceQuery where show = genericShow
instance decodeResourceQuery :: Decode ResourceQuery where decode = genericDecode options
instance encodeResourceQuery :: Encode ResourceQuery where encode = genericEncode options

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
instance showResourceType :: Show ResourceType where show = genericShow
instance decodeResourceType :: Decode ResourceType where decode = genericDecode options
instance encodeResourceType :: Encode ResourceType where encode = genericEncode options



newtype SearchResourcesInput = SearchResourcesInput 
  { "ResourceQuery" :: (ResourceQuery)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeSearchResourcesInput :: Newtype SearchResourcesInput _
derive instance repGenericSearchResourcesInput :: Generic SearchResourcesInput _
instance showSearchResourcesInput :: Show SearchResourcesInput where show = genericShow
instance decodeSearchResourcesInput :: Decode SearchResourcesInput where decode = genericDecode options
instance encodeSearchResourcesInput :: Encode SearchResourcesInput where encode = genericEncode options

-- | Constructs SearchResourcesInput from required parameters
newSearchResourcesInput :: ResourceQuery -> SearchResourcesInput
newSearchResourcesInput _ResourceQuery = SearchResourcesInput { "ResourceQuery": _ResourceQuery, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs SearchResourcesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResourcesInput' :: ResourceQuery -> ( { "ResourceQuery" :: (ResourceQuery) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"ResourceQuery" :: (ResourceQuery) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> SearchResourcesInput
newSearchResourcesInput' _ResourceQuery customize = (SearchResourcesInput <<< customize) { "ResourceQuery": _ResourceQuery, "MaxResults": Nothing, "NextToken": Nothing }



newtype SearchResourcesOutput = SearchResourcesOutput 
  { "ResourceIdentifiers" :: Maybe (ResourceIdentifierList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeSearchResourcesOutput :: Newtype SearchResourcesOutput _
derive instance repGenericSearchResourcesOutput :: Generic SearchResourcesOutput _
instance showSearchResourcesOutput :: Show SearchResourcesOutput where show = genericShow
instance decodeSearchResourcesOutput :: Decode SearchResourcesOutput where decode = genericDecode options
instance encodeSearchResourcesOutput :: Encode SearchResourcesOutput where encode = genericEncode options

-- | Constructs SearchResourcesOutput from required parameters
newSearchResourcesOutput :: SearchResourcesOutput
newSearchResourcesOutput  = SearchResourcesOutput { "NextToken": Nothing, "ResourceIdentifiers": Nothing }

-- | Constructs SearchResourcesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchResourcesOutput' :: ( { "ResourceIdentifiers" :: Maybe (ResourceIdentifierList) , "NextToken" :: Maybe (NextToken) } -> {"ResourceIdentifiers" :: Maybe (ResourceIdentifierList) , "NextToken" :: Maybe (NextToken) } ) -> SearchResourcesOutput
newSearchResourcesOutput'  customize = (SearchResourcesOutput <<< customize) { "NextToken": Nothing, "ResourceIdentifiers": Nothing }



newtype TagInput = TagInput 
  { "Arn" :: (GroupArn)
  , "Tags" :: (Tags)
  }
derive instance newtypeTagInput :: Newtype TagInput _
derive instance repGenericTagInput :: Generic TagInput _
instance showTagInput :: Show TagInput where show = genericShow
instance decodeTagInput :: Decode TagInput where decode = genericDecode options
instance encodeTagInput :: Encode TagInput where encode = genericEncode options

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
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagOutput = TagOutput 
  { "Arn" :: Maybe (GroupArn)
  , "Tags" :: Maybe (Tags)
  }
derive instance newtypeTagOutput :: Newtype TagOutput _
derive instance repGenericTagOutput :: Generic TagOutput _
instance showTagOutput :: Show TagOutput where show = genericShow
instance decodeTagOutput :: Decode TagOutput where decode = genericDecode options
instance encodeTagOutput :: Encode TagOutput where encode = genericEncode options

-- | Constructs TagOutput from required parameters
newTagOutput :: TagOutput
newTagOutput  = TagOutput { "Arn": Nothing, "Tags": Nothing }

-- | Constructs TagOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagOutput' :: ( { "Arn" :: Maybe (GroupArn) , "Tags" :: Maybe (Tags) } -> {"Arn" :: Maybe (GroupArn) , "Tags" :: Maybe (Tags) } ) -> TagOutput
newTagOutput'  customize = (TagOutput <<< customize) { "Arn": Nothing, "Tags": Nothing }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype Tags = Tags (StrMap.StrMap TagValue)
derive instance newtypeTags :: Newtype Tags _
derive instance repGenericTags :: Generic Tags _
instance showTags :: Show Tags where show = genericShow
instance decodeTags :: Decode Tags where decode = genericDecode options
instance encodeTags :: Encode Tags where encode = genericEncode options



-- | <p>The caller has exceeded throttling limits.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": Nothing }



-- | <p>The request has not been applied because it lacks valid authentication credentials for the target resource.</p>
newtype UnauthorizedException = UnauthorizedException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeUnauthorizedException :: Newtype UnauthorizedException _
derive instance repGenericUnauthorizedException :: Generic UnauthorizedException _
instance showUnauthorizedException :: Show UnauthorizedException where show = genericShow
instance decodeUnauthorizedException :: Decode UnauthorizedException where decode = genericDecode options
instance encodeUnauthorizedException :: Encode UnauthorizedException where encode = genericEncode options

-- | Constructs UnauthorizedException from required parameters
newUnauthorizedException :: UnauthorizedException
newUnauthorizedException  = UnauthorizedException { "Message": Nothing }

-- | Constructs UnauthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnauthorizedException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> UnauthorizedException
newUnauthorizedException'  customize = (UnauthorizedException <<< customize) { "Message": Nothing }



newtype UntagInput = UntagInput 
  { "Arn" :: (GroupArn)
  , "Keys" :: (TagKeyList)
  }
derive instance newtypeUntagInput :: Newtype UntagInput _
derive instance repGenericUntagInput :: Generic UntagInput _
instance showUntagInput :: Show UntagInput where show = genericShow
instance decodeUntagInput :: Decode UntagInput where decode = genericDecode options
instance encodeUntagInput :: Encode UntagInput where encode = genericEncode options

-- | Constructs UntagInput from required parameters
newUntagInput :: GroupArn -> TagKeyList -> UntagInput
newUntagInput _Arn _Keys = UntagInput { "Arn": _Arn, "Keys": _Keys }

-- | Constructs UntagInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagInput' :: GroupArn -> TagKeyList -> ( { "Arn" :: (GroupArn) , "Keys" :: (TagKeyList) } -> {"Arn" :: (GroupArn) , "Keys" :: (TagKeyList) } ) -> UntagInput
newUntagInput' _Arn _Keys customize = (UntagInput <<< customize) { "Arn": _Arn, "Keys": _Keys }



newtype UntagOutput = UntagOutput 
  { "Arn" :: Maybe (GroupArn)
  , "Keys" :: Maybe (TagKeyList)
  }
derive instance newtypeUntagOutput :: Newtype UntagOutput _
derive instance repGenericUntagOutput :: Generic UntagOutput _
instance showUntagOutput :: Show UntagOutput where show = genericShow
instance decodeUntagOutput :: Decode UntagOutput where decode = genericDecode options
instance encodeUntagOutput :: Encode UntagOutput where encode = genericEncode options

-- | Constructs UntagOutput from required parameters
newUntagOutput :: UntagOutput
newUntagOutput  = UntagOutput { "Arn": Nothing, "Keys": Nothing }

-- | Constructs UntagOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagOutput' :: ( { "Arn" :: Maybe (GroupArn) , "Keys" :: Maybe (TagKeyList) } -> {"Arn" :: Maybe (GroupArn) , "Keys" :: Maybe (TagKeyList) } ) -> UntagOutput
newUntagOutput'  customize = (UntagOutput <<< customize) { "Arn": Nothing, "Keys": Nothing }



newtype UpdateGroupInput = UpdateGroupInput 
  { "GroupName" :: (GroupName)
  , "Description" :: Maybe (GroupDescription)
  }
derive instance newtypeUpdateGroupInput :: Newtype UpdateGroupInput _
derive instance repGenericUpdateGroupInput :: Generic UpdateGroupInput _
instance showUpdateGroupInput :: Show UpdateGroupInput where show = genericShow
instance decodeUpdateGroupInput :: Decode UpdateGroupInput where decode = genericDecode options
instance encodeUpdateGroupInput :: Encode UpdateGroupInput where encode = genericEncode options

-- | Constructs UpdateGroupInput from required parameters
newUpdateGroupInput :: GroupName -> UpdateGroupInput
newUpdateGroupInput _GroupName = UpdateGroupInput { "GroupName": _GroupName, "Description": Nothing }

-- | Constructs UpdateGroupInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupInput' :: GroupName -> ( { "GroupName" :: (GroupName) , "Description" :: Maybe (GroupDescription) } -> {"GroupName" :: (GroupName) , "Description" :: Maybe (GroupDescription) } ) -> UpdateGroupInput
newUpdateGroupInput' _GroupName customize = (UpdateGroupInput <<< customize) { "GroupName": _GroupName, "Description": Nothing }



newtype UpdateGroupOutput = UpdateGroupOutput 
  { "Group" :: Maybe (Group)
  }
derive instance newtypeUpdateGroupOutput :: Newtype UpdateGroupOutput _
derive instance repGenericUpdateGroupOutput :: Generic UpdateGroupOutput _
instance showUpdateGroupOutput :: Show UpdateGroupOutput where show = genericShow
instance decodeUpdateGroupOutput :: Decode UpdateGroupOutput where decode = genericDecode options
instance encodeUpdateGroupOutput :: Encode UpdateGroupOutput where encode = genericEncode options

-- | Constructs UpdateGroupOutput from required parameters
newUpdateGroupOutput :: UpdateGroupOutput
newUpdateGroupOutput  = UpdateGroupOutput { "Group": Nothing }

-- | Constructs UpdateGroupOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupOutput' :: ( { "Group" :: Maybe (Group) } -> {"Group" :: Maybe (Group) } ) -> UpdateGroupOutput
newUpdateGroupOutput'  customize = (UpdateGroupOutput <<< customize) { "Group": Nothing }



newtype UpdateGroupQueryInput = UpdateGroupQueryInput 
  { "GroupName" :: (GroupName)
  , "ResourceQuery" :: (ResourceQuery)
  }
derive instance newtypeUpdateGroupQueryInput :: Newtype UpdateGroupQueryInput _
derive instance repGenericUpdateGroupQueryInput :: Generic UpdateGroupQueryInput _
instance showUpdateGroupQueryInput :: Show UpdateGroupQueryInput where show = genericShow
instance decodeUpdateGroupQueryInput :: Decode UpdateGroupQueryInput where decode = genericDecode options
instance encodeUpdateGroupQueryInput :: Encode UpdateGroupQueryInput where encode = genericEncode options

-- | Constructs UpdateGroupQueryInput from required parameters
newUpdateGroupQueryInput :: GroupName -> ResourceQuery -> UpdateGroupQueryInput
newUpdateGroupQueryInput _GroupName _ResourceQuery = UpdateGroupQueryInput { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }

-- | Constructs UpdateGroupQueryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupQueryInput' :: GroupName -> ResourceQuery -> ( { "GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } -> {"GroupName" :: (GroupName) , "ResourceQuery" :: (ResourceQuery) } ) -> UpdateGroupQueryInput
newUpdateGroupQueryInput' _GroupName _ResourceQuery customize = (UpdateGroupQueryInput <<< customize) { "GroupName": _GroupName, "ResourceQuery": _ResourceQuery }



newtype UpdateGroupQueryOutput = UpdateGroupQueryOutput 
  { "GroupQuery" :: Maybe (GroupQuery)
  }
derive instance newtypeUpdateGroupQueryOutput :: Newtype UpdateGroupQueryOutput _
derive instance repGenericUpdateGroupQueryOutput :: Generic UpdateGroupQueryOutput _
instance showUpdateGroupQueryOutput :: Show UpdateGroupQueryOutput where show = genericShow
instance decodeUpdateGroupQueryOutput :: Decode UpdateGroupQueryOutput where decode = genericDecode options
instance encodeUpdateGroupQueryOutput :: Encode UpdateGroupQueryOutput where encode = genericEncode options

-- | Constructs UpdateGroupQueryOutput from required parameters
newUpdateGroupQueryOutput :: UpdateGroupQueryOutput
newUpdateGroupQueryOutput  = UpdateGroupQueryOutput { "GroupQuery": Nothing }

-- | Constructs UpdateGroupQueryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateGroupQueryOutput' :: ( { "GroupQuery" :: Maybe (GroupQuery) } -> {"GroupQuery" :: Maybe (GroupQuery) } ) -> UpdateGroupQueryOutput
newUpdateGroupQueryOutput'  customize = (UpdateGroupQueryOutput <<< customize) { "GroupQuery": Nothing }

