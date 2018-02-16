require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

#puts Dir.pwd
working_dir = Dir.pwd + '/Files/'

puts working_dir

#Populate articles
slashdot_articles = []

File.open("/home/julio/Source/GitHub/Intro-Ruby/Files/slashdot.xml", "r") do |f|
    doc = Nokogiri::XML(f)
    slashhdot_articles = doc.css('item').map { |i|
        {
            title: i.at_css('title').content,
            link: i.at_css('link').content,
            summary: i.at_css('description').content
        }
    }
end


#Populate feedzilla.json articles
feedzilla_articles = []

File.open("/home/julio/Source/GitHub/Intro-Ruby/Files/feedzilla.json", "r") do |f|
    #items = JSON.parse(f.read)
    items = JSON.parse(encoded_file_content=f.read.force_encoding('UTF-8')) 
    feedzilla_articles= items['articles'].map {
        |a|
        {
            title: a['title'],
            link: a['url'],
            summary: a['summary']
        }
    }
end

sorted_articles = (feedzilla_articles + slashdot_articles).sort_by {|a| a[:title]}


#Writing the two exported files
CSV.open(working_dir+"article.csv", "wb") do |csv|
    sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ] }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
    sorted_articles.each {|a| sheet.add_row [a[:title], a[:link], a[:summary]]  }
end
pkg.serialize(working_dir+"articles.xlsx")