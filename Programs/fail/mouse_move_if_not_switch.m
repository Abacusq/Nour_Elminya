delete(obj);
obj = sensorgroup('AndroidMobile')

import java.awt.Robot;import java.awt.event.*;
mouse = Robot;
%m1 = obj.Orientation(1,1);
%m2 = obj.Orientation(1,2);
%mouse.mouseMove(m1, m2);
%screenSize = get(0, 'screensize');
m1count = 0;m2count = 0;threshold = 5;lm1=0;lm2=0;
tic;
while (toc<10)
    m1 = obj.Orientation(1,1);
    m2 = obj.Orientation(1,2);
    if(m1 ~= lm1 || m2 ~= lm2)
         diff1 = lm1 - m1;
         diff2 = lm2 - m2;
         %
         if(diff1 > threshold && diff2 < threshold)
                 mouse.mouseMove(diff1, 0);
         end
         if(diff2 > threshold && diff1 < threshold)
                 mouse.mouseMove(0, diff2);
         end
         if(diff1 > threshold && diff2 > threshold)
                 mouse.mouseMove(diff1, diff2);
         end
         %}
         %{
         if(diff1 > threshold || diff2 > threshold)
         continue;
         else
            goto endloop;
         end
         %}
    end
    %mouse.mouseMove(diff1, diff2);
    %mouse.mouseMove(2*m1, 2*m2);
    pause(0.0000001);
    %endloop : 
    lm1 = m1; lm2 = m2;
end
delete(obj);
