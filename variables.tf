# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "project_id" {
  default = "bot1-404120"
  type    = string
}

variable "region" {
  default = "global"
  type    = string
}

variable "zone" {
  default = "us-east1-b"
  type    = string
}

variable "secrets" {
  default = "~/.config/secrets/cx_admin_sa.json"
  type    = string
}