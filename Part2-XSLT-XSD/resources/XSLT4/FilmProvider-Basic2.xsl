<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/films">
        <html>
            <head>
                <title>Films</title>
            </head>
            <body>
                <h1>Films</h1>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Résumé</th>
                            <th>Nom</th>
                            <th>Prenom</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="film"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <tr>
            <td><xsl:value-of select="titre"/></td>
            <td><xsl:value-of select="resume/text"/></td>

            <xsl:variable name="real">
                <xsl:value-of select="@id_realisateur"></xsl:value-of>
            </xsl:variable>

            <td><xsl:value-of select="/films/realisateur[@id_realisateur=$real]/nom"></xsl:value-of></td>
            <td><xsl:value-of select="/films/realisateur[@id_realisateur=$real]/prenom"></xsl:value-of></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>