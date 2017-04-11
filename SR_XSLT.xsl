<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" />
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
    <h1>Vesmir</h1>
    <h2>Počet sektorů: <xsl:value-of select="vesmir/@pocet_sektoru"/></h2>
    <table border="1">
      <tr>
        <td>Sektor</td>
        <td>Pocet systemu</td>
      </tr>
        <xsl:for-each select="vesmir/sektor">
          <tr>
            <td>
              <xsl:value-of select="@nazev_sektoru"/>
            </td>
            <td>
              <xsl:value-of select="@pocet_systemu"/>
            </td>
          </tr>
          <tr>
            <td>System</td>
            <td>Pocet planet</td>
          </tr>
          <xsl:for-each select=".//system">
            <tr>
              <td>
                <xsl:value-of select="@nazev_systemu"/>
              </td>
              <td>
                <xsl:value-of select="@pocet_planet"/>
              </td>
            </tr>
          </xsl:for-each>
        </xsl:for-each>
    </table>

    <table border="1">
      <tr>
        <td>Pilot</td>
        <td>Rasa</td>
        <td>Role</td>
        <td>Rank</td>
      </tr>
        <xsl:for-each select=".//pilot">
          <tr>
            <td>
              <xsl:value-of select="jmeno"/>
            </td>
            <td>
              <xsl:value-of select="rasa"/>
            </td>
            <td>
              <xsl:value-of select="role"/>
            </td>
            <td>
              <xsl:value-of select="rank"/>
            </td>
          </tr>
        </xsl:for-each>
    </table>

    </html>
  </xsl:template>
</xsl:stylesheet>

