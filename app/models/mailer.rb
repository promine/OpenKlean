class Mailer < ActionMailer::Base
  default_url_options[:host] = "openklean.promine.com.br"

  def password_reset_instructions(user)
    subject       t('mailer.password_reset_subject')
    from          t('mailer.password_reset_from')
    recipients    user.email
    sent_on       Time.now
    body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end

end