cmake_minimum_required(VERSION 3.12)
#本项目主要是为了用c++通过libffi调用避免压栈问题，char（string）对应的类型为&ffi_type_pointer
project(jlibffi)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_SHARED_LINKER_FLAGS "-Wl,--add-stdcall-alias")



include_directories("D:/libffi-3.2.1/i686-pc-mingw32/include" "C:/Program Files (x86)/Java/jdk1.8.0_111/include"
        "C:/Program Files (x86)/Java/jdk1.8.0_111/include/win32"
        )
link_directories("D:/libffi-3.2.1/i686-pc-mingw32/.libs")
link_libraries(ffi)



add_executable(jffi   jffi.cpp)


