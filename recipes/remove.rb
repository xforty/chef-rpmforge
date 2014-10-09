#
# Cookbook Name:: rpmforge
# Recipe:: default
#
# Copyright 2012, xforty technologies
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Add the rpmforge repo so we can install common packages on redhat
# distros later in the run list.  http://dag.wieers.com/rpm/FAQ.php#B2

case node["platform"]
when "centos", "redhat", "fedora"
  execute "remove_rpmforge_repo" do
    command "rpm -e rpmforge-release.x86_64"
    only_if { File.exists?("/etc/yum.repos.d/rpmforge.repo") }
  end
end
