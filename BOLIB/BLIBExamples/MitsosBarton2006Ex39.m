function w=MitsosBarton2006Ex39(x,y,keyf,keyxy)
% This file provides all functions defining MitsosBarton2006Ex39 problem 
% and their first and second order derivatives.
% [dim_x dim_y dim_G dim_g] = [1 1 3 2]



if nargin<4 || isempty(keyxy)
    switch keyf
    case 'F'; w = x;
    case 'G'; w = [-1 1;-1 0; 1 0]*[x;y]-[0; 10; 10];   
    case 'f'; w = y^3;  
    case 'g'; w = [-y-1; y-1];    
    end    
else
    switch keyf
    case 'F'
        switch keyxy
        case 'x' ; w = 1;         
        case 'y' ; w = 0;         
        case 'xx'; w = 0;
        case 'xy'; w = 0;
        case 'yy'; w = 0;
        end 
    case 'G'  
        switch keyxy
        case 'x' ; w = [-1;-1; 1];    
        case 'y' ; w = [ 1; 0; 0];       
        case 'xx'; w = zeros(3,1);
        case 'xy'; w = zeros(3,1);
        case 'yy'; w = zeros(3,1);
        end           
	case 'f'   
        switch keyxy
        case 'x' ; w = 0;    
        case 'y' ; w = 3*y^2;        
        case 'xx'; w = 0;
        case 'xy'; w = 0;
        case 'yy'; w = 6*y;
        end           
	case 'g'   
        switch keyxy
        case 'x' ; w = [ 0; 0];
        case 'y' ; w = [-1; 1];          
        case 'xx'; w = zeros(2,1);  
        case 'xy'; w = zeros(2,1); 
        case 'yy'; w = zeros(2,1);
        end        
   end   
end

end


