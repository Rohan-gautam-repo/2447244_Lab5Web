<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Bite Buzz - Data</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
                <style>
                    body {
                        background-color: #f8f9fa;
                        color: #333;
                        margin-top: 50px;
                    }
                    h2 {
                        text-align: center;
                        font-weight: bold;
                        margin-bottom: 30px;
                    }
                    .container {
                        margin-top: 50px;
                    }
                    .table thead {
                        background-color: #343a40;
                        color: white;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h2>Bite Buzz Data</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Price (USD)</th>
                                <th>Available Quantity</th>
                                <th>Category</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="products/product">
                                <tr>
                                    <td><xsl:value-of select="name"/></td>
                                    <td><xsl:value-of select="price"/></td>
                                    <td><xsl:value-of select="quantity"/></td>
                                    <td><xsl:value-of select="category"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
