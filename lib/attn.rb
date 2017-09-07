require 'colorize'
require 'awesome_print'

$COLORS = {'red' => '031','green' => '032','yellow' => '033','blue' => '034','magenta' => '035','cyan' => '036'}

def attn(variable = nil, color = '')

	color,variable = variable,nil if $COLORS.keys.include?(variable)
	color = $COLORS.keys.sample unless $COLORS.keys.include?(color)

	unless variable
		puts star_break(color)
	else
		puts detail_report(variable, color)
		display_variable(variable)
		puts close_report(color)
	end

end

private

def display_variable(variable)
	proc = Proc.new { variable }
	puts
	ap proc.call
	puts
end

def star_break(color)
	""
end

def close_report(color)
	str = "⬆ " * 15
	str += " FINISH "
	str += "⬆ " * 15
end

def detail_report(variable, color)
	str = "\n"
	str += "⬇ " * 5

	str += " Class:"
	str += " #{variable.class} ".send(color)

	str += "Length:" if variable.respond_to?(:length)
	str += " #{variable.length} ".send(color) if variable.respond_to?(:length)

	str += "Caller:"
	str += " #{caller[-1]} ".send(color)

	str += "⬇ " * 5
end














