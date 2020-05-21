currentSlot=`(helm get values --all test | yq r - productionSlot)`

if [ "$currentSlot" == "blue" ];
then
  newSlot="green"
  echo "Deploying Code to Green Environment"
  echo "http://articulate-bg-stage.caas.pez.pivotal.io"
else
  newSlot="blue"
  echo "Deploying Code to Blue Environment"
  echo "http://articulate-bg-prod.caas.pez.pivotal.io"
fi

echo "\n newSlot=$newSlot \n currentSlot=$currentSlot \n enableSlot=$newSlot.enabled=true \n productionSlot=productionSlot=$newSlot" | pbcopy