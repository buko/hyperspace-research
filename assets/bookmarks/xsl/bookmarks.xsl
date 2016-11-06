<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:bookmarks="http://purl.org/bubblegum/bookmarks/1.0">

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
      <h:title><xsl:value-of select="/bookmarks:bookmarks/bookmarks:title" /></h:title>
   </h:head>
    <h:body style="padding-top: 5rem;">
    
      <h:header class="jumbotron text-xs-center">
        <h:div class="container" style="padding: 3rem 1.5rem;">
          <h:h1 class="jumbotron-heading"><xsl:value-of select="/bookmarks:bookmarks/bookmarks:title" /></h:h1>
      
          <h:p class="lead text-muted"><xsl:value-of select="/bookmarks:bookmarks/bookmarks:description/*" /></h:p>       
        </h:div>
      </h:header>
      
      <h:div class="container">
      
      <h:section id="link-sections">
      
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Specifications</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:specification" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Code</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:code" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Articles</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:article" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Papers</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:paper" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Journals</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:journal" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Books</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:book" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Documents</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:document" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Blogs</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:blog" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Sites</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:site" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">Organizations</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:organization" />
        </xsl:call-template>
        
        <xsl:call-template name="link-list-section">
          <xsl:with-param name="section-name">People</xsl:with-param>
          <xsl:with-param name="links" select="/bookmarks:bookmarks/bookmarks:person" />
        </xsl:call-template>
      </h:section>
      
      </h:div> <!-- root container -->
      
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
  
  <xsl:template name="link-list-section">
    <xsl:param name="section-name" />
    <xsl:param name="links" />
    <h:section>
      <h:header>
        <h:h1><xsl:value-of select="$section-name" /></h:h1>
      </h:header>
      <h:ul>
        <xsl:for-each select="$links">
          <h:li>
            <h:span class="link"><h:a href="{@xlink:href}"><xsl:value-of select="@xlink:title" /></h:a></h:span>
          </h:li>
        </xsl:for-each>
      </h:ul>
    </h:section>
  </xsl:template>
  
</xsl:stylesheet>