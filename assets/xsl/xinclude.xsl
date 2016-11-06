<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:h="http://www.w3.org/1999/xhtml"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:hyper="http://purl.org/hyperspace/model/1.0"
  xmlns:xi="http://www.w3.org/2001/XInclude">
  
  <xsl:template match="xi:include">  
    <xsl:for-each select="document(@href)">    
    <xsl:apply-templates/>  </xsl:for-each> 
   </xsl:template>
  
 </xsl:stylesheet>