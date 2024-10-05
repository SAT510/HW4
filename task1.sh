ps aux | grep "program_name" | grep -v grep | awk '{print $2}' | xargs kill -9
