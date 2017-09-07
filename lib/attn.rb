require 'awesome_print'

def attn(variable = nil, color = '')
	colors = {'red' => '031','green' => '032','yellow' => '033','blue' => '034','magenta' => '035','cyan' => '036'}

	color,variable = variable,nil if colors.keys.include?(variable)
	color = colors.keys.sample unless colors.keys.include?(color)

	unless variable
		puts "\033[#{colors[color]}m* * * * * * * * * * * * * * * * * * * * * * * * *\033[0m\n"
	else
		proc = Proc.new { variable }
		puts "\033[#{colors[color]}m* * * * * * * * * * START * * * * * * * * * * * *\033[0m"
		detail_report(variable)
		ap proc.call
		puts "\033[#{colors[color]}m* * * * * * * * * * FINISH  * * * * * * * * * * *\033[0m"
		puts
	end

end

private

def detail_report(variable)
	print "Object: #{variable}"
	print " -- Class: #{variable.class}"
	print " -- Length: #{variable.length}" if variable.respond_to?(:length)
	print " -- Caller #{caller[1]}\n"
end
