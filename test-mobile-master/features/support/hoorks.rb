Before do
  
  if $driver.nil?
    p "Driver is running"
  else
    $driver.start_driver
    $action = Actions.new()
    $action.android_location_on
    p "Driver starting"

    $cadastro_util = CadastroActions.new()
  end

end

After do |scenario|
  if scenario.failed?
    unless File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end
    
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = "#{time_stamp}.png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
  end
  if scenario.nil?
    $driver.driver_quit
  end
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end