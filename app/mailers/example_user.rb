class User
  attr_accessor :fname, :lname, :email

  def initialize(attributes = {})
    @fname  = attributes[:fname]
    @lname  = attributes[:lname]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@fname} #{@lname} <#{@email}>"
  end
end
