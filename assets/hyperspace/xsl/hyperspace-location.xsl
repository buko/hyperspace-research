<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:hyper="http://purl.org/hyperspace/model/1.0"
  xmlns:xdc="http://purl.org/xdc/elements/1.0"
  xmlns:xi="http://www.w3.org/2001/XInclude">
  
  <xsl:include href="../../xsl/xinclude.xsl" />
  <xsl:output method="xml" indent="yes" />
  
  <xsl:template match="/">
    <h:html>
      <h:head>
        <h:meta charset="utf-8" />
        <h:meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <h:meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <h:link 
          rel="stylesheet" 
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" 
          integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" 
          crossorigin="anonymous" />
        <h:title><xsl:value-of select="//hyper:location/hyper:title" /></h:title>
      </h:head>
      <h:body style="padding-top: 5rem;">
        <h:header style="padding: 3rem 1.6rem; text-align: center;">
          <h:div class="container text-xs-center">
            <h:h1><xsl:value-of select="//hyper:location/hyper:title" /></h:h1>
            
            <xsl:if test="/hyper:location/hyper:summary">
              <h:p class="lead text-muted">
                <xsl:value-of select="//hyper:location/hyper:summary" />
              </h:p>
            </xsl:if>            
          </h:div>
        </h:header>
        
        <h:div class="container mx-auto">
          <h:div class="row">
            
            <h:div class="col-sm-7">
              <xsl:apply-templates select="//hyper:location/hyper:description" />
            </h:div>
        
            <h:div class="col-sm-4 offset-sm-1">
              <h:section>
                <h:h1 class="h5">./</h:h1>
                <h:ul class="list-unstyled">
                  <xsl:apply-templates select="//hyper:location/hyper:resource" />
                </h:ul>
              </h:section>
            </h:div>
          </h:div> <!-- /row -->
        </h:div>
        
        <h:footer class="text-muted">
          <h:div class="container small" style="padding-top: 10rem;">
            <xsl:apply-templates select="//xdc:properties" />
          </h:div>
        </h:footer>
        
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <h:script 
          src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js" 
          integrity="sha384-THPy051/pYDQGanwU6poAc/hOdQxjnOEXzbT+OuUAFqNqFjL+4IGLBgCJC3ZOShY" 
          crossorigin="anonymous" />
        <h:script>
          <![CDATA[ window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>') ]]>
        </h:script>
        <h:script 
          src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js" 
          integrity="sha384-Plbmg8JY28KFelvJVai01l8WyZzrYWG825m+cZ0eDDS1f7d/js6ikvy1+X+guPIB" 
          crossorigin="anonymous" />
        <h:script 
          src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" 
          integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" 
          crossorigin="anonymous" />
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <h:script src="https://v4-alpha.getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js" />
      </h:body>
    </h:html>
  </xsl:template>
  
  <xsl:template match="//hyper:location/hyper:description">
    <xsl:copy-of select="*" />
  </xsl:template>
  
  <xsl:template match="//hyper:location/hyper:resource">
      <h:li>
        <h:a href="{@xlink:href}"><xsl:value-of select="@xlink:title" /></h:a>      
      </h:li>
  </xsl:template>
  
  <xsl:template match="//xdc:properties">
    <h:p>This location was created on <h:a href="{xdc:created/@xlink:href}"><xsl:value-of select="xdc:created/@xlink:title" /></h:a> by 
      <h:a href="{xdc:contact/@xlink:href}"><xsl:value-of select="xdc:creator/@xlink:title" /></h:a></h:p>
      
    <h:p>It was last modified on <h:a href="{xdc:modified/@xlink:href}"><xsl:value-of select="xdc:modified/@xlink:title" /></h:a></h:p>
    
    <xsl:if test="xdc:contributor">
      <h:p>Contributors include  <xsl:for-each select="xdc:contributor"><h:a href="@xlink:href"><xsl:value-of select="@xlink:title" /></h:a> + </xsl:for-each></h:p>
    </xsl:if>
    
    <h:p>The location is part of <h:a href="{xdc:isPartOf/@xlink:href}"><xsl:value-of select="xdc:isPartOf/@xlink:title" /></h:a></h:p>
    
    <h:p>It is available under the <h:a href="{xdc:license/@xlink:href}"><xsl:value-of select="xdc:license/@xlink:title" /></h:a> license</h:p>
    
    <h:p>Any questions should be addressed to <h:a href="{xdc:contact/@xlink:href}"><xsl:value-of select="xdc:contact/@xlink:title" /></h:a></h:p>
    
    <h:p><h:strong>Light up the darkness</h:strong></h:p>
  </xsl:template>
  
 </xsl:stylesheet>