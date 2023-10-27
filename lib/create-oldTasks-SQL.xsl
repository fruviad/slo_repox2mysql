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
     This XSLT is intended to parse through the "oldTasks.xml"
     file used by REPOX for organizing metadata schemas.

     The XSLT creates SQL output that can be used to populate the 
     slo_aggregator.recordcounts table.
-->


  <xsl:template match="text()|@*"/>


  <xsl:template match="/">
      <xsl:apply-templates select="//*:oldTask"/>
  </xsl:template>

  <xsl:template match="//*:oldTask">
    <!-- <xsl:copy-of select="." copy-namespaces='false' /> -->
insert into oldTasks (
     id,
     oldTaskTime,
     odnSet,
     logName,
     ingestType,
     status,
     records,
     retries,
     retriesMax,
     retriesDelay)
 values (
     '<xsl:value-of select="./@id"/>',
     '<xsl:value-of select="*:time"/>',
     '<xsl:value-of select="*:dataSourceSet"/>', 
     '<xsl:value-of select="*:logName"/>',
     '<xsl:value-of select="*:ingestType"/>',
     '<xsl:value-of select="*:status"/>',
     '<xsl:value-of select="translate(*:records, '.', '')"/>',
     '<xsl:value-of select="*:retries"/>',
     '<xsl:value-of select="*:retries/@max"/>',
     '<xsl:value-of select="*:retries/@delay"/>'
     );

  </xsl:template>


</xsl:stylesheet>

