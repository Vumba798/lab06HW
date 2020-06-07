include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_CONTACT )
set(CPACK_PACKAGE_VERSION_MAJOR ${SOLVER_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${SOLVER_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${SOLVER_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${SOLVER_VERSION_TWEAK})
set(CPACK_PACKAGE_VERSION ${SOLVER_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "solver app")

set(CPACK_RPM_PACKAGE_NAME "solver")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_GROUP "solver")
set(CPACK_RPM_CHANGELOG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/CHANGELOG.md)
set(CPACK_RPM_PACKAGE_RELEASE 1)

set(CPACK_SOURCE_PACKAGE_FILE_NAME "solver-${SOLVER_VERSION}")
set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")

set(CPACK_DEBIAN_PACKAGE_NAME "solver")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

if (CMAKE_INSTALL_PREFIX)
    set(CPACK_OUTPUT_FILE_PREFIX ${CMAKE_INSTALL_PREFIX}/packages)
else()
    set(CPACK_OUTPUT_FILE_PREFIX ${CMAKE_BINARY_DIR}/packages)
endif(CMAKE_INSTALL_PREFIX)

include(CPack)
