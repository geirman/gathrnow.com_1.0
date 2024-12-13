<cfscript>

string function setActiveFor(
    required string target
) {
    if(cgi.script_name == '/#target#.cfm') {
        return "active"
    } 
    return "";
}

</cfscript>