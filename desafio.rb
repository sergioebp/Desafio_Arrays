#Desafio Arrays
#Ejercicio 1
arreglo = [1,2,3,9,1,4,5,2,3,6,6]

#Punto 1
puts arreglo.first

#Punto 2
puts arreglo.last

#Punto 3
arreglo.each do |i|
  print i
end
puts ''

#Punto 4
arreglo.each.with_index do |x,y|
  puts "#{x} tiene índice #{y}"
end

#Punto 5
arreglo.each.with_index do |x,y|
  print x if y.even?
end
puts ''

#Ejercicio 2
a = [1,2,3,9,1,4,5,2,3,6,6]

#Punto 1
a.pop

#Punto 2
a.shift

#Punto 3
def partir x
  if x.length.odd?
    x.slice!((x.length)/2)
  else
    x.slice!(((x.length)/2)-1)
  end
end

partir a

#Punto 4
while a.last != 1 do 
  a.pop
end

#Punto 5
b = [1,2,3,4,5,6]
c = []

while b != [] do
  c.push(b.pop)
end
b = c.clone

#Ejercicio 3
a = [1,2,3,9,1,4,5,2,3,6,6]

#Punto 1
a.select! do |i|
  i.odd?
end

#Punto 2
suma = 0
a.each do |i|
  suma += i
end
puts suma

#Punto 3
promedio = suma/a.length.to_f
puts promedio

#Punto 4
b = a.map { |i| i+1}
puts b

#Ejercicio 4
products = %w(Producto1 Producto2 Producto3 Producto4)
html = ''
products.each do |i|
  html += "<div class='product'><p>#{i}</p></div>\n"
end

#Ejercicio 5
products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w[1000 2000 1500 950]
cuenta = 0
html = ''
products.each do |i|
html += "<div class='product'>"
html += "<p>#{i}</p><p>#{prices[cuenta]}</p>"
html += "</div>\n"
cuenta += 1
end
