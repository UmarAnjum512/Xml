<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <!-- template for root element -->
    <xsl:template match="/books">
        <html>
            <body>
                <h2>book list</h2>
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <th>class</th>
                        <th>Age</th>
                    </tr>
                    <!-- loop each book  element -->
                    <xsl:for-each select="book">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="class"/>
                            </td>
                            <td>
                                <xsl:value-of select="age"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>