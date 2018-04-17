require 'gmail'
require 'dotenv/load'


Gmail.connect(ENV['gmail_adress'],ENV['gmail_pwd'])  do |gmail|
    gmail.deliver do
    to "hros.thp@gmail.com"
    subject "mali"
    text_part do
      body "Text of plaintext message."
    end
    html_part do
      content_type 'text/html; charset=UTF-8'
      body "<p>Bonjour,
Je m'appelle [PRÉNOM], je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique.
La pédagogie de ntore école est celle du peer-learning,
où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code.
 Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

Déjà 300 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{[NOM_COMMUNE]} veut changer le monde avec nous ?


Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80 </p>"
    end
  end
end

Gmail.connect(ENV['gmail_adress'],ENV['gmail_pwd']) do |gmail|
p  gmail.logged_in?
end


def send_email_to_line

end

def go_through_all_the_lines

end

def get_the_email_html

end
