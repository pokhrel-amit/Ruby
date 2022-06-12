require 'pg'
require 'io/console'
require 'text-table'

class Todolistapp
    def initialize()
        @conn = PG.connect(dbname:'todolist',user:'postgres')
        menu
    end

    def menu()
        puts "\n\n****************************TODO LIST APPLICATIONS****************************\n\n"
        puts "\n Please choose the following option\n"
        puts "1. LOGIN ?"
        puts "2. SIGN UP ?"
        get_choice = gets.chomp
        case get_choice
        when '1'
            login
        when '2'
            signup
        else
            puts "wrong input!"
        end
    end

    def login()
        puts "\nEnter your username"
        uname = gets.chomp
        puts "enter your password"
        upassword = STDIN.noecho(&:gets).chomp
        rows = @conn.exec( "SELECT * FROM person")
        result = false
        for i in rows
            if i.values[1] == uname && i.values[3] == upassword
                puts "\n\nYOUR ACCESS IS GRANTED !"
                result = true
                $current_uid = i.values[0]
                break
            end
        end
        if result == false
            puts "\n\nSORRY!!....YOUR ACCESS IS DENIED !"
            exit
        else
            choose_options
        end
    end

    def signup()
        puts "Enter your name"
        uname = gets.chomp
        puts "Enter your email"
        uemail = gets.chomp
        puts "Enter your password"
        upassword = STDIN.noecho(&:gets).chomp
        @conn.exec("INSERT INTO person(uname,uemail,upassword) VALUES('#{uname}', '#{uemail}', '#{upassword}')")
        puts "\n\nTHANK YOU FOR BEIGN THE TODO PART\n\n"
        login
    end

    def add_todo
        puts "Please enter the TITLE :"
        get_title = gets.chomp
        puts "Please enter the Description :"
        get_description = gets.chomp
        puts "Please enter the Deadline :"
        get_deadline = gets.chomp
        puts "Please enter the priority :"
        get_priority = gets.chomp.to_i
        @conn.exec("INSERT INTO task(uid,title,description,deadline,priority) values(#{$current_uid} ,'#{get_title}', '#{get_description}', '#{get_deadline}', #{get_priority} )")
    end

    def delete_todo
        puts "\nEnter the name of the task you want to delete\n"
        del_task = gets.chomp
        @conn.exec("DELETE  FROM task WHERE title = '#{del_task}'")
    end

    def search_todo
        puts "Enter the task name you want to search: "
        search_task = gets.chomp
        rows = @conn.exec("SELECT title,description,deadline,status,priority FROM task WHERE title LIKE '#{search_task}%'" )
        display_todo(rows)
    end

    def display_todo_status
        rows = @conn.exec("SELECT title,description,deadline,status,priority from task WHERE task.uid = #{$current_uid} order by priority,deadline")
        puts "\nyour current todo list are :"
        display_todo(rows)
    end

    def remaining_task
        rows = @conn.exec("SELECT title,description,deadline,status,priority FROM task WHERE status = 'incomplete' AND uid = #{$current_uid} order by priority,deadline")
        puts "\nYour remaining task are :\n"
        display_todo(rows)
    end

    def completed_task
        rows = @conn.exec("SELECT title,description,deadline,status,priority FROM task WHERE status = 'completed' AND uid = #{$current_uid} order by priority,deadline")
        puts "\nYour completed task are : \n"
        display_todo(rows)
    end


    def update_status
        puts "enter the task name you have completed"
        task_name = gets.chomp
        rows = @conn.exec("SELECT title,status,priority,deadline FROM task WHERE uid = #{$current_uid} ORDER BY priority,deadline ")
        temp = []
        for i in rows
            temp.push(i.values)
        end
        temp.each_with_index do |item,index| 
            if item.include?(task_name)
                $get_index = index
            end
        end
        k = temp.slice(0,$get_index)
        if temp[$get_index].include?('completed')
            puts "your task has been completed already "
            puts "Please perform some another important task !"
            puts 
        elsif  k.all?{|item| item.any?('complete')}  || $get_index == 0 
            @conn.exec("UPDATE task SET status = 'completed' WHERE title = '#{task_name}' AND uid = #{$current_uid} ")
        else
            puts "Sorry!.First complete your previous important task "
        end  
    end

    def display_todo(rows)
        table = Text::Table.new
        table.head = ['S.N','TITLE','DESCRIPTION','DEADLINE','STATUS','PRIORITY']
        counter = 1
        for i in rows
            table.rows << [counter, i.values[0], i.values[1], i.values[2], i.values[3], i.values[4]]
            counter += 1
        end
        puts table
    end

    def choose_options()
        while (true)
            puts "\n\nPlease choose the following options!\n"
            puts "1. ADD TODO"
            puts "2. DELETE TODO"
            puts "3. SEARCH TODO"
            puts "4. DISPLAY TODO STATUS"
            puts "5. DISPLAY REMAINING TASK"
            puts "6. DISPLAY COMPLETED TASK"
            puts "7. UPDATE STATUS"
            puts "8. EXIT\n"

            get_choice = gets.chomp

            case get_choice
            when '1'
                add_todo
            when '2'
                delete_todo
            when '3'
                search_todo
            when '4'
                display_todo_status
            when '5'
                remaining_task
            when '6'
                completed_task
            when '7'
                update_status
            when '8'
                puts "THANKS FOR YOUR TIME !! \n\n"
                exit
            else
                puts "Wrong input!"
            end
        end
    end

end

my_todo = Todolistapp.new