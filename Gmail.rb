require 'dotenv/load'
require 'gmail'



Gmail.connect(ENV['gmail_adress'],ENV['gmail_pwd'])  do |gmail|
    gmail.deliver do
    to "hros.thp@gmail.com"
    subject "Githuuuuuuuub"
    text_part do
      body "Text of plaintext message."
    end
    html_part do
      content_type 'text/html; charset=UTF-8'
      body "<p>Text of <em>html</em> message.</p>"
    end
  end
end
