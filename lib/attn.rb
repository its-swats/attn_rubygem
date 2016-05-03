def attn(method = nil, color = 'yellow')
	colors = {'red' => '031','green' => '032','yellow' => '033','blue' => '034','magenta' => '035','cyan' => '036'}

	color,method = method,nil if colors.keys.include?(method)
	color = 'yellow' unless colors.keys.include?(color)
		
  unless method
    print "\033[#{colors[color]}m* * * * * * * * * * * * * * * * * * * * * * * * *\033[0m\n"
  else
  	proc = Proc.new { method }
    print "\033[#{colors[color]}m* * * * * * * * * * START * * * * * * * * * * * *\033[0m\n"
    p proc.call
    print "\033[#{colors[color]}m* * * * * * * * * * FINISH  * * * * * * * * * * *\033[0m\n"
  end

end
