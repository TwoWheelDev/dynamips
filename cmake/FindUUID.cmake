# Note: copied from https://github.com/stevedekorte/io/blob/master/modules/FindUUID.cmake

# Base Io build system
# Written by Jeremy Tregunna <jeremy.tregunna@me.com>
#
# Find libuuid

FIND_PATH(UUID_INCLUDE_DIR uuid/uuid.h)
FIND_LIBRARY(UUID_LIBRARY NAMES uuid PATH)

IF(NOT UUID_LIBRARY)
	SET(UUID_LIBRARY "")
ENDIF(NOT UUID_LIBRARY)

IF(UUID_INCLUDE_DIR)
	SET(UUID_FOUND TRUE)
ENDIF(UUID_INCLUDE_DIR)

IF(NOT UUID_FOUND)
	IF(UUID_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find UUID")
	ENDIF(UUID_FIND_REQUIRED)
ENDIF(NOT UUID_FOUND)
