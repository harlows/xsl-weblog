<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<!-- Index Template -->

<xsl:template match="index">
<html>
    <head>
        <title>
            <xsl:value-of select="title"/>
        </title>
        <link rel="stylesheet" type="text/css" href="/styles.css" />
    </head>

    <body>
        <main>
            <h1><xsl:value-of select="title"/></h1>
            <xsl:apply-templates select="section"/>
        </main>
    </body>

    <footer>
        <p>Stephen Harlow</p>
    </footer>
</html>
</xsl:template>

<!-- Section Template -->

<xsl:template match="section">
    <article>
        <h2>
            <xsl:value-of select="title"/>
        </h2>
        <ul>
            <xsl:apply-templates select="entry"/>
        </ul>
    </article>
</xsl:template>

<!-- Entry Template -->

<xsl:template match="entry">
    <h2>
        <a href="{link}"><xsl:value-of select="title"/></a>
    </h2>
    <p class="date"><xsl:value-of select="date"/></p>
    <p><xsl:value-of select="desc"/></p>
</xsl:template>

<!-- Page Template -->

<xsl:template match="page">
<html>
    <head>
        <title>
            <xsl:value-of select="title"/>
        </title>
        <link rel="stylesheet" type="text/css" href="/styles.css" />
    </head>

    <body>
        <main>
            <article>
                <header>
                    <h1><xsl:value-of select="title"/></h1>
                    <p class="date"><xsl:value-of select="date"/></p>
                </header>
                <xsl:apply-templates select="content"/>
            </article>
        </main>
    </body>

    <footer>
        <p>Stephen Harlow</p>
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