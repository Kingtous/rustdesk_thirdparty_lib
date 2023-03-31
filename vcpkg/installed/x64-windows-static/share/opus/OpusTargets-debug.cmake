#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Opus::opus" for configuration "Debug"
set_property(TARGET Opus::opus APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Opus::opus PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/debug/lib/opus.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS Opus::opus )
list(APPEND _IMPORT_CHECK_FILES_FOR_Opus::opus "${_IMPORT_PREFIX}/debug/lib/opus.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
