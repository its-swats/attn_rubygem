require 'colorize'

$COLORS = ['red','green','yellow','blue','magenta','cyan']

def attn(variable = nil, color = '')

	color,variable = variable,nil if $COLORS.include?(variable)
	color = $COLORS.keys.sample unless $COLORS.include?(color)

	unless variable
		face_break
	else
		detail_report(variable, color)
		display_variable(variable)
		close_report(color)
	end

end

private

def display_variable(variable)
	proc = Proc.new { variable }
	puts
	p proc.call
	puts
end

def face_break
	chars = %w"😎 😇 😈 👹 👺 👻 👿 💀 👽 😂 🤣"
	puts "#{chars.sample}  " * 40
end

def close_report(color)
	str = "⬆ " * 15
	str += " FINISH "
	str += "⬆ " * 15
	puts str.send(color)
end

def detail_report(variable, color)
	str = "\n"
	str += "⬇ ".send(color) * 5

	str += " Class:".send(color)
	str += " #{variable.class} ".red

	str += "Length:".send(color) if variable.respond_to?(:length)
	str += " #{variable.length} ".red if variable.respond_to?(:length)

	str += "Caller:".send(color)
	str += " #{caller[-1]} ".red

	str += "⬇ ".send(color) * 5
	puts str
end














