# Las ventas totales dado que en la primera mitad del Año se vende un 10% más.
# Las ventas totales dado que en la segunda mitad del Año se vende un 20% más.

data = File.open('ventas_base.db').readline
data_arr = data.split(',')
data_int = data_arr.map{|e| e.to_f}

first_sem = []
second_sem = []

data_int.length.times do |i|
    if i < 6
        first_sem.push(data_int[i])
    end
end
data_int.length.times do |i|
    if i >= 6
        second_sem.push(data_int[i])
    end
end

ventas_1 = (first_sem.sum * 1.1) + second_sem.sum #Primer Escenario (El primer Semestre se vende un 10% más)
ventas_2 = (second_sem.sum * 1.2) + first_sem.sum #Segundo Escenario (El segundo Semestre se vende un 20% más)
escenario_1 = ventas_1.round(2)
escenario_2 = ventas_2.round(2)
File.write('resultados.data', "#{escenario_1}\n#{escenario_2}")