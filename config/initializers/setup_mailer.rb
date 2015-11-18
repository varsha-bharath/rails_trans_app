ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587 ,
    :domain => "gmail.com",
    :authentication => "plain",
    :user_name => "projectmailer8@gmail.com",
    :password => "secret1234",
    :openssl_verify_mode => 'none'
}