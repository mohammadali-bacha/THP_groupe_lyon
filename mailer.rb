require 'dotenv/load'
require 'gmail'
require "google_drive"
require 'json'
require 'gmail'


# Methode envoit d'emails a partir d'une spreadsheet Gdrive
def go_through_all_the_lines

# Connexion spreadsheet via config.json
  session = GoogleDrive::Session.from_config("config.json")
  ws = session.spreadsheet_by_key("1yqWCFEruHoYZivjpH8usza9NaySHgy1BvNLZhyiH-IU").worksheets[0]

#boucle pour selectionner email des villes
    (2..ws.num_rows).each do |row|
			emails = ws[row,3]


# Connexion a Gmail via .env & envoit des emails
      Gmail.connect(ENV['gmail_adress'], ENV['gmail_pwd']) do |gmail|
          email = gmail.compose do
            to "#{emails}"
            subject "The Hacking Project"
            html_part do
              content_type 'text/html; charset=UTF-8'
              body "<p>Bonjour,</p>
              <p>Je m'appelle Hugo, je suis élève à The Hacking Project, une formation à la programmation informatique gratuite, sans locaux, sans sélection, sans restriction géographique.</p>
                <p>Pour en savoir plus sur notre formation, n'hésitez pas à contacter Charles Dacquay, co-fondateur de The Hacking Project, qui pourra répondre à toutes vos questions : 06.95.46.60.80 </p>
								<p>Excellente journée !</p>"
            end
          end
          gmail.deliver(email)
        end
    end
end
go_through_all_the_lines
