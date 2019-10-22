
USER_FORMAT = /^[0-9a-z]+$/
PASSWORD_FORMAT = /^[a-zA-Z0-9]\w{7,16}$/
EMAIL_FORMAT = /[A-Za-z]+@[a-z]+\.[a-z]+/

def ask_user_name(name)
  puts name if name.match(USER_FORMAT)
end

def ask_password(name)
  puts name if name.match(PASSWORD_FORMAT)
end

def ask_email(name)
  puts name if name.match(EMAIL_FORMAT)
end

ask_user_name("Coco")
ask_user_name("CANGREJO")
ask_user_name("carlitos")

ask_password('1234567')
ask_password('l2345678')
ask_password('EstePaswordEsDemasiadoLargoX2')
ask_password('C0n7raseNha')

ask_email('Cxristian@gmail.com')
ask_email('Cxristian@gmail.com.bo')
ask_email('Cxristian@gmail.com.bo.es')
ask_email('estoNOesUnCorreoNoTieneArroba.com')