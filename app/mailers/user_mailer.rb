class UserMailer < ActionMailer::Base
  default from: "LeadShareApp@sosed.si"
 
  def welcome_email(user, pass=nil)
    @user = user
    @pass = pass
    #@url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Dobrodošli na Sosed LeadShareApp')
  end

  def terms_of_use(user)
    @user = user
    #@url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Uspešno ste potrdili dogovor o sodelovanju')
  end

  def affiliation_code(user)
    @user = user
    @tracking_link = leads_new_url(id: @tracking_id)
    mail(to: @user.email, subject: 'Uspešno ste potrdili dogovor o sodelovanju')
  end

end


