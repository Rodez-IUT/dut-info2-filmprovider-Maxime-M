<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/films">
        <html>
            <head>
                <title>Films</title>
            </head>
            <body>
                <table border="1">
                    <thead>
                        <tr><th>Titre</th><th>Résumé</th></tr>
                    </thead>

                    <tbody>
                        <xsl:for-each select="film">
                            <tr>
                                <td><xsl:value-of select="titre"></xsl:value-of></td>
                                <td><xsl:value-of select="resume/image"></xsl:value-of></td>
                                <td><xsl:value-of select="resume/text"></xsl:value-of></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>