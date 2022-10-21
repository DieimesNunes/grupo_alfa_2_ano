var incrementButton = document.getElementsByClassName('increment');
var decrementButton = document.getElementsByClassName('decrement');
//console.log(incrementButton);
//console.log(decrementButton);
for(var i = 0; i < incrementButton.length; i++){
    var button = incrementButton[i];
    button.addEventListener('click',function(event){
        var buttonClicked = event.target;
        //console.log(buttonClicked);
        var input = buttonClicked.parentElement.children[1];
        //console.log(input);
        var inputValue = input.value;

        var newValue = parseInt(inputValue) + 1;
        console.log(newValue);

        input.value = newValue;
    })
}

for(var i = 0; i < decrementButton.length; i++){
    var button = decrementButton[i];
    button.addEventListener('click',function(event){
        var buttonClicked = event.target;
        //console.log(buttonClicked);
        var input = buttonClicked.parentElement.children[1];
        //console.log(input);
        var inputValue = input.value;

        var newValue = parseInt(inputValue) - 1;
        //console.log(newValue);

        if (newValue >= 0 ) {
            input.value = newValue;
        }
        
    })
}