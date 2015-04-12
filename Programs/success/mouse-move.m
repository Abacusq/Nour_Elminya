

import java.awt.Robot;
mouse = Robot;
mouse.mouseMove(0, 0);
screenSize = get(0, 'screensize');
for i = 1 : screenSize(4)
    mouze.mouseMove(i, 1);
    pause(0.00001);
end