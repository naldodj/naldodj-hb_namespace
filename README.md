# naldodj-hb_namespace
Simular o uso e NameSpace em Harbour

```xBase

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

```xBase
#include "C:\GitHub\naldodj-hb_namespace\include\hb_namespace.ch"

HB_NAMESPACE hb_source2 METHOD "NamedParameters" POINTER @NamedParameters(),
                               "NamedParametersKey" POINTER @NamedParametersKey()

```

```xBase
static function hb_Source2_NamedParameters()
    local cFunction as character:="NamedParameters"
    WITH OBJECT hb_source2():New()
        :Execute(cFunction,{"cTitle"=>ProcName(),"cMsg"=>"Ola mundo!"})
        :Execute(cFunction,{"cMsg"=>"Ola mundo!","cTitle"=>ProcName()})
    END WITH
return(nil)
```

```xBase
#include "C:\GitHub\naldodj-hb_namespace\include\hb_namespace.ch"

HB_NAMESPACE hb_source3 METHOD "NamedParameters" POINTER @NamedParameters(),;
                               "NamedParametersKey" POINTER @NamedParametersKey()
```

```xBase
static function hb_Source3_hb_NamedParametersKey()
    local cFunction as character:="NamedParametersKey"
    WITH OBJECT hb_source3():New()
        :Execute(cFunction,"Ola mundo!",ProcName())
        :Execute(cFunction,{"cTitle"=>ProcName()},{"cMsg"=>"Ola mundo!"})
        :Execute(cFunction,{"cMsg"=>"Ola mundo!"},{"cTitle"=>ProcName()})
    END WITH
return(nil)
```
