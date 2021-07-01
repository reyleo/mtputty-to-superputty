<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
  method="xml" version="1.0" 
  encoding="UTF-8"
  omit-xml-declaration="no"
  doctype-system="http://java.sun.com/dtd/preferences.dtd"
  indent="yes"
  />
<xsl:template match="/">

<ArrayOfSessionData xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:apply-templates />
</ArrayOfSessionData>

</xsl:template>


<xsl:template match="//Node[@Type='0']">
	<xsl:apply-templates match="Node" />
</xsl:template>

<xsl:template match="Node[@Type='1']">
	<SessionData>
		<xsl:attribute name="SessionId"><xsl:value-of select="../DisplayName"/>/<xsl:value-of select="DisplayName"/></xsl:attribute>
		<xsl:attribute name="SessionName"><xsl:value-of select="DisplayName"/></xsl:attribute>
		<xsl:attribute name="ImageKey">computer</xsl:attribute>
		<xsl:attribute name="Host"><xsl:value-of select="ServerName"/></xsl:attribute>
		<xsl:attribute name="Port">22</xsl:attribute>
		<xsl:attribute name="Proto">SSH</xsl:attribute>
		<xsl:attribute name="PuttySession">Default Settings</xsl:attribute>
		<xsl:attribute name="Username"><xsl:value-of select="UserName"/></xsl:attribute>
		<xsl:attribute name="ExtraArgs"></xsl:attribute>
		<xsl:attribute name="SPSLFileName"></xsl:attribute>
		<xsl:attribute name="RemotePath"></xsl:attribute>
		<xsl:attribute name="LocalPath"></xsl:attribute>
	</SessionData>
</xsl:template>

<xsl:template match="Servers/Putty/Node[@Type='1']">
	<SessionData>
		<xsl:attribute name="SessionId"><xsl:value-of select="DisplayName"/></xsl:attribute>
		<xsl:attribute name="SessionName"><xsl:value-of select="DisplayName"/></xsl:attribute>
		<xsl:attribute name="ImageKey">computer</xsl:attribute>
		<xsl:attribute name="Host"><xsl:value-of select="ServerName"/></xsl:attribute>
		<xsl:attribute name="Port">22</xsl:attribute>
		<xsl:attribute name="Proto">SSH</xsl:attribute>
		<xsl:attribute name="PuttySession">Default Settings</xsl:attribute>
		<xsl:attribute name="Username"><xsl:value-of select="UserName"/></xsl:attribute>
		<xsl:attribute name="ExtraArgs"></xsl:attribute>
		<xsl:attribute name="SPSLFileName"></xsl:attribute>
		<xsl:attribute name="RemotePath"></xsl:attribute>
		<xsl:attribute name="LocalPath"></xsl:attribute>
	</SessionData>
</xsl:template>

<xsl:template match="DisplayName"/>
</xsl:stylesheet>