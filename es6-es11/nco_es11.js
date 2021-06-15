//Nullish coalescing operator
//https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_operator

{
 {
   const name = 'scott';
   const userName = name || 'Guest';
   console.log(userName);
 }
 {
   const name = null;
   const userName = name || 'Guest';
   console.log(userName);
 }
 {
   const name = '';
   const userName = name || 'Guest';
   console.log(userName);
 }
 {
   const num = 0;
   const message = num || 'undefined';
   console.log(message);
 }
 //문제 해결 구간
 {
   const name = '';
   const userName = name ?? 'Guest';
   console.log(`다르다 ==> ${userName}<==입니다.`);
 }
 {
  const num = 0;
  const message = num ?? 'undefined';
  console.log(`날 ?? 저기 || 비교하지마 ==> ${message}<==입니다.`);
}
}