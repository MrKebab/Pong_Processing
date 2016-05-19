void keyPressed(){
touches[keyCode]=true;
}
 
void keyReleased(){
touches[keyCode]=false;
}
 
boolean verifieClavier(char c){
int cc = int(c);
if(cc>96 && cc<123)cc-=32;
return touches[cc];
}
 
boolean verifieClavier(int c){
return touches[c];
}