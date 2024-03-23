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

ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/DirectXShaderCompilerDxc-1.6.2112-o3de-rev1-windows/DirectXShaderCompilerDxc/bin/Release/dxc.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/DirectXShaderCompiler")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/DirectXShaderCompilerDxc-1.6.2112-o3de-rev1-windows/DirectXShaderCompilerDxc/bin/Release/dxil.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/DirectXShaderCompiler")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/DirectXShaderCompilerDxc-1.6.2112-o3de-rev1-windows/DirectXShaderCompilerDxc/bin/Release/dxcompiler.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/DirectXShaderCompiler")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/SPIRVCross-2021.04.29-rev1-windows/SPIRVCross/bin/Release/spirv-cross.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/SPIRVCross")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/azslc-1.7.35-rev1-windows/azslc/bin/Release/azslc.exe" "C:/O3DE/22.05.0/bin/Windows/profile/Default/./Builders/AZSLc")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/mcpp-2.7.2_az.2-rev1-windows/mcpp/lib/mcpp0.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
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
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./Atom_Asset_Shader.Builders.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")


file(TOUCH "C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/build/windows/runtime_dependencies/profile/Atom_Asset_Shader.Builders.stamp")
