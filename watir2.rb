require 'watir'

caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps[:chrome_options] = {detach: true}
@b = Watir::Browser.new :chrome, desired_capabilities: caps
