y = @(x) 2*x^2 - 5*x + 3;

x1 = input('Enter the value of x1: ');
x2 = input('Enter the value of x2: ');

if y(x1) * y(x2) > 0
  fprintf('No response');
  return
endif

if y(x1) == 0
  fprintf('x1 is one of the roots\n');
  return

elseif y(x2) == 0
  fprintf('x2 is one of the roots\n');
  return
 end
 
 for i = 1: 100
   mid = (x1+x2) / 2;
   if y(x1) * y(mid) < 0
     x2 = mid;
   else
     x1 = mid;
    end
    
    if abs(y(x1)) < 1.0E-6
      break
    endif
 endfor
 
 fprintf('The root: %f\nThe number of bisections: %d\n', x1, i);
  

