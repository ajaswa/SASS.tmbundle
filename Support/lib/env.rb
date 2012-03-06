#!/usr/bin/env ruby -wKU
# encoding: utf-8

# Used as a common require to set up the environment for commands. 

FILEPATH = "#{ENV['TM_FILEPATH']}"
PROJECT = "#{ENV['TM_PROJECT_DIRECTORY']}"
SUPPORT = "#{ENV['TM_SUPPORT_PATH']}"
BUN_SUP = File.expand_path(File.dirname(__FILE__))

DIALOG = SUPPORT + '/bin/tm_dialog'

cur_line = ENV['TM_CURRENT_LINE'] || nil
cur_word = ENV['TM_CURRENT_WORD'] || nil

# since dash (‘-’) is not a word character, extend current word to neighboring word and dash characters
CURRENT_WORD = /[-\w]*#{Regexp.escape cur_word}[-\w]*/.match(cur_line)[0] unless cur_word.nil?

require SUPPORT + '/lib/escape'
require SUPPORT + '/lib/exit_codes'
require SUPPORT + '/lib/textmate' 
require SUPPORT + '/lib/ui'
require SUPPORT + '/lib/web_preview'
require SUPPORT + '/lib/tm/htmloutput'
require SUPPORT + '/lib/osx/plist'

require BUN_SUP + '/sass/writer'
require BUN_SUP + '/sass/reader'

require BUN_SUP + '/compass/writer'
require BUN_SUP + '/compass/reader'
