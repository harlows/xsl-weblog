# XSL-Website

This is a simple example of using browsers' built in XSL support to build a website with common theming across all pages without any server-side code, static website generators, or Javascript.

[See the demo site](http://evan.widloski.com/xsl-website/)


## How it works

When you browse to `index.xml` (or any of the other XML files), the browser loads the template file given at the top of the XML.  This template file describes how to render the various custom tags in the XML as HTML.

See `advanced/` for more advanced examples of defining templates with fields, or using templates inside of other templates.
