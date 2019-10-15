# #função usada para screenshot
# After('not @servico') do |scenario|
#   scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
#   if scenario.failed?
#      puts take_screenshot_inline(scenario_name.downcase!, 'failed')
#   else
#      puts take_screenshot_inline(scenario_name.downcase!, 'passed')
#   end
#   Capybara.current_session.driver.quit
# end
