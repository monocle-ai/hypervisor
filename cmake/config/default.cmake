if(HYPERVISOR_TARGET_ARCH)
    set(_HYPERVISOR_TARGET_ARCH ${HYPERVISOR_TARGET_ARCH})
else()
    set(_HYPERVISOR_TARGET_ARCH ${CMAKE_HOST_SYSTEM_PROCESSOR})
endif()
hypervisor_add_config(
    CONFIG_NAME HYPERVISOR_TARGET_ARCH
    CONFIG_TYPE STRING
    DEFAULT_VAL ${_HYPERVISOR_TARGET_ARCH}
    DESCRIPTION "The target architecture for the build"
    OPTIONS x86_64 AMD64 armv8a
)

if(HYPERVISOR_TARGET_PLATFORM)
    set(_HYPERVISOR_TARGET_PLATFORM ${HYPERVISOR_TARGET_PLATFORM})
else()
    set(_HYPERVISOR_TARGET_PLATFORM ${CMAKE_HOST_SYSTEM_NAME})
endif()
hypervisor_add_config(
    CONFIG_NAME HYPERVISOR_TARGET_PLATFORM
    CONFIG_TYPE STRING
    DEFAULT_VAL ${_HYPERVISOR_TARGET_PLATFORM}
    DESCRIPTION "The target platform for the build"
    OPTIONS Windows Linux UEFI
)

hypervisor_add_config(
    CONFIG_NAME HYPERVISOR_BUILD_VMMCTL
    CONFIG_TYPE BOOL
    DEFAULT_VAL ON
    DESCRIPTION "Set true to build the vmmctl component"
)

hypervisor_add_config(
    CONFIG_NAME HYPERVISOR_BUILD_VMM
    CONFIG_TYPE BOOL
    DEFAULT_VAL ON
    DESCRIPTION "Set true to build the vmm component"
)

hypervisor_add_config(
    CONFIG_NAME HYPERVISOR_BUILD_EXAMPLES
    CONFIG_TYPE BOOL
    DEFAULT_VAL ON
    DESCRIPTION "Set true to build the examples"
)

hypervisor_add_config(
    CONFIG_NAME HYPERVISOR_BUILD_TESTS
    CONFIG_TYPE BOOL
    DEFAULT_VAL ON
    DESCRIPTION "Set true to build tests"
)