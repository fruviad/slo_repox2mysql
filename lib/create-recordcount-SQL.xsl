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
     This XSLT is intended to parse through the "recordCounts.xml"
     file used by REPOX for organizing metadata schemas.

     The XSLT creates SQL output that can be used to populate the 
     slo_aggregator.recordcounts table.
-->


  <xsl:template match="text()|@*"/>


  <xsl:template match="/">
      <xsl:apply-templates select="//*:recordcount"/>
  </xsl:template>

  <xsl:template match="//*:recordcount">
    <!-- <xsl:copy-of select="." copy-namespaces='false' /> -->
insert into recordcount (
     odnSet,
     recordCount,
     lastLineCounted,
     deletedRecords,
     lastCountDate,
     lastCountWithChangesDate)
 values (
     '<xsl:value-of select="*:dataSourceId"/>',
     '<xsl:value-of select="*:count"/>',
     '<xsl:value-of select="*:lastLineCounted"/>', 
     '<xsl:value-of select="*:deletedRecords"/>',
     '<xsl:value-of select="*:lastCountDate"/>',
     '<xsl:value-of select="*:lastCountWithChangesDate"/>'
     );

  </xsl:template>


</xsl:stylesheet>

