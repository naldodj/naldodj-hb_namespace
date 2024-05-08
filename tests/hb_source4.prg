#include "C:\GitHub\naldodj-hb_namespace\include\hb_namespace.ch"

HB_NAMESPACE hb_source4 METHOD "hb_Source2_NamedParameters" POINTER @hb_Source2_NamedParameters(),;
                               "hb_Source2_hb_NamedParametersKey" POINTER @hb_Source2_hb_NamedParametersKey(),;
                               "hb_Source3_NamedParameters" POINTER @hb_Source3_NamedParameters(),;
                               "hb_Source3_hb_NamedParametersKey" POINTER @hb_Source3_hb_NamedParametersKey()

static function hb_Source2_NamedParameters()
    local cFunction as character:="NamedParameters"
    WITH OBJECT hb_source2():New()
        :Execute(cFunction,{"cTitle"=>ProcName(),"cMsg"=>"Ola mundo!"})
        :Execute(cFunction,{"cMsg"=>"Ola mundo!","cTitle"=>ProcName()})
    END WITH
return(nil)

static function hb_Source2_hb_NamedParametersKey()
    local cFunction as character:="NamedParametersKey"
    WITH OBJECT hb_source2():New()
        :Execute(cFunction,"Ola mundo!",ProcName())
        :Execute(cFunction,{"cTitle"=>ProcName()},{"cMsg"=>"Ola mundo!"})
        :Execute(cFunction,{"cMsg"=>"Ola mundo!"},{"cTitle"=>ProcName()})
    END WITH
return(nil)

static function hb_Source3_NamedParameters()
    local cFunction as character:="NamedParameters"
    WITH OBJECT hb_source3():New()
        :Execute(cFunction,{"cTitle"=>ProcName(),"cMsg"=>"Ola mundo!"})
        :Execute(cFunction,{"cMsg"=>"Ola mundo!","cTitle"=>ProcName()})
    END WITH
return(nil)

static function hb_Source3_hb_NamedParametersKey()
    local cFunction as character:="NamedParametersKey"
    WITH OBJECT hb_source3():New()
        :Execute(cFunction,"Ola mundo!",ProcName())
        :Execute(cFunction,{"cTitle"=>ProcName()},{"cMsg"=>"Ola mundo!"})
        :Execute(cFunction,{"cMsg"=>"Ola mundo!"},{"cTitle"=>ProcName()})
    END WITH
return(nil)
