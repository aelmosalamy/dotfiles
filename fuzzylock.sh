#! /bin/sh
# Screenshot
scrot --overwrite /tmp/locker.png

# Use ImageMagick module to blur the screenshot, uncomment your preference
# Warning: The more effects you add the slower it is to apply the lock
# thus it might feel unresponsive.
convert /tmp/locker.png -scale 10% -scale 1000% /tmp/locker.png

# Lock screen using the generated, blurred image
# Warning: The --nofork option is important since it allows lock to apply
# on sleep and suspend (see i3 configuration "xss-lock")
i3lock --nofork --image /tmp/locker.png

# Use xset to force screen off only if i3lock is still running this is used to prevent screen from going off after user have unlocked the computer
sleep 60; pgrep i3lock && xset dpms force off
