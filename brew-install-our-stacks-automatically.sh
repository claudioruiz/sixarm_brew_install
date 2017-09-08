#!/bin/sh
#
# brew-install-our-stacks-automatically.sh
#
# Use Homebrew to install our favorite tech-related packages
# that can be installed fully automatically i.e. unattended;
# these packages do not ask for passwords, do not have any
# prompts, and do not have any issues that need a human.
#
# If you're using this file and you find any packages that
# do not install automatically, please let us know by opening
# an issue, or emailing us, or creating a pull request. Thanks!
#
# ## Link
#
# Some of the brew packages need to link to others.
#
#   * `brew link cmake` before mysql
#   * `brew link cmake` before wireshark can be installed
#   * `brew link cmake` before homebrew/science/opencv
#   * `brew link pandoc` before shellcheck can be installed
#
##

# Update - this is always the first step
brew update

## Tap

brew tap bramstein/webfonttools
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/binary
brew tap homebrew/brewdler
brew tap homebrew/core
brew tap homebrew/dupes
brew tap homebrew/fuse
brew tap homebrew/versions
brew tap jingweno/ccat

##
# System
##

# XQuartz provides X.Org X Window System that runs on OS X.
brew cask install xquartz

# Qt toolkit Cross-platform development of UIS and apps.
brew install qt5
brew install pyqt

##
# Environment
##

# Code Climate Platform for all static analysic.
brew tap codeclimate/formulas && brew install codeclimate

# Command-line programs for manipulating fonts.
brew install lcdf-typetools

##
# Shell
##

# GUI for rsync.
brew install grsync

# Shell script syntax check linter.
brew link pandoc; brew install shellcheck

# BATS: Bash Automated Testing System.
brew cask install bats

##
# Clients
##

# Shuttle: simple SSH shortcut menu.
brew cask install shuttle

# Fugu: a graphical shell for SSH and FTP.
brew cask install fugu

# Charles: enables a developer to view HTTP traffic.
brew cask install charles

# Postman HTTP API monitoring tool.
brew cask install postman

##
# Versioning
##

# SourceTree graphic client for git
brew cask install sourcetree

# GitUp friendly Git interface and visualizer
brew cask install gitup


##
# Languages
##

# Apache Maven is a software project management and comprehension tool.
brew install maven

# Apache Spark is for analytics
brew install apache-spark

# Apache Top command
brew install apachetop

# Apache Portable Runtime (APR)
brew install apr
brew install apr-util

##
# Mac programming
##

# Dash documentation browser and code snippet manager
brew cask install dash

# Realm browser for the Realm embedded database
brew cask install realm-browser

# Tunnelblick remote access VPN
brew cask install tunnelblick

##
# Networking
##

# Wireshark network monitoring, with the QT GUI.
brew link cmake; brew cask install wireshark --with-qt

# Monit is for managing and monitoring Unix systems.
brew install monit

# Nagios IT infrastructure monitoring.
brew install nagios

# Wireshark-chmodbft enables regular users to capture network packets.
brew cask install wireshark-chmodbpf

# Charles web debugging proxy
brew cask install charles

# Siege is an http load testing and benchmarking utility.
brew install siege

# Docker software containers to help distribute applications.
brew install docker
brew install boot2docker

# Compose is a tool for defining and running multi-container Docker applications.
brew install docker-compose

# Docker Machine installs Docker Engine on virtual hosts, and manages the hosts.
brew install docker-machine

# Consul tool for discovering and configuring services
brew install consul

# NGINX web server, with Ruby passenger middleware.
brew install nginx --with-passenger

# Varnish reverse-proxy web application accelerator.
brew install varnish

# Memcached is an in-memory cache server.
brew install libmemcached
brew install memcached

# Thrift is a protocol for serializing structured data; compare profobut.
brew install thrift

# Protocol buffers for serializing structured data; compare thrift.
brew install protobuf


##
# Virtual environments
##

# Docker assembles applications from components.
brew cask install docker

# Vagrant creates and configures portable development environments.
brew cask install vagrant
brew cask install vagrant-manager

# VirtualBox creates and configures portable development environments, by Oracle.
brew cask install virtualbox

# Terraform common configuration to launch infrastructure.
brew install terraform

# corectl provides CoreOS over macOS made very simple
brew cask install corectl

# Kubernetes Solo cluster for macOS
brew cask install kube-solo

##
# Editors
##

# Emacs editor
brew cask install emacs

# Emacs editor for Spacemacs
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus

# Eclipse is a large programming IDE built on Java
brew cask install eclipse-ide
brew cask install eclipse-platform

# MacTex: LaTeX document preparation system with high-quality typesetting.
brew cask install mactex

# MacVIM
brew cask install macvin

# Sublime
brew cask install sublime
brew cask install sublime-text

##
# Fonts
##

# Web font tools
brew install bramstein/webfonttools/sfnt2woff-zopfli
brew install bramstein/webfonttools/woff2

##
# Databases
#
# This section installs many databases and database tooling:
# Cassandra, CouchDB, Hadoop, MariaDB, MongoDB, PostgreSQL,
# RabbitMQ, Redis, Riak, Sphinx, SQLite. Notably *not* MySQL.
##

## Database-Related

# Cassandra database.
brew install cassandra

# CouchDB database, esp. for document-oriented storage.
brew install couchdb

# GNU dbm database functions
brew install gdbm

# Hadoop database.
brew install hadoop

# MariaDB database; prefer this over MySQL.
brew install mariadb

# MongoDB database.
brew install mongodb

# PostgreSQL database.
brew install postgres

# PostgreSQL database.
brew install postgresql

# Postgres App provides a Mac-friendly database.
brew cask install postgres

# Postgres admin GUI
brew install pgadmin3

# RabbitMQ enterprise message queue based on the emerging AMQP standard.
brew install rabbitmq

# Redis database, esp. for key-value cache and store, and data structures.
brew install redis

# Riak open-source distributed database.
brew install riak

# SQLite database: self-contained, serverless, zero-configuration, transactional engine.
brew install sqlite && brew link sqlite

# ZeroMQ message queue
brew install zeromq

## Database searchers

# Sphinx search engine.
brew link cmake; brew install mysql; brew install postgresql; brew install sphinx

## Database managers

# MySQL Workbench database editor.
brew link cmake; brew cask install mysqlworkbench

# Realm browser mobile database editor.
brew cask install realm-browser

# Sequel Pro database management application.
brew cask install sequel-pro

# Toad database manager by Dell.
brew cask install toad

# Valentina Studio database manager.
brew cask install valentina-studio

##
# Markup Tooling
#
# This section installs markup tooling.
# For example this section is a good place for HTML tools,
# Markdown tools, UML tools, XML tools, and similar.
##

# Pandoc converts among various formats, such as Markdown and HTML.
brew install pandoc

# Augeas configuration file parser.
brew install augeas

## Markdown

# MacDown simple markdown editor.
brew cask install macdown

## UML

# StarUML modeling tool.
brew cask install staruml

## XML

# XML converter.
brew install xmlstarlet

# Libxml2 is the XML C parser and toolkit.
brew install libxml2

# Libxslt is the XSLT C library for the XML EXtensible Stylesheet Language.
brew install libxslt

## HTML & CSS

# PUP command line HTML parser.
brew install https://raw.githubusercontent.com/EricChiang/pup/master/pup.rb

# Yahoo UI Compressor.
brew install yuicompressor

# Convert HTML to text
brew install html2text

# HTML compressor
brew install htmlcompressor --with-yuicompressor

##
# Programming Languages
#
# This section installs many programming languages:
# Clojure, Elixir, Erlang, Go, Haskell, Java, JavaScript,
# Perl, Python, R, Ruby, Scala, Swift, and tooling.
##

## Compilers

# LLVM cross-compiler
brew install homebrew/versions/llvm35

# Apple GCC (GNU C Compiler)
brew install apple-gcc42

# Valgrind suite of tools for debugging and profiling.
# Valkyrie is a Qt4-based GUI for the Memcheck and Helgrind tools in Valgrind.
# Uninstall these because they are currently incompatible with macOS 10.12
brew uninstall valkryrie; brew uninstall valgrind

## Clojure

# Clojure programming language compiler.
brew install clojure-compiler

# Leiningen automates Clojure projects.
brew install leiningen

## Elixir

# Elixir programming language built on top of the Erlang VM.
brew install elixir

## Erlang

# Erlang programming language for scalable high-availability systems.
brew install erlang

## Yet Another Web Server
brew install yaws

## Go

# Go programming language by Google; compare `C`.
brew install go

## Haskell

# Cabal is a package manager for Haskell
brew install ghc cabal-install

## Java

# Java programming language
brew cask install java

# Gradle is a Java build tool
brew install gradle

# Maven is a Java build tool
brew install maven

# Spring Tool Suite is an Eclipse IDE for developing apps
brew cask install sts

# Jetty provides a Java web server and javax.servlet container
brew install jetty

# Apache Tomcat implements Java Servlet and JavaServer Pages technologies.
brew install tomcat

# Glassfish application server.
brew install glassfish

# Android Software Development Kit (SDK)
brew install android-sdk

## JavaScript

# Node.js is a JavaScript platform for building fast, scalable network app.
brew install node

# PhantomJS is a headless WebKit scriptable with a JavaScript API.
brew install phantomjs

# V8 JavaScript Engine.
brew install v8

# JSON output using the shell
brew install jo

# JID JSON explorer
brew tap simeji/jid && brew install jid

## Perl

# Perl programming language, esp. for systems administration.
brew install perl

# Perl-Compatible Regular Expressions pattern matching tools.
brew install pcre

# CPAN search for perl modules
brew install cpansearch

## Python

# Python programming language, esp. for systems scripting.
brew install python
brew install python3

## R

# R programming language, esp. for statistics.
brew install r

## Ruby

# chruby changes the current Ruby.
brew install chruby

# JRuby is a high performance, stable, fully threaded Java implementation of Ruby.
brew install jruby

# Ruby programming language; compare `perl`, `python`.
brew install ruby

# Tool to install various implementations of Ruby.
brew install ruby-install

# Passenger Ruby middleware
brew install passenger

## Rust

# Rust programming language
brew install rust

## Scala

# Scala programming language, that runs on top of the JVM.
brew install scala

## iOS, Objective-C, Swift

# Alcatraz Xcode plugin manager
brew cask install alcatraz

# Appium test automation framework
brew cask install appium

# Carthage Xcode project dependency manager.
brew install carthage

# Command-line application launcher for the iOS Simulator
brew install ios-sim

# Tool to help with Swift style and conventions.
brew install swiftlint

# SourceKitten attaches to SourceKit AST.
brew install sourcekitten

# Taylor is a Swift code quality metrics tool.
brew install taylor

# Testflight Apple iOS testing service
brew cask install testflight

##
# Platforms
##

# Amazon Web Services (AWS) Command Line Interface (CLI)
brew install awscli

# AWS command line tools
brew tap wallix/awless
brew install awless

# Heroku app hosting
brew install heroku

##
# Art editors
##

# Xquarts
brew cask install xquartz

# Tap GUI
brew tap homebrew/gui

# Gimp pixel-based image editor, similar to Adobe Photoshop
brew cask install gimp

# Inkscape vector-based image  editor, similar to Adobe Illustrator
brew cask install inkscape; brew install inkscape

# Shotcut movie editor
brew cask install shotcut

# Image optimizer
brew cask imageoptim

##
# Paid software
#
#   * JetBrains programmer tools
#   * OmniGroup project management tools
#
# This section installs the tools, which are free trial versions.
# We pay for licenses for all these for all our teammates.
#
# You may want to customize this section by deleting any items that
# you don't want to use or purchase, because this will save disk space.
##

## Paw.cloud

# Paw HTTP API testing tool
brew cask install paw

## JetBrains

# AppCode Swift IDE
brew cask install appcode

# CLion C/C++ IDE
brew cask install clion

# DataGrip SQL IDE
brew cask install datagrip

# IntelliJ Java IDE
brew cask install intellij-idea

# PhpStorm PHP IDE
brew cask install phpstorm

# PyCharm Python IDE
brew cask install pycharm

# RubyMine Ruby IDE
brew cask install rubymine

# WebStorm IDE
brew cask install webstorm

## OmniGroup

# To Do list
brew cask install omnifocus

# Diagramming
brew cask install omnigraffle

# Project planning
brew cask install omniplan

# Outliner
brew cask install omnioutliner

##
# Libraries
#
# We do this near the end of this file,
# because we expect these will already be
# installed by a bunch of the software above.
#
# This section here is really just to cover our
# bases to make sure we have the libraries that we
# sometimes need for building other software later on.
##

# GNU Multiple Precision Arithmetic Library
brew install gmp

# Audio/Visual converters
brew install libav

# Curl web fetcher
brew install libcurl

# Foreign Function Interface Library
brew install libffi

# Text encoding
brew install libiconv
brew install homebrew/dupes/libiconv

# File magic number recognizer
brew install libmagic

# ncurses console nagivation
brew install libncurses

# Sodium secure cryptography
brew install libsodium

# Readline terminal input
brew install libreadline

# GNU libtool is a generic library support script.
brew install libtool

# XML handlers
brew install libxml2
brew install libxslt

# High-level interface to X.509 and CMS (Cryptographic Message Syntax)
brew install libksba

# V8 JavaScript
brew install libv8

# YAML markup language
brew install libyaml

# ZIP file compression
brew install libzip

# Images
brew install libjpg
brew install libpng
brew install libtiff
brew install libwebp

##
# TODO
#
# These items come from other people and other repos
##

brew install berkeley-db
brew install ccat
brew install chromedriver
brew install cscope
brew install dialog
brew install dirmngr
brew install dos2unix
brew install exercism
brew install fasd
brew install gettext
brew install ghostscript
brew install git-crypt
brew install gnupg
brew install gpg-agent
brew install gnupg2
brew install jbig2dec
brew install openssl
brew install nginx --with-passenger
brew install nvm
brew install otto
brew install packer

## Cleanup - this is always the last thing to do

brew cleanup
brew cask cleanup
