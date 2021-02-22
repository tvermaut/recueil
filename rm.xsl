<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   version="1.0">

<xsl:template match="/">
  <html>
    <body>
      <h1>Recueil Méthodique</h1>
      <!-- <xsl:apply-templates/> -->
    </body>
  </html>
</xsl:template>

<!-- <xsl:template match="titre">
  <h2><xsl:attribute name="nr" />. <xsl:attribute name="title" /></h2>
  <div class="titre-blok"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="section">
  <h3><xsl:attribute name="nr" />. <xsl:attribute name="title" /></h3>
  <div class="section-blok"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="artikel">
  <h4><xsl:attribute name="nr" />. <xsl:attribute name="title" /></h4>
  <div class="artikel-blok"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="jaar">
  <span class="jaar"><xsl:apply-templates/></span>
</xsl:template> -->

</xsl:stylesheet>
