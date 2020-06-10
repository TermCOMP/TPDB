<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="html"/>
  <xsl:strip-space elements="*"/>

<xsl:variable name="conditionType" select="//conditiontype/text()"/>

<xsl:template match="/problem">
<html>
  <head>
    <title>
    <xsl:if test="metainformation/originalfilename">
      <xsl:value-of select="metainformation/originalfilename"/>
    </xsl:if>
    </title>
    <style rel="stylesheet" type="text/css">
      h1 { font-family: sans-serif; }
      h3 { font-family: sans-serif; }
      .fun { color: darkblue; }
      .var { color: red; }
      .type { color: green; }
      .info_head { font-family: sans-serif; font-weight: bold; }
      .info { font-style: italic; }
    </style>
  </head>
  <body>
    <!-- <h1>
    <xsl:choose>
      <xsl:when test="@type = 'termination' and //relrules">
        Relative Termination Problem
      </xsl:when>
      <xsl:when test="@type = 'termination'">Termination Problem</xsl:when>
      <xsl:when test="@type = 'complexity'">Complexity Problem</xsl:when>
      <xsl:otherwise>Unknown Kind Problem</xsl:otherwise>
    </xsl:choose>
    </h1> -->
    <p>
    <table>
    <xsl:if test="metainformation/author">
    <tr>
      <td class="info_head">Author</td>
      <td class="info"><xsl:value-of select="metainformation/author"/></td>
    </tr>
    </xsl:if>
    <xsl:if test="metainformation/date">
    <tr>
      <td class="info_head">Date</td>
      <td class="info"><xsl:value-of select="metainformation/date"/></td>
    </tr>
    </xsl:if>
<!--    <xsl:if test="metainformation/originalfilename">
    <tr>
      <td class="info_head">File</td>
      <td class="info"><xsl:value-of select="metainformation/originalfilename"/></td>
    </tr>
    </xsl:if> -->
    <tr>
      <td class="info_head">Strategy:</td>
      <td class="info">
        <xsl:choose>
          <xsl:when test="strategy">
            <xsl:apply-templates select="strategy"/>
          </xsl:when>
          <xsl:otherwise>Unspecified</xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
    <xsl:if test="startterm">
    <tr>
      <td class="info_head">Start Terms:</td>
      <td class="info"><xsl:apply-templates select="startterm"/></td>
    </tr>
    </xsl:if>
    <xsl:if test="status">
    <tr>
      <td class="info_head">Status:</td>
      <td class="info"><xsl:apply-templates select="status"/></td>
    </tr>
    </xsl:if>
    </table>
    </p>
    <xsl:if test="metainformation/comment">
      <h2>Comments:</h2>
      <p class="info">
      <xsl:value-of select="metainformation/comment"/>
      </p>
    </xsl:if>
    <xsl:apply-templates select="trs"/>
  </body>
</html>
</xsl:template>

<xsl:template match="strategy">
  <xsl:choose>
    <xsl:when test="text() = 'FULL'">full rewriting</xsl:when>
    <xsl:when test="text() = 'INNERMOST'">innermost rewriting</xsl:when>
    <xsl:when test="text() = 'OUTERMOST'">outermost rewriting</xsl:when>
    <xsl:otherwise>unknown strategy</xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="trs">
  <xsl:if test="comment">
    <p>
    <span class="info_head">Comments: </span>
    <span class="info">
      <xsl:value-of select="comment"/>
    </span>
    </p>
  </xsl:if>
  <xsl:if test="conditiontype">
    <p>
    <span class="info_head">Condition Type: </span>
    <span class="info">
      <xsl:value-of select="conditiontype"/>
    </span>
    </p>
  </xsl:if>
  <xsl:apply-templates select="signature"/>
  <xsl:apply-templates select="higherOrderSignature"/>
  <xsl:apply-templates select="rules"/>
  <xsl:apply-templates select="rules/relrules"/>
</xsl:template>

<xsl:template match="name">
  <span class="fun"><xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="signature">
  <p>
  <span class="info_head">Signature: </span>
  {<xsl:for-each select="funcsym">
    <xsl:apply-templates select="name"/>/<xsl:value-of select="arity"/>
    <xsl:if test="position() != last()">, </xsl:if>
  </xsl:for-each>}
  </p>
  <xsl:call-template name="theory">
    <xsl:with-param name="fs" select="."/>
  </xsl:call-template>
</xsl:template>

<xsl:template name="theory">
  <xsl:param name="fs"/>
  <xsl:if test="count($fs[//theory = 'A' or //theory = 'AC']) > 0">
    <p>
    <span class="info_head">Associative Symbols: </span>
    <xsl:for-each select="funcsym[theory = 'A' or theory = 'AC']">
      <xsl:apply-templates select="name"/>
      <xsl:if test="position() != last()">, </xsl:if>
    </xsl:for-each>
    </p>
  </xsl:if>
  <xsl:if test="count($fs[//theory = 'C' or //theory = 'AC']) > 0">
    <p>
    <span class="info_head">Commutative Symbols: </span>
    <xsl:for-each select="funcsym[theory = 'C' or theory = 'AC']">
      <xsl:apply-templates select="name"/>
      <xsl:if test="position() != last()">, </xsl:if>
    </xsl:for-each>
    </p>
  </xsl:if>
  <xsl:if test="count($fs[//replacementmap]) > 0">
    <p>
    <span class="info_head">Replacement Map: </span>
    <table>
    <xsl:attribute name="align">center</xsl:attribute>
    <xsl:for-each select="funcsym[replacementmap]">
      <tr>
        <td align="right">
            <xsl:apply-templates select="name"/>
        </td>
        <td align="center">=</td>
        <td align="left">
          [<xsl:for-each select="replacementmap/entry">
            <xsl:value-of select="."/>
            <xsl:if test="position() != last()">, </xsl:if>
          </xsl:for-each>]
        </td>
      </tr>
    </xsl:for-each>
    </table>
    </p>
  </xsl:if>
</xsl:template>
  
  <xsl:template match="higherOrderSignature">
    <p>
      <span class="info_head">Signature: </span>
      <table align="center">
        <xsl:for-each select="functionSymbolTypeInfo/funcDeclaration">
          <tr>
            <td><xsl:apply-templates select="name"/><xsl:text>: </xsl:text></td>          
            <td><xsl:apply-templates select="typeDeclaration"/></td>
          </tr>
        </xsl:for-each>
        <xsl:for-each select="variableTypeInfo/varDeclaration">
          <tr>
            <td><xsl:apply-templates select="var"/><xsl:text>: </xsl:text> </td>
            <td><xsl:apply-templates select="type"/></td>
          </tr>
        </xsl:for-each>	          
      </table>      
    </p>
  </xsl:template>
  
  
  <xsl:template match="typeDeclaration">
    <xsl:text> [ </xsl:text>
    <xsl:for-each select="type">
      <xsl:if test="position()=last()"> 
        <xsl:text> ] &#8658; </xsl:text>
      </xsl:if>
      <xsl:apply-templates select="."/>
      <xsl:if test="position() &lt; last()-1"> 
        <xsl:text> , </xsl:text>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  

<xsl:template match="no">
  nonterminating
</xsl:template>

<xsl:template match="maybe">
  unknown
</xsl:template>

<xsl:template match="yes">
  terminating
  <xsl:if test="lowerbound">
    , lower bound: <xsl:value-of select="lowerbound"/>
  </xsl:if>
  <xsl:if test="upperbound">
    , upper bound: <xsl:value-of select="upperbound"/>
  </xsl:if>
</xsl:template>

<xsl:template match="constructor-based"> 
  constructor-based
</xsl:template>

<xsl:template match="full"> 
  full
</xsl:template>

<xsl:template match="automaton"> 
  <xsl:value-of select="automatonsttuff"/>
</xsl:template>

<xsl:template match="rule">
  <xsl:apply-templates select="lhs"/> &#8594;
  <xsl:apply-templates select="rhs"/>
</xsl:template>
    
<xsl:template match="rules">
  <span class="info_head">Rules: </span>
  <xsl:call-template name="rules"/>
</xsl:template>

<xsl:template match="relrules">
  <span class="info_head">Relative Rules: </span>
  <xsl:call-template name="rules"/>
</xsl:template>

<xsl:template name="rules">
  <p>
  <table>
  <xsl:attribute name="align">center</xsl:attribute>
  <xsl:for-each select="rule">
    <tr>
      <td align="right">
          <xsl:apply-templates select="lhs"/>
      </td>
      <td align="center">&#8594;</td>
      <td align="left">
          <xsl:apply-templates select="rhs"/>
      </td>
      <xsl:if test="conditions">
        <td align="center">|</td>
        <td align="left">
        <xsl:for-each select="conditions/condition">
          <xsl:apply-templates select="lhs"/>
          <xsl:choose>
            <xsl:when test="$conditionType = 'ORIENTED'"> &#8594;* </xsl:when>
            <xsl:when test="$conditionType = 'JOIN'"> &#8595; </xsl:when>
            <xsl:otherwise> = </xsl:otherwise>
          </xsl:choose>
          <xsl:apply-templates select="rhs"/>
          <xsl:if test="position() != last()">, </xsl:if>
        </xsl:for-each>
        </td>
      </xsl:if>
    </tr>
  </xsl:for-each>
  </table>
  </p>
</xsl:template>

<xsl:template match="var">
  <span class="var"><xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="funapp">
  <xsl:apply-templates select="name"/>
  <xsl:if test="count(arg) &gt; 0">
  <xsl:text>(</xsl:text>
  <xsl:for-each select="arg">
    <xsl:apply-templates/>
    <xsl:if test="position() != last()">,</xsl:if>
  </xsl:for-each>
  <xsl:text>)</xsl:text>
  </xsl:if>
</xsl:template>
  
    <xsl:template match="application">
      <xsl:text>(</xsl:text>
      <xsl:apply-templates select="*[1]"/>
      <xsl:text> </xsl:text>
      <xsl:apply-templates select="*[2]"/>
      <xsl:text>)</xsl:text>
    </xsl:template>
  
  <xsl:template match="lambda">
    <xsl:text>&#955; </xsl:text>
    <xsl:apply-templates select="*[1]"/>
    <xsl:text> :: </xsl:text>
    <xsl:apply-templates select="*[2]"/>
    <xsl:text>. </xsl:text>
    <xsl:apply-templates select="*[3]"/>
  </xsl:template>
  
  <xsl:template match="type">
    <span class="type"><xsl:apply-templates/></span>
  </xsl:template>
  
  <xsl:template match="basic">
    <xsl:value-of select="./text()"/>
  </xsl:template>

  <xsl:template match="arrow">
    <xsl:text>(</xsl:text>
    <xsl:apply-templates select="type[1]/*"/>
    <xsl:text> &#8658; </xsl:text>
    <xsl:apply-templates select="type[2]/*"/>
    <xsl:text>)</xsl:text>   
  </xsl:template>
</xsl:stylesheet>
