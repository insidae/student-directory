@students = []

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "9"
		exit
	else
		puts "I don't know what you meant, try again"
	end
end

def interactive_menu
	loop do
		print_menu
		process = gets.chomp
	end
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	name = gets.chomp
	while !name.empty? do
		puts "Enter Cohort"
		cohort = gets.chomp
		cohort = "N/A" if cohort.empty?
		@students << {:name => name, :cohort => cohort}
		puts "Now we have #{@students.length} students. Any more?"
		name = gets.chomp
	end
end

def show_students
	print_header
	print_students_list
	print_footer
end

def print_header
	puts "The students in my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer
	puts "---------------------------------"
	puts "Overall, we have #{@students.length} in our cohort."
end

interactive_menu