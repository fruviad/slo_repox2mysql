#!/bin/bash
#
# This script is intended to run a variety of XSLT transforms against
# the REPOX configuration files, resulting in SQL files that will
# populate tables in a REPOX replacment LAMP app.
#
# The REPOX config files are stored in the original application on
# OHIODPLAHUB at:  /opt/repoxdata/configuration
#
# Run it as follows:    ./bin/build-SQL.sh /path/to/repox/config/directory
#

if [ ! -f ./bin/build-SQL.sh ]
then
    echo " You need to be in the directory containing the 'bin', 'lib',"
    echo " and 'output' directories."
    exit
fi

if [ "$1" == '' ]
then
    echo " You must enter the REPOX configuration directory as the argument"
    echo " on the command line."
    exit
fi

echo "OK...this will take a moment."

REPOX_CONFIG_DIR=$1


java net.sf.saxon.Transform -xsl:lib/create-source-SQL.xsl           -o:output/create-source.sql           -s:$REPOX_CONFIG_DIR/dataProviders.xml
java net.sf.saxon.Transform -xsl:lib/create-dataSourceState-SQL.xsl  -o:output/create-dataSourceState.sql  -s:$REPOX_CONFIG_DIR/dataSourcesStates.xml

java net.sf.saxon.Transform -xsl:lib/create-metadataSchemas-SQL.xsl         -o:output/create-metadataSchemas.sql         -s:$REPOX_CONFIG_DIR/metadataSchemas.xml
java net.sf.saxon.Transform -xsl:lib/create-metadataSchemaVersions-SQL.xsl  -o:output/create-metadataSchemaVersions.sql  -s:$REPOX_CONFIG_DIR/metadataSchemas.xml

java net.sf.saxon.Transform -xsl:lib/create-metadataTransformation-SQL.xsl  -o:output/create-metadataTransformation.sql  -s:$REPOX_CONFIG_DIR/metadataTransformations.xml
java net.sf.saxon.Transform -xsl:lib/create-oldTasks-SQL.xsl                -o:output/create-oldTasks.sql                -s:$REPOX_CONFIG_DIR/oldTasks.xml

java net.sf.saxon.Transform -xsl:lib/create-providers-SQL.xsl    -o:output/create-provider.sql     -s:$REPOX_CONFIG_DIR/dataProviders.xml
java net.sf.saxon.Transform -xsl:lib/create-recordcount-SQL.xsl  -o:output/create-recordcount.sql  -s:$REPOX_CONFIG_DIR/recordCounts.xml

java net.sf.saxon.Transform -xsl:lib/create-scheduledTasks-SQL.xsl  -o:output/create-scheduledTasks.sql  -s:$REPOX_CONFIG_DIR/scheduledTasks.xml
java net.sf.saxon.Transform -xsl:lib/create-source-SQL.xsl          -o:output/create-source.sql          -s:$REPOX_CONFIG_DIR/dataProviders.xml


echo "Complete.  There are scripts in the 'lib' directory to run the SQL."

