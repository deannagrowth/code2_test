float r; 
color bgColor; 
Table data;

void setup(){
  size(600, 600);
 data = loadTable("color5.csv", "header");

}

void draw(){
  background(bgColor); 
  text("back ground # : " + bgColor, 100, 100); 
}

void mousePressed(){
  bgColor = color(random(0,255), random(0,255), random(0,255)); 
  ellipse(mouseX, mouseY, 50, 50);
  TableRow newRow = data.addRow();
  saveTable(data, "color5.csv");
}
