function opArt()

wIM = 1000;
hIM = 1000;
vRows = 10;

vLine = 0.6;
startN = 1;
incN = 0.3;


figure;
hold on;

step = hIM/vRows;

odd = 1;
n = startN;
i = wIM*vLine;
while (i>0)
    iOld = i;
    i = i - incN*(n*n);
    n = n+1;

    if(odd>0)
        for ( v=step:step*2:hIM-step )
            fill([iOld iOld i i], [v v+step v+step v], 'b');
        end
    else
        for ( v=0:step*2:hIM-step )
            fill([iOld iOld i i], [v v+step v+step v], 'b');
        end
    end
    odd = odd*-1;
end

odd = -1;
n = startN;
i = wIM*vLine;
while (i<wIM)
    iOld = i;
    i = i + incN*(n*n);
    n = n+1;

    if(odd>0)
        for ( v=step:step*2:hIM-step )
            fill([iOld iOld i i], [v v+step v+step v], 'b');
        end
    else
        for ( v=0:step*2:hIM-step )
            fill([iOld iOld i i], [v v+step v+step v], 'b');
        end
    end
    odd = odd*-1;
end

axis([0 wIM 0 hIM])