#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "formatter" for configuration ""
set_property(TARGET formatter APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(formatter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libformatter.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS formatter )
list(APPEND _IMPORT_CHECK_FILES_FOR_formatter "${_IMPORT_PREFIX}/lib/libformatter.a" )

# Import target "formatter_ex" for configuration ""
set_property(TARGET formatter_ex APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(formatter_ex PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libformatter_ex.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS formatter_ex )
list(APPEND _IMPORT_CHECK_FILES_FOR_formatter_ex "${_IMPORT_PREFIX}/lib/libformatter_ex.a" )

# Import target "solver" for configuration ""
set_property(TARGET solver APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(solver PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libsolver.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS solver )
list(APPEND _IMPORT_CHECK_FILES_FOR_solver "${_IMPORT_PREFIX}/lib/libsolver.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
