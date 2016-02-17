# LINUX CMAKE SETTINGS

set(CMAKE_SYSTEM_NAME Linux)

SET(PLATFORM "LINUX")

# set per-build values
SET(HAS_SDL 1)
SET(HAS_SDLTTF 1)
SET(HAS_SDLIMAGE 1)
SET(HAS_ZLIB 1)
SET(HAS_SDLMIXER 1)
SET(HAS_DLL 1)
SET(HAS_JPEG 1)
SET(HAS_FLI 1)
SET(HAS_NEWMODE8 1)

IF(CPUARCH STREQUAL "32")
	MESSAGE(STATUS "Buiding LINUX 32bit")
	SET(OS_DEFINITIONS " -m32 ")
	SET(OS_LINK_FLAGS " -m32 ")
	set(CMAKE_FIND_ROOT_PATH "/usr/lib/i386-linux-gnu/" )
	SET(CMAKE_SYSTEM_LIBRARY_PATH "/usr/lib/i386-linux-gnu" )
	SET(CMAKE_SYSTEM_INCLUDE_PATH "/usr/include/i386-linux-gnu" )
	
	link_directories("/usr/lib/i386-linux-gnu/")
	set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
	set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
	set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
	
ELSE() # Default 32 bits
	MESSAGE(STATUS "Buiding LINUX 64bit")
ENDIF()

#include maths and dl libs
SET(OS_LIBS m dl jpeg)
