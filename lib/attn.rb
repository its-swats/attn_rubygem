require 'awesome_print'
require 'colorize'

$COLORS = {'red' => '031','green' => '032','yellow' => '033','blue' => '034','magenta' => '035','cyan' => '036'}

def attn(variable = nil, color = '')

	color,variable = variable,nil if $COLORS.keys.include?(variable)
	color = $COLORS.keys.sample unless $COLORS.keys.include?(color)

	unless variable
		puts "\033[#{$COLORS[color]}m* * * * * * * * * * * * * * * * * * * * * * * * *\033[0m\n"
	else
		proc = Proc.new { variable }
		detail_report(variable, color)
		ap proc.call
		puts "\033[#{$COLORS[color]}m* * * * * * * * * * FINISH  * * * * * * * * * * *\033[0m"
		puts String.colors
		puts
	end

end

private

def detail_report(variable, color)
	print "* * * * * ".send(color)

	print "Object:".send(color)
	print " #{variable} ".green

	print "Class:".send(color)
	print " #{variable.class} ".green

	print "Length:".send(color) if variable.respond_to?(:length)
	print " #{variable.length} ".green if variable.respond_to?(:length)

	print "Caller".send(color)
	print " #{caller[1]}".green

	print " * * * * *\n".send(color)
end














