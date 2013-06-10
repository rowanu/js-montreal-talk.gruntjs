A practical introduction to using GruntJS in your projects.

My Introduction
  DashboardDude.com

GruntJS Introduction

  http://gruntjs.com/
  http://gruntjs.com/img/grunt-logo.png

  Script runner > build tool
    Compare to make, rake, jake, cake, etc.
    High-level
    Leverage npm modules (used for plugins anyway)

Automation is Good

  It will make you a Happy Developer
  A Happy Developer is a Productive Developer

Grunt Fundamentals

  grunt-cli

  versioning

  package.json

  Gruntfile
    JS or Coffee
    Consists of (taken from docs):
      The "wrapper" function
      Project and task configuration
        * If only one task, then is defaulted, otherwise use ':' (like rake, etc)
      Loading grunt plugins and tasks
      Custom tasks

Plugins

A simple working example: FoodieFriend - A PhoneGap Project

  CoffeeScript

  Watch

  CoffeeLint

  phonegap-build

Installing the CLI

  Not actually the command that will be run - will be determined in
package.json. This means that the build tool is properly versioned between
projects - something you'll appreciate if you've been bitten by
incompatibilities before.

	  npm install -g grunt-cli

Required Files

  package.json: npm init
    Add Grunt "devDependencies": { "grunt": "~0.4.1" }
    npm install
  Gruntfile
    <Basic Configuration>

CoffeeScript

  Javascript has some quirks - I don't need to be worried about all those "{}"
  It's just Javascript.

  npm install grunt-contrib-coffee --save-dev

  Gruntfile.coffee
    coffee:
      compile:
        expand: true
        cwd: "coffee/"
        src: ["**/*.coffee"]
        dest: "js/"
        ext: ".js"
Watch

  Re-running the same command over and over is lame.
  Automate it!

  npm install grunt-contrib-watch --save-dev

  Gruntfile.coffee
    watch:
      coffee:
        files: ["coffee/**/*.coffee"]
        tasks: ["coffee"]
        options:
          interrupt: true

CoffeeLint

  Linting will hurt your feelings. It will also make you a better programmer.
  Deal with it.

  npm install grunt-coffeelint --save-dev

  Gruntfile.coffee
    coffeelint:
      coffee:
        files:
          src: ["coffee/**/*.coffee"]
  ...
    watch:
      coffee:
        files: ["coffee/**/*.coffee"]
        tasks: ["coffeelint", "coffee"]
        options:
          interrupt: true


Adding Plugins

  http://gruntjs.com/plugins

  Contrib

  npm install <module> --save-dev

  There's a lot of common tasks. It's unlikely you'll have to roll-your-own for
any of your day-to-day tasks - this is a big productivity boost.

Questions? & Thank You
