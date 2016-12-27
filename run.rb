### Health Leads Lead Type  — > 114 input fields    https://leads.usacoverage.com/pingPostSpec.php?TYPE=6
# require 'nokogiri'
# file = File.open('ping.html')
# html = Nokogiri::HTML(file)
# data = html.css("a+ .hilite .left:nth-child(3)")
# #xpath("//a+//*[contains(concat( ' ', @class, ' ' ), concat( ' ', 'hilite', ' ' ))]//*[contains(concat( ' ', @class, ' ' ), concat( ' ', 'left', ' ' )) and (((count(preceding-sibling::*) + 1) = 3) and parent::*)]")
# output = File.new('generator_command.txt', 'w+')
# data.each do |data|
#   field = data.text
#   File.open('generator_command.txt', 'a') { |f| f.write(field + " ") }
# end




## Medicare Leads Lead Type — > 48 input fields    https://leads.usacoverage.com/pingPostSpec.php?TYPE=7
require 'nokogiri'
require 'open-uri'
html = Nokogiri::HTML(open('https://leads.usacoverage.com/pingPostSpec.php?TYPE=7'))
data = html.css("a+ .hilite .left:nth-child(3)")
#xpath("//a+//*[contains(concat( ' ', @class, ' ' ), concat( ' ', 'hilite', ' ' ))]//*[contains(concat( ' ', @class, ' ' ), concat( ' ', 'left', ' ' )) and (((count(preceding-sibling::*) + 1) = 3) and parent::*)]")
output = File.new('medicare_generator_command.txt', 'w+')
data.each do |data|
  field = data.text
  File.open('medicare_generator_command.txt', 'a') { |f| f.write(field + " ") }
end