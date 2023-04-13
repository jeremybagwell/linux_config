#/bin/bash
echo "" 
echo "First: Here's your list of inputs (look for id of CoolTouch)"
echo "" 

echo "##########################"
xinput --list
echo "##########################"

echo ""
echo ""
echo "Second: List of Outputs -- Currently, our touchscreen is using DP-X.Y"
echo ""

echo "##########################"
xrandr
echo "##########################"

echo ""
echo ""
echo "Last, run: xinput --map-to-output id DP-X.Y"
