<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
	<xsl:output method="html" indent="yes" />
  	<xsl:template match="/">
   		<html>
   			<head></head>
   			<body>
   				<xsl:apply-templates />
   			</body>
   		</html>
   	</xsl:template>

    <xsl:template match="tei:fileDesc">
      <h1>Titolo</h1>
      <h2><xsl:value-of select="tei:titleStmt/tei:title" /></h2>
    </xsl:template>

   	<xsl:template match="tei:front">
      <h1>informazioni
      </h1>
        <h2>
   	      <xsl:value-of select="//tei:titlePage/tei:docAuthor" />
   	    </h2>
   	    <h2>
   			  <xsl:value-of select="//tei:docTitle/tei:titlePart" />
   	    </h2>
        <h2>
   			  <xsl:value-of select="//tei:docImprint/tei:pubPlace" />
   	    </h2>
      	<h2>
   			  <xsl:value-of select="//tei:docImprint/tei:publisher" />
   	    </h2>
      	<h2>
   			  <xsl:value-of select="//tei:docImprint/tei:date" />
      	</h2>
    </xsl:template>

   	<xsl:template match="tei:body">
   	<h1>contenuto paragrafi:</h1>
      <h2>
   			<xsl:value-of select="tei:div/tei:p" />
     	</h2>
    </xsl:template>

</xsl:stylesheet>