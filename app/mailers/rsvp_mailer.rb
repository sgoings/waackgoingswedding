class RsvpMailer < ActionMailer::Base
  default from: "sethgoings@gmail.com"

  def rsvp_email(person, url)
    @person = person
    @url  = url

  	emails = ["sethgoings@gmail.com"]
    if(!person.email.nil? && !person.email.empty?)
    	emails << @person.email
    end

    logger.info emails
    mail(to: emails, bcc: "brittany.waack@gmail.com", subject: 'Thanks for RVSVP-ing at waackgoingswedding.com!')
  end
end
