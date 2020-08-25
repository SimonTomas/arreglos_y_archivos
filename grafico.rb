data = [5, 3, 2, 5, 10]

def chart(arr_data)
    # print arr_data
    a = arr_data.map{|e| "|" + "**" * e}
    puts a 
    print ">"
    arr_data.max.times do
        print "--"
    end
    puts
    arr_data.max.times do |i|
        print " " + (i+1).to_s
    end
    puts
end
chart(data)