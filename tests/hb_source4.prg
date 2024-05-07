#include "minigui.ch"

function hb_Source4()
    hb_Source2_NamedParameters()
    hb_Source2_hb_NamedParametersKey()
    hb_Source3_NamedParameters()
    hb_Source3_hb_NamedParametersKey()
return(nil)

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
