function r = deadpossibility(n,t) %dead possiblility of nth person exactly in (t)th step
    if n == 1
        r = (0.5)^t;
    else
        sum = 0;
        %it is impossible for (n-1)th person to die in steps smaller that (n-1). 
        %Also, if (n-1)th person died in (t)th step it would be impossible for nth person to die in that step as well.
        for tp=n-1:1:t-1
            sum = sum + (deadpossibility(n-1,tp) * (0.5)^(t-tp));
        end
        r = sum;
    end
end