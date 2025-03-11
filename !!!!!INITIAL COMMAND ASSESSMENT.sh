echo "OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f 2)" && \
echo "Kernel: $(uname -r)" && \
echo "Uptime: $(uptime -p)" && \
echo "CPU: $(lscpu | grep "Model name" | cut -d ':' -f 2 | xargs)" && \
echo "RAM: $(free -h | grep Mem | awk '{print $2}')" && \
echo "Graphics: $(lspci | grep -i vga | cut -d ':' -f 3 | xargs)" && \
echo "Sound: $(lspci | grep -i audio | cut -d ':' -f 3 | xargs)" && \
echo "Network: $(ip route | grep default | awk '{print $3}')" && \
echo "Disk Usage: $(df -h / | grep / | awk '{print $3 " used out of " $2}')" && \
echo "Shell: $SHELL" && \
echo "Logged-in User: $(whoami)" && \
echo "Environment: $(printenv | grep -E 'DESKTOP_SESSION|XDG_CURRENT_DESKTOP' | tr '\n' ' ')"
