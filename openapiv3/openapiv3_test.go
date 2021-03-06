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

package openapi_v3

import (
	"io/ioutil"
	"testing"

	"github.com/googleapis/gnostic/compiler"
)

func TestParseDocument(t *testing.T) {
	filename := "../examples/v3.0/yaml/petstore.yaml"
	b, err := ioutil.ReadFile(filename)
	if err != nil {
		t.Logf("unable to read file %s", filename)
		t.FailNow()
	}
	info, err := compiler.ReadInfoFromBytes("", b)
	if err != nil {
		t.Logf("unable to parse file %s", filename)
		t.FailNow()
	}
	d, err := NewDocument(info.Content[0], compiler.NewContextWithExtensions("$root", nil, nil))
	if err != nil {
		t.Logf("%s", err.Error())
		t.FailNow()
	}
	title := "OpenAPI Petstore"
	if d.Info.Title != title {
		t.Errorf("unexpected value for Title: %s (expected %s)", d.Info.Title, title)
	}
}
