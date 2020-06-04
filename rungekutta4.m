function y = rungekutta4(f, t0,h,T, y0)
  y=[y0];
  yn= y0;
  for t=t0:h:T-h
    k1= f(yn);
    k2= f(yn+(h/2).*k1);
    k3= f(yn+(h/2).* k2);
    k4= f(yn+h.*k3);
    yn = yn + (h/6)*(k1+2*k2+2*k3+k4);
    y=[y,yn];
  endfor
  
endfunction