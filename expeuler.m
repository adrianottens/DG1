function y = expeuler(f, t0,h,T, y0)
  y=[y0];
  yn= y0;
  for t=t0:h:T-h
    yn = yn + h.*f(yn);
    y=[y,yn];
  endfor
  
endfunction