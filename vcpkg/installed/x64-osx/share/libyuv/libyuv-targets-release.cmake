#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "yuv" for configuration "Release"
set_property(TARGET yuv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(yuv PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libyuv.a"
  )

list(APPEND _cmake_import_check_targets yuv )
list(APPEND _cmake_import_check_files_for_yuv "${_IMPORT_PREFIX}/lib/libyuv.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
