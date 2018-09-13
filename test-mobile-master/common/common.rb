module Common
  def dump_logs
    prefix = SecureRandom.hex(8)
    
    [:syslog, :crashlog].each do |log_type|
      log_entries = $driver.driver.manage.logs.get(log_type)
      
      File.open("../tmp/#{prefix}-#{log_type.to_s}.log", "w+") do |file|
        log_entries.each do |entry|
          file.write entry.message
          file.write "\n"
        end
      end
    end
  end
  
  def load_caps_for(platform)
    platform_path = File.expand_path("../../config/#{platform.downcase}/appium.txt", __FILE__)
    
    puts "Platform Path: #{platform_path}"
    
    Appium.load_appium_txt file: platform_path, verbose: true
  end
end