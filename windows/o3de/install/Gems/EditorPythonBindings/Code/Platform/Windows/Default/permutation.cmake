#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

if(NOT TARGET EditorPythonBindings.Builders)
   ly_create_alias( NAME EditorPythonBindings.Builders NAMESPACE Gem TARGETS EditorPythonBindings.Editor)
endif()
if(NOT TARGET EditorPythonBindings.Tools)
   ly_create_alias( NAME EditorPythonBindings.Tools NAMESPACE Gem TARGETS EditorPythonBindings.Editor)
endif()
