def starts_with_consonant s
  if /^[^aeiouAEIOU\W]/.match(s) == nil
    return false
  end

  return true
end


puts starts_with_consonant("Hello")
