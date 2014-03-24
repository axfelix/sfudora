<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:dc="http://purl.org/dc/terms/"
		xmlns:doc="http://www.icpsr.umich.edu/doc" 
		targetNamespace="http://www.icpsr.umich.edu/DDI"
		exclude-result-prefixes="dc">
<xsl:output method="xml" version="1.0" encoding="UTF-8"
		indent="yes" />
<xsl:template match="/">
<xsl:for-each select="ddi:codebook">
	<xsl:for-each select="ddi:stdyDscr">
		<xsl:for-each select="ddi:citation">
		<xsl:for-each select="ddi:titlStmt">
			<dc:title>
				<xsl:for-each select="ddi:titl">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:title>
			<dc:identifier>
				<xsl:for-each select="ddi:IDNo">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:identifier>
		</xsl:for-each>
		<xsl:for-each select="ddi:rspStmt">
			<dc:creator>
				<xsl:for-each select="ddi:AuthEnty">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:creator>
			<dc:contributor>
				<xsl:for-each select="ddi:othId">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:contributor>
		</xsl:for-each>
		<xsl:for-each select="ddi:prodStmt">
			<dc:publisher>
				<xsl:for-each select="ddi:producer">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:publisher>
			<dc:date>
				<xsl:for-each select="ddi:prodDate">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:date>
		</xsl:for-each>
		</xsl:for-each>
		<xsl:for-each select="ddi:stdyInfo">
			<dc:subject>
				<xsl:for-each select="ddi:subject/keyword">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:subject>
			<dc:description>
				<xsl:for-each select="ddi:abstract">
					<xsl:value-of select="."/>
				</xsl:for-each>
			</dc:description>
			<xsl:for-each select="ddi:sumDscr">
				<dc:coverage>
					<xsl:for-each select="ddi:geogCover">
						<xsl:value-of select="."/>
					</xsl:for-each>
				</dc:coverage>
				<dc:type>
					<xsl:for-each select="ddi:dataKind">
						<xsl:value-of select="."/>
					</xsl:for-each>
				</dc:type>
			</xsl:for-each>
		</xsl:for-each>
		<dc:source>
			<xsl:for-each select="ddi:method/ddi:dataColl/ddi:sources/ddi:dataSrc">
				<xsl:value-of select="."/>
			</xsl:for-each>
		</dc:source>
		<dc:rights>
			<xsl:for-each select="ddi:dataAccs/ddi:useStmt/ddi:restrctn">
				<xsl:value-of select="."/>
			</xsl:for-each>
		</dc:rights>
			<xsl:for-each select="ddi:otherStdyMat">
				<dc:relation>
					<xsl:for-each select="ddi:relMat">
						<xsl:value-of select="."/>
					</xsl:for-each>
				</dc:relation>
				<dc:isPartOf>
					<xsl:for-each select="ddi:relPubl">
						<xsl:value-of select="."/>
					</xsl:for-each>
				</dc:isPartOf>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>