# frozen_string_literal: true

require "csv"

class LeVar
  def write_log(filename, logs = [], with_timestamp: false, append: false)
    return if logs.empty?

    timestamp = with_timestamp ? DateTime.current.strftime("%Y%m%d%H%M%s") : nil
    output_file = output_path + "/logs/#{[filename, timestamp].compact.join("-")}.log"

    FileUtils.makedirs(output_path) unless Dir.exist?(output_path)

    File.open(output_file, (append ? "a" : "wb")) do |file|
      logs.each do |line|
        file.write(line + "\n")
      end
    end

    return if append
    puts ""
    puts "File output: #{output_file}"
  end

  def write_csv(filename, headers, rows, with_timestamp: false, append: false)
    timestamp = with_timestamp ? DateTime.current.strftime("%Y%m%d%H%M%s") : nil
    output_file = output_path + "/csvs/#{[filename, timestamp].compact.join("-")}.csv"

    FileUtils.makedirs(output_path) unless Dir.exist?(output_path)

    CSV.open(output_file, (append ? "a" : "wb"), write_headers: true, headers: headers) do |csv|
      rows.each do |row|
        csv << row
      end
    end

    return if append
    puts ""
    puts "File output: #{output_file}"
  end

  def read_csv(filename)
    CSV.open(output_path + "/csvs/#{filename}.csv", headers: true, liberal_parsing: true) do |rows|
      rows.map { |data| data.to_h }
    end
  end

  def squash(filename)
    FileUtils.rm(filename)
  end

  private
    def output_path
      Rails.root.join("tmp", "lib", "le_var")
    end
end
