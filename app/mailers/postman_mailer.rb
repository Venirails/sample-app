class PostmanMailer < ApplicationMailer

def alert_admin
  mail(:to=>"veni.rails@gmail.com",:subject=>"A new staff has been added")
end

end
