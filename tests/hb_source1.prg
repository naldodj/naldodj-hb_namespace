#include "hbclass.ch"
#include "minigui.ch"

class Echo
    method MsgInfo(cMsg as character,cTitle as character)
end class

method MsgInfo(cMsg as character,cTitle as character) class Echo
    hb_Default(@cTitle,ProcName())
return(MsgInfo(cMsg,cTitle))

function Main()

    WITH OBJECT Echo()
        :MsgInfo("Ola mundo!","hb_source1:"+ProcName())
    END WITH

    WITH OBJECT hb_Source4():New()
        :Execute("hb_Source2_NamedParameters")
        :Execute("hb_Source2_hb_NamedParametersKey")
        :Execute("hb_Source3_NamedParameters")
        :Execute("hb_Source3_hb_NamedParametersKey")
    END WITH

return(nil)
