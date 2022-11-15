function numOfPathsToDest(n) {
  let path = 0;
  const helper=(x,y,d)=>{
    if(x==d && y==d){
      path+=1;
    }
    if(x<d){
       helper(x+1,y,d)
       }
    if(y<d && y<x){
       helper(x,y+1,d)
       }
  }
  helper(0,0,n-1)
  return path
}
