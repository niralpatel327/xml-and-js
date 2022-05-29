<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   
    <xsl:template match="/">
        <html>
            <body>
                <h1>Catalog</h1>
                <ol>
                    <xsl:for-each select="catalog/product/catalog_item">
                        <li>
                            <article>
                                Item Number: <xsl:value-of select="item_number"/>
                                <br/>
                                Size:
                                 <br/>
                                <ul>
                                    <xsl:for-each select="size">
                                        <li>
                                            <xsl:value-of select="@description"/>
                                                
                                                <ul>
                                                    <xsl:for-each select="color_swatch"> <li> <xsl:value-of select="text()"/> </li>
                                                    </xsl:for-each>
                                                </ul>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </article>
                        </li>
                    </xsl:for-each>
                </ol>
                <h3>PRODUCT ID: <xsl:value-of select="//@product_id"/></h3>
                <p><xsl:value-of select="//product/@description"/></p>
                <table border="1"> 
                    <tr bgcolor="#DB7093"> 
                        <th>ITEM NUMBER</th> 
                        <th>PRICE</th> 
                        <th>GENDER</th> 
                        <th>SMALL</th> 
                        <th>MEDIUM</th> 
                        <th>LARGE</th> 
                        <th>EXTRA LARGE</th> 
                        </tr>
                    <xsl:for-each select="catalog/product/catalog_item">
                        <tr>
                            <td>
                                <xsl:value-of select="item_number" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                            <xsl:if test="@gender='Men'">
                                <td>M</td>
                            </xsl:if>
                            <xsl:if test="@gender='Women'">
                                <td>W</td>
                            </xsl:if>
                            <td>
                                <xsl:if test="size/@description='Small'">
                                    <table>
                                        <tr>
                                            <th>color</th>
                                            <th>image</th>
                                        </tr>
                                        <xsl:for-each select="./size/color_swatch">
                                            <xsl:if test="../@description='Small'">
                                                <tr>
                                                    <td>
                                                        <xsl:value-of select="." />
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="./@image" />
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </table>
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:if test="size/@description='Medium'">
                                    <table>
                                        <tr>
                                            <th>color</th>
                                            <th>image</th>
                                        </tr>
                                        <xsl:for-each select="./size/color_swatch">
                                            <xsl:if test="../@description='Medium'">
                                                <tr>
                                                    <td>
                                                        <xsl:value-of select="." />
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="./@image" />
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </table>
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:if test="size/@description='Large'">
                                    <table>
                                        <tr>
                                            <th>color</th>
                                            <th>image</th>
                                        </tr>
                                        <xsl:for-each select="./size/color_swatch">
                                            <xsl:if test="../@description='Large'">
                                                <tr>
                                                    <td>
                                                        <xsl:value-of select="." />
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="./@image" />
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </table>
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:if test="size/@description='Extra Large'">
                                    <table>
                                        <tr>
                                            <th>color</th>
                                            <th>image</th>
                                        </tr>
                                        <xsl:for-each select="./size/color_swatch">
                                            <xsl:if test="../@description='Extra Large'">
                                                <tr>
                                                    <td>
                                                        <xsl:value-of select="." />
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="./@image" />
                                                    </td>
                                                </tr>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </table>
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 