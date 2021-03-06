# Autogenerated wrapper script for libinchi_jll for x86_64-linux-gnu
export libinchi

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libinchi`
const libinchi_splitpath = ["lib", "libinchi.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libinchi_path = ""

# libinchi-specific global declaration
# This will be filled out by __init__()
libinchi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libinchi = "libinchi.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libinchi")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libinchi_path = normpath(joinpath(artifact_dir, libinchi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libinchi_handle = dlopen(libinchi_path)
    push!(LIBPATH_list, dirname(libinchi_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')
end  # __init__()

