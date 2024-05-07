#include "hbclass.ch"
#include "minigui.ch"
#include "C:\GitHub\naldodj-hb_namespace\include\hb_namespace.ch"

HB_NAMESPACE hb_source3 METHOD "NamedParameters" POINTER @NamedParameters() , "NamedParametersKey" POINTER @NamedParametersKey()

static Function NamedParameters(hParameters as hash)
    local cMsg:=HB_HGETDEF(hParameters,"cMsg","") as character
    local cTitle:=HB_HGETDEF(hParameters,"cTitle",ProcName()) as character
    cTitle:="hb_source3:"+cTitle
    WITH OBJECT Echo()
        :MsgInfo(cMsg,cTitle)
    END WITH
return(nil)

static Function NamedParametersKey(cMsg as character,cTitle as character,...)

    local enum
    local Parameters

    FOR EACH Parameters IN hb_AParams(0)
        if (valType(Parameters)=="H")
            FOR EACH enum IN Parameters
                switch lower(enum:__enumKey())
                case "cmsg"
                    cMsg:=enum:__enumValue()
                    exit
                case "ctitle"
                    cTitle:=enum:__enumValue()
                    exit
                end switch
            NEXT EACH
       endif
    NEXT EACH

    hb_default(@cMsg,"")
    hb_default(@cTitle,ProcName())

    cTitle:="hb_source3:"+cTitle

    WITH OBJECT Echo()
        :MsgInfo(cMsg,cTitle)
    END WITH

return(nil)
