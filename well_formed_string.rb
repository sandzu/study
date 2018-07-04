# a string with the characters '[] {} ()' os saod tp be we;;-formed if
# the different types of brackets match in the correct ordering
#
# ({[]})[(){}] is well formed
#
# [(]) is not well formed



def wellFormed(string)
  close = {
    "}" => "{",
    ")" => "(",
    "]" => "[",
  }
  q = [];
  string.chars.each do |char|
    # p q
    if !close.keys.include?(char)
      q.push(char)
    elsif q.last == close[char]
      q.pop()
    else
      q.push(char)
    end
    # q.push(char) unless close.keys.include?(char)
    # q.pop() if q.last == close[char]
    # q.push
  end
  q.empty?
end

# a = "({[]})[(){}]"
# b = '[(])'
#
# p wellFormed(a)
# p wellFormed(b)
