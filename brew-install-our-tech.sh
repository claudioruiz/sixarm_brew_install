#!/bin/sh
#
# brew-install-our-tech.sh
#
# Use Homebrew to install our favorite tech-related packages
# that can be installed fully automatically i.e. unattended;
# these packages do not ask for passwords, do not have any
# prompts, and do not have any issues that need a human.
#
# If you're using this file and you find any packages that
# do not install automatically, please let us know by opening
# an issue, or emailing us, or creating a pull request. Thanks!
##

## Environment

# Code Climate Platform for all static analysic
brew tap codeclimate/formulas && brew install codeclimate

# Command-line programs for manipulating fonts
brew install lcdf-typetools

# GNU libtool is a generic library support script.
brew install libtool

## Shell

# GUI for rsync
brew install grsync

# Shell script syntax check linter
brew install shellcheck

## Languages

# Apache Maven is a software project management and comprehension tool.
brew install maven

## Mac programming

# Realm browser for the Realm embedded database
brew cask install realm-browser

# Tunnelblick remote access VPN
brew cask install tunnelblick

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

# Hadoop database.
brew install hadoop

# MariaDB database
brew install mariadb

# MongoDB database.
brew install mongodb

# PostgreSQL database.
brew install postgresql

# RabbitMQ enterprise message queue based on the emerging AMQP standard.
brew install rabbitmq

# Redis database, esp. for key-value cache and store, and data structures.
brew install redis

# Riak open-source distributed database.
brew install riak

# SQLite database: self-contained, serverless, zero-configuration, transactional engine.
brew install sqlite && brew link sqlite

## Database searchers

# Sphinx search engine.
brew install mysql && brew install postgresql && brew install sphinx

## Database managers

# Toad database manager by Dell
brew cask install toad

# Valentina Studio database manager
brew cask install valentina-studio

##
# Markup Tooling
#
# This section installs markup tooling.
# For example this section is a good place for HTML tools,
# Markdown tools, UML tools, XML tools, and similar.
##

## Markdown

# MacDown simple markdown editor
brew cask install macdown

## UML

# StarUML modeling tool
brew cask install staruml

##
# Programming Languages
#
# This section installs many programming languages:
# Clojure, Elixir, Erlang, Go, Haskell, JavaScript,
# Perl, Python, R, Ruby, Scala, Swift, and tooling.
##

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

## Go

# Go programming language by Google; compare `C`.
brew install go

## Haskell

# Cabal is a package manager for Haskell
brew install ghc cabal-install

## JavaScript

# Node.js is a JavaScript platform for building fast, scalable network app.
brew install node

# PhantomJS is a headless WebKit scriptable with a JavaScript API.
brew install phantomjs

# V8 JavaScript Engine.
brew install v8

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

## Scala

# Scala programming language, that runs on top of the JVM.
brew install scala

## Swift

# Tool to help with Swift style and conventions.
brew install swiftlint

# Appium test automation framework
brew cask install appium

# Taylor is a Swift code quality metrics tool.
brew install taylor

# SourceKitten attaches to SourceKit AST.
brew install sourcekitten

# Alcatraz Xcode plugin manager
brew cask install alcatraz
