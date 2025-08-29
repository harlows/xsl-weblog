# XSL-Weblog

This is a simple example of using browsers' built in XSL support to build a simple weblog with common theming across all pages without any server-side code, static website generators, or Javascript.

## How it works

When you browse to `index.xml` (or any of the other XML files), the browser loads the template file given at the top of the XML.  This template file describes how to render the various custom tags in the XML as HTML.

Based on Evan Widloki's `advanced/` template.
