require 'colorize'

$COLORS = ['red','green','light_green','yellow','blue','magenta','cyan']

def attn(variable = nil, color = '')

	color,variable = variable,nil if $COLORS.include?(variable)
	color = $COLORS.sample unless $COLORS.include?(color)

	unless variable
		face_break
	else
		@color,@variable = color,variable
		detail_report
		display_variable
		close_report
	end

end

private

def display_variable
	proc = Proc.new { @variable }
	puts
	p proc.call
	puts
end

def face_break
	chars = %w"😎 😇 😈 👹 👺 👻 👿 💀 👽 😂 🤣"
	puts "#{chars.sample}  " * 40
end

def close_report
	str = "⬆ " * 15
	str += " FINISH "
	str += "⬆ " * 15
	puts str.send(@color)
end

def detail_report
	secondary_color = @color == 'red' ? 'blue' : 'red'
	str = "\n"
	str += "⬇ ".send(@color) * 5

	str += " CLASS:".send(@color)
	str += " #{@variable.class} ".send(secondary_color).bold

	if @variable.respond_to?(:length)
		str += "LENGTH:".send(@color)
		str += " #{@variable.length} ".send(secondary_color).bold
	end

	str += "CALLER:".send(@color)
	str += " #{caller[-1]} ".send(secondary_color).bold

	str += "⬇ ".send(@color) * 5
	puts str
end














