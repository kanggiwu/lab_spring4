{
  const sonata ={
    carColor : 'black',
    wheelNum :4,
    speed:40,
  };

  {
    const carColor = sonata.carColor;
    const wheelNum = sonata.wheelNum;
    const speed = sonata.speed;
  }
  //추천
  {
  const {carColor,wheelNum,speed} = sonata;
  console.log(carColor,wheelNum,speed);
  
  const {carColor: sonataColor ,wheelNum: sonataWheelNum ,speed = sonataSpeed} = sonata;
  console.log(sonataColor,sonataWheelNum,sonataSpeed);
  }

  //배열 -대괄호 사용
  {
    const fruit = ['🥝','🍓'];
    const one = fruit[0];
    const two = fruit[1];

    console.log(one,two);
  }

  {
    const [one,two] = fruit;
    console.log(one,two);
  }

}