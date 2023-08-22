# XSL-Website

This is a simple example of using browsers' built in XSL support to build a website with common theming across all pages without any server-side code, static website generators, or Javascript.

[See the demo site](http://evan.widloski.com/xsl-website/)


## How it works

When you browse to `index.xml` (or any of the other XML files), the browser loads the template file given at the top of the XML.  This template file contains an entry for tag in the XML that tells the browser how to render it as HTML.
