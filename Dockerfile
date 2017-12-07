# Copyright 2017 ThoughtWorks, Inc.
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

###############################################################################################
# This file is autogenerated by the repository at https://github.com/gocd/docker-gocd-agent.
# Please file any issues or PRs at https://github.com/gocd/docker-gocd-agent
###############################################################################################

FROM gocd/gocd-agent-centos-7:v17.11.0
RUN \
  echo "go    ALL=NOPASSWD: ALL" >> /etc/sudoers && \
  yum -y install sudo && \
  curl --fail --location --silent --show-error "https://github.com/openshift/origin/releases/download/v3.7.0/openshift-origin-client-tools-v3.7.0-7ed6862-linux-64bit.tar.gz" > /tmp/oc.tar.gz && \
  cd /tmp && \
  tar -zxvf /tmp/oc.tar.gz && \
  mv /tmp/openshift-origin-client-tools-v3.7.0-7ed6862-linux-64bit/oc /bin/oc && \
  chmod 777 /bin/oc
