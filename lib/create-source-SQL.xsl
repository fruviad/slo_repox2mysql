<xsl:stylesheet
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:qdc="http://worldcat.org/xmlschemas/qdc-1.0/"
  xmlns:slo_diag="http://library.ohio.gov/xmlschemas/slo_diag-1.0/"
  exclude-result-prefixes="xs"
  xpath-default-namespace="http://library.ohio.gov/xmlschemas/slo_diag-1.0/"
  expand-text="yes">

  <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>



<!--
     This XSLT is intended to parse through the "dataProviders.xml" files
     used by REPOX for organizing data sources.

     The XSLT creates SQL output that can be used to populate the 
     slo_aggregator.sources table.
-->


  <xsl:template match="text()|@*"/>


  <xsl:template match="/">
      <xsl:apply-templates select="//*:source"/>
  </xsl:template>

  <xsl:template match="//*:source">
    <!-- <xsl:copy-of select="." copy-namespaces='false' /> -->
insert into source (
     providerName,
     metadataFormat,
     sourceSchema,
     lastIngest,
     status,
     typeOfSource,
     description,
     exportDirPath,
     recordIdPolicyType,
     oaiSource,
     oaiSet,
     metadataTransformations,
     sourcesDirPath,
     retrieveStrategy,
     fileExtract,
     splitRecordsRecordXPath
     )
 values (
     '<xsl:value-of select="../*:name"/>',
     '<xsl:value-of select="@metadataFormat"/>',
     '<xsl:value-of select="@schema"/>',
     '<xsl:value-of select="@lastIngest"/>', 
     '<xsl:value-of select="@status"/>',
     '<xsl:value-of select="@type"/>',
     '<xsl:apply-templates select="*:description"/>', 
     '<xsl:value-of select="*:exportDirPath"/>',
     '<xsl:value-of select="*:recordIdPolicy/@type"/>',
     '<xsl:value-of select="*:oai-source"/>',
     '<xsl:value-of select="*:oai-set"/>',
     '<xsl:apply-templates select="*:metadataTransformations"/>',
     '<xsl:value-of select="*:sourcesDirPath"/>',
     '<xsl:value-of select="*:retrieveStrategy/@type"/>',
     '<xsl:value-of select="*:fileExtract"/>',
     '<xsl:value-of select="*:splitRecords/*:recordXPath"/>'
     );

  </xsl:template>

  <xsl:template match="*:description">
    <xsl:call-template name="escapeQuotes"><xsl:with-param name="txt" select="."/></xsl:call-template>
  </xsl:template>

  <xsl:template match="*:metadataTransformations">
    <xsl:for-each select="./*:metadataTransformation">
      <xsl:value-of select="."/>
    </xsl:for-each>

  </xsl:template>



    <xsl:template name="escapeQuotes">
        <xsl:param name="txt"/>
        <!-- code taken from https://mac-blog.org.ua/xslt-escape-single-quotes/ -->
        <!-- Escape with slash -->
        <!-- <xsl:variable name="backSlashQuote">&#92;&#39;</xsl:variable> -->
        <!-- MsSql escape -->
        <xsl:variable name="backSlashQuote">&#39;&#39;</xsl:variable>
        <xsl:variable name="singleQuote">&#39;</xsl:variable>

        <xsl:choose>
            <xsl:when test="string-length($txt) = 0">
                <!-- ... -->
            </xsl:when>

            <xsl:when test="contains($txt, $singleQuote)">
                <xsl:value-of disable-output-escaping="yes" select="concat(substring-before($txt, $singleQuote), $backSlashQuote)"/>

                <xsl:call-template name="escapeQuotes">
                    <xsl:with-param name="txt" select="substring-after($txt, $singleQuote)"/>
                </xsl:call-template>
            </xsl:when>

            <xsl:otherwise>
                <xsl:value-of disable-output-escaping="yes" select="$txt"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>





</xsl:stylesheet>

