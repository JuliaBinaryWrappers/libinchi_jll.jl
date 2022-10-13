# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libinchi_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libinchi")
JLLWrappers.@generate_main_file("libinchi", UUID("172afb32-8f1c-513b-968f-184fcd77af72"))
end  # module libinchi_jll
