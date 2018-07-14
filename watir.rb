
require 'watir'


browser = Watir::Browser.new
browser.goto 'google.com'




search_bar = browser.text_field(attribut: 'réglage_de_lattribut')
search_bar = browser.text_field(class: 'gsfi')
#méthode de la barre d'entrée
search_bar.set("Hello World!")
#méthode du clic
search_bar.send_keys(:enter)
submit_button = browser.button(type:"submit")
submit_button.click
browser.driver.manage.timeouts.implicit_wait = 3
browser.div(class:"rc")

search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h3.text }
