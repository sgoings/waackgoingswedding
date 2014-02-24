class RsvpMailer < ActionMailer::Base
  default from: "sethgoings@gmail.com"

  def rsvp_email(person, url)
    if(!person.email.nil? && !person.email.empty?)
        @person = person
        @url  = url
        mail(to: @person.email, subject: 'Thanks for RVSVP-ing at waackgoingswedding.com!')
    end
  end
end
