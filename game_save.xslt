<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Monsters by saved games</h2>
        <xsl:for-each select="game_root/save_game_master/save_game">
          <table style= "margin-left:0px;border-collapse: collapse">
            <tr bgcolor="#00af65">
              <th style="width:128px; border:1px solid black">ID</th>
              <th style="width:128px; border:1px solid black">Name</th>
              <th style="width:128px; border:1px solid black">Screenshot name</th>
            </tr>
            <tr style= "border:1px solid black">
              <td style="border:1px solid black">
                <xsl:value-of select="@id" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="@name" />
              </td>
              <td style="border:1px solid black">
                <xsl:value-of select="@save_screenshot" />
              </td>
            </tr>
          </table>
          <br />
          <table style="margin-left:131px; border-collapse: collapse">
            <tr bgcolor="#00ff93">
              <th style="width:128px; border:1px solid black">ID</th>
              <th style="width:128px; border:1px solid black">Monster</th>
            </tr>
            <xsl:for-each select="enemies/enemy ">
              <tr>
                <td style="border:1px solid black">
                  <xsl:value-of select="@monster_id" />
                </td>
                <td style="border:1px solid black">
                  <xsl:value-of select="@monster" />
                </td>
              </tr>
            </xsl:for-each>
          </table>
          <br />
          <hr style="width:384px; margin-left:0px"></hr>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>