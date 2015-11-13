<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
	xmlns:gmd="http://www.isotc211.org/2005/gmd"
	xmlns:gco="http://www.isotc211.org/2005/gco"
	xmlns:gml="http://www.opengis.net/gml http://www.isotc211.org/2005/gml/"
	xmlns:gsr="http://www.isotc211.org/2005/gsr"
	xmlns:gss="http://www.isotc211.org/2005/gss"
	xmlns:gts="http://www.isotc211.org/2005/gts"
	xmlns:sch="http://www.ascc.net/xml/schematron http://www.ascc.net/xml/schematron/schematron1-5.xsd"
	xmlns:srv="http://www.isotc211.org/2005/srv"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:geonet="http://www.fao.org/geonetwork"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
	xsi:schemaLocation='http://www.isotc211.org/2005/gmd http://www.isotc211.org/2005/gmd/gmd.xsd
		http://www.opengis.net/ows http://schemas.opengis.net/ows/1.0.0
		http://www.opengis.net/gml http://schemas.opengis.net/gml/3.1.1/base/gml.xsd 
    		http://www.opengis.net/wfs http://schemas.opengis.net/wfs/1.1.0/wfs.xsd'
>
<!--
    Author: Andrea Peri	
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->
<xsl:output omit-xml-declaration="yes" encoding="UTF-8" method="html" media-type="text/xhtml" indent="yes" doctype-system="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-public="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta>
		<xsl:attribute name="name">robots</xsl:attribute>
		<xsl:attribute name="content">noindex</xsl:attribute>
	</meta>
	  <title><xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString" /></title>
</head>
<style>
  	.break { page-break-before: always; }
</style>
<body>
	<table>
	<xsl:attribute name="border">0</xsl:attribute>
	<xsl:attribute name="width">100%</xsl:attribute>
	<xsl:attribute name="cellspacing">10</xsl:attribute>
	<xsl:attribute name="cellpadding">0</xsl:attribute>
		<tr>
			<td>
			<xsl:attribute name="colspan">3</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
				<img>
				<xsl:attribute name="src">http://www502.regione.toscana.it/wmsraster/immagini/logo_rt_1.jpg</xsl:attribute>
				<xsl:attribute name="alt">Logo Regione Toscana</xsl:attribute>
				<xsl:attribute name="title">Regione Toscana</xsl:attribute>
				</img>
			</td>
		</tr>

		<tr><td><xsl:attribute name="colspan">3</xsl:attribute></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">3</xsl:attribute>
			<xsl:attribute name="width">100%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">0</xsl:attribute>
				<xsl:attribute name="cellpadding">0</xsl:attribute>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">30%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">-1</xsl:attribute>
								Estratto scheda metadati del dato geografico:
							</font>
						</td>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">70%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">+1</xsl:attribute>
								<b><xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString" /></b>
							</font>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">3</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">+1</xsl:attribute>
					<b>Informazioni sulla scheda di metadato della risorsa geografica</b>
				</font>
			</td>
		</tr>
		
		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Identificativo scheda: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					<xsl:value-of select ="/gmd:MD_Metadata/gmd:fileIdentifier/gco:CharacterString" />
				</font>
			</td>
		</tr>

		<xsl:if test="/gmd:MD_Metadata/gmd:parentIdentifier/gco:CharacterString != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">15%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						Scheda livello superiore: 
					</font>
				</td>
				<td>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">85%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						<xsl:value-of select="/gmd:MD_Metadata/gmd:parentIdentifier/gco:CharacterString"/>
					</font>
				</td>
			</tr>
		</xsl:if>
		
		<xsl:if test="/gmd:MD_Metadata/gmd:language != ''" >
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">15%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						Linguaggio scheda: 
					</font>
				</td>
				<td>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">85%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						<xsl:choose>
							<xsl:when test="/gmd:MD_Metadata/gmd:language/gmd:LanguageCode">
								<xsl:value-of select ="/gmd:MD_Metadata/gmd:language/gmd:LanguageCode" />
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select ="/gmd:MD_Metadata/gmd:language/gco:CharacterString" />
							</xsl:otherwise>
						</xsl:choose>
					</font>
				</td>
			</tr>
		</xsl:if>
		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Set caratteri: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>

				<xsl:variable name="characterset">
					<xsl:call-template name="string-replace-all">
						<xsl:with-param name="text" select="/gmd:MD_Metadata/gmd:characterSet/gmd:MD_CharacterSetCode" />
						<xsl:with-param name="replace" select="'MD_CharacterSetCode_'" />
						<xsl:with-param name="by" select="''" />
					</xsl:call-template>
				</xsl:variable>

				<xsl:value-of select ="$characterset" />
				</font>
			</td>
		</tr>

		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Livello gerarchico della scheda: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
				<xsl:value-of select ="/gmd:MD_Metadata/gmd:hierarchyLevel/gmd:MD_ScopeCode" />
				</font>
			</td>
		</tr>

		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Contatti per la scheda: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
			</td>
		</tr>
		<xsl:if test="/gmd:MD_Metadata/gmd:contact">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">15%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
				</td>
				<td>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">85%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:for-each select="/gmd:MD_Metadata/gmd:contact">
						<xsl:text disable-output-escaping="yes"></xsl:text>
						<xsl:text disable-output-escaping="yes"></xsl:text>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:variable name="contatti">
										<xsl:call-template name="ci_responsible">
											<xsl:with-param name="posizione" select="." />
										</xsl:call-template>
									</xsl:variable>
									<xsl:copy-of select="$contatti"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</td>
			</tr>
		</xsl:if>

		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Data della scheda (aaaa-mm-gg): 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
				<xsl:value-of select ="/gmd:MD_Metadata/gmd:dateStamp/gco:Date" />
				</font>
			</td>
		</tr>

<!-- init spatialRepresentationInfo -->

		<xsl:variable name="spatialrepresentationinfo" >
			<xsl:for-each select="/gmd:MD_Metadata/gmd:spatialRepresentationInfo">
				<xsl:text disable-output-escaping="yes"></xsl:text>
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">1</xsl:attribute>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">20%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							Livello topologico:
						</td>
						<td>
						<xsl:attribute name="colspan">2</xsl:attribute>
						<xsl:attribute name="width">80%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:value-of select="./gmd:MD_VectorSpatialRepresentation/gmd:topologyLevel/gmd:MD_TopologyLevelCode" />
						</td>
					</tr>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">20%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							Geometria degli oggetti:
						</td>
						<td>
						<xsl:attribute name="colspan">2</xsl:attribute>
						<xsl:attribute name="width">80%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<ul>
								<xsl:for-each select="./gmd:MD_VectorSpatialRepresentation/gmd:geometricObjects">
									<li><xsl:value-of select="./gmd:MD_GeometricObjects/gmd:geometricObjectType/gmd:MD_GeometricObjectTypeCode"/></li>
								</xsl:for-each>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
						<xsl:attribute name="colspan">3</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
						<br/>
						</td>
					</tr>
				</table>
			</xsl:for-each>
		</xsl:variable>

		<xsl:choose>
			<xsl:when test="$spatialrepresentationinfo != ''" >

				<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
				<tr>
					<td>
					<xsl:attribute name="colspan">3</xsl:attribute>
						<font>
						<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
						<xsl:attribute name="size">+1</xsl:attribute>
							<b>Informazioni sulla rappresentazione spaziale del dato geografico</b>
						</font>
					</td>
				</tr>

				<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
				<tr>
					<td>
					<xsl:attribute name="colspan">1</xsl:attribute>
					<xsl:attribute name="width">15%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<font>
						<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
						<xsl:attribute name="size">-1</xsl:attribute>
							Rappresentazione spaziale del dato: 
						</font>
					</td>
					<td>
					<xsl:attribute name="colspan">2</xsl:attribute>
					<xsl:attribute name="width">85%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
					</td>
				</tr>
				<tr>
					<td>
					<xsl:attribute name="colspan">1</xsl:attribute>
					<xsl:attribute name="width">15%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
					</td>
					<td>
					<xsl:attribute name="colspan">2</xsl:attribute>
					<xsl:attribute name="width">85%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<xsl:copy-of select="$spatialrepresentationinfo" />
					</td>
				</tr>
			</xsl:when>
		</xsl:choose>

<!-- end spatialRepresentationInfo -->

		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">3</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">+1</xsl:attribute>
					<b>Informazioni sul sistema di riferimento della risorsa geografica</b>
				</font>
			</td>
		</tr>
		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Sistema di riferimento: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<xsl:value-of select="/gmd:MD_Metadata/gmd:referenceSystemInfo/gmd:MD_ReferenceSystem/gmd:referenceSystemIdentifier/gmd:RS_Identifier/gmd:code/gco:CharacterString"/>
				 - database version: <xsl:value-of select="/gmd:MD_Metadata/gmd:referenceSystemInfo/gmd:MD_ReferenceSystem/gmd:referenceSystemIdentifier/gmd:RS_Identifier/gmd:codeSpace/gco:CharacterString"/>
				  <xsl:value-of select="/gmd:MD_Metadata/gmd:referenceSystemInfo/gmd:MD_ReferenceSystem/gmd:referenceSystemIdentifier/gmd:RS_Identifier/gmd:version/gco:CharacterString"/>
			</td>
		</tr>

		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">3</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">+1</xsl:attribute>
					<b>Informazioni sulla risorsa geografica</b>
				</font>
			</td>
		</tr>

		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Informazioni
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">0</xsl:attribute>
				<xsl:attribute name="cellpadding">0</xsl:attribute>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:variable name="citation">
								<xsl:call-template name="ci_citation">
									<xsl:with-param name="posizione" select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation" />
								</xsl:call-template>
							</xsl:variable>
							<xsl:copy-of select="$citation"/>
						</td>
					</tr>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
							<hr/>
						</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Descrizione della risorsa: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">0</xsl:attribute>
				<xsl:attribute name="cellpadding">0</xsl:attribute>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">-1</xsl:attribute>
								<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:abstract/gco:CharacterString" />
							</font>
						</td>
					</tr>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
							<hr/>
						</td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">15%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-1</xsl:attribute>
					Contatti per la risorsa geografica: 
				</font>
			</td>
			<td>
			<xsl:attribute name="colspan">2</xsl:attribute>
			<xsl:attribute name="width">85%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">6</xsl:attribute>
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">15%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:pointOfContact">
							<xsl:text disable-output-escaping="yes"></xsl:text>
								<xsl:variable name="responsible">
									<xsl:call-template name="ci_responsible">
										<xsl:with-param name="posizione" select="." />
									</xsl:call-template>
								</xsl:variable>
								<xsl:copy-of select="$responsible"/>
							</xsl:for-each>
						</td>
					</tr>
				</table>
			</td>
		</tr>

		<xsl:variable name="descriptiveKeywords">
			<xsl:if test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:descriptiveKeywords" >
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">1</xsl:attribute>
					<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:descriptiveKeywords">
					<xsl:text disable-output-escaping="yes"></xsl:text>
						<tr>
							<td>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Keywords:
								</font>
							</td>
						</tr>
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">15%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
							</td>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">85%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<xsl:for-each select="./gmd:MD_Keywords/gmd:keyword">
								<xsl:text disable-output-escaping="yes"></xsl:text>
									<tr>
										<td>
										<xsl:attribute name="colspan">1</xsl:attribute>
										<xsl:attribute name="width">5%</xsl:attribute>
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="valign">top</xsl:attribute>
										</td>
										<td>
										<xsl:attribute name="colspan">1</xsl:attribute>
										<xsl:attribute name="width">95%</xsl:attribute>
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="valign">top</xsl:attribute>
											<font>
											<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
											<xsl:attribute name="size">-1</xsl:attribute>
												<xsl:value-of select="./gco:CharacterString"/>
											</font>
										</td>
									</tr>
								</xsl:for-each>
							</td>
						</tr>
						<tr>
							<td>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Tesauro:
								</font>
							</td>
						</tr>
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">15%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
							</td>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">85%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<tr>
									<td>
									<xsl:attribute name="colspan">1</xsl:attribute>
									<xsl:attribute name="width">5%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
									</td>
									<td>
									<xsl:attribute name="colspan">1</xsl:attribute>
									<xsl:attribute name="width">95%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
										<xsl:variable name="citation">
											<xsl:call-template name="ci_citation">
												<xsl:with-param name="posizione" select="./gmd:MD_Keywords/gmd:thesaurusName" />
											</xsl:call-template>
										</xsl:variable>
										<xsl:copy-of select="$citation"/>
									</td>
								</tr>
							</td>
						</tr>
						<tr>
							<td>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<hr/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</xsl:if>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$descriptiveKeywords != ''">
				<tr>
					<td>
					<xsl:attribute name="colspan">1</xsl:attribute>
					<xsl:attribute name="width">15%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<font>
						<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
						<xsl:attribute name="size">-1</xsl:attribute>
							Parole chiave (keywords) per la risorsa geografica: 
						</font>
					</td>
					<td>
					<xsl:attribute name="colspan">2</xsl:attribute>
					<xsl:attribute name="width">85%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<xsl:copy-of select="$descriptiveKeywords"/>
					</td>
				</tr>
			</xsl:when>
		</xsl:choose>

<!-- start vincoli -->
		<xsl:variable name="constraints">
			<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:resourceConstraints">
			<xsl:text disable-output-escaping="yes"></xsl:text>
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">1</xsl:attribute>
					<xsl:for-each select="./gmd:MD_Constraints">
					<xsl:text disable-output-escaping="yes"></xsl:text>
						<tr>
							<td>
							<xsl:attribute name="colspan">3</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Limitazioni all'uso:
								</font>
							</td>
						</tr>
						<xsl:if test="./gmd:useLimitation != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">1</xsl:attribute>
									<xsl:attribute name="cellpadding">1</xsl:attribute>
										<xsl:for-each select="./gmd:useLimitation">
										<xsl:text disable-output-escaping="yes"></xsl:text>
											<tr>
												<td>
												<xsl:attribute name="colspan">0</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<font>
													<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
													<xsl:attribute name="size">-1</xsl:attribute>
														<xsl:value-of select="./gco:CharacterString"/>
													</font>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="./gmd:MD_LegalConstraints">
					<xsl:text disable-output-escaping="yes"></xsl:text>
						<tr>
							<td>
							<xsl:attribute name="colspan">3</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Vincoli legali:
								</font>
							</td>
						</tr>
						<xsl:if test="./gmd:accessConstraints != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										Vincoli di accesso:
									</font>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">60%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">1</xsl:attribute>
									<xsl:attribute name="cellpadding">1</xsl:attribute>
										<xsl:for-each select="./gmd:accessConstraints">
										<xsl:text disable-output-escaping="yes"></xsl:text>
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">20%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<font>
													<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
													<xsl:attribute name="size">-1</xsl:attribute>
														<xsl:value-of select="./gmd:MD_RestrictionCode"/>
													</font>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>

						<xsl:if test="./gmd:useConstraints != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										Vincoli di utilizzo:
									</font>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">60%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">1</xsl:attribute>
									<xsl:attribute name="cellpadding">1</xsl:attribute>
										<xsl:for-each select="./gmd:useConstraints">
										<xsl:text disable-output-escaping="yes"></xsl:text>
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">20%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<font>
													<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
													<xsl:attribute name="size">-1</xsl:attribute>
														<xsl:value-of select="./gmd:MD_RestrictionCode"/>
													</font>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>

						<xsl:if test="./gmd:otherConstraints != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										altri tipi di vincolo:
									</font>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">60%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">1</xsl:attribute>
									<xsl:attribute name="cellpadding">1</xsl:attribute>
										<xsl:for-each select="./gmd:otherConstraints">
										<xsl:text disable-output-escaping="yes"></xsl:text>
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">20%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<font>
													<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
													<xsl:attribute name="size">-1</xsl:attribute>
														<xsl:value-of select="./gco:CharacterString"/>
													</font>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</xsl:for-each>
		</xsl:variable>
		
		<xsl:choose>
			<xsl:when test="$constraints != ''">
				<tr>
					<td>
					<xsl:attribute name="colspan">1</xsl:attribute>
					<xsl:attribute name="width">15%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<font>
						<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
						<xsl:attribute name="size">-1</xsl:attribute>
							Vincoli della risorsa geografica:
						</font>
					</td>
					<td>
					<xsl:attribute name="colspan">2</xsl:attribute>
					<xsl:attribute name="width">85%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<xsl:copy-of select="$constraints"/>
					</td>
				</tr>
			</xsl:when>
		</xsl:choose>

		<xsl:variable name="spatialrepresentationtype">
			<xsl:if test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialRepresentationType != ''">
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">1</xsl:attribute>
					<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialRepresentationType">
					<xsl:text disable-output-escaping="yes"></xsl:text>
						<tr>
							<td>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									<xsl:value-of select="./gmd:MD_SpatialRepresentationTypeCode"/>
								</font>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</xsl:if>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$spatialrepresentationtype != ''">
				<tr>
					<td>
					<xsl:attribute name="colspan">1</xsl:attribute>
					<xsl:attribute name="width">15%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<font>
						<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
						<xsl:attribute name="size">-1</xsl:attribute>
							Tipo di rappresentazione spaziale:
						</font>
					</td>
					<td>
					<xsl:attribute name="colspan">2</xsl:attribute>
					<xsl:attribute name="width">85%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<xsl:copy-of select="$spatialrepresentationtype"/>
					</td>
				</tr>
			</xsl:when>
		</xsl:choose>

		<xsl:variable name="spatialresolution">
			<xsl:if test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialResolution != ''">
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">1</xsl:attribute>
					<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialResolution">
					<xsl:text disable-output-escaping="yes"></xsl:text>
						<xsl:if test="./gmd:MD_Resolution/gmd:equivalentScale != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Scala equivalente (denominatore):
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										<xsl:value-of select="./gmd:MD_Resolution/gmd:equivalentScale/gmd:MD_RepresentativeFraction/gmd:denominator/gco:Integer"/>
									</font>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="./gmd:MD_Resolution/gmd:distance != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Distanza:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										<xsl:value-of select="./gmd:MD_Resolution/gmd:distance/gco:Distance" /> <xsl:value-of select="./gmd:MD_Resolution/gmd:distance/gco:Distance/@uom" />
									</font>
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</xsl:if>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$spatialresolution != ''">
				<tr>
					<td>
					<xsl:attribute name="colspan">1</xsl:attribute>
					<xsl:attribute name="width">15%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<font>
						<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
						<xsl:attribute name="size">-1</xsl:attribute>
							Risoluzione spaziale:
						</font>
					</td>
					<td>
					<xsl:attribute name="colspan">2</xsl:attribute>
					<xsl:attribute name="width">85%</xsl:attribute>
					<xsl:attribute name="align">left</xsl:attribute>
					<xsl:attribute name="valign">top</xsl:attribute>
						<xsl:copy-of select="$spatialresolution"/>
					</td>
				</tr>
			</xsl:when>
		</xsl:choose>

		<xsl:if test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:language != ''" >
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">15%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						Linguaggi disponibili: 
					</font>
				</td>
				<td>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">85%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:language">
						<xsl:text disable-output-escaping="yes"></xsl:text>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										<xsl:choose>
											<xsl:when test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:language/gmd:LanguageCode">
												<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:language/gmd:LanguageCode" />
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:language/gco:CharacterString" />
											</xsl:otherwise>
										</xsl:choose>
									</font>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</td>
			</tr>
		</xsl:if>

		<xsl:if test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:topicCategory != ''" >
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">15%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						Categorie tematiche: 
					</font>
				</td>
				<td>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">85%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:for-each select="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:topicCategory">
						<xsl:text disable-output-escaping="yes"></xsl:text>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">40%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="./gmd:MD_TopicCategoryCode"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent != ''" >
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">15%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						Estensione geografica: 
					</font>
				</td>
				<td>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">85%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">-1</xsl:attribute>
						<table>
						<xsl:attribute name="border">0</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
						<xsl:attribute name="cellspacing">1</xsl:attribute>
						<xsl:attribute name="cellpadding">1</xsl:attribute>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Latitudine nord:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:northBoundLatitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Longitudine est:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:eastBoundLongitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Latitudine sud:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:southBoundLatitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Longitudine ovest:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="/gmd:MD_Metadata/gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:westBoundLongitude/gco:Decimal" />
								</td>
							</tr>
						</table>
					</font>
				</td>
			</tr>
		</xsl:if>

<!-- inizio ContentInfo -->
		<xsl:if test="/gmd:MD_Metadata/gmd:contentInfo != ''" >
			<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
			<tr>
				<td>
				<xsl:attribute name="colspan">3</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">+1</xsl:attribute>
						<b>Informazioni sulla struttura dei contenuti</b>
					</font>
				</td>
			</tr>
			<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
			<xsl:for-each select="/gmd:MD_Metadata/gmd:contentInfo">
			<xsl:text disable-output-escaping="yes"></xsl:text>
				<xsl:variable name = "contentinfo">
					<xsl:if test="./gmd:MD_FeatureCatalogueDescription">
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">15%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Schema concettuale<br>(feature catalogue):</br>
								</font>
							</td>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">85%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<table>
								<xsl:attribute name="border">0</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="cellspacing">0</xsl:attribute>
								<xsl:attribute name="cellpadding">0</xsl:attribute>
									<xsl:if test="./gmd:MD_FeatureCatalogueDescription/gmd:complianceCode != ''">
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Conforme a ISO 19110:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:choose>
													<xsl:when test="./gmd:MD_FeatureCatalogueDescription/gmd:complianceCode/gco:Boolean != 'false'">
														conforme	
													</xsl:when>
													<xsl:otherwise>
														non conforme
													</xsl:otherwise>
												</xsl:choose>
											</td>
										</tr>
									</xsl:if>
									<xsl:if test="./gmd:MD_FeatureCatalogueDescription/gmd:language != ''">
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Linguaggi usati nel catalogo:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:for-each select="./gmd:MD_FeatureCatalogueDescription/gmd:language">
													<table>
													<xsl:attribute name="border">0</xsl:attribute>
													<xsl:attribute name="width">100%</xsl:attribute>
													<xsl:attribute name="cellspacing">0</xsl:attribute>
													<xsl:attribute name="cellpadding">0</xsl:attribute>
														<tr>
															<td>
															<xsl:attribute name="colspan">1</xsl:attribute>
															<xsl:attribute name="width">100%</xsl:attribute>
															<xsl:attribute name="align">left</xsl:attribute>
															<xsl:attribute name="valign">top</xsl:attribute>
																<xsl:value-of select="./gco:CharacterString"/>
															</td>
														</tr>
													</table>
												</xsl:for-each>
											</td>
										</tr>
									</xsl:if>
									<xsl:if test="./gmd:MD_FeatureCatalogueDescription/gmd:includedWithDataset != ''">
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Catalogo contenuto nel dataset:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:choose>
													<xsl:when test="./gmd:MD_FeatureCatalogueDescription/gmd:includedWithDataset/gco:Boolean = 'false'">
														non contenuto
													</xsl:when>
													<xsl:otherwise>
														contenuto
													</xsl:otherwise>
												</xsl:choose>
											</td>
										</tr>
									</xsl:if>
									<xsl:if test="./gmd:MD_FeatureCatalogueDescription/gmd:featureCatalogueCitation != ''">
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Riferimenti bibliografici del catalogo:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<table>
												<xsl:attribute name="border">0</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="cellspacing">0</xsl:attribute>
												<xsl:attribute name="cellpadding">0</xsl:attribute>
													<xsl:for-each select="./gmd:MD_FeatureCatalogueDescription/gmd:featureCatalogueCitation">
														<tr>
															<td>
															<xsl:attribute name="colspan">1</xsl:attribute>
															<xsl:attribute name="width">100%</xsl:attribute>
															<xsl:attribute name="align">left</xsl:attribute>
															<xsl:attribute name="valign">top</xsl:attribute>
																<xsl:variable name="citation">
																	<xsl:call-template name="ci_citation">
																		<xsl:with-param name="posizione" select="." />
																	</xsl:call-template>
																</xsl:variable>
																<xsl:copy-of select="$citation"/>
																<xsl:value-of select="./gco:CharacterString"/>
															</td>
														</tr>
													</xsl:for-each>
												</table>
											</td>
										</tr>
									</xsl:if>
								</table>									
							</td>
						</tr>
					</xsl:if>
					<xsl:if test="./gmd:MD_CoverageDescription">
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">15%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Contenuto di una cella (grid): 
								</font>
							</td>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">85%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
							</td>
						</tr>
					</xsl:if>
					<xsl:if test="./gmd:MD_ImageDescription">
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">15%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Idoneita' per l'impiego di una immagine: 
								</font>
							</td>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">85%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
							</td>
						</tr>
					</xsl:if>
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="$contentinfo != ''">
						<xsl:copy-of select="$contentinfo"/>
					</xsl:when>
				</xsl:choose>
			</xsl:for-each>
		</xsl:if>
<!-- fine ContentInfo -->

<!-- inizio distributionInfo -->

		<xsl:if test="/gmd:MD_Metadata/gmd:distributionInfo != ''" >
			<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
			<tr>
				<td>
				<xsl:attribute name="colspan">3</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">+1</xsl:attribute>
						<b>Informazioni sulla distribuzione della risorsa geografica</b>
					</font>
				</td>
			</tr>
			<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>

			<xsl:variable name="formato_dati" >
				<xsl:if test="/gmd:MD_Metadata/gmd:distributionInfo/gmd:MD_Distribution/gmd:distributionFormat != ''">
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:for-each select="/gmd:MD_Metadata/gmd:distributionInfo/gmd:MD_Distribution/gmd:distributionFormat">
						<xsl:text disable-output-escaping="yes"></xsl:text>
							<xsl:choose>
								<xsl:when test="./gmd:MD_Format/gmd:name/gco:CharacterString != 'unknown'">
									<tr>
										<td>
										<xsl:attribute name="colspan">1</xsl:attribute>
										<xsl:attribute name="rowspan">1</xsl:attribute>
										<xsl:attribute name="width">100%</xsl:attribute>
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="valign">top</xsl:attribute>
											<xsl:value-of select="./gmd:MD_Format/gmd:name/gco:CharacterString" /> - vers. <xsl:value-of select="./gmd:MD_Format/gmd:version/gco:CharacterString" />
										</td>
									</tr>
								</xsl:when>
							</xsl:choose>
						</xsl:for-each>
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
								<hr/>
							</td>
						</tr>
					</table>
				</xsl:if>
			</xsl:variable>

			<xsl:choose>
				<xsl:when test="$formato_dati != ''" >
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">15%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">-1</xsl:attribute>
								Formato distribuzione dati:
							</font>
						</td>
						<td>
						<xsl:attribute name="colspan">2</xsl:attribute>
						<xsl:attribute name="width">85%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:copy-of select="$formato_dati" />
						</td>
					</tr>
				</xsl:when>
			</xsl:choose>

			<xsl:variable name="distributore" >
				<xsl:for-each select="/gmd:MD_Metadata/gmd:distributionInfo/gmd:MD_Distribution/gmd:distributor">
				<xsl:text disable-output-escaping="yes"></xsl:text>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<xsl:variable name="responsible">
									<xsl:call-template name="ci_responsible">
										<xsl:with-param name="posizione" select="./gmd:MD_Distributor/gmd:distributorContact" />
									</xsl:call-template>
								</xsl:variable>
								<xsl:copy-of select="$responsible"/>
							</td>
						</tr>
					</table>
				</xsl:for-each>
			</xsl:variable>

			<xsl:choose>
				<xsl:when test="$distributore != ''" >
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">15%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">-1</xsl:attribute>
								Distributore: 
							</font>
						</td>
						<td>
						<xsl:attribute name="colspan">2</xsl:attribute>
						<xsl:attribute name="width">85%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:copy-of select="$distributore" />
						</td>
					</tr>
				</xsl:when>
			</xsl:choose>

			<xsl:variable name="transferoption">
				<xsl:if test="/gmd:MD_Metadata/gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions != ''">
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:for-each select="/gmd:MD_Metadata/gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions">
						<xsl:text disable-output-escaping="yes"></xsl:text>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="rowspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Online:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="rowspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">1</xsl:attribute>
									<xsl:attribute name="cellpadding">1</xsl:attribute>
										<xsl:for-each select="./gmd:MD_DigitalTransferOptions/gmd:onLine">
										<xsl:text disable-output-escaping="yes"></xsl:text>
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<a>
														<xsl:attribute name="href">
															<xsl:value-of select="./gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/>
														</xsl:attribute>
														<xsl:attribute name="target">_blank</xsl:attribute>
														<xsl:choose>
															<xsl:when test="./gmd:CI_OnlineResource/gmd:name != ''">
																<xsl:value-of select="./gmd:CI_OnlineResource/gmd:name/gco:CharacterString"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:copy-of select="./gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/>
															</xsl:otherwise>
														</xsl:choose>
													</a>

												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:if>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="$transferoption != ''" >
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">15%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">-1</xsl:attribute>
								Localizzazione della risorsa: 
							</font>
						</td>
						<td>
						<xsl:attribute name="colspan">2</xsl:attribute>
						<xsl:attribute name="width">85%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:copy-of select="$transferoption" />
						</td>
					</tr>
				</xsl:when>
			</xsl:choose>
			
		</xsl:if>
<!-- fine distributionInfo -->

<!--- inizio DataQualityInfo . Il Loop -->

		<xsl:for-each select="/gmd:MD_Metadata/gmd:dataQualityInfo" >
			<xsl:variable name="dataquality">
				
				<xsl:variable name="qualita_extent">
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:if test="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Livello della componente qualitativa:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:level/gmd:MD_ScopeCode" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">2</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
								<br/>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:extent/gmd:EX_Extent/gmd:geographicElement != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Tipo di estensione geografica:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:choose>
										<xsl:when test="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:extentTypeCode/gco:Boolean = 'true'" >
											L'estensione indica l'area <b>coperta</b> dai dati geografici
										</xsl:when>
										<xsl:otherwise>
											L'estensione indica l'area <b>non coperta</b> dai dati geografici
										</xsl:otherwise>
									</xsl:choose>
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Latitudine nord:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:northBoundLatitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Longitudine est:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:eastBoundLongitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Latitudine sud:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:southBoundLatitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Longitudine ovest:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select ="./gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox/gmd:westBoundLongitude/gco:Decimal" />
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">2</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
								<br/>
								</td>
							</tr>
						</xsl:if>
					</table>
				</xsl:variable>

				<xsl:choose>
					<xsl:when test="$qualita_extent != ''">
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">15%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Estensione del dato a cui la qualita' e' riferita:
								</font>
							</td>
							<td>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="width">85%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<xsl:copy-of select="$qualita_extent"/>
							</td>
						</tr>
					</xsl:when>
				</xsl:choose>

				<xsl:for-each select ="./gmd:DQ_DataQuality/gmd:report">
					<xsl:variable name="report_absolute_external_accuracy">
						<xsl:if test="./gmd:DQ_AbsoluteExternalPositionalAccuracy != ''">
							<table>
							<xsl:attribute name="border">0</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="cellspacing">1</xsl:attribute>
							<xsl:attribute name="cellpadding">1</xsl:attribute>
								<tr>
									<td>
									<xsl:attribute name="colspan">1</xsl:attribute>
									<xsl:attribute name="width">20%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
										Unita' di misura
									</td>
									<td>
									<xsl:attribute name="colspan">1</xsl:attribute>
									<xsl:attribute name="width">80%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
										<xsl:if xmlns:gml="http://www.opengis.net/gml" test="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/@gml:id != ''">
											<xsl:value-of xmlns:gml="http://www.opengis.net/gml" select="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/@gml:id"/>
										</xsl:if>
										<xsl:if xmlns:gml="http://www.opengis.net/gml" test="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/gml:identifier != ''">
											(<xsl:value-of xmlns:gml="http://www.opengis.net/gml" select="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/gml:identifier"/>) 
										</xsl:if>
										<xsl:if xmlns:gml="http://www.opengis.net/gml" test="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/gml:unitsSystem/@xlink:href != ''">
											<a>
											<xsl:attribute name="href">
												<xsl:value-of xmlns:gml="http://www.opengis.net/gml" select="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/gml:unitsSystem/@xlink:href" />
											</xsl:attribute>
											<xsl:attribute name="target">_blank</xsl:attribute>
												<xsl:value-of xmlns:gml="http://www.opengis.net/gml" select="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:valueUnit/gml:BaseUnit/gml:unitsSystem/@xlink:href" />
											</a>
										</xsl:if>
									</td>
								</tr>
								<tr>
									<td>
									<xsl:attribute name="colspan">1</xsl:attribute>
									<xsl:attribute name="width">20%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
										valore
									</td>
									<td>
									<xsl:attribute name="colspan">1</xsl:attribute>
									<xsl:attribute name="width">80%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
										<xsl:value-of select="./gmd:DQ_AbsoluteExternalPositionalAccuracy/gmd:result/gmd:DQ_QuantitativeResult/gmd:value/gco:Record/gco:Real"/>
									</td>
								</tr>
								<tr>
									<td>
									<xsl:attribute name="colspan">2</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
									<br/>
									</td>
								</tr>
							</table>
						</xsl:if>
					</xsl:variable>				

					<xsl:choose>
						<xsl:when test="$report_absolute_external_accuracy != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										Report di accuratezza assoluta esterna:
									</font>
								</td>
								<td>
								<xsl:attribute name="colspan">2</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:copy-of select="$report_absolute_external_accuracy"/>
								</td>
							</tr>
						</xsl:when>
					</xsl:choose>

					<xsl:variable name="report_domain_consistency">
						<xsl:if test="./gmd:DQ_DomainConsistency != ''">
							<table>
							<xsl:attribute name="border">0</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="cellspacing">1</xsl:attribute>
							<xsl:attribute name="cellpadding">1</xsl:attribute>
								<xsl:variable name="conformance_result_title" >
									<xsl:value-of select="./gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title/gco:CharacterString" />
								</xsl:variable>
								<xsl:variable name="conformance_result_date" >
									<xsl:value-of select="./gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:date/gco:Date" />
								</xsl:variable>
								<xsl:variable name="conformance_result_datetype" >
									<xsl:value-of select="./gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:dateType/gmd:CI_DateTypeCode" />
								</xsl:variable>
								<xsl:variable name="conformance_result_explanation" >
									<xsl:value-of select="./gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:explanation/gco:CharacterString" />
								</xsl:variable>
								<xsl:variable name="conformance_result_pass" >
									<xsl:value-of select="./gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:pass/gco:Boolean" />
								</xsl:variable>
								<xsl:variable name="conformance_result_pass_nillresult" >
									<xsl:value-of select="./gmd:DQ_DomainConsistency/gmd:result/gmd:DQ_ConformanceResult/gmd:pass/@gco:nilReason" />
								</xsl:variable>
							
								<xsl:choose>
									<xsl:when test="$conformance_result_title != ''">
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Specifica:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:value-of select="$conformance_result_title"/>
											</td>
										</tr>
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Data della specifica:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:value-of select="$conformance_result_date"/> - <xsl:value-of select="$conformance_result_datetype"/>
											</td>
										</tr>
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Spiegazione:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:value-of select="$conformance_result_explanation"/>
											</td>
										</tr>
										<tr>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">20%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												Grado risultato:
											</td>
											<td>
											<xsl:attribute name="colspan">1</xsl:attribute>
											<xsl:attribute name="width">80%</xsl:attribute>
											<xsl:attribute name="align">left</xsl:attribute>
											<xsl:attribute name="valign">top</xsl:attribute>
												<xsl:choose>
													<xsl:when test="$conformance_result_pass_nillresult != ''">
														test non effettuato
													</xsl:when>
													<xsl:otherwise>
														<xsl:choose>
															<xsl:when test="$conformance_result_pass = 'false'">
																non conforme
															</xsl:when>
															<xsl:otherwise>
																conforme
															</xsl:otherwise>
														</xsl:choose>
													</xsl:otherwise>
												</xsl:choose>
											</td>
										</tr>
									</xsl:when>
								</xsl:choose>
								<tr>
									<td>
									<xsl:attribute name="colspan">2</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="align">left</xsl:attribute>
									<xsl:attribute name="valign">top</xsl:attribute>
									<br/>
									</td>
								</tr>
							</table>
						</xsl:if>
					</xsl:variable>

					<xsl:choose>
						<xsl:when test="$report_domain_consistency != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										Report di conformita':
									</font>
								</td>
								<td>
								<xsl:attribute name="colspan">2</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:copy-of select="$report_domain_consistency"/>
								</td>
							</tr>
						</xsl:when>
					</xsl:choose>
					
				</xsl:for-each>

				<!-- inizio genealogia -->
				<xsl:variable name="report_lineage">
					<xsl:if test="./gmd:DQ_DataQuality/gmd:lineage != ''">
						<table>
						<xsl:attribute name="border">0</xsl:attribute>
						<xsl:attribute name="width">100%</xsl:attribute>
						<xsl:attribute name="cellspacing">1</xsl:attribute>
						<xsl:attribute name="cellpadding">1</xsl:attribute>
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
										Spiegazione generale della produzione del dato: 
									</font>
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<font>
									<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
									<xsl:attribute name="size">-1</xsl:attribute>
									<xsl:value-of select="./gmd:DQ_DataQuality/gmd:lineage/gmd:LI_Lineage/gmd:statement/gco:CharacterString" />
									</font>
								</td>
							</tr>
							<tr>
								<td>
								<xsl:attribute name="colspan">2</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<br/>
								</td>
							</tr>
							<xsl:variable name="process_step">
								<xsl:if test="./gmd:DQ_DataQuality/gmd:lineage/gmd:LI_Lineage/gmd:processStep != ''">
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">1</xsl:attribute>
									<xsl:attribute name="cellpadding">1</xsl:attribute>
										<xsl:for-each select="./gmd:DQ_DataQuality/gmd:lineage/gmd:LI_Lineage/gmd:processStep">
											<tr>
												<td>
												<xsl:attribute name="colspan">3</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<b>Step di processo</b>
												</td>
											</tr>
											<xsl:if test="./gmd:LI_ProcessStep/gmd:description">
												<tr>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">5%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">15%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														Descrizione:
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">80%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														<xsl:value-of select="./gmd:LI_ProcessStep/gmd:description/gco:CharacterString"/>
													</td>
												</tr>
											</xsl:if>
											<xsl:if test="./gmd:LI_ProcessStep/gmd:rationale">
												<tr>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">5%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">15%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														Esigenza o scopo:
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">80%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														<xsl:value-of select="./gmd:LI_ProcessStep/gmd:rationale/gco:CharacterString"/>
													</td>
												</tr>
											</xsl:if>
											<xsl:if test="./gmd:LI_ProcessStep/gmd:dateTime != ''">
												<tr>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">5%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">15%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														Durata temporale:
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">80%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														<xsl:value-of select="./gmd:LI_ProcessStep/gmd:dateTime"/>
													</td>
												</tr>
											</xsl:if>
											<xsl:if test="./gmd:LI_ProcessStep/gmd:processor">
												<tr>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">5%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">15%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														Gruppi di lavoro coinvolti:
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">80%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														<xsl:variable name="responsible">
															<xsl:call-template name="responsible">
																<xsl:with-param name="posizione" select="./gmd:LI_ProcessStep/gmd:processor" />
															</xsl:call-template>
														</xsl:variable>
														<xsl:copy-of select="$responsible"/>
													</td>
												</tr>
											</xsl:if>
											<xsl:for-each select="./gmd:LI_ProcessStep/gmd:source">
												<tr>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">5%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">15%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														Fonti dati impiegate:
													</td>
													<td>
													<xsl:attribute name="colspan">1</xsl:attribute>
													<xsl:attribute name="width">80%</xsl:attribute>
													<xsl:attribute name="align">left</xsl:attribute>
													<xsl:attribute name="valign">top</xsl:attribute>
														<table>
														<xsl:attribute name="border">0</xsl:attribute>
														<xsl:attribute name="width">100%</xsl:attribute>
														<xsl:attribute name="cellspacing">1</xsl:attribute>
														<xsl:attribute name="cellpadding">1</xsl:attribute>
															<xsl:if test="./gmd:LI_Source/gmd:description != ''">
																<tr>
																	<td>
																	<xsl:attribute name="colspan">1</xsl:attribute>
																	<xsl:attribute name="width">20%</xsl:attribute>
																	<xsl:attribute name="align">left</xsl:attribute>
																	<xsl:attribute name="valign">top</xsl:attribute>
																		Descrizione:
																	</td>
																	<td>
																	<xsl:attribute name="colspan">1</xsl:attribute>
																	<xsl:attribute name="width">80%</xsl:attribute>
																	<xsl:attribute name="align">left</xsl:attribute>
																	<xsl:attribute name="valign">top</xsl:attribute>
																		<xsl:value-of select="./gmd:LI_Source/gmd:description/gco:CharacterString"/>
																	</td>
																</tr>
															</xsl:if>
															<xsl:if test="./gmd:LI_Source/gmd:scaleDenominator != ''">
																<tr>
																	<td>
																	<xsl:attribute name="colspan">1</xsl:attribute>
																	<xsl:attribute name="width">20%</xsl:attribute>
																	<xsl:attribute name="align">left</xsl:attribute>
																	<xsl:attribute name="valign">top</xsl:attribute>
																		Scala (denominatore):
																	</td>
																	<td>
																	<xsl:attribute name="colspan">1</xsl:attribute>
																	<xsl:attribute name="width">80%</xsl:attribute>
																	<xsl:attribute name="align">left</xsl:attribute>
																	<xsl:attribute name="valign">top</xsl:attribute>
																		<xsl:value-of select="./gmd:LI_Source/gmd:scaleDenominator/gmd:MD_RepresentativeFraction/gmd:denominator/gco:Integer"/>
																	</td>
																</tr>
															</xsl:if>
															<xsl:if test="./gmd:LI_Source/gmd:sourceCitation != ''">
																<tr>
																	<td>
																	<xsl:attribute name="colspan">1</xsl:attribute>
																	<xsl:attribute name="width">20%</xsl:attribute>
																	<xsl:attribute name="align">left</xsl:attribute>
																	<xsl:attribute name="valign">top</xsl:attribute>
																		Riferimenti per la sorgente:
																	</td>
																	<td>
																	<xsl:attribute name="colspan">1</xsl:attribute>
																	<xsl:attribute name="width">80%</xsl:attribute>
																	<xsl:attribute name="align">left</xsl:attribute>
																	<xsl:attribute name="valign">top</xsl:attribute>
																		<xsl:variable name="citation">
																			<xsl:call-template name="ci_citation">
																				<xsl:with-param name="posizione" select="./gmd:LI_Source/gmd:sourceCitation" />
																			</xsl:call-template>
																		</xsl:variable>
																		<xsl:copy-of select="$citation"/>
																	</td>
																</tr>
															</xsl:if>
														</table>
													</td>
												</tr>
												<tr>
													<td>
													<xsl:attribute name="colspan">3</xsl:attribute>
													<xsl:attribute name="width">100%</xsl:attribute>
														<hr/>
													</td>
												</tr>
											</xsl:for-each>
										</xsl:for-each>
									</table>
								</xsl:if>
							</xsl:variable>
							<xsl:choose>
								<xsl:when test="$process_step != ''">
									<tr>
										<td>
										<xsl:attribute name="colspan">2</xsl:attribute>
										<xsl:attribute name="width">100%</xsl:attribute>
										<xsl:attribute name="align">left</xsl:attribute>
										<xsl:attribute name="valign">top</xsl:attribute>
											<xsl:copy-of select="$process_step"/>
										</td>
									</tr>
								</xsl:when>
							</xsl:choose>
						</table>
					</xsl:if>
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="$report_lineage != ''">
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">20%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<font>
								<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
								<xsl:attribute name="size">-1</xsl:attribute>
									Genealogia:
								</font>
							</td>
							<td>
							<xsl:attribute name="colspan">2</xsl:attribute>
							<xsl:attribute name="width">80%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<xsl:copy-of select="$report_lineage"/>
							</td>
						</tr>
					</xsl:when>
				</xsl:choose>

			<!-- fine genealogia -->				

			</xsl:variable>
			
			<xsl:choose>
				<xsl:when test="$dataquality != ''">
					<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
					<tr>
						<td>
						<xsl:attribute name="colspan">3</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">+1</xsl:attribute>
								<b>Informazioni sulla qualita' della risorsa geografica</b>
							</font>
						</td>
					</tr>
					<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
					<xsl:copy-of select="$dataquality"/>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>

<!--- fine DataQualityInfo . Il Loop -->

<!-- inizio portrayal -->
		<xsl:if test="/gmd:MD_Metadata/gmd:portrayalCatalogueInfo != ''">
			<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>
			<tr>
				<td>
				<xsl:attribute name="colspan">3</xsl:attribute>
					<font>
					<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
					<xsl:attribute name="size">+1</xsl:attribute>
						<b>Informazioni sulla rappresentazione della risorsa geografica</b>
					</font>
				</td>
			</tr>
			<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>

			<xsl:variable name="portrayal">
				<table>
				<xsl:attribute name="border">0</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="cellspacing">1</xsl:attribute>
				<xsl:attribute name="cellpadding">1</xsl:attribute>
					<xsl:for-each select="/gmd:MD_Metadata/gmd:portrayalCatalogueInfo" >
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<xsl:call-template name="ci_citation">
									<xsl:with-param name="posizione" select="./gmd:MD_PortrayalCatalogueReference/gmd:portrayalCatalogueCitation" />
								</xsl:call-template>
							</td>
						</tr>
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">100%</xsl:attribute>
								<hr/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="$portrayal != ''">
					<tr>
						<td>
						<xsl:attribute name="colspan">1</xsl:attribute>
						<xsl:attribute name="width">20%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<font>
							<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
							<xsl:attribute name="size">-1</xsl:attribute>
								Catalogo di regole per la rappresentazione della risorsa (portrayal)
							</font>
						</td>
						<td>
						<xsl:attribute name="colspan">2</xsl:attribute>
						<xsl:attribute name="width">80%</xsl:attribute>
						<xsl:attribute name="align">left</xsl:attribute>
						<xsl:attribute name="valign">top</xsl:attribute>
							<xsl:copy-of select="$portrayal"/>
						</td>
					</tr>
				</xsl:when>
			</xsl:choose>
		</xsl:if>
<!-- fine portrayal -->

	
		<tr><td><xsl:attribute name="colspan">3</xsl:attribute><hr/></td></tr>

		<tr>
			<td>
			<xsl:attribute name="colspan">3</xsl:attribute>
			<xsl:attribute name="align">right</xsl:attribute>

				<font>
				<xsl:attribute name="face">Verdana,Calibri,Arial</xsl:attribute>
				<xsl:attribute name="size">-2</xsl:attribute>
					Regione Toscana - sistema informativo territoriale ed ambientale
				</font>

			</td>
		</tr>

	</table>

</body>
</html>
</xsl:template>

<xsl:template name="string-replace-all">
  <xsl:param name="text" />
  <xsl:param name="replace" />
  <xsl:param name="by" />
  <xsl:choose>
    <xsl:when test="contains($text, $replace)">
      <xsl:value-of select="substring-before($text,$replace)" />
      <xsl:value-of select="$by" />
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="substring-after($text,$replace)" />
        <xsl:with-param name="replace" select="$replace" />
        <xsl:with-param name="by" select="$by" />
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$text" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="ci_citation">
	<xsl:param name="posizione" />
	<table>
	<xsl:attribute name="border">0</xsl:attribute>
	<xsl:attribute name="width">100%</xsl:attribute>
	<xsl:attribute name="cellspacing">0</xsl:attribute>
	<xsl:attribute name="cellpadding">0</xsl:attribute>
		<tr>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">20%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				Titolo:
			</td>
			<td>
			<xsl:attribute name="colspan">1</xsl:attribute>
			<xsl:attribute name="width">80%</xsl:attribute>
			<xsl:attribute name="align">left</xsl:attribute>
			<xsl:attribute name="valign">top</xsl:attribute>
				<xsl:value-of select="$posizione/gmd:CI_Citation/gmd:title/gco:CharacterString"/>
			</td>
		</tr>			
		<xsl:if test="$posizione/gmd:CI_Citation/gmd:alternateTitle">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Titoli alternativi:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
					<xsl:for-each select="$posizione/gmd:CI_Citation/gmd:alternateTitle">
					<xsl:text disable-output-escaping="yes" />
						<tr>
							<td>
							<xsl:attribute name="colspan">1</xsl:attribute>
							<xsl:attribute name="width">80%</xsl:attribute>
							<xsl:attribute name="align">left</xsl:attribute>
							<xsl:attribute name="valign">top</xsl:attribute>
								<xsl:value-of select="./gco:CharacterString"/>
							</td>
						</tr>
					</xsl:for-each>
					</table>
				</td>
			</tr>
		</xsl:if>		
		<xsl:for-each select="$posizione/gmd:CI_Citation/gmd:date">
		<xsl:text disable-output-escaping="yes" />
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Data:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:value-of select="$posizione/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:date/gco:Date"/>
					(<xsl:value-of select="$posizione/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:dateType/gmd:CI_DateTypeCode" />)
				</td>
			</tr>
		</xsl:for-each>
		<xsl:if test="$posizione/gmd:CI_Citation/gmd:edition">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Edizione:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:value-of select="$posizione/gmd:CI_Citation/gmd:edition/gco:CharacterString"/>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_Citation/gmd:identifier != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Identificativo univoco:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">0</xsl:attribute>
					<xsl:attribute name="cellpadding">0</xsl:attribute>
						<xsl:for-each select="$posizione/gmd:CI_Citation/gmd:identifier">
						<xsl:text disable-output-escaping="yes" />
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:if test="./gmd:MD_Identifier != ''">
										<xsl:value-of select="./gmd:MD_Identifier/gmd:code/gco:CharacterString"/>
									</xsl:if>
									<xsl:if test="./gmd:RS_Identifier != ''">
										<xsl:value-of select="./gmd:RS_Identifier/gmd:code/gco:CharacterString"/>
									</xsl:if>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_Citation/gmd:citedResponsibleParty != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Gruppi responsabili:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:for-each select="$posizione/gmd:CI_Citation/gmd:citedResponsibleParty">
					<xsl:text disable-output-escaping="yes" />
						<xsl:variable name="responsible">
							<xsl:call-template name="ci_responsible">
								<xsl:with-param name="posizione" select="." />
							</xsl:call-template>
						</xsl:variable>
						<xsl:copy-of select="$responsible"/>
					</xsl:for-each>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_Citation/gmd:presentationForm != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Modo di presentazione della risorsa:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">0</xsl:attribute>
					<xsl:attribute name="cellpadding">0</xsl:attribute>
						<xsl:for-each select="$posizione/gmd:CI_Citation/gmd:presentationForm">
						<xsl:text disable-output-escaping="yes" />
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">100%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="./gmd:CI_PresentationFormCode"/>
								</td>
							</tr>
						</xsl:for-each>
					</table>
				</td>
			</tr>
		</xsl:if>
	</table>
</xsl:template>

<xsl:template name="ci_responsible">
	<xsl:param name="posizione" />
	<table>
	<xsl:attribute name="border">0</xsl:attribute>
	<xsl:attribute name="width">100%</xsl:attribute>
	<xsl:attribute name="cellspacing">0</xsl:attribute>
	<xsl:attribute name="cellpadding">0</xsl:attribute>
		<xsl:if test="$posizione/gmd:CI_ResponsibleParty/gmd:individualName != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Nome:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:value-of select="$posizione/gmd:CI_ResponsibleParty/gmd:individualName/gco:CharacterString"/>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_ResponsibleParty/gmd:organisationName != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Organizzazione:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:value-of select="$posizione/gmd:CI_ResponsibleParty/gmd:organisationName/gco:CharacterString"/>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_ResponsibleParty/gmd:positionName != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Ruolo:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:value-of select="$posizione/gmd:CI_ResponsibleParty/gmd:positionName/gco:CharacterString"/>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_ResponsibleParty/gmd:contactInfo != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Contatto:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:variable name="contactinfo">
						<xsl:call-template name="contactinfo">
							<xsl:with-param name="posizione" select="$posizione/gmd:CI_ResponsibleParty/gmd:contactInfo" />
						</xsl:call-template>
					</xsl:variable>
					<xsl:copy-of select="$contactinfo"/>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_ResponsibleParty/gmd:role != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Ruolo svolto:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:value-of select="$posizione/gmd:CI_ResponsibleParty/gmd:role/gmd:CI_RoleCode"/>
				</td>
			</tr>
		</xsl:if>
		<tr><td><xsl:attribute name="colspan">2</xsl:attribute><xsl:attribute name="width">100%</xsl:attribute><hr/></td></tr>
	</table>
</xsl:template>

<xsl:template name="contactinfo">
	<xsl:param name="posizione" />
	<table>
	<xsl:attribute name="border">0</xsl:attribute>
	<xsl:attribute name="width">100%</xsl:attribute>
	<xsl:attribute name="cellspacing">0</xsl:attribute>
	<xsl:attribute name="cellpadding">0</xsl:attribute>
		<xsl:if test="$posizione/gmd:CI_Contact/gmd:phone != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Telefono:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">0</xsl:attribute>
					<xsl:attribute name="cellpadding">0</xsl:attribute>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:phone/gmd:CI_Telephone/gmd:voice != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Voce:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">0</xsl:attribute>
									<xsl:attribute name="cellpadding">0</xsl:attribute>
										<xsl:for-each select="$posizione/gmd:CI_Contact/gmd:phone/gmd:CI_Telephone/gmd:voice">
										<xsl:text disable-output-escaping="yes" />
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<xsl:value-of select="."/>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:phone/gmd:CI_Telephone/gmd:facsimile != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Fax:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">0</xsl:attribute>
									<xsl:attribute name="cellpadding">0</xsl:attribute>
										<xsl:for-each select="$posizione/gmd:CI_Contact/gmd:phone/gmd:CI_Telephone/gmd:facsimile">
										<xsl:text disable-output-escaping="yes" />
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<xsl:value-of select="."/>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>
					</table>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_Contact/gmd:address != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Indirizzo:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<table>
					<xsl:attribute name="border">0</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="cellspacing">1</xsl:attribute>
					<xsl:attribute name="cellpadding">1</xsl:attribute>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:deliveryPoint != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Indirizzo (delivery):
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">0</xsl:attribute>
									<xsl:attribute name="cellpadding">0</xsl:attribute>
										<xsl:for-each select="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:deliveryPoint">
										<xsl:text disable-output-escaping="yes" />
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<xsl:value-of select="./gco:CharacterString"/>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:city != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Citta':
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:city/gco:CharacterString"/>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:administrativeArea != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Area amministrativa:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:administrativeArea/gco:CharacterString"/>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:postalCode != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Codice postale:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:postalCode/gco:CharacterString"/>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:country != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									Comune:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:country/gco:CharacterString"/>
								</td>
							</tr>
						</xsl:if>
						<xsl:if test="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress != ''">
							<tr>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">20%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									posta elettronica:
								</td>
								<td>
								<xsl:attribute name="colspan">1</xsl:attribute>
								<xsl:attribute name="width">80%</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="valign">top</xsl:attribute>
									<table>
									<xsl:attribute name="border">0</xsl:attribute>
									<xsl:attribute name="width">100%</xsl:attribute>
									<xsl:attribute name="cellspacing">0</xsl:attribute>
									<xsl:attribute name="cellpadding">0</xsl:attribute>
										<xsl:for-each select="$posizione/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress">
										<xsl:text disable-output-escaping="yes" />
											<tr>
												<td>
												<xsl:attribute name="colspan">1</xsl:attribute>
												<xsl:attribute name="width">100%</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
												<xsl:attribute name="valign">top</xsl:attribute>
													<xsl:value-of select="./gco:CharacterString"/>
												</td>
											</tr>
										</xsl:for-each>
									</table>
								</td>
							</tr>
						</xsl:if>
					</table>
				</td>
			</tr>
		</xsl:if>
		<xsl:if test="$posizione/gmd:CI_Contact/gmd:onlineResource != ''">
			<tr>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">20%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					Risorsa online:
				</td>
				<td>
				<xsl:attribute name="colspan">1</xsl:attribute>
				<xsl:attribute name="width">80%</xsl:attribute>
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="valign">top</xsl:attribute>
					<xsl:variable name="linkage">
						<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:onlineResource/gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/>
					</xsl:variable>
					<xsl:variable name="protocol">
						<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:onlineResource/gmd:CI_OnlineResource/gmd:protocol/gco:CharacterString"/>
					</xsl:variable>
					<xsl:variable name="applicationProfile">
						<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:onlineResource/gmd:CI_OnlineResource/gmd:applicationProfile/gco:CharacterString"/>
					</xsl:variable>
					<xsl:variable name="name">
						<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:onlineResource/gmd:CI_OnlineResource/gmd:name/gco:CharacterString"/>
					</xsl:variable>
					<xsl:variable name="description">
						<xsl:value-of select="$posizione/gmd:CI_Contact/gmd:onlineResource/gmd:CI_OnlineResource/gmd:description/gco:CharacterString"/>
					</xsl:variable>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="$linkage"/>
						</xsl:attribute>
						<xsl:attribute name="target">_blank</xsl:attribute>
						<xsl:choose>
							<xsl:when test="$name != ''">
								<xsl:value-of select="$name"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:copy-of select="$linkage"/>
							</xsl:otherwise>
						</xsl:choose>
					</a>
				</td>
			</tr>
		</xsl:if>
	</table>
</xsl:template>
	
</xsl:stylesheet>

