require 'pg'

$conn = PG.connect(dbname: 'test', user:'postgres')
# conn.exec(" create table student(
#     sid int,
#     sname varchar(20),
#     saddress varchar(30),
#     primary key(sid) ) 
# ")

# adds the record of the student 
def add_record()
    puts "Enter the id of student: "
    sid = gets.chomp.to_i
    puts "Enter Name of the student:  "
    sname = gets.chomp
    puts "Enter Address of the student:  "
    saddress = gets.chomp
    $conn.exec("INSERT INTO student values( '#{sid}', '#{sname}', '#{saddress}' )" )
end

# reads the record of the student
def read_record()
    rows = $conn.exec("SELECT * FROM student order by sid")
    for i in rows
        puts i
    end
end

# update the record of the student
def update_record()
    puts "1. update Name ?"
    puts "2. update Address ?"
    choice = gets.chomp
    puts "Enter the id of the student"
    get_sid = gets.chomp
    case choice
    when '1'
        puts "Enter the new name of the student"
        new_name = gets.chomp
        $conn.exec("UPDATE student SET sname = '#{new_name}' WHERE sid = #{get_sid} ")
    when '2'
        puts "Enter the new address of the student"
        new_address = gets.chomp
        $conn.exec("UPDATE student SET saddress = '#{new_address}' WHERE sid = #{get_sid} ")
    else
        puts "wrong input!"
    end
end

# delete the record of the student
def delete_record()
    puts "Enter the id of the student you want to delete: "
    get_sid = gets.chomp
    $conn.exec("DELETE FROM student WHERE sid = #{get_sid}")
end

#main program
while (true)
    puts "what operation do you like to perform ?"
    puts "1. Add student data"
    puts "2. Read student data"
    puts "3. Update student data"
    puts "4. Delete student data"
    puts "5. for exit"

    get_choice = gets.chomp

    case get_choice
    when '1'
        add_record
    when '2'
        read_record
    when '3'
        update_record
    when '4'
        delete_record
    else
        puts "Thanks for your time !"
        exit
    end
end

