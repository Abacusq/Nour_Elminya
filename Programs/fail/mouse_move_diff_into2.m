delete(obj);
obj = sensorgroup('AndroidMobile')

import java.awt.Robot;import java.awt.event.*;
mouse = Robot;
tic;
while (toc<30)
    m1 = obj.Orientation(1,1);
    m2 = obj.Orientation(1,2);
    if(m1 ~= lm1 || m2 ~= lm2)
         diff1 = lm1 - m1;
         diff2 = lm2 - m2;
         %
         switch(threshold)
             case(diff1 > threshold && diff2 < threshold)
                 mouse.mouseMove(2*diff1, 0);
             case(diff2 > threshold && diff1 < threshold)
                 mouse.mouseMove(0, 2*diff2);
             case(diff1 > threshold && diff2 > threshold)
                 mouse.mouseMove(2*diff1, 2*diff2);
         end
         %      
         %if(diff1 > threshold || diff2 > threshold)
         %continue;
         %else
         %   goto endloop;
         %end
    end
    %mouse.mouseMove(diff1, diff2);
    %mouse.mouseMove(2*m1, 2*m2);
    pause(0.0000000001);
    %endloop : 
    lm1 = m1; lm2 = m2;
end
delete(obj);
