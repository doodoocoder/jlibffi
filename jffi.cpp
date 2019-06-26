//
// Created by Administrator on 2019/6/26.
//利用libffi调用32位的dll库中的函数，java native调用的另一种实现方式，libffi-6.dll已经放在c:\windows下了
//
#include "jni.h"


#include "jlibffi.h"
#ifdef _WIN32

#include <windows.h>

#include "ffi.h"
#else
#include <dlfcn.h>

#define DWORD unsigned int
#define __int64 long long
__int64 _atoi64(const char* val) {
    return strtoll(val, NULL, 10);
}
#endif





int main()
{

    void* hModule = 0;
    void* pointer = 0;
    const char *cFunctionName="Initialize";
    const char *cLibName="HNBridge.dll";
    //加载library并寻找过程function
    HINSTANCE hInstance = NULL;
    hInstance=LoadLibrary(cLibName);


    if(hInstance){
        printf("<<<<<<<<<<<<<<<<<   %s  >>>>>>>>>>>>>>>>>\n","load success" );
    }
    //拿函数指针

    int argCount = 4;
    void *values[1];
    const char *str="";
    int port=9090;
    int buf =1024;
    void *ffiArgs[4]={&str,&port,&buf,&buf} ;

//这里是依照jna源码callback.c写的



    //生成函数原型 ffi_cfi 对象
    ffi_cif cif;
    ffi_type *args[4];
    args[0] = &ffi_type_pointer;
    args[1] = &ffi_type_sint;
    args[2] = &ffi_type_sint;
    args[3] = &ffi_type_sint;
    ffi_type *returnFfiType = &ffi_type_sint;
    ffi_status ffiPrepStatus = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, (unsigned int)argCount, returnFfiType, args);
    printf("<<<<<<<<<<<<<<<<<   %s  >>>>>>>>>>>>>>>>>\n","invoke begin" );
    if (ffiPrepStatus == FFI_OK) {
        printf("<<<<<<<<<<<<<<<<<   %s  >>>>>>>>>>>>>>>>>\n","everything ok" );
        //生成用于保存返回值的内存
        void *returnPtr = NULL;
        if (returnFfiType->size) {
            returnPtr = alloca(returnFfiType->size);
        }
        //根据cif函数原型，函数指针，返回值内存指针，函数参数数据调用这个函数
        ffi_call(&cif,FFI_FN(GetProcAddress(hInstance,"Initialize")), returnPtr, ffiArgs);

        //拿到返回值
        int returnValue = *(int *) returnPtr;
        printf("ret: %d \n", returnValue);
    }
}

