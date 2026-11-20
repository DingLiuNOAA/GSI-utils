help([[
]])

prepend_path("MODULEPATH", "/ncrc/proj/epic/spack-stack/c7/spack-stack-2.1.1/envs/ue-oneapi-2025.3.1/modules/Core")

local python_ver=os.getenv("python_ver") or "3.11.11"
local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2025.3.1"
local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "9.2.0"
local prod_util_ver=os.getenv("prod_util_ver") or "2.1.2"

load(pathJoin("stack-intel-oneapi-compilers", stack_oneapi_ver))
load(pathJoin("cray-mpich", stack_cray_mpich_ver))
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))
load(pathJoin("python", python_ver))

load("gsiutils_common")

load(pathJoin("prod_util", prod_util_ver))

unload("cray-libsci")

pushenv("CFLAGS", "-xHOST")
pushenv("FFLAGS", "-xHOST")

whatis("Description: GSI utilities environment on GaeaC7 with Intel Compilers")
