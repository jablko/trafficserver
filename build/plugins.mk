#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

# plugins.mk: Common automake build variables for Traffic Server plugins.

TS_PLUGIN_LDFLAGS = \
  -module \
  -shared \
  -avoid-version

TS_PLUGIN_CPPFLAGS = \
  -D__STDC_LIMIT_MACROS=1 \
  -D__STDC_FORMAT_MACROS=1 \
  -I$(top_builddir)/proxy/api \
  -I$(top_srcdir)/proxy/api \
  -I$(top_builddir)/lib/ts \
  -I$(top_srcdir)/lib/ts

# Provide a default AM_CPPFLAGS. Automake handles this correctly, but libtool
# throws an error if we try to do the same with AM_LDFLAGS. Hence, we provide
# TS_PLUGIN variables that can be used to construct the necessary automake
# syntax.
AM_CPPFLAGS = $(TS_PLUGIN_CPPFLAGS)
pkglibdir = $(pkglibexecdir)
