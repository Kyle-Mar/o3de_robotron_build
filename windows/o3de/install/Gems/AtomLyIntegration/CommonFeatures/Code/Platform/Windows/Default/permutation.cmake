#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

if(NOT TARGET AtomLyIntegration_CommonFeatures.Clients)
   ly_create_alias( NAME AtomLyIntegration_CommonFeatures.Clients NAMESPACE Gem TARGETS Gem::AtomLyIntegration_CommonFeatures Gem::GradientSignal.Clients)
endif()
if(NOT TARGET AtomLyIntegration_CommonFeatures.Servers)
   ly_create_alias( NAME AtomLyIntegration_CommonFeatures.Servers NAMESPACE Gem TARGETS Gem::AtomLyIntegration_CommonFeatures Gem::GradientSignal.Servers)
endif()
if(NOT TARGET AtomLyIntegration_CommonFeatures.Builders)
   ly_create_alias( NAME AtomLyIntegration_CommonFeatures.Builders NAMESPACE Gem TARGETS Gem::AtomLyIntegration_CommonFeatures.Editor Gem::Atom_Feature_Common.Builders Gem::Atom_RPI.Builders Gem::GradientSignal.Builders)
endif()
if(NOT TARGET AtomLyIntegration_CommonFeatures.Tools)
   ly_create_alias( NAME AtomLyIntegration_CommonFeatures.Tools NAMESPACE Gem TARGETS Gem::AtomLyIntegration_CommonFeatures.Editor Gem::GradientSignal.Tools)
endif()
ly_enable_gems(GEMS AtomLyIntegration_CommonFeatures)
