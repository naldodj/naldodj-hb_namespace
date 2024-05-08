# naldodj-hb_namespace
Simular o uso e NameSpace em Harbour

```
#IFNDEF _HB_NAMESPACE_CH

    #DEFINE _HB_NAMESPACE_CH

    #ifndef HB_CLASS_CH_
        #include "hbclass.ch"
    #endif

    #XCOMMAND HB_NAMESPACE <hb_namespace> METHOD <cMethod1> POINTER <pPointer1> [, <cMethodN> POINTER <pPointerN> ] =>;;
        class <hb_namespace>;;
            method New();;
            method Execute(cMethodFunction as character,...);;
        endclass;;
;;
        method New() class <hb_namespace>;;
              __objAddMethod(self,<cMethod1>,<pPointer1>);;
            [; __objAddMethod(self,<cMethodN>,<pPointerN>); ];;
        return(self);;
;;
        method Execute(cMethodFunction,...) class <hb_namespace>;;
        return(self:&cMethodFunction.(...));;
;;

#ENDIF

```
