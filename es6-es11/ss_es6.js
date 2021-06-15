//Spread_syntax - 주소 참조값만 복사, 그 주소 아래 하나하나 복사X
//https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Spread_syntax

{
  const emp = {key: 'empno'};
  const dept = {key: 'deptno'};
  const array = [emp, dept];

  //array copy
  const arrayCopy = [...array]; //주소값만 복사, 원본 하나
  console.log(array, arrayCopy);

  const arrayCopy2 = [...array, {key : 'bm_no'}];
  emp.key = 'newKey';
  console.log(array, arrayCopy,arrayCopy2);
  
  //object copy
  const otherEmp = {...emp};
  console.log(otherEmp);

  //array contcatenation
  const transportation1 = ['🚌','🚝'];
  const transportation2 = ['✈','⛵'];
  const transportation = [...transportation1,transportation2];
  console.log(transportation);

  //object merge
  const bird1 = {bird1: '🦉'};
  const bird2 = {bird2: '🐦'};
  const birds = {...bird1,...bird2};
  console.log(birds);
  
}