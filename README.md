# fin1
  Dennis Scheglov     Josh Pelton
  In this project, we are given a formula to use to calculate pi as a perimeter of an n-sided polygon.
  The formula undergoes extreme precision loss because of the way that floating point numbers work.
  Floating point precision gets denser the closer one gets to zero. The formula, sqrt((1-(sqrt(1-sin(a)^2)))/2), starts with 
  sqrt(1-b), where b = sqrt(1-sin(a)^2). As we take very small angles (as is the case with the angle between sides of an almost
  circle), sin(a)^2 goes to zero, so b is very close to 1. Both 1 and b have precisions acceptable for values near 1, but nowhere
  near acceptable for values closer to zero. So when we take 1-b and get a small number close to zero, that unacceptable
  precision moves down the line to zero. For small indices (for larger angles) this effect isn't noticeable, but it begins to
  emerge as the angles approach zero. This is the reason for the drastic deviation in precision.
