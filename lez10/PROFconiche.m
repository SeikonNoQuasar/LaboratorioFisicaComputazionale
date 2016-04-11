sol = Solve[ { z == 1/2 + lambda x,
 	               z^2 == x^2 + y^2 },
                  {y,z}
                  ];

coniche[x_,lambda_] = y /. sol;


gra1 = Plot[ coniche[x,0], {x,-3,3}];
gra2 = Plot[ coniche[x,0.5], {x,-3,3}];
gra3 = Plot[ coniche[x,1], {x,-3,3}];
gra4 = Plot[ coniche[x,2], {x,-3,3}];

gracon = Show[ gra1, gra2, gra3, gra4];

Manipulate[ Plot[ coniche[x,lambda], {x,-3,3}], {lambda,0,2}];

