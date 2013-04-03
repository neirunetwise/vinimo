<cfprocessingdirective suppresswhitespace="yes">
<cfinclude template="/include/check_user_agent.cfm">
<cfif getMobileAgent()>
	<cfif getMobileStatus()>
    	<cfinclude template="/mobile/index.cfm">
        <cfabort />
    </cfif>
</cfif>
<cfsetting enablecfoutputonly="yes">
<!--- 	
	Project Name       : HOTEI Wines                 
	Page name          : index.cfm                   
	Program function   : Index page                
	Author             : Neil Caipang                
	Developed by       : NETWISE                     
	Created Date       : 3 Oct 2011                
	Last Modified      :                             
	Page Description   : Index Detail          
--->

<!--- Including common files --->
<!--- check user agent --->
<cfinclude template="/include/nllib.cfm">
<cfinclude template="index_action.cfm">
<cfsetting enablecfoutputonly="no">
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
	<title><cfoutput>#PageTitle#</cfoutput></title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="description" content="<cfoutput>#MetaDescription#</cfoutput>"> 
	<meta name="keywords" content="<cfoutput>#MetaKeywords#</cfoutput>">	
	<meta name="Author" content="<cfoutput>#MetaAuthor#</cfoutput>">
	<meta  name="robots" content="noindex, nofollow"><!--- Not to index dev/test site in search engine --->
	<cfinclude template="/include/head.cfm">
	<script type="text/javascript" src="<cfoutput>#g_root_path#</cfoutput>js/index.js" ></script>
    <script type="text/javascript" src="<cfoutput>#g_root_path#</cfoutput>js/flash.js" ></script>
   <script type="text/vbscript" src="<cfoutput>#g_root_path#</cfoutput>js/vbscript.js" ></script>
	<cfif isDefined('url.preview') AND url.preview>
		<cfinclude template="/include/head_preview.cfm">
    </cfif>
</head>

<body class="frontpage">

<cfoutput>	

	<!-- Start Wrapper -->
	<div id="wrapper">
		
		<!-- Start Container -->
		<div id="container">

			<!-- Start Top -->
			<cfinclude template="/include/top.cfm">			
			<!-- End Top -->
			
			<!-- Start Nav -->
		  	<cfinclude template="/include/nav.cfm">	
			<!-- End Nav-->
			 
            <cfif int_design_layout_id EQ 1>
                <cfinclude template="layouts/layout1.cfm">
            <cfelseif int_design_layout_id EQ 2>
                <cfinclude template="layouts/layout2.cfm">
            <cfelseif int_design_layout_id EQ 3>
                <cfinclude template="layouts/layout3.cfm">	
            <cfelseif int_design_layout_id EQ 4>
            	<cfinclude template="layouts/layout4.cfm">	
            </cfif>

          <!-- Start Footer -->
          <cfinclude template="/include/footer.cfm">	
          <!-- End Footer -->

	    </div>
        <!-- End Container -->	

    </div>
    <!-- End Wrapper -->		
	
</cfoutput>
	
</body>
</html>
</cfprocessingdirective>