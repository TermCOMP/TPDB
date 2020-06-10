<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">    
<xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:apply-templates select="problem"/>
    </xsl:template>
    
    <xsl:template match="problem">
        <xsl:apply-templates select="trs/signature"/>
        <xsl:apply-templates select="trs/higherOrderSignature"/>
        <xsl:apply-templates select="strategy"/>
        <xsl:apply-templates select="trs/rules"/>
    </xsl:template>
    
    <xsl:template match="rules">
        <xsl:text>
(RULES 
        </xsl:text>
        <xsl:apply-templates select="rule"/>
        <xsl:apply-templates select="//relrules/rule" mode="relative"/>
)
    </xsl:template>
    
    <xsl:template match="higherOrderSignature">
            <xsl:text>
(HO-SIGNATURE 

        </xsl:text>
        <xsl:for-each select="variableTypeInfo/varDeclaration">
            <xsl:apply-templates select="var"/>
            <xsl:text>: </xsl:text>
            <xsl:apply-templates select="type"/>
            <xsl:text> 
        </xsl:text>
        </xsl:for-each>	  
        <xsl:text>
        </xsl:text>
        <xsl:for-each select="functionSymbolTypeInfo/funcDeclaration">
	    <xsl:apply-templates select="name"/>
	    <xsl:text>:</xsl:text>
	    <xsl:apply-templates select="typeDeclaration"/>
	      <xsl:text> 
	</xsl:text>
	</xsl:for-each>
)
    </xsl:template>


    <xsl:template match="typeDeclaration">
      <xsl:text> [ </xsl:text>
        <xsl:for-each select="type">
	  <xsl:if test="position()=last()"> 
	    <xsl:text> ] --> </xsl:text>
          </xsl:if>
	  <xsl:apply-templates select="."/>
	  <xsl:if test="position() &lt; last()-1"> 
	    <xsl:text> , </xsl:text>
          </xsl:if>
	</xsl:for-each>
    </xsl:template>


    <xsl:template match="type">
      <xsl:choose>
	<xsl:when test="basic">
	  <xsl:value-of select="."/>
	</xsl:when>    
	<xsl:when test="arrow">
	  <xsl:for-each select="arrow/type">
	    <xsl:if test="position()!=last()"> 
	      <xsl:if test="./arrow"> 
		<xsl:text> (</xsl:text>
              </xsl:if>
            </xsl:if>
	    <xsl:apply-templates select="."/>
	    <xsl:if test="position()!=last()"> 
	      <xsl:if test="./arrow"> 
		<xsl:text>)</xsl:text>
              </xsl:if>
            </xsl:if>
	    <xsl:if test="position()!=last()"> 
	      <xsl:text> -> </xsl:text>
            </xsl:if>
	  </xsl:for-each>
	</xsl:when>    
      </xsl:choose>    
    </xsl:template>

    <xsl:template match="signature">
        <xsl:call-template name="varlist"/>
        <xsl:if test="//theory">
            <xsl:text>
(THEORY </xsl:text>
            <xsl:apply-templates select="//theory[not(.=preceding::theory)]"/>
            <xsl:text>
)</xsl:text>
        </xsl:if>    
    </xsl:template>
    
    <xsl:template match="strategy">
        <xsl:choose>
            <xsl:when test="//replacementmap">
                <xsl:text>
(STRATEGY CONTEXTSENSITIVE</xsl:text>
                <xsl:apply-templates select="//replacementmap"/><xsl:text>
)</xsl:text>
            </xsl:when>
            <xsl:when test=".!='FULL'">
                <xsl:text>
(STRATEGY </xsl:text><xsl:value-of select="."/>)<xsl:text/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="rule">
        <xsl:apply-templates select="lhs"/><xsl:text> -> </xsl:text><xsl:apply-templates select="rhs"/>
        <xsl:if test="conditions"><xsl:text> | </xsl:text><xsl:apply-templates select="conditions"/></xsl:if>
        <xsl:text>
        </xsl:text>
    </xsl:template>
    
    <xsl:template match="rule" mode="relative">
        <xsl:apply-templates select="lhs"/><xsl:text> ->= </xsl:text><xsl:apply-templates select="rhs"/>
        <xsl:if test="conditions"><xsl:text> | </xsl:text><xsl:apply-templates select="conditions"/></xsl:if>
        <xsl:if test="position()!=last()">
            <xsl:text>
        </xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="conditions">
        <xsl:for-each select="condition">
        <xsl:apply-templates select="lhs"/>
            <xsl:choose>
                <xsl:when test="/problem/trs/conditiontype = 'JOIN'">
                    <xsl:text> ->&lt;- </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text> -> </xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="rhs"/>
            <xsl:if test="position() != last()"><xsl:text>, </xsl:text></xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="lambda">
      <xsl:for-each select="var|type|funapp|lambda|application">
        <xsl:if test="position() = 1">
	  <xsl:text>\</xsl:text>
	  <xsl:apply-templates select="."/>
	</xsl:if>
        <xsl:if test="position() = 2">
	  <xsl:text>:</xsl:text>
	  <xsl:apply-templates select="."/>
	</xsl:if>
        <xsl:if test="position() = 3">
	  <xsl:text>.</xsl:text>
	  <xsl:apply-templates select="."/>
	</xsl:if>
      </xsl:for-each>
    </xsl:template>
        
    <xsl:template match="application">
      <xsl:text>(@ </xsl:text>
      <xsl:for-each select="var|funapp|lambda|application">
	<xsl:apply-templates select="."/>
        <xsl:if test="position() = 1">
	  <xsl:text> </xsl:text>
	</xsl:if>
      </xsl:for-each>
      <xsl:text> )</xsl:text>
    </xsl:template>
        
    <xsl:template match="funapp">
        <xsl:value-of select="name"/>
        <xsl:if test="arg">
            <xsl:text>(</xsl:text>
            <xsl:for-each select="arg">
                <xsl:apply-templates select="."/>
                <xsl:if test="position() != last()">
                    <xsl:text>,</xsl:text>
                </xsl:if>
            </xsl:for-each>
            <xsl:text>)</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="arg">
        <xsl:apply-templates select="funapp"/>
        <xsl:apply-templates select="var"/>
        <xsl:apply-templates select="lambda"/>
        <xsl:apply-templates select="application"/>
    </xsl:template>
    
    <xsl:template match="var">
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="lhs|rhs">
        <xsl:apply-templates select="funapp"/>
        <xsl:apply-templates select="var"/>
        <xsl:apply-templates select="lambda"/>
        <xsl:apply-templates select="application"/>
    </xsl:template>
    
    <xsl:template name="varlist">
        <xsl:text>(VAR </xsl:text>
        <xsl:for-each select="//var[not(.=preceding::var)]">
            <xsl:sort select="."/>
            <xsl:value-of select="."/><xsl:if test="position()!=last()"><xsl:text> </xsl:text></xsl:if>
        </xsl:for-each>
        <xsl:text> )</xsl:text>
    </xsl:template>
    
    <xsl:template match="theory">
        (<xsl:value-of select="."/><xsl:text> </xsl:text>
        <xsl:for-each select="//theory[.=current()]">
            <xsl:sort select="parent::funcsym/name"/>
            <xsl:value-of select="parent::funcsym/name"/><xsl:if test="position()!=last()"><xsl:text> </xsl:text></xsl:if>
        </xsl:for-each>)<xsl:text> </xsl:text>
    </xsl:template>
    
    <xsl:template match="replacementmap">
        (<xsl:value-of select="parent::funcsym/name"/><xsl:text> </xsl:text><xsl:apply-templates select="entry"/>)<xsl:text> </xsl:text>
    </xsl:template>
    
    <xsl:template match="entry">
        <xsl:value-of select="."/>
        <xsl:if test="position()!=last()"><xsl:text> </xsl:text></xsl:if>
    </xsl:template>
</xsl:stylesheet>
