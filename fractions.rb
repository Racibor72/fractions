#Simplify
require rational
def simplify(n, d)
  gcf = n.gcd(d)
  nN = n/gcf
  dN = d/gcf
  [nN, dN]
end

#multiply
def multiply(n1, d1, n2, d2)
  nN = (n1 * n2)
  dN = (d1 * d2)
  simplify(nN, dN)
end

#divide
require simplify(n, d)
def divide(n1, d1, n2, d2)
  nn = (n1 * d2)
  dn = (d1 * n2)
  simplify(nn, dn)
end

#addition
require simplify(n, d)
def addition(n1, d1, n2, d2)
  nd = (d1 * d2)
  nn1 = (n1 * nd)
  nn2 = (n2 * nd)
  nn = nn1 + nn2
  simplify(nn, nd)
end

#subtraction
require simplify(n, d)
def subtract(n1, d1, n2, d2)
  nd = (d1 * d2)
  nn1 = (n1 * nd)
  nn2 = (n2 * nd)
  nn = nn1 - nn2
  simplify(nn, nd)
end

puts multiply(1,2,2,3).to_s
