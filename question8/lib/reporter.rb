# frozen_string_literal: true

require 'gyoku'

class JsonWriter
  def writer(content)
    File.write('question8-file.json', content)
  end
end

class XMLWriter
  def writer(content)
    root = content.instance_of?(Array) ? { root: content } : content

    File.write(
      'question8-file.xml',
      Gyoku.xml(root)
    )
  end
end

class Reporter
  GENERATORS = {
    'JSON' => JsonWriter,
    'CSV' => XMLWriter
  }

  def generateReport(format, content)
    generator = GENERATORS[format]
    raise 'Format not supported' unless generator

    generator.new.writer(content)
  end
end
