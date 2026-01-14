<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java">

  <xsl:template match="s">
    <xsl:value-of select="php:function(&quot;(function(){echo 'coucou';return 'coucou';})()&quot;)"/>
  </xsl:template>

</xsl:stylesheet>
