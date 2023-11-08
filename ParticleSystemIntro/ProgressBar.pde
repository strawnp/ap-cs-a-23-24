public class ProgressBar {
  private int duration;
  private float timer;
  private float maxSize;
  private float currentSize;
  private int x;
  private int y;
  private int h;

  public ProgressBar() {
    duration = 13;
    timer = 0;
    maxSize = 400;
    currentSize = 0;
    x = 50;
    y = 200;
    h = 100;
  }

  public void run() {
    timer += 1 / frameRate;

    fill(#7af736);
    textSize(36);
    text(duration, 50, 175);

    // timer / duration = current / max
    // max * timer / duration = current
    currentSize = maxSize * timer / duration;

    rect(x, y, currentSize, h);

    text("Timer: " + nf(timer, 0, 2), 50, 350);

    if (timer > duration) {
      timer = 0;
    }
  }
}
