#
# Copyright (c) Contributors to the Open 3D Engine Project.
# For complete copyright and license terms please see the LICENSE at the root of this distribution.
#
# SPDX-License-Identifier: Apache-2.0 OR MIT
#
#

cmake_policy(SET CMP0012 NEW) # new policy for the if that evaluates a boolean out of "if(NOT ${same_location})"

function(ly_copy source_file target_directory)
    cmake_path(GET source_file FILENAME target_filename)
    cmake_path(APPEND target_file "${target_directory}" "${target_filename}")
    cmake_path(COMPARE "${source_file}" EQUAL "${target_file}" same_location)
    if(NOT ${same_location})
        file(LOCK "${target_file}.lock" GUARD FUNCTION TIMEOUT 300)
        file(SIZE "${source_file}" source_file_size)
        if(EXISTS "${target_file}")
            file(SIZE "${target_file}" target_file_size)
        else()
            set(target_file_size 0)
        endif()
        if((NOT source_file_size EQUAL target_file_size) OR "${source_file}" IS_NEWER_THAN "${target_file}")
            message(STATUS "Copying \"${source_file}\" to \"${target_directory}\"...")
            file(MAKE_DIRECTORY "${full_target_directory}")
            file(COPY "${source_file}" DESTINATION "${target_directory}" FILE_PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE FOLLOW_SYMLINK_CHAIN)
            file(TOUCH_NOCREATE "${target_file}")
        endif()
    endif()    
endfunction()

ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-auth.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-cal.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-common.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-compression.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-event-stream.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-http.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-io.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-mqtt.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-c-s3.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-checksums.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-cpp-sdk-core.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-crt-cpp.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-cpp-sdk-dynamodb.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-cpp-sdk-lambda.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/AWSNativeSDK-1.9.50-rev2-windows/AWSNativeSDK/bin/Release/aws-cpp-sdk-s3.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AWSCore.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AWSCore.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Core.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/iconengines/qsvgicon.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./iconengines")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qgif.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qicns.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qico.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qjpeg.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qsvg.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qtga.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qtiff.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qwbmp.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/imageformats/qwebp.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./imageformats")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/platforms/qminimal.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./platforms")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/platforms/qwindows.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./platforms")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Gui.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/styles/qwindowsvistastyle.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./styles")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Widgets.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Svg.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Xml.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Core.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Gui.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AzQtComponents.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Widgets.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AzQtComponents.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/AWSCoreEditorQtBin/AWSCore.ResourceMappingTool.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/AWSCoreEditorQtBin/AWSCore.ResourceMappingTool.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AWSCore.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AWSCore.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomFont.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomFont.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImGui.imguilib.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImGui.imguilib.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LmbrCentral.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LmbrCentral.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomImGuiTools.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomImGuiTools.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/python/runtime/python-3.7.12-rev2-windows/python/python37.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/python/runtime/python-3.7.12-rev2-windows/python/python3.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/python/runtime/python-3.7.12-rev2-windows/python/python37.pdb" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/python/runtime/python-3.7.12-rev2-windows/python/python3.pdb" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/plugins/bearer/qgenericbearer.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./bearer")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Network.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneCore.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneCore.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneData.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorCore.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorCore.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorCommon.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/boost_filesystem-vc141-mt-x64-1_73.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/boost_thread-vc141-mt-x64-1_73.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/Half-2_5.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/heif.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/Iex-2_5.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/IlmImf-2_5.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/IlmThread-2_5.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/Imath-2_5.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/jpeg62.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/lzma.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/libpng16.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/tiff.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/zlib1.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/yaml-cpp.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/OpenColorIO.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/OpenImageIO.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/OpenImageIO.pyd" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/OpenImageIO_Util.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/iconvert.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/idiff.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/igrep.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/iinfo.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/maketx.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/openimageio-2.1.16.0-rev2-windows/OpenImageIO/2.1.16.0/win_x64/bin/oiiotool.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Bootstrap.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Bootstrap.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Component_DebugCamera.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Component_DebugCamera.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_DX12.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_DX12.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_DX12.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_DX12.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Metal.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Metal.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Metal.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Metal.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Vulkan.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Vulkan.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/vulkan-validationlayers-1.2.198-rev1-windows/vulkan-validationlayers/lib/release/VkLayer_khronos_validation.json" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/vulkan-validationlayers-1.2.198-rev1-windows/vulkan-validationlayers/lib/release/VkLayer_khronos_validation.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Vulkan.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Vulkan.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Feature_Common.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Feature_Common.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Null.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Null.Private.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RPI.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RPI.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorPythonBindings.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorPythonBindings.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/squish-ccr-deb557d-rev1-windows/squish-ccr/bin/squish-ccr.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/ISPCTexComp-36b80aa-rev1-windows/ISPCTexComp/bin/ispc_texcomp.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImageProcessingAtom.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImageProcessingAtom.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomToolsFramework.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomToolsFramework.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorCommon.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomLyIntegration_CommonFeatures.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomLyIntegration_CommonFeatures.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Svg.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomViewportDisplayIcons.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomViewportDisplayIcons.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomViewportDisplayInfo.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomViewportDisplayInfo.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/DirectXShaderCompilerDxc-1.6.2112-o3de-rev1-windows/DirectXShaderCompilerDxc/bin/Release/dxc.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/DirectXShaderCompiler")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/DirectXShaderCompilerDxc-1.6.2112-o3de-rev1-windows/DirectXShaderCompilerDxc/bin/Release/dxil.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/DirectXShaderCompiler")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/DirectXShaderCompilerDxc-1.6.2112-o3de-rev1-windows/DirectXShaderCompilerDxc/bin/Release/dxcompiler.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/DirectXShaderCompiler")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/SPIRVCross-2021.04.29-rev1-windows/SPIRVCross/bin/Release/spirv-cross.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/SPIRVCross")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/azslc-1.7.35-rev1-windows/azslc/bin/Release/azslc.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/AZSLc")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/mcpp-2.7.2_az.2-rev1-windows/mcpp/lib/mcpp0.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Asset_Shader.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Asset_Shader.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Feature_Common.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Feature_Common.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Null.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RHI_Null.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneData.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RPI.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_RPI.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5OpenGL.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneUI.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LmbrCentral.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LmbrCentral.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EMotionFX.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EMotionFX.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Feature_Common.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Feature_Common.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EMotionFX_Atom.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EMotionFX_Atom.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImguiAtom.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImguiAtom.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_AtomBridge.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_AtomBridge.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GradientSignal.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GradientSignal.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AtomLyIntegration_CommonFeatures.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AudioSystem.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./AudioSystem.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Camera.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Camera.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./CameraFramework.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./CameraFramework.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./DebugDraw.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./DebugDraw.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EMotionFX.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./EditorPythonBindings.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Xml.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GraphCanvas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GraphCanvas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GraphModel.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GraphModel.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Test.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/qt-5.15.2-rev7-windows/qt/bin/Qt5Test.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./QtForPython.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./QtForPython.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImGui.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ImGui.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GradientSignal.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SurfaceData.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SurfaceData.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GradientSignal.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./GradientSignal.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SurfaceData.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SurfaceData.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Vegetation.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Vegetation.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LandscapeCanvas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LandscapeCanvas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./TextureAtlas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./TextureAtlas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LyShine.Tools.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LyShine.Tools.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Maestro.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Maestro.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysX_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXCooking_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXFoundation_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXCommon_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXDevice64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXGpu_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Multiplayer.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Multiplayer.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Multiplayer.Debug.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Multiplayer.Debug.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./PhysX.Editor.Gem.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./PhysX.Editor.Gem.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./PrefabBuilder.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./PrefabBuilder.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/build/windows/bin/profile/Robotron_2084_O3DE.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneUI.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneProcessing.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./SceneProcessing.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ExpressionEvaluation.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ExpressionEvaluation.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptEvents.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptEvents.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptCanvas.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptCanvas.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptEvents.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptEvents.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptCanvas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptCanvas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptCanvasPhysics.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptCanvasPhysics.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./ScriptEvents.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./StartingPointInput.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./StartingPointInput.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./TextureAtlas.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./WhiteBox.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./WhiteBox.Editor.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./MaterialCanvas.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/build/windows/bin/profile/Registry/cmake_dependencies.materialcanvas.setreg" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Registry")
ly_copy("C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/build/windows/bin/profile/Registry/cmake_dependencies.robotron_2084_o3de.materialcanvas.setreg" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Registry")


file(TOUCH "C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/build/windows/runtime_dependencies/profile/MaterialCanvas.stamp")
