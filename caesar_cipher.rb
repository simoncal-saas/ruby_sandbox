def caesar_cipher(str, n)
  str.split("").map {|c|
    case c
    when "a".."z"
      (c.ord + n) <= ?z.ord ? (c.ord + n).chr : (c.ord + n - ?z.ord - 1 + ?a.ord).chr
    when "A".."Z"
      (c.ord + n) <= ?Z.ord ? (c.ord + n).chr : (c.ord + n - ?Z.ord - 1 + ?A.ord).chr
    else
      c
    end
  }.join
end

