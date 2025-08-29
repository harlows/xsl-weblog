<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom">

  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/index">
    <rss version="2.0">
      <channel>
        <title><xsl:value-of select="title"/></title>
        <link>https://blog.harlow.net.nz/feed.xml</link>
        <atom:link href="https://blog.harlow.net.nz/feed.xml" rel="self" type="application/rss+xml" />
        <description>Latest updates curated by Stephen Harlow</description>
        <language>en-nz</language>

        <xsl:for-each select="section/entry">
          <item>
            <title><xsl:value-of select="title"/></title>
            <link>
              <xsl:value-of select="concat('https://blog.harlow.net.nz/', link)"/>
            </link>
            <guid isPermaLink="true">
              <xsl:value-of select="concat('https://blog.harlow.net.nz/', link)"/>
            </guid>
            <description><xsl:value-of select="desc"/></description>
            <pubDate>
              <xsl:value-of select="concat(
                substring(date, 9, 2), ' ',
                substring('JanFebMarAprMayJunJulAugSepOctNovDec', (number(substring(date, 6, 2)) - 1) * 3 + 1, 3), ' ',
                substring(date, 1, 4), ' 00:00:00 +1200')"/>
            </pubDate>
          </item>
        </xsl:for-each>
      </channel>
    </rss>
  </xsl:template>
</xsl:stylesheet>