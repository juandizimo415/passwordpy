def get_name
  name = ""
  loop do
    print "Enter your name: "
    name = gets.chomp
    if name =~ /^[a-zA-Z\s]*$/
      break
    else
      puts "Sorry, only alphabetic characters allowed."
    end
  end
  return name
end


def get_password
  password = ""
  loop do
    print "Enter a password that includes a: lowercase letter, uppercase letter, a number, and a special character. "
    password = gets.chomp
    if password =~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,}$/
      break
    else
      puts "ERROR. Password must include: lower and uppercase letter, a digit, and a special character."
    end
  end
  return password
end

name = get_name()
puts "Hi #{name}!"

password = get_password()
puts "Your password is #{password}"
