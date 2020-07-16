// Gmsh project created on Mon Apr 27 22:10:17 2020
SetFactory("OpenCASCADE");
//+
Nx = 15; Rx = 1.00;
Ny = 15; Ry = 1.00;
Nc = 15; Rc = 1.00;
Nb = 8; Rb = 1.00;
Nb1 = 25; Rb1 = 1.10;
Nb2 = 7; Rb2 = 1.00;

//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {50, -50, 0, 1.0};
//+
Point(3) = {50, 50, 0, 1.0};
//+
Point(4) = {-50, 50, 0, 1.0};
//+
Point(5) = {-50, -50, 0, 1.0};

//cylinder points
//+
Point(6) = {-1.767766953, -1.767766953, 0, 1.0};
//+
Point(7) = {1.767766953, -1.767766953, 0, 1.0};
//+
Point(8) = {1.767766953, 1.767766953, 0, 1.0};
//+
Point(9) = {-1.767766953, 1.767766953, 0, 1.0};

//cylinder points
//+
Point(10) = {-20.767766953, -20.767766953, 0, 1.0};
//+
Point(11) = {20.767766953, -20.767766953, 0, 1.0};
//+
Point(12) = {20.767766953, 20.767766953, 0, 1.0};
//+
Point(13) = {-20.767766953, 20.767766953, 0, 1.0};


//+
Line(1) = {2, 3}; Transfinite Curve {1} = Ny Using Progression Ry;
//+
Line(2) = {3, 4}; Transfinite Curve {2} = Nx Using Progression Rx;
//+
Line(3) = {4, 5}; Transfinite Curve {3} = Ny Using Progression Ry;
//+
Line(4) = {5, 2}; Transfinite Curve {4} = Nx Using Progression Rx;
//+
Circle(5) = {10, 1, 11}; Transfinite Curve {5} = Nc Using Progression Rc;
//+
Circle(6) = {11, 1, 12}; Transfinite Curve {6} = Nc Using Progression Rc;
//+
Circle(7) = {12, 1, 13}; Transfinite Curve {7} = Nc Using Progression Rc;
//+
Circle(8) = {13, 1, 10}; Transfinite Curve {8} = Nc Using Progression Rc;
//+
Circle(9) = {6, 1, 7}; Transfinite Curve {9} = Nc Using Progression Rc;
//+
Circle(10) = {7, 1, 8}; Transfinite Curve {10} = Nc Using Progression Rc;
//+
Circle(11) = {8, 1, 9}; Transfinite Curve {11} = Nc Using Progression Rc;
//+
Circle(12) = {9, 1, 6}; Transfinite Curve {12} = Nc Using Progression Rc;
//+
Line(13) = {10, 5}; Transfinite Curve {13} = Nb Using Progression Rb;
//+
Line(14) = {13, 4}; Transfinite Curve {14} = Nb Using Progression Rb;
//+
Line(15) = {12, 3}; Transfinite Curve {15} = Nb Using Progression Rb;
//+
Line(16) = {11, 2}; Transfinite Curve {16} = Nb Using Progression Rb;
//+
Line(17) = {6, 10}; Transfinite Curve {17} = Nb1 Using Progression Rb1;
//+
Line(18) = {9, 13}; Transfinite Curve {18} = Nb1 Using Progression Rb1;
//+
Line(19) = {8, 12}; Transfinite Curve {19} = Nb1 Using Progression Rb1;
//+
Line(20) = {7, 11}; Transfinite Curve {20} = Nb1 Using Progression Rb1;

//+
Curve Loop(1) = {13, 4, -16, -5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {16, 1, -15, -6};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {15, 2, -14, -7};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {14, 3, -13, -8};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {17, 5, -20, -9};
//+
Plane Surface(5) = {5};
//+
Curve Loop(6) = {20, 6, -19, -10};
//+
Plane Surface(6) = {6};
//+
Curve Loop(7) = {19, 7, -18, -11};
//+
Plane Surface(7) = {7};
//+
Curve Loop(8) = {18, 8, -17, -12};
//+
Plane Surface(8) = {8};

//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
//+
Transfinite Surface {5};
//+
Transfinite Surface {6};
//+
Transfinite Surface {7};
//+
Transfinite Surface {8};

//+
Recombine Surface {1};
//+
Recombine Surface {2};
//+
Recombine Surface {3};
//+
Recombine Surface {4};
//+
Recombine Surface {5};
//+
Recombine Surface {6};
//+
Recombine Surface {7};
//+
Recombine Surface {8};

//+
Physical Surface("box1") = {5, 6, 7, 8};
//+
Physical Surface("box2") = {1, 2, 3, 4};
