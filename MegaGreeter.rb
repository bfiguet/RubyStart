#!/usr/bin/env ruby

class MegaGreeter
	attr_accessor	:names

	#Def Obj
	def initialize(names = "World")
		@names = names
	end

	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			#joins names with coma
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	mg.names = "Tom"
	mg.say_hi
	mg.say_bye

	mg.names = ["Albert", "Sam", "Tom", "Rosa", "David"]
	mg.say_hi
	mg.say_bye

	mg.names = nil
	mg.say_hi
	mg.say_bye
end
