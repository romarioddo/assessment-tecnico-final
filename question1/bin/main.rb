#!/usr/bin/env ruby

require_relative '../lib/reporter'

p reporter = Reporter.new
data = [{ key1: 'test1', key2: 'test2' }]
p reporter.generateReport(:json, data)
data = [{ key1: 'test1', key2: 'test2' }]
p reporter.generateReport(:csv, data)
data = [{ key1: 'test1', key2: 'test2' }]
p reporter.generateReport(:otherformat, data)

