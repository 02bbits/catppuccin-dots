{
    "height": 32,
    "spacing": 10,
    "modules-left": [
        "sway/workspaces",
        "custom/media"
    ],
    "modules-center": [
        "sway/window"
    ],
    "modules-right": [
        "idle_inhibitor",
        "custom/weather",
        "custom/vpn",
        "network",
        "pulseaudio",
        "clock",
        "clock#date",
        "battery",
        "tray"
    ],
    "sway/mode": {
        "format": "<span style=\"italic\">{}</span>"
    },
    "sway/scratchpad": {
        "format": "{icon} {count}",
        "show-empty": false,
        "format-icons": [
            "",
            ""
        ],
        "tooltip": true,
        "tooltip-format": "{app}: {title}"
    },
    "sway/window": {
        "on-click": "ags -t datemenu",
        "tooltip": false
    },
    "idle_inhibitor": {
        "format": "{icon}",
        "format-icons": {
            "activated": "",
            "deactivated": ""
        }
    },
    "tray": {
        "spacing": 10
    },
    "clock": {
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": "{:%Y-%m-%d}"
    },
    "clock#date": {
        "format": "{:%d.%m.%Y}",
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>"
    },
    "backlight": {
        "format": "{icon} {percent}%",
        "format-icons": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
        ]
    },
    "battery": {
        "states": {
            "warning": 30,
            "critical": 15
        },
        "format": "{icon} {capacity}%",
        "format-charging": " {capacity}%",
        "format-plugged": " {capacity}%",
        "format-icons": [
            "",
            "",
            "",
            "",
            ""
        ],
        "on-click": "ags -t quicksettings"
    },
    "pulseaudio": {
        "format": "{icon}    {volume}%",
        "format-bluetooth": " {icon} {volume}% {format_source}",
        "format-bluetooth-muted": "  {icon} {format_source}",
        "format-muted": "  {format_source}",
        "format-source": " {volume}%",
        "format-source-muted": "",
        "format-icons": {
            "default": [
                "",
                "",
                ""
            ]
        },
        "on-click": "pavucontrol"
    },
    "custom/weather": {
        "format": "{}",
        "interval": 3600,
        "exec": "curl -s 'https://wttr.in/~41.03508,28.98331?format=1'",
        "exec-if": "ping wttr.in -c1"
    },
    "custom/vpn": {
        "tooltip": false,
        "format": "VPN {} ",
        "exec": "mullvad status | grep -q 'Connected' && echo '' || echo ''",
        "interval": 5,
        "on-click": "mullvad connect",
        "on-click-right": "mullvad disconnect"
    },
    "network": {
        "format-wifi": "     {essid} ({signalStrength}%)",
        "format-ethernet": "⬇{bandwidthDownBytes} ⬆{bandwidthUpBytes}",
        "interval": 3,
        "format-linked": "{ifname} (No IP) ",
        "format": "",
        "format-disconnected": "",
        "format-alt": "{ifname}: {ipaddr}/{cidr}",
        "on-click": "wl-copy $(ip address show up scope global | grep inet | head -n1 | cut -d/ -f 1 | tr -d [:space:] | cut -c5-)",
        "tooltip-format": " {bandwidthUpBits}  {bandwidthDownBits}\n{ifname}\n{ipaddr}/{cidr}\n",
        "tooltip-format-wifi": " {essid} {frequency}MHz\nStrength: {signaldBm}dBm ({signalStrength}%)\nIP: {ipaddr}/{cidr}\n {bandwidthUpBits}  {bandwidthDownBits}",
        "min-length": 17,
        "max-length": 17
    }
}
