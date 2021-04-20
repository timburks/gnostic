// Copyright 2020 Google LLC. All Rights Reserved.
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

// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.14.0
// source: metrics/complexity.proto

package gnostic_metrics_v1

import (
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

// The complexity metric includes measurements of the complexity of an API.
type Complexity struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Operation statistics.
	PathCount   int32 `protobuf:"varint,1,opt,name=path_count,json=pathCount,proto3" json:"path_count,omitempty"`
	GetCount    int32 `protobuf:"varint,2,opt,name=get_count,json=getCount,proto3" json:"get_count,omitempty"`
	PostCount   int32 `protobuf:"varint,3,opt,name=post_count,json=postCount,proto3" json:"post_count,omitempty"`
	PutCount    int32 `protobuf:"varint,4,opt,name=put_count,json=putCount,proto3" json:"put_count,omitempty"`
	DeleteCount int32 `protobuf:"varint,5,opt,name=delete_count,json=deleteCount,proto3" json:"delete_count,omitempty"`
	// Model statistics.
	SchemaCount         int32 `protobuf:"varint,6,opt,name=schema_count,json=schemaCount,proto3" json:"schema_count,omitempty"`
	SchemaPropertyCount int32 `protobuf:"varint,7,opt,name=schema_property_count,json=schemaPropertyCount,proto3" json:"schema_property_count,omitempty"`
}

func (x *Complexity) Reset() {
	*x = Complexity{}
	if protoimpl.UnsafeEnabled {
		mi := &file_metrics_complexity_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Complexity) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Complexity) ProtoMessage() {}

func (x *Complexity) ProtoReflect() protoreflect.Message {
	mi := &file_metrics_complexity_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Complexity.ProtoReflect.Descriptor instead.
func (*Complexity) Descriptor() ([]byte, []int) {
	return file_metrics_complexity_proto_rawDescGZIP(), []int{0}
}

func (x *Complexity) GetPathCount() int32 {
	if x != nil {
		return x.PathCount
	}
	return 0
}

func (x *Complexity) GetGetCount() int32 {
	if x != nil {
		return x.GetCount
	}
	return 0
}

func (x *Complexity) GetPostCount() int32 {
	if x != nil {
		return x.PostCount
	}
	return 0
}

func (x *Complexity) GetPutCount() int32 {
	if x != nil {
		return x.PutCount
	}
	return 0
}

func (x *Complexity) GetDeleteCount() int32 {
	if x != nil {
		return x.DeleteCount
	}
	return 0
}

func (x *Complexity) GetSchemaCount() int32 {
	if x != nil {
		return x.SchemaCount
	}
	return 0
}

func (x *Complexity) GetSchemaPropertyCount() int32 {
	if x != nil {
		return x.SchemaPropertyCount
	}
	return 0
}

var File_metrics_complexity_proto protoreflect.FileDescriptor

var file_metrics_complexity_proto_rawDesc = []byte{
	0x0a, 0x18, 0x6d, 0x65, 0x74, 0x72, 0x69, 0x63, 0x73, 0x2f, 0x63, 0x6f, 0x6d, 0x70, 0x6c, 0x65,
	0x78, 0x69, 0x74, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x12, 0x67, 0x6e, 0x6f, 0x73,
	0x74, 0x69, 0x63, 0x2e, 0x6d, 0x65, 0x74, 0x72, 0x69, 0x63, 0x73, 0x2e, 0x76, 0x31, 0x22, 0xfe,
	0x01, 0x0a, 0x0a, 0x43, 0x6f, 0x6d, 0x70, 0x6c, 0x65, 0x78, 0x69, 0x74, 0x79, 0x12, 0x1d, 0x0a,
	0x0a, 0x70, 0x61, 0x74, 0x68, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x05, 0x52, 0x09, 0x70, 0x61, 0x74, 0x68, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1b, 0x0a, 0x09,
	0x67, 0x65, 0x74, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52,
	0x08, 0x67, 0x65, 0x74, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1d, 0x0a, 0x0a, 0x70, 0x6f, 0x73,
	0x74, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x05, 0x52, 0x09, 0x70,
	0x6f, 0x73, 0x74, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1b, 0x0a, 0x09, 0x70, 0x75, 0x74, 0x5f,
	0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x04, 0x20, 0x01, 0x28, 0x05, 0x52, 0x08, 0x70, 0x75, 0x74,
	0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x21, 0x0a, 0x0c, 0x64, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x5f,
	0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x05, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0b, 0x64, 0x65, 0x6c,
	0x65, 0x74, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x21, 0x0a, 0x0c, 0x73, 0x63, 0x68, 0x65,
	0x6d, 0x61, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x06, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0b,
	0x73, 0x63, 0x68, 0x65, 0x6d, 0x61, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x32, 0x0a, 0x15, 0x73,
	0x63, 0x68, 0x65, 0x6d, 0x61, 0x5f, 0x70, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x5f, 0x63,
	0x6f, 0x75, 0x6e, 0x74, 0x18, 0x07, 0x20, 0x01, 0x28, 0x05, 0x52, 0x13, 0x73, 0x63, 0x68, 0x65,
	0x6d, 0x61, 0x50, 0x72, 0x6f, 0x70, 0x65, 0x72, 0x74, 0x79, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x42,
	0x1e, 0x5a, 0x1c, 0x2e, 0x2f, 0x6d, 0x65, 0x74, 0x72, 0x69, 0x63, 0x73, 0x3b, 0x67, 0x6e, 0x6f,
	0x73, 0x74, 0x69, 0x63, 0x5f, 0x6d, 0x65, 0x74, 0x72, 0x69, 0x63, 0x73, 0x5f, 0x76, 0x31, 0x62,
	0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_metrics_complexity_proto_rawDescOnce sync.Once
	file_metrics_complexity_proto_rawDescData = file_metrics_complexity_proto_rawDesc
)

func file_metrics_complexity_proto_rawDescGZIP() []byte {
	file_metrics_complexity_proto_rawDescOnce.Do(func() {
		file_metrics_complexity_proto_rawDescData = protoimpl.X.CompressGZIP(file_metrics_complexity_proto_rawDescData)
	})
	return file_metrics_complexity_proto_rawDescData
}

var file_metrics_complexity_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_metrics_complexity_proto_goTypes = []interface{}{
	(*Complexity)(nil), // 0: gnostic.metrics.v1.Complexity
}
var file_metrics_complexity_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_metrics_complexity_proto_init() }
func file_metrics_complexity_proto_init() {
	if File_metrics_complexity_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_metrics_complexity_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Complexity); i {
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
			RawDescriptor: file_metrics_complexity_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_metrics_complexity_proto_goTypes,
		DependencyIndexes: file_metrics_complexity_proto_depIdxs,
		MessageInfos:      file_metrics_complexity_proto_msgTypes,
	}.Build()
	File_metrics_complexity_proto = out.File
	file_metrics_complexity_proto_rawDesc = nil
	file_metrics_complexity_proto_goTypes = nil
	file_metrics_complexity_proto_depIdxs = nil
}
