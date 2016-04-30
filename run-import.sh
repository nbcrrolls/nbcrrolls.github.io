#!/bin/bash

connect-import () {
ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordPress.run({
      "dbname"   => "wpdb",
      "user"     => "wpadmin",
      "password" => "r0cceWP$",
      "host"     => "rocce-vm1.ucsd.edu",
      "socket"   => "",
      "table_prefix"   => "wp_",
      "site_prefix"    => "",
      "clean_entities" => true,
      "comments"       => true,
      "categories"     => true,
      "tags"           => true,
      "more_excerpt"   => true,
      "more_anchor"    => true,
      "extension"      => "html",
      "status"         => ["publish"]
    })'
}

xml-import () {
#ruby -rubygems -e 'require "jekyll/migrators/wordpressdotcom"; 
#    Jekyll::WordpressDotCom.process("~/Desktop/nbcr.wordpress.2016-04-28.xml")'

ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::WordpressDotCom.run({ "source" => "/Users/nadya/Desktop/nbcr.wordpress.2016-04-28.xml" })'
}

xml-import
