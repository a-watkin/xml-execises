<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
		<head>
			<title>Our Items</title>
			<style>
			h1 { color:#0D3427 }
			img { margin: 0px 10px 0px 10px }
			body { background-color: #DACFE5; font-family:Arial, Helvetica, sans-serif }
			</style>
		</head>
		<body>
			<!-- xpath selectors are used with select -->
			<!-- selects all the item tags in items, the whole collection will be returned -->
			<xsl:for-each select="/items/item">
				<!-- HTML for each returned element, except this is XML too... 
				so you have to have closing tags for everything-->
				<img>

					<xsl:attribute name="src">
					<!-- doens't need a full path because it's already inside a subnode -->
						<xsl:value-of select="photo"/>
					</xsl:attribute>
				</img>

				<xsl:value-of select="name"/>
				<!-- inserts a string seperated by a space and three periods -->
				<xsl:text> ... </xsl:text>
				<xsl:value-of select="type"/>
			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
