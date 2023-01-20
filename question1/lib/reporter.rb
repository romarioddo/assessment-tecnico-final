require 'json'
require 'csv'

class ReportJSON
  def generate(data)
    File.write('question1-file.json', data.to_json)
  end
end

class ReportCSV
  def generate(data)
    headers = data.first.keys
    CSV.open('question1-file.csv', 'w') do |csv|
      csv << headers
      data.each do |d|
        csv << d.values
      end
    end
  end
end

class Reporter
  GENERATORS = {
    json: ReportJSON,
    csv: ReportCSV,
  }

  def generateReport(format, data)
    generator = GENERATORS[format]
    raise "Format not supported" unless generator
    generator.new.generate(data)
  end
end
