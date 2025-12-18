#!/bin/zsh

prior_list=$(ls /dev)
read -n 1 foo
after_list=$(ls /dev)

dev_change=$(diff <(echo $prior_list) <(echo $after_list) --color=auto)
dev_name=   $(echo $dev_change | tail -n 1)
diff_state= $(echo $dev_change | head -n 1)
if [[ -z $(echo $diff_state | grep a) ]]; then
    dev_state=Plugged
elif [[ -z $(echo $diff_state | grep d) ]]; then
    dev_state=Unplugged
else
    dev_state=No change
fi

notify-send $dev_state $dev_name
