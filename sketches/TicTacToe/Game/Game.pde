/* @pjs font="Assets/ProductSans.ttf" */

Tile[][] grid;
HUD hud;

PFont timerFont;

void setup() {
  size(640, 800);
  setGame();
}

void draw() {
  //checkHorizontal();
  //checkVertical();

  //checkDiagonalLeftToRight();
  //checkDiagonalRightToLeft();

  //checkTie();

  hud.display();
  hud.update();

  //for (int x = 0; x < grid.length; x++) {
    //for (int y = 0; y < grid[x].length; y++) {
      //grid[x][y].display();
      //grid[x][y].update();
    //}
  //}

  //hud.displayGameOverLine();
}

void mouseReleased() {
  hud.updateTiles();
}

void setGame() {
  grid = new Tile[3][3];
  hud = new HUD();

  if (timerFont == null)
    timerFont = createFont("Assets/ProductSans.ttf", 1);

  for (int x = 0; x < grid.length; x++) {
    for (int y = 0; y < grid[x].length; y++) {
      grid[x][y] = new Tile(x, y, (width-1)/float(grid.length), (height-hud.spacing-1)/float(grid[0].length));
    }
  }
}
