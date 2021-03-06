<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   version="1.0">

<xsl:template match="/">
  <html>
    <head>
        <link rel="stylesheet" type="text/css" href="https://tvermaut.github.io/recueil/stijl.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
      <h1>Recueil Méthodique</h1>
      <xsl:apply-templates/>
      <script src="https://tvermaut.github.io/recueil/script.js" />
    </body>
  </html>
</xsl:template>

<xsl:template match="titre">
  <h2><xsl:if test="@nr"><xsl:value-of select="@nr"/>. </xsl:if><xsl:value-of select="@title"/></h2>
  <div class="titre-blok"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="section">
  <h3><xsl:if test="@nr"><xsl:value-of select="@nr" />. </xsl:if><xsl:value-of select="@title" /></h3>
  <div class="section-blok"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="date">
  <span class="datum" title="@when"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="bron">
    <sup><span class="dagger" data-toggle="tooltip" data-placement="top" data-html="true" ><xsl:attribute name="title"><xsl:apply-templates/></xsl:attribute>&#8224;</span></sup>
</xsl:template>

<xsl:template match="artikel">
  <h4><xsl:if test="@nr"><xsl:value-of select="@nr" />.</xsl:if><xsl:if test="@title"> <xsl:value-of select="@title" /></xsl:if></h4>
  <div class="artikel-blok"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="introductieblok">
  <h3><xsl:if test="@nr"><xsl:value-of select="@nr" />. </xsl:if><xsl:value-of select="@title" /></h3>
  <div class="intro-blok"><xsl:apply-templates/></div>
</xsl:template>



<xsl:template match="p"><p><xsl:apply-templates/></p></xsl:template>
<xsl:template match="ul"><ul><xsl:apply-templates/></ul></xsl:template>
<xsl:template match="li"><li><xsl:apply-templates/></li></xsl:template>
<xsl:template match="br"><xsl:apply-templates/><br/></xsl:template>

<xsl:template match="rmr">
 (<a><xsl:attribute name="href"><xsl:value-of select="concat('#',.)"/></xsl:attribute><xsl:value-of select="."/></a>)
</xsl:template>



</xsl:stylesheet>
