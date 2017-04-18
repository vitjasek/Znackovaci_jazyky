<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="about:legacy-compat" />
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <h1>Mapa vesmíru</h1>
      <h2>Počet sektorů: <xsl:value-of select="vesmir/@pocet_sektoru"/></h2>
      <table border="1">
        <xsl:for-each select="vesmir/sektor">
          <tr>
            <td>Sektor</td>
            <td>Pocet systemu</td>
          </tr>
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
          <tr>
            <xsl:if test="not(position()=last())">
              <td>---------</td>
              <td>----------</td>
            </xsl:if>
          </tr>
        </xsl:for-each>
      </table>

      <h1>Info o systému</h1>
      <table border="1">
        <tr>
          <td>Planety systému</td>
          <td>Vstah k pilotovi</td>
          <td>Rasa</td>
        </tr>
        <xsl:for-each select="vesmir/sektor/system[@nazev_systemu='Slunecni soustava']">
          <xsl:for-each select=".//planeta">
            <tr>
              <td>
                <xsl:value-of select="@nazev_planety"/>
              </td>
              <td>
                <xsl:value-of select="obyvatele/@vstah_k_pilotovi"/>
              </td>
              <td>
                <xsl:value-of select="obyvatele/rasa"/>
              </td>
            </tr>
          </xsl:for-each>
        </xsl:for-each>
      </table>

      <h1>Info o pilotovi</h1>
      <h2>Pilot</h2>

      <xsl:for-each select="vesmir/sektor/system[@nazev_systemu='Slunecni soustava']/pilot">
        <table border="1">
          <tr>
            <td>Jméno</td>
            <td>Rank</td>
            <td>Rasa</td>
            <td>Rating</td>
            <td>Role</td>
          </tr>
          <tr>
            <td>
              <xsl:value-of select="jmeno"/>
            </td>
            <td>
              <xsl:value-of select="rank"/>
            </td>
            <td>
              <xsl:value-of select="rasa"/>
            </td>
            <td>
              <xsl:value-of select="rating/@ranger_body"/>
            </td>
            <td>
              <xsl:value-of select="role"/>
            </td>
          </tr>
        </table>
        <h2>Loď</h2>
        <xsl:for-each select=".//vesmirna_lod">
          <ul>
            <li>Kapacita: <xsl:value-of select="@kapacita"/></li>
            <li>Typ trupu: <xsl:value-of select="@typ_trupu"/></li>
            <li>Afterburner: <xsl:value-of select=".//parametry/afterburner"/></li>
            <li>Cena: <xsl:value-of select=".//parametry/cena"/></li>
            <li>Droid: <xsl:value-of select=".//parametry/droid"/></li>
            <li>Generátor: <xsl:value-of select=".//parametry/generator"/></li>
            <li>Jeřáb: <xsl:value-of select=".//parametry/jerab"/></li>
            <li>Počet slotů na zbraně: <xsl:value-of select=".//parametry/pocet_slotu_na_zbrane"/></li>
            <li>Radar: <xsl:value-of select=".//parametry/radar"/></li>
            <li>Rychlost: <xsl:value-of select=".//parametry/rychlost"/></li>
            <li>Scaner: <xsl:value-of select=".//parametry/scaner"/></li>
            <li>Sloty na artefakty: <xsl:value-of select=".//parametry/sloty_na_artefakty"/></li>
            <li>Štíty: <xsl:value-of select=".//parametry/stity"/></li>
            <li>Typ trupu: <xsl:value-of select=".//parametry/typ"/></li>
            <li>Velikost skoku: <xsl:value-of select=".//parametry/velikost_skoku"/></li>
          </ul>
        </xsl:for-each>
      </xsl:for-each>

    </html>
  </xsl:template>
</xsl:stylesheet>

