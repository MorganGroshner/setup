#Get line of touchpad
ID=$(xinput | grep Touchpad)

#Get id of touchpad
ID=`echo ${ID#*id=} | awk '{print $1}'`

#Set l0 to turn off the touchpad
alias l0="xinput set-prop ${ID} \"Device Enabled\" 0"

#Set l1 to turn on the touchpad
alias l1="xinput set-prop ${ID} \"Device Enabled\" 1"
