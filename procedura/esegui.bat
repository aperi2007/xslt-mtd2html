set BIN_XSLTPROC=D:\0_dropbox_store\Dropbox\progetti\xslt-iso19115-iso19139-to-html\binari\bin
set XSLT=D:\0_dropbox_store\Dropbox\progetti\xslt-iso19115-iso19139-to-html\xslt-mtd2html\procedura

set SCHEDE_XML=D:\0_dropbox_store\Dropbox\progetti\xslt-iso19115-iso19139-to-html\xslt-mtd2html\schede_xml
set SCHEDE_HTML=D:\0_dropbox_store\Dropbox\progetti\xslt-iso19115-iso19139-to-html\xslt-mtd2html\schede_html


for /R %SCHEDE_XML% %%f IN (*.xml) do %BIN_XSLTPROC%\xsltproc.exe %XSLT%\iso19115-inspire-editor.xsl %%f > %SCHEDE_HTML%\%%~nf.html

rem %BIN_XSLTPROC%\xsltproc.exe %XSLT%\iso19115-inspire-editor.xsl %SCHEDE_XML%\01_CSM_PIT_20150327.xml > report.html




