#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

if(NOT TARGET Blast.Servers)
   ly_create_alias( NAME Blast.Servers NAMESPACE Gem TARGETS Gem::Blast)
endif()
if(NOT TARGET Blast.Clients)
   ly_create_alias( NAME Blast.Clients NAMESPACE Gem TARGETS Gem::Blast)
endif()
if(NOT TARGET Blast.Tools)
   ly_create_alias( NAME Blast.Tools NAMESPACE Gem TARGETS Gem::Blast.Editor)
endif()
if(NOT TARGET Blast.Builders)
   ly_create_alias( NAME Blast.Builders NAMESPACE Gem TARGETS Gem::Blast.Editor)
endif()
