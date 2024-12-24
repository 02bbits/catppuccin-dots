change_backlight() {
# 	local current_brightness
# 	current_brightness=$(get_backlight)

# 	# Calculate new brightness
# 	if [[ "$1" == "+${step}%" ]]; then
# 		new_brightness=$((current_brightness + step))
# 	elif [[ "$1" == "${step}%-" ]]; then
# 		new_brightness=$((current_brightness - step))
# 	fi

# 	# Ensure new brightness is within valid range
# 	if (( new_brightness < 5 )); then
# 		new_brightness=5
# 	elif (( new_brightness > 100 )); then
# 		new_brightness=100
# 	fi

# 	brightnessctl set "${new_brightness}%"
# 	get_icon
# 	current=$new_brightness
# 	notify_user
# }