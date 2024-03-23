#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

if(NOT TARGET NvCloth.Clients)
   ly_create_alias( NAME NvCloth.Clients NAMESPACE Gem TARGETS Gem::NvCloth)
endif()
if(NOT TARGET NvCloth.Servers)
   ly_create_alias( NAME NvCloth.Servers NAMESPACE Gem TARGETS Gem::NvCloth)
endif()
if(NOT TARGET NvCloth.Builders)
   ly_create_alias( NAME NvCloth.Builders NAMESPACE Gem TARGETS Gem::NvCloth.Editor)
endif()
if(NOT TARGET NvCloth.Tools)
   ly_create_alias( NAME NvCloth.Tools NAMESPACE Gem TARGETS Gem::NvCloth.Editor)
endif()
