data = File.open('notas.data').readlines
data_arr = data.map{|e| e.chomp}

def nota_mas_alta(nota)
    arr = []
    arr_notas = nota.gsub(/[A-Za-z,]/, '').split(//)
    nota_int = arr_notas.map{|e| e.to_i}
    nota_max = arr.push(nota_int.max)
    print nota_max
    puts
end
nota_mas_alta(data_arr[0])