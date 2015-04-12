delete(obj);
obj = sensorgroup('AndroidMobile')

import java.awt.Robot;import java.awt.event.*;
mouse = Robot;
%m1 = obj.Orientation(1,1);
%m2 = obj.Orientation(1,2);
%mouse.mouseMove(m1, m2);
%screenSize = get(0, 'screensize');
tic;
while (toc<40)
    m1 = obj.Orientation(1,1);
    m2 = obj.Orientation(1,2);
    x = (683*m1)/90;
    y = (384*m2)/90;
    mouse.mouseMove(x, y);
    pause(0.00000000001);
end
delete(obj);