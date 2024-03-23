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

ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LmbrCentral.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./LmbrCentral.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysX_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXCooking_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXFoundation_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXCommon_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXDevice64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/Users/kcmos/.o3de/3rdParty/packages/PhysX-4.1.2.29882248-rev5-windows/PhysX/shared/profile/bin/PhysXGpu_64.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")
ly_copy("C:/O3DE/22.05.0/bin/Windows/profile/Default/./PhysX.Gem.dll" "C:/O3DE/22.05.0/bin/Windows/profile/Default/.")


file(TOUCH "C:/Users/kcmos/O3DE/Projects/Robotron_2084_O3DE/build/windows/runtime_dependencies/profile/PhysX.stamp")
