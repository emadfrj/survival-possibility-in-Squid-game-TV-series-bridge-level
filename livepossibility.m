%survival possiblility of nth person after t steps
function r = livepossibility(n,t)
    sum = 0;%sum of dead possibility for dying in (t)th step and steps before it.
    
    %it is impossibility for (n)th person to die in steps smaller that (n). 
    for tp=n:1:t
        sum = sum + (deadpossibility(n,tp) );
    end
   r = 1-sum;%survival possiblility
end