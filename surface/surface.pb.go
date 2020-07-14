// Copyright 2017 Google LLC. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Model an API surface for code generation.

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.23.0
// 	protoc        v3.12.3
// source: surface/surface.proto

package surface_v1

import (
	proto "github.com/golang/protobuf/proto"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// This is a compile-time assertion that a sufficiently up-to-date version
// of the legacy proto package is being used.
const _ = proto.ProtoPackageIsVersion4

type FieldKind int32

const (
	FieldKind_SCALAR    FieldKind = 0
	FieldKind_MAP       FieldKind = 1
	FieldKind_ARRAY     FieldKind = 2
	FieldKind_REFERENCE FieldKind = 3
	FieldKind_ANY       FieldKind = 4
)

// Enum value maps for FieldKind.
var (
	FieldKind_name = map[int32]string{
		0: "SCALAR",
		1: "MAP",
		2: "ARRAY",
		3: "REFERENCE",
		4: "ANY",
	}
	FieldKind_value = map[string]int32{
		"SCALAR":    0,
		"MAP":       1,
		"ARRAY":     2,
		"REFERENCE": 3,
		"ANY":       4,
	}
)

func (x FieldKind) Enum() *FieldKind {
	p := new(FieldKind)
	*p = x
	return p
}

func (x FieldKind) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (FieldKind) Descriptor() protoreflect.EnumDescriptor {
	return file_surface_surface_proto_enumTypes[0].Descriptor()
}

func (FieldKind) Type() protoreflect.EnumType {
	return &file_surface_surface_proto_enumTypes[0]
}

func (x FieldKind) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use FieldKind.Descriptor instead.
func (FieldKind) EnumDescriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{0}
}

type TypeKind int32

const (
	TypeKind_STRUCT TypeKind = 0 // implement with named fields
	TypeKind_OBJECT TypeKind = 1 // implement with a map
)

// Enum value maps for TypeKind.
var (
	TypeKind_name = map[int32]string{
		0: "STRUCT",
		1: "OBJECT",
	}
	TypeKind_value = map[string]int32{
		"STRUCT": 0,
		"OBJECT": 1,
	}
)

func (x TypeKind) Enum() *TypeKind {
	p := new(TypeKind)
	*p = x
	return p
}

func (x TypeKind) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (TypeKind) Descriptor() protoreflect.EnumDescriptor {
	return file_surface_surface_proto_enumTypes[1].Descriptor()
}

func (TypeKind) Type() protoreflect.EnumType {
	return &file_surface_surface_proto_enumTypes[1]
}

func (x TypeKind) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use TypeKind.Descriptor instead.
func (TypeKind) EnumDescriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{1}
}

type Position int32

const (
	Position_BODY     Position = 0
	Position_HEADER   Position = 1
	Position_FORMDATA Position = 2
	Position_QUERY    Position = 3
	Position_PATH     Position = 4
)

// Enum value maps for Position.
var (
	Position_name = map[int32]string{
		0: "BODY",
		1: "HEADER",
		2: "FORMDATA",
		3: "QUERY",
		4: "PATH",
	}
	Position_value = map[string]int32{
		"BODY":     0,
		"HEADER":   1,
		"FORMDATA": 2,
		"QUERY":    3,
		"PATH":     4,
	}
)

func (x Position) Enum() *Position {
	p := new(Position)
	*p = x
	return p
}

func (x Position) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (Position) Descriptor() protoreflect.EnumDescriptor {
	return file_surface_surface_proto_enumTypes[2].Descriptor()
}

func (Position) Type() protoreflect.EnumType {
	return &file_surface_surface_proto_enumTypes[2]
}

func (x Position) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use Position.Descriptor instead.
func (Position) EnumDescriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{2}
}

// Field is a field in a definition and can be associated with
// a position in a request structure.
type Field struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name          string    `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`                                        // the name as specified in the API description
	Type          string    `protobuf:"bytes,2,opt,name=type,proto3" json:"type,omitempty"`                                        // the specified content type of the field
	Kind          FieldKind `protobuf:"varint,3,opt,name=kind,proto3,enum=surface.v1.FieldKind" json:"kind,omitempty"`             // what kind of thing is this field? scalar, reference, array, map of strings to the specified type
	Format        string    `protobuf:"bytes,4,opt,name=format,proto3" json:"format,omitempty"`                                    // the specified format of the field
	Position      Position  `protobuf:"varint,5,opt,name=position,proto3,enum=surface.v1.Position" json:"position,omitempty"`      // "body", "header", "formdata", "query", or "path"
	NativeType    string    `protobuf:"bytes,6,opt,name=native_type,json=nativeType,proto3" json:"native_type,omitempty"`          // the programming-language native type of the field
	FieldName     string    `protobuf:"bytes,7,opt,name=field_name,json=fieldName,proto3" json:"field_name,omitempty"`             // the name to use for a data structure field
	ParameterName string    `protobuf:"bytes,8,opt,name=parameter_name,json=parameterName,proto3" json:"parameter_name,omitempty"` // the name to use for a function parameter
	Serialize     bool      `protobuf:"varint,9,opt,name=serialize,proto3" json:"serialize,omitempty"`                             // true if this field should be serialized (to JSON, etc)
	EnumValues    []string  `protobuf:"bytes,10,rep,name=enum_values,json=enumValues,proto3" json:"enum_values,omitempty"`         // enum values as specified in the API description
}

func (x *Field) Reset() {
	*x = Field{}
	if protoimpl.UnsafeEnabled {
		mi := &file_surface_surface_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Field) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Field) ProtoMessage() {}

func (x *Field) ProtoReflect() protoreflect.Message {
	mi := &file_surface_surface_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Field.ProtoReflect.Descriptor instead.
func (*Field) Descriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{0}
}

func (x *Field) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Field) GetType() string {
	if x != nil {
		return x.Type
	}
	return ""
}

func (x *Field) GetKind() FieldKind {
	if x != nil {
		return x.Kind
	}
	return FieldKind_SCALAR
}

func (x *Field) GetFormat() string {
	if x != nil {
		return x.Format
	}
	return ""
}

func (x *Field) GetPosition() Position {
	if x != nil {
		return x.Position
	}
	return Position_BODY
}

func (x *Field) GetNativeType() string {
	if x != nil {
		return x.NativeType
	}
	return ""
}

func (x *Field) GetFieldName() string {
	if x != nil {
		return x.FieldName
	}
	return ""
}

func (x *Field) GetParameterName() string {
	if x != nil {
		return x.ParameterName
	}
	return ""
}

func (x *Field) GetSerialize() bool {
	if x != nil {
		return x.Serialize
	}
	return false
}

func (x *Field) GetEnumValues() []string {
	if x != nil {
		return x.EnumValues
	}
	return nil
}

// Type typically corresponds to a definition, parameter, or response
// in an API and is represented by a type in generated code.
type Type struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name        string   `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`                                  // the name to use for the type
	Kind        TypeKind `protobuf:"varint,2,opt,name=kind,proto3,enum=surface.v1.TypeKind" json:"kind,omitempty"`        // a meta-description of the type (struct, map, etc)
	Description string   `protobuf:"bytes,3,opt,name=description,proto3" json:"description,omitempty"`                    // a comment describing the type
	ContentType string   `protobuf:"bytes,4,opt,name=content_type,json=contentType,proto3" json:"content_type,omitempty"` // if the type is a map, this is its content type
	Fields      []*Field `protobuf:"bytes,5,rep,name=fields,proto3" json:"fields,omitempty"`                              // the fields of the type
	TypeName    string   `protobuf:"bytes,6,opt,name=type_name,json=typeName,proto3" json:"type_name,omitempty"`          // language-specific type name
}

func (x *Type) Reset() {
	*x = Type{}
	if protoimpl.UnsafeEnabled {
		mi := &file_surface_surface_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Type) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Type) ProtoMessage() {}

func (x *Type) ProtoReflect() protoreflect.Message {
	mi := &file_surface_surface_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Type.ProtoReflect.Descriptor instead.
func (*Type) Descriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{1}
}

func (x *Type) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Type) GetKind() TypeKind {
	if x != nil {
		return x.Kind
	}
	return TypeKind_STRUCT
}

func (x *Type) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *Type) GetContentType() string {
	if x != nil {
		return x.ContentType
	}
	return ""
}

func (x *Type) GetFields() []*Field {
	if x != nil {
		return x.Fields
	}
	return nil
}

func (x *Type) GetTypeName() string {
	if x != nil {
		return x.TypeName
	}
	return ""
}

// Method is an operation of an API and typically has associated client and server code.
type Method struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Operation          string `protobuf:"bytes,1,opt,name=operation,proto3" json:"operation,omitempty"`                                               // Operation ID
	Path               string `protobuf:"bytes,2,opt,name=path,proto3" json:"path,omitempty"`                                                         // HTTP path
	Method             string `protobuf:"bytes,3,opt,name=method,proto3" json:"method,omitempty"`                                                     // HTTP method name
	Description        string `protobuf:"bytes,4,opt,name=description,proto3" json:"description,omitempty"`                                           // description of method
	Name               string `protobuf:"bytes,5,opt,name=name,proto3" json:"name,omitempty"`                                                         // Operation name, possibly generated from method and path
	HandlerName        string `protobuf:"bytes,6,opt,name=handler_name,json=handlerName,proto3" json:"handler_name,omitempty"`                        // name of the generated handler
	ProcessorName      string `protobuf:"bytes,7,opt,name=processor_name,json=processorName,proto3" json:"processor_name,omitempty"`                  // name of the processing function in the service interface
	ClientName         string `protobuf:"bytes,8,opt,name=client_name,json=clientName,proto3" json:"client_name,omitempty"`                           // name of client
	ParametersTypeName string `protobuf:"bytes,9,opt,name=parameters_type_name,json=parametersTypeName,proto3" json:"parameters_type_name,omitempty"` // parameters (input), with fields corresponding to input parameters
	ResponsesTypeName  string `protobuf:"bytes,10,opt,name=responses_type_name,json=responsesTypeName,proto3" json:"responses_type_name,omitempty"`   // responses (output), with fields corresponding to possible response values
}

func (x *Method) Reset() {
	*x = Method{}
	if protoimpl.UnsafeEnabled {
		mi := &file_surface_surface_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Method) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Method) ProtoMessage() {}

func (x *Method) ProtoReflect() protoreflect.Message {
	mi := &file_surface_surface_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Method.ProtoReflect.Descriptor instead.
func (*Method) Descriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{2}
}

func (x *Method) GetOperation() string {
	if x != nil {
		return x.Operation
	}
	return ""
}

func (x *Method) GetPath() string {
	if x != nil {
		return x.Path
	}
	return ""
}

func (x *Method) GetMethod() string {
	if x != nil {
		return x.Method
	}
	return ""
}

func (x *Method) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *Method) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Method) GetHandlerName() string {
	if x != nil {
		return x.HandlerName
	}
	return ""
}

func (x *Method) GetProcessorName() string {
	if x != nil {
		return x.ProcessorName
	}
	return ""
}

func (x *Method) GetClientName() string {
	if x != nil {
		return x.ClientName
	}
	return ""
}

func (x *Method) GetParametersTypeName() string {
	if x != nil {
		return x.ParametersTypeName
	}
	return ""
}

func (x *Method) GetResponsesTypeName() string {
	if x != nil {
		return x.ResponsesTypeName
	}
	return ""
}

// Model represents an API for code generation.
type Model struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name               string    `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`                                                       // a free-form title for the API
	Types              []*Type   `protobuf:"bytes,2,rep,name=types,proto3" json:"types,omitempty"`                                                     // the types used by the API
	Methods            []*Method `protobuf:"bytes,3,rep,name=methods,proto3" json:"methods,omitempty"`                                                 // the methods (functions) of the API
	SymbolicReferences []string  `protobuf:"bytes,4,rep,name=symbolic_references,json=symbolicReferences,proto3" json:"symbolic_references,omitempty"` // references to other OpenAPI files. Currently only supported for OpenAPI v3.
}

func (x *Model) Reset() {
	*x = Model{}
	if protoimpl.UnsafeEnabled {
		mi := &file_surface_surface_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Model) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Model) ProtoMessage() {}

func (x *Model) ProtoReflect() protoreflect.Message {
	mi := &file_surface_surface_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Model.ProtoReflect.Descriptor instead.
func (*Model) Descriptor() ([]byte, []int) {
	return file_surface_surface_proto_rawDescGZIP(), []int{3}
}

func (x *Model) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Model) GetTypes() []*Type {
	if x != nil {
		return x.Types
	}
	return nil
}

func (x *Model) GetMethods() []*Method {
	if x != nil {
		return x.Methods
	}
	return nil
}

func (x *Model) GetSymbolicReferences() []string {
	if x != nil {
		return x.SymbolicReferences
	}
	return nil
}

var File_surface_surface_proto protoreflect.FileDescriptor

var file_surface_surface_proto_rawDesc = []byte{
	0x0a, 0x15, 0x73, 0x75, 0x72, 0x66, 0x61, 0x63, 0x65, 0x2f, 0x73, 0x75, 0x72, 0x66, 0x61, 0x63,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0a, 0x73, 0x75, 0x72, 0x66, 0x61, 0x63, 0x65,
	0x2e, 0x76, 0x31, 0x22, 0xca, 0x02, 0x0a, 0x05, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x12, 0x12, 0x0a,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d,
	0x65, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x74, 0x79, 0x70, 0x65, 0x12, 0x29, 0x0a, 0x04, 0x6b, 0x69, 0x6e, 0x64, 0x18, 0x03, 0x20,
	0x01, 0x28, 0x0e, 0x32, 0x15, 0x2e, 0x73, 0x75, 0x72, 0x66, 0x61, 0x63, 0x65, 0x2e, 0x76, 0x31,
	0x2e, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x4b, 0x69, 0x6e, 0x64, 0x52, 0x04, 0x6b, 0x69, 0x6e, 0x64,
	0x12, 0x16, 0x0a, 0x06, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x06, 0x66, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x12, 0x30, 0x0a, 0x08, 0x70, 0x6f, 0x73, 0x69,
	0x74, 0x69, 0x6f, 0x6e, 0x18, 0x05, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x14, 0x2e, 0x73, 0x75, 0x72,
	0x66, 0x61, 0x63, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x50, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e,
	0x52, 0x08, 0x70, 0x6f, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x1f, 0x0a, 0x0b, 0x6e, 0x61,
	0x74, 0x69, 0x76, 0x65, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0a, 0x6e, 0x61, 0x74, 0x69, 0x76, 0x65, 0x54, 0x79, 0x70, 0x65, 0x12, 0x1d, 0x0a, 0x0a, 0x66,
	0x69, 0x65, 0x6c, 0x64, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x25, 0x0a, 0x0e, 0x70, 0x61,
	0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x08, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x0d, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x4e, 0x61, 0x6d,
	0x65, 0x12, 0x1c, 0x0a, 0x09, 0x73, 0x65, 0x72, 0x69, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x18, 0x09,
	0x20, 0x01, 0x28, 0x08, 0x52, 0x09, 0x73, 0x65, 0x72, 0x69, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x12,
	0x1f, 0x0a, 0x0b, 0x65, 0x6e, 0x75, 0x6d, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x73, 0x18, 0x0a,
	0x20, 0x03, 0x28, 0x09, 0x52, 0x0a, 0x65, 0x6e, 0x75, 0x6d, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x73,
	0x22, 0xd1, 0x01, 0x0a, 0x04, 0x54, 0x79, 0x70, 0x65, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d,
	0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x28, 0x0a,
	0x04, 0x6b, 0x69, 0x6e, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x14, 0x2e, 0x73, 0x75,
	0x72, 0x66, 0x61, 0x63, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x54, 0x79, 0x70, 0x65, 0x4b, 0x69, 0x6e,
	0x64, 0x52, 0x04, 0x6b, 0x69, 0x6e, 0x64, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72,
	0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x64, 0x65,
	0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x21, 0x0a, 0x0c, 0x63, 0x6f, 0x6e,
	0x74, 0x65, 0x6e, 0x74, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0b, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x6e, 0x74, 0x54, 0x79, 0x70, 0x65, 0x12, 0x29, 0x0a, 0x06,
	0x66, 0x69, 0x65, 0x6c, 0x64, 0x73, 0x18, 0x05, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x11, 0x2e, 0x73,
	0x75, 0x72, 0x66, 0x61, 0x63, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x52,
	0x06, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x73, 0x12, 0x1b, 0x0a, 0x09, 0x74, 0x79, 0x70, 0x65, 0x5f,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x74, 0x79, 0x70, 0x65,
	0x4e, 0x61, 0x6d, 0x65, 0x22, 0xd5, 0x02, 0x0a, 0x06, 0x4d, 0x65, 0x74, 0x68, 0x6f, 0x64, 0x12,
	0x1c, 0x0a, 0x09, 0x6f, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x09, 0x6f, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x12, 0x0a,
	0x04, 0x70, 0x61, 0x74, 0x68, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x70, 0x61, 0x74,
	0x68, 0x12, 0x16, 0x0a, 0x06, 0x6d, 0x65, 0x74, 0x68, 0x6f, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x06, 0x6d, 0x65, 0x74, 0x68, 0x6f, 0x64, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73,
	0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b,
	0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x12, 0x0a, 0x04, 0x6e,
	0x61, 0x6d, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12,
	0x21, 0x0a, 0x0c, 0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x72, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18,
	0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x72, 0x4e, 0x61,
	0x6d, 0x65, 0x12, 0x25, 0x0a, 0x0e, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x6f, 0x72, 0x5f,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0d, 0x70, 0x72, 0x6f, 0x63,
	0x65, 0x73, 0x73, 0x6f, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1f, 0x0a, 0x0b, 0x63, 0x6c, 0x69,
	0x65, 0x6e, 0x74, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a,
	0x63, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x30, 0x0a, 0x14, 0x70, 0x61,
	0x72, 0x61, 0x6d, 0x65, 0x74, 0x65, 0x72, 0x73, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x5f, 0x6e, 0x61,
	0x6d, 0x65, 0x18, 0x09, 0x20, 0x01, 0x28, 0x09, 0x52, 0x12, 0x70, 0x61, 0x72, 0x61, 0x6d, 0x65,
	0x74, 0x65, 0x72, 0x73, 0x54, 0x79, 0x70, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x2e, 0x0a, 0x13,
	0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x73, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x5f, 0x6e,
	0x61, 0x6d, 0x65, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x09, 0x52, 0x11, 0x72, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x73, 0x54, 0x79, 0x70, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x22, 0xa2, 0x01, 0x0a,
	0x05, 0x4d, 0x6f, 0x64, 0x65, 0x6c, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x26, 0x0a, 0x05, 0x74, 0x79,
	0x70, 0x65, 0x73, 0x18, 0x02, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x10, 0x2e, 0x73, 0x75, 0x72, 0x66,
	0x61, 0x63, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x54, 0x79, 0x70, 0x65, 0x52, 0x05, 0x74, 0x79, 0x70,
	0x65, 0x73, 0x12, 0x2c, 0x0a, 0x07, 0x6d, 0x65, 0x74, 0x68, 0x6f, 0x64, 0x73, 0x18, 0x03, 0x20,
	0x03, 0x28, 0x0b, 0x32, 0x12, 0x2e, 0x73, 0x75, 0x72, 0x66, 0x61, 0x63, 0x65, 0x2e, 0x76, 0x31,
	0x2e, 0x4d, 0x65, 0x74, 0x68, 0x6f, 0x64, 0x52, 0x07, 0x6d, 0x65, 0x74, 0x68, 0x6f, 0x64, 0x73,
	0x12, 0x2f, 0x0a, 0x13, 0x73, 0x79, 0x6d, 0x62, 0x6f, 0x6c, 0x69, 0x63, 0x5f, 0x72, 0x65, 0x66,
	0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x73, 0x18, 0x04, 0x20, 0x03, 0x28, 0x09, 0x52, 0x12, 0x73,
	0x79, 0x6d, 0x62, 0x6f, 0x6c, 0x69, 0x63, 0x52, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65,
	0x73, 0x2a, 0x43, 0x0a, 0x09, 0x46, 0x69, 0x65, 0x6c, 0x64, 0x4b, 0x69, 0x6e, 0x64, 0x12, 0x0a,
	0x0a, 0x06, 0x53, 0x43, 0x41, 0x4c, 0x41, 0x52, 0x10, 0x00, 0x12, 0x07, 0x0a, 0x03, 0x4d, 0x41,
	0x50, 0x10, 0x01, 0x12, 0x09, 0x0a, 0x05, 0x41, 0x52, 0x52, 0x41, 0x59, 0x10, 0x02, 0x12, 0x0d,
	0x0a, 0x09, 0x52, 0x45, 0x46, 0x45, 0x52, 0x45, 0x4e, 0x43, 0x45, 0x10, 0x03, 0x12, 0x07, 0x0a,
	0x03, 0x41, 0x4e, 0x59, 0x10, 0x04, 0x2a, 0x22, 0x0a, 0x08, 0x54, 0x79, 0x70, 0x65, 0x4b, 0x69,
	0x6e, 0x64, 0x12, 0x0a, 0x0a, 0x06, 0x53, 0x54, 0x52, 0x55, 0x43, 0x54, 0x10, 0x00, 0x12, 0x0a,
	0x0a, 0x06, 0x4f, 0x42, 0x4a, 0x45, 0x43, 0x54, 0x10, 0x01, 0x2a, 0x43, 0x0a, 0x08, 0x50, 0x6f,
	0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x08, 0x0a, 0x04, 0x42, 0x4f, 0x44, 0x59, 0x10, 0x00,
	0x12, 0x0a, 0x0a, 0x06, 0x48, 0x45, 0x41, 0x44, 0x45, 0x52, 0x10, 0x01, 0x12, 0x0c, 0x0a, 0x08,
	0x46, 0x4f, 0x52, 0x4d, 0x44, 0x41, 0x54, 0x41, 0x10, 0x02, 0x12, 0x09, 0x0a, 0x05, 0x51, 0x55,
	0x45, 0x52, 0x59, 0x10, 0x03, 0x12, 0x08, 0x0a, 0x04, 0x50, 0x41, 0x54, 0x48, 0x10, 0x04, 0x42,
	0x14, 0x5a, 0x12, 0x73, 0x75, 0x72, 0x66, 0x61, 0x63, 0x65, 0x3b, 0x73, 0x75, 0x72, 0x66, 0x61,
	0x63, 0x65, 0x5f, 0x76, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_surface_surface_proto_rawDescOnce sync.Once
	file_surface_surface_proto_rawDescData = file_surface_surface_proto_rawDesc
)

func file_surface_surface_proto_rawDescGZIP() []byte {
	file_surface_surface_proto_rawDescOnce.Do(func() {
		file_surface_surface_proto_rawDescData = protoimpl.X.CompressGZIP(file_surface_surface_proto_rawDescData)
	})
	return file_surface_surface_proto_rawDescData
}

var file_surface_surface_proto_enumTypes = make([]protoimpl.EnumInfo, 3)
var file_surface_surface_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_surface_surface_proto_goTypes = []interface{}{
	(FieldKind)(0), // 0: surface.v1.FieldKind
	(TypeKind)(0),  // 1: surface.v1.TypeKind
	(Position)(0),  // 2: surface.v1.Position
	(*Field)(nil),  // 3: surface.v1.Field
	(*Type)(nil),   // 4: surface.v1.Type
	(*Method)(nil), // 5: surface.v1.Method
	(*Model)(nil),  // 6: surface.v1.Model
}
var file_surface_surface_proto_depIdxs = []int32{
	0, // 0: surface.v1.Field.kind:type_name -> surface.v1.FieldKind
	2, // 1: surface.v1.Field.position:type_name -> surface.v1.Position
	1, // 2: surface.v1.Type.kind:type_name -> surface.v1.TypeKind
	3, // 3: surface.v1.Type.fields:type_name -> surface.v1.Field
	4, // 4: surface.v1.Model.types:type_name -> surface.v1.Type
	5, // 5: surface.v1.Model.methods:type_name -> surface.v1.Method
	6, // [6:6] is the sub-list for method output_type
	6, // [6:6] is the sub-list for method input_type
	6, // [6:6] is the sub-list for extension type_name
	6, // [6:6] is the sub-list for extension extendee
	0, // [0:6] is the sub-list for field type_name
}

func init() { file_surface_surface_proto_init() }
func file_surface_surface_proto_init() {
	if File_surface_surface_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_surface_surface_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Field); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_surface_surface_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Type); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_surface_surface_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Method); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_surface_surface_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Model); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_surface_surface_proto_rawDesc,
			NumEnums:      3,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_surface_surface_proto_goTypes,
		DependencyIndexes: file_surface_surface_proto_depIdxs,
		EnumInfos:         file_surface_surface_proto_enumTypes,
		MessageInfos:      file_surface_surface_proto_msgTypes,
	}.Build()
	File_surface_surface_proto = out.File
	file_surface_surface_proto_rawDesc = nil
	file_surface_surface_proto_goTypes = nil
	file_surface_surface_proto_depIdxs = nil
}
