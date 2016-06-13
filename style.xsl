<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
		<title>Welcome !</title>
  			<link rel="stylesheet" href="css/style1.css"/>
  			<link rel="stylesheet" href="css/bootstrap.css"/>

	</head>
<body class="container-fluid">

<header class="row fond_titre_cv text-center"><h1 id="titre_cv" class="col-md-12 col-sm-12 col-lg-12 text-center">CV - Web Développeur</h1>
<p class="accroche text-center">Après avoir étudier dans la communication graphique et le développement informatique. Je suis aujourd'hui en capacité de participer activement dans ses domaines de la communication. Ma motivation et ma persévérance me sont des atouts au quotidien pour me perfectionner et satisfaire la demande des clients.</p>
</header>

<section class="row">
		<article class="col-md-4 col-sm-6 col-lg-4 categories">
			<h1 class="text-center titre_h1">INFOS</h1>
			<h4 class="text-center titre_h4">Hello world</h4>
			<div class="container_article text-center">
				<h2 id="prenom"><xsl:value-of select="page/section/article/identite/prenom"/></h2>
				<h2 id="nom"><xsl:value-of select="page/section/article/identite/nom"/></h2>
				<h2 id="naissance"><xsl:value-of select="page/section/article/identite/naissance"/></h2>
				<h2 id="site"><xsl:value-of select="page/section/article/identite/site"/></h2>
			</div>
			</article>

		<article class="col-md-4 col-sm-6 col-lg-4 categories">
				<h1 class="text-center titre_h1">COMPÉTENCES</h1>
				<h4 class="text-center titre_h4">Gestion - Communication - Créativité</h4>
			<div class="container_article scroolbar text-center ">
				<xsl:for-each select="page/section/article/competence/random">
				<p class="competences"><xsl:value-of select="titre"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article class="col-md-4 col-sm-6 col-lg-4 categories">		<h1 class="text-center titre_h1">EXPÉRIENCES</h1>
			<h4 class="text-center titre_h4">Stages - Emplois</h4>
			<div class="container_article scroolbar text-center">
				<xsl:for-each select="page/section/article/experience">
				<p id="intitule"><xsl:value-of select="intitule"/></p>
				<p id="datedebut"><xsl:value-of select="datedebut"/></p>
				<p id="datefin"><xsl:value-of select="datefin"/></p>
				<p id="lieux"><xsl:value-of select="lieux"/></p>
				<p id="descriptif"><xsl:value-of select="descriptif"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article class="col-md-4 col-sm-6 col-lg-4 categories">
			<h1 class="text-center titre_h1">FORMATIONS</h1>
			<h4 class="text-center titre_h4">Mes diplômes</h4>
			<div class="container_article scroolbar">
				<xsl:for-each select="page/section/article/formation">
				<p id="formation"><xsl:value-of select="intitule"/></p>
				<p id="date"><xsl:value-of select="date"/></p>
				<p id="ecole"><xsl:value-of select="ecole"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article class="col-md-4 col-sm-6 col-lg-4 categories">
			<h1 class="text-center titre_h1">TECHNOS</h1>
			<h4 class="text-center titre_h4">Logiciels - Technos</h4>
			<div class="container_article scroolbar">
				<xsl:for-each select="page/section/article/custom/autre">
				<p id="autre"><xsl:value-of select="titre"/></p>
				</xsl:for-each>
			</div>
		</article>

		<article class="col-md-4 col-sm-6 col-lg-4 categories">
			<h1 class="text-center titre_h1">CONTACT</h1>
			<h4 class="text-center titre_h4">Merci pour votre attention</h4>
			<div class="container_article text-center">
				<div id="adresse">
					<p><xsl:value-of select="page/section/article/contact/adresse/numero"/></p>
					<p><xsl:value-of select="page/section/article/contact/adresse/rue"/></p>
					<p><xsl:value-of select="page/section/article/contact/adresse/cp"/></p>
					<p><xsl:value-of select="page/section/article/contact/adresse/ville"/></p>
				</div>
				<p id="tel"><xsl:value-of select="page/section/article/contact/tel"/></p>
				<a href="mailto:lise.p.poirier@gmail.com" id="mail"><xsl:value-of select="page/section/article/contact/mail"/></a>
			</div>
		</article>


</section>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 