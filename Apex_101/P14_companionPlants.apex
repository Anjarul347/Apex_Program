

/*Some plants are considered companion plants. They grow better when planted next to each other. For the purpose of this problem, we consider the following plants to be companions: lettuce and cucumbers, lettuce and onions, onions and carrots, and onions and tomatoes.

Write a function isCompanion that takes as input two strings plant1 and plant2. If the two plants are companion plants based on the criteria described above, return true. Otherwise, return false.

companionPlants('onions', 'lettuce') = true

companionPlants('lettuce', 'tomatoes') = false
*/

public Boolean companionPlants(String plant1, String plant2) {
    if(plant1=='lettuce' && (plant2=='cucumbers' || plant2=='onions'))
        return true;

    else if((plant1=='cucumbers' || plant1=='onions') && plant2=='lettuce')
        return true;
        
    else if(plant1=='onions' && (plant2=='carrots' || plant2=='tomatoes'))
        return true;

    else if((plant1=='carrots' || plant1=='tomatoes') && plant2=='onions')
        return true;

    else
        return false;
    
}