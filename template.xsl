<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes" />

<!-- Page Template -->

<xsl:template match="page">
<html>
    <head>
        <title>My Website</title>
        <link rel="stylesheet" type="text/css" href="/styles.css" />
    </head>

    <body>
        <main>
            <!-- Page content will be inserted here -->
            <xsl:apply-templates/>
        </main>
    </body>

    <footer>
        <p>Evan Widloski</p>
    </footer>
</html>
</xsl:template>

<!-- Wildcard Template -->
<!-- This is required so that tags not defined here (e.g. HTML) are rendered as is -->

<xsl:template match="node()|@*">
    <xsl:copy>
        <xsl:apply-templates select="node() | @*"/>
    </xsl:copy>
</xsl:template>

</xsl:stylesheet>
