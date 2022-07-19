# Write your code here.

def line(customers)
    status = ""
    if customers.empty?
        status = "The line is currently empty."
    else
        status = "The line is currently:"
        number_of_clients = customers.length
        (number_of_clients).times do |i|
            status = status + " #{i + 1}. #{customers[i]}"
        end
    end
    puts status
end

def take_a_number(customers, new_customer)
    customers << new_customer
    puts "Welcome, #{new_customer}. You are number #{customers.length} in line."
end

def now_serving(customers)
    message = ""
    if customers.empty?
        message = "There is nobody waiting to be served!"
    else
        message = "Currently serving #{customers.first}."
        customers.shift
    end

    puts message
end