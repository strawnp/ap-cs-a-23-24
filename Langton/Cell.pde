public class Cell {
  private boolean isLight;
  
  public Cell() {
    isLight = true;
  }
  
  public boolean hasLightOn() {
    return isLight;
  }
  
  public void toggle() {
    isLight = !isLight;
  }
}
