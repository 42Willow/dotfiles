# Slightly modified version of https://github.com/quantum5/wayland-recorder/blob/master/record-screend

#!/bin/bash

recordings=0

update() {
    # echo "recordings: $recordings"
    if [ "$recordings" -gt 0 ]; then
        echo "  Recording"
    else
        echo 
    fi
}

begin_record() {
    # echo "begin_record called"
    recordings=$((recordings + 1))
    update
}

end_record() {
    # echo "end_record called"
    recordings=$((recordings - 1))
    update
}

exec sleep infinity &

pid="$!"
# echo "Script PID: $pid"
trap begin_record SIGUSR1
trap end_record SIGUSR2
trap "kill $pid" EXIT

while :; do
    wait "$pid"
done
