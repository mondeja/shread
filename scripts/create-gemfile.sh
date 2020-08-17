#!/bin/bash
# -*- ENCODING: UTF-8 -*-

tee -a public/Gemfile > /dev/null << END
# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "jekyll"
END
