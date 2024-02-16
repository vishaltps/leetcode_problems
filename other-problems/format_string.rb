# frozen_string_literal: true

def format_string(s)
  digits = s.scan(/\d/).join
  last_digits = digits.length % 3
  remainder = last_digits > 1 ? 2 : 4
  return digits.scan(/.{1,3}/).join('-') if last_digits.zero?

  [digits.chars[0...-remainder].join.scan(/.{1,3}/).join('-'),
   digits.chars[-remainder..].join.scan(/.{1,2}/).join('-')].compact.join('-')
end
# puts format_string("555 123 1234")
# "(+1) 888 33x19"
# 555-123-12-34
# 188-833-19
#
p format_string('555 123 1234')
p format_string('(+1) 888 33x19')
p format_string('555 123')
