$COLORS = {'red' => '031','green' => '032','yellow' => '033','blue' => '034','magenta' => '035','cyan' => '036'}

def attn(variable = nil, color = '')

	color,variable = variable,nil if $COLORS.keys.include?(variable)
	color = $COLORS.values.sample unless $COLORS.keys.include?(color)

	unless variable
		display_emoji_break
	else
		@color,@variable = color,variable
		display_detail_header
		display_variable
		display_footer
	end

end

private

def display_variable
	proc = Proc.new { @variable }
	puts
	p proc.call
	puts
end

def display_emoji_break
	chars = %w"😎 😈 👹 👺 👻 👿 💀 👽 😂 🤣 🎃 🐶 🦊 ⭐ 🌟 🏈 🏀 ⚽ ⛔ ❓ 💽 🎁 🌠 🥓 🍤 🍗 🍖 🍕 🍰 🍦 🍭"
	puts "#{chars.sample}  " * 40
end

def display_footer
	str = "⬆ " * 15
	str += " FINISH "
	str += "⬆ " * 15
	puts "\033[#{@color}m#{str}\033[0m\n"
end

def display_detail_header
	secondary_color = @color == '031' ? '034' : '031'

	str = "\n"
	str += "\033[#{@color}m⬇ \033[m" * 5

	str += "\033[#{@color}m CLASS:\033[m"
	str += "\033[#{secondary_color}m #{@variable.class} \033[m"

	if @variable.respond_to?(:length)
		str += "\033[#{@color}mLENGTH:\033[m"
		str += "\033[#{secondary_color}m #{@variable.length} \033[m"
	end

	str += "\033[#{@color}mCALLER:\033[m"
	str += "\033[#{secondary_color}m #{caller[-1]} \033[m"

	str += "\033[#{@color}m⬇ \033[m" * 5
	puts str
end
