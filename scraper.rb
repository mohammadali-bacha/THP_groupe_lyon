require 'rubygems'
require 'nokogiri'
require 'open-uri'
require "google_drive"


# On récupère le nom des communes, leur CP et l'email
def get_email(lien)
   page = Nokogiri::HTML(open(lien))
   email = page.css('td:contains("@")').text
   title = page.css('div.col-md-12.col-lg-10.col-lg-offset-1 > h1').text
   result = /([^0-9]*)\s*-\s*([0-9]*)/.match(title)
   # Le Regex suivant nous permets de séparer le nom de la commune du code postal
   name = result[1].capitalize
   postal_code = result[2]
   # On delete les espaces autour du CP et de la commune avec .strip!
   name.strip!
   postal_code.strip!

   # On classe proprement chaque élément trouvé
   return {
     "email" => email,
     "name" => name,
     "postal_code" => postal_code
   }
end

# La fonction ci-dessous permets d'aller à travers chaque lien de commune fournie
# Dans la page principale et d'aller chercher les infos nécessaires
def get_links(lien, ws)
   page = Nokogiri::HTML(open(lien))
   list_url = page.css('a.lientxt')
   array_links = []
   list_url.each { |link|
       url = link['href']
       array_links.push(url)
   }
   # Pour chaque élément trouvé on demande à la worksheet de créer 3 colonne
   # On a choisi de mettre Name dans la première colonne, CP dans la 2ème et email dans la 3ème
   i = 2
   ws[1, 1] = "Name"
   ws[1, 2] = "Postal_Code"
   ws[1, 3] = "Email"
   array_links.each { |href|
       complete_link = URI.join(lien,href).to_s
       details = get_email(complete_link)
       # On classe proporement les 3 éléments dans chaque colonne
       # On incrément i de 1 afin de créer un loop.
       ws[i, 1] = details["name"]
       ws[i, 2] = details["postal_code"]
       ws[i, 3] = details["email"]
       i += 1
   }
   ws.save
end
# Ici se trouvent les infos clés à savoir l'adresse que l'on veut scrapper
# tout comme la spreadsheet que l'on veut remplir avec les fonctions précédentes.
def perform
   lien = "http://annuaire-des-mairies.com/hauts-de-seine.html"
   # lien = my_url_array.each
   session = GoogleDrive::Session.from_config("config.json")
   spreadsheet = session.spreadsheet_by_key("1yqWCFEruHoYZivjpH8usza9NaySHgy1BvNLZhyiH-IU")
   ws = spreadsheet.worksheets[0]
   ws.delete_rows(1, ws.max_rows)
   get_links(lien, ws)
end
perform



#
#
# require 'nokogiri'
# require 'open-uri'
# require 'spreadsheet'
#
# http://annuaire-des-mairies.com/reunion.html
# http://annuaire-des-mairies.com/martinique.html
#
#
# my_excel_output = []
#
# my_array =[
# [my_url1, css1],
# [my_url2, css2]
# ]
# my_array.each do |my_url, my_css|
#
#   doc = Nokogiri::HTML(open(my_url))
#   lines = doc.css(my_css).map(&:text)
#
#   my_excel_output << lines
#
# end
#
