$COLORS = {'red' => '031','green' => '032','yellow' => '033','blue' => '034','magenta' => '035','cyan' => '036'}

# Using ANSI color coding to spruce things up
# SYNTAX: \033[COLOR_CODEmINNER_TEXT\033[0m
# There are cleaner ways of doing the color manipulation
# But this approach allows for a zero dependency gem, which is better :-)


def attn(variable = nil, msg = nil)

	return display_emoji_break unless variable

	@color = $COLORS.values.sample
	@variable = variable
	@msg = msg ? msg : " FINISH "
	@secondary_color = @color == '031' ? '034' : '031'

	# View Methods
	display_detail_header
	display_variable
	display_footer

end

private

def display_variable
	proc = Proc.new { @variable }
	puts
	p proc.call
	puts
end

# 40 rando emojis for fun && eye catching line breaks
def display_emoji_break
	chars = %w"😎 😈 👹 👺 👻 👿 💀 👽 😂 🤣 🎃 🐶 🦊 ⭐ 🌟 🏈 🏀 ⚽ ⛔ ❓ 💽 🎁 🌠 🥓 🍤 🍗 🍖 🍕 🍰 🍦 🍭"
	puts "#{chars.sample}  " * 40
end

# TODO: off by one error on dynamic footer length
def display_footer
	str = "\033[#{@color}m⬆ " * ((@length / 4) - (@msg.length / 2) - 1)
	str += "\033[#{@secondary_color}m #{@msg} "
	str += "\033[#{@color}m⬆ \033[0m" * ((@length / 4))
	puts str
end

def display_detail_header
	# If the color being passed in is RED set secondary color to BLUE

	# Initial arrows with a new line padding the top
	str = "\n"
	str += "\033[#{@color}m⬇ \033[m" * 5

	# Variable Class Display
	str += "\033[#{@color}m CLASS:\033[m"
	str += "\033[#{@secondary_color}m #{@variable.class} \033[m"

	# IF variable has a length display it
	if @variable.respond_to?(:length)
		str += "\033[#{@color}mLENGTH:\033[m"
		str += "\033[#{@secondary_color}m #{@variable.length} \033[m"
	end

	# Show where the code was called from last
	str += "\033[#{@color}mCALLER:\033[m"
	str += "\033[#{@secondary_color}m #{caller[-1]} \033[m"

	# Closing arrows
	str += "\033[#{@color}m⬇ \033[m" * 5

	# Output completed string
	puts str

	# Set @length - non encoded string for use in footer
	@length = str.gsub(/\e\[\d{3}m/, '').gsub(/\e\[m/, '').length
end
