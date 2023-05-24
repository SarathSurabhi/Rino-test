<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
 xmlns="http://www.SDMX.org/resources/SDMXML/schemas/v2_0/generic" 
 xmlns:generic="http://www.SDMX.org/resources/SDMXML/schemas/v2_0/generic" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xmlns:exsl="http://exslt.org/common"
 xmlns:math="http://exslt.org/math" 
 xmlns:common="http://www.SDMX.org/resources/SDMXML/schemas/v2_0/common" 
 xmlns:message="http://www.SDMX.org/resources/SDMXML/schemas/v2_0/message" 
 xsi:schemaLocation="http://www.SDMX.org/resources/SDMXML/schemas/v2_0/generic http://www.sdmx.org/docs/2_0/SDMXGenericData.xsd http://www.SDMX.org/resources/SDMXML/schemas/v2_0/message http://www.sdmx.org/docs/2_0/SDMXMessage.xsd" 
 extension-element-prefixes="exsl">
<xsl:output method="html"/>
<xsl:template match="/">

<xsl:element name="html">
<xsl:element name="head">


	<xsl:element name="h1">Summary of ABS Data for <xsl:value-of select="substring(/message:GenericData/message:DataSet/generic:Series/generic:SeriesKey/generic:Value[@concept='Mesh@20@Block@20@Records_2428335']/@value,16)"/>
	</xsl:element>
</xsl:element>
<xsl:element name="body">
	<xsl:element name="h2">Total </xsl:element>
	<xsl:value-of select="sum(/message:GenericData/message:DataSet/generic:Series[( generic:SeriesKey/generic:Value/@value='2428335_POA_POA4350') and (generic:SeriesKey/generic:Value/@value='2409577_CODE1_10' or generic:SeriesKey/generic:Value/@value='2409577_CODE1_11' or generic:SeriesKey/generic:Value/@value='2409577_CODE1_12' or generic:SeriesKey/generic:Value/@value='2409577_CODE1_13' or generic:SeriesKey/generic:Value/@value='2409577_CODE1_14')]/generic:Obs/generic:ObsValue/@value)"/><br/>


</xsl:element>
</xsl:element>

</xsl:template>
</xsl:stylesheet>
