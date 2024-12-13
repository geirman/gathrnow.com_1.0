<cfscript>
    //=====================================================================
    //=     Debugging
    //=====================================================================
    
    /**
    * Outputs a timestamped file with the object to inspect
    *
    * [section: Application]
    * [category: Utils]
    *
    * @obj any object you want to inspect
    * @prefix The prefix of the file that will be written
    *
    */
    public void function dbug(required any obj, string prefix = 'unscoped'){

        writeDump(
            var = arguments.obj,
            output = expandPath('/dbug/') & arguments.prefix & '_' & DateFormat(Now(), "YYYY-MM-DD") & "_" & TimeFormat(Now(), "HHnnss") & '.html',
            format = isLucee() ? 'simple' : 'html'
        ); 

    }
    
</cfscript>