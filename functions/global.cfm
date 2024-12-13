<cfscript>
    public boolean function isLucee() {
        return StructKeyExists(server, "lucee");
    }

    public struct function getConfig() {
        return DeserializeJSON(FileRead(ExpandPath('/config.json')))
    }

</cfscript>