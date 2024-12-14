<cfparam name="attributes.title" default="">
<cfinclude template="./functions/nav.cfm" runonce=true>


<cfoutput>
<cfif ThisTag.ExecutionMode EQ 'start'>
<!--- HEADER --->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>
            #attributes.title#
        </title>
    
        <!--- Favicons --->
        <link rel="manifest" href="/assets/favicons/site.webmanifest.json">
        <link rel="apple-touch-icon" href="/assets/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/assets/favicons/favicon-512x512.png" sizes="512x512" type="image/png">
        <link rel="icon" href="/assets/favicons/favicon-192x192.png" sizes="192x192" type="image/png">
        <link rel="icon" href="/assets/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/assets/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="icon" href="/assets/favicons/favicon.ico" type="image/x-icon">
        
        <!--- CSS / Styles --->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="/styles/global.css" rel="stylesheet" />

    </head>
    <body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container px-5">
            <a class="navbar-brand" href="/">
                <img src="/assets/GN%20Logo%20(White)%20150x105.png" width="150" height="105" alt="GathrNow Logo">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link #setActiveFor('about')#" href="about.cfm">About Us</a></li>
                    <li class="nav-item"><a class="btn btn-primary ms-2" href="join.cfm">Join Now</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
        
<cfelse>        
<!--- FOOTER --->
        
        <footer class="py-5">
            <div class="container px-4 px-lg-5">
                <p class="m-0 text-center text-white">
                    Phone: <a href="tel:8885551212" class="text-decoration-none rounded-pill text-white px-2 py-1">888-555-1212</a> | 
                    Email: <a href="mailto:join@gathrnow.com" class="text-decoration-none rounded-pill text-white px-2 py-1">join@gathrnow.com</a>
                </p>                
                <p class="m-0 text-center text-white">
                    Copyright &copy; #DateFormat(now(), 'YYYY')#, GathrNow&trade; LLC, All Rights Reserved
                </p>
                <p id="version" class="m-0 text-center">
                    <!--- Version --->
                    <cfinclude template="version.txt">
                </p>
            </div>
        </footer>
        
        <!-- Javascript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="/javascript/global.js"></script>
    </body>
</html>

</cfif>
</cfoutput>