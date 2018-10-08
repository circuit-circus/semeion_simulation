ArrayList<Sem> sems; 
CollectiveMind collectiveMind;

int rowNum = 4;
int colNum = 4; 

void setup() {
  size(800, 800);
  sems = new ArrayList();  
  collectiveMind = new CollectiveMind();
  for (int j = 0; j < rowNum; j++){
  for (int i = 0; i < colNum; i++) {
    sems.add(new Sem((width / colNum) * i + ((width/colNum)/2) + random(-((width/colNum)/3), ((width/colNum)/3)), (height / rowNum) * j + ((height / rowNum)/2) + random(-((height/rowNum)/3), ((height/rowNum)/3)), int(random(5, 8)), collectiveMind));  
  }
  }
  noStroke();
  colorMode(HSB);
}

void draw() { 
  background(255);  
  for (int i = 0; i < sems.size(); i++) { 
    sems.get(i).display(); 
  }
}
