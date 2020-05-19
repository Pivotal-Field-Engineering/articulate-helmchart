currentSlot=`(helm get values --all test | yq r - productionSlot)`

if [ "$currentSlot" == "blue" ];
then
  newSlot="green"
else
  newSlot="blue"
fi

echo "newSlot=$newSlot \ncurrentSlot=$currentSlot" | pbcopy
