#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

if(NOT TARGET MaterialCanvas.Builders)
   ly_create_alias( NAME MaterialCanvas.Builders NAMESPACE Gem TARGETS)
endif()
ly_set_gem_variant_to_load(TARGETS MaterialCanvas VARIANTS Tools)
