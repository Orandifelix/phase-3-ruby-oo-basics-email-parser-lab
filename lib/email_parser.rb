# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    email_addresses = split_addresses(@email_addresses)
    unique_email_addresses(email_addresses)
  end

  private

  def split_addresses(email_addresses_string)
    email_addresses_string.split(/[,\s]+/)
  end

  def unique_email_addresses(email_addresses)
    email_addresses.uniq
  end
end

