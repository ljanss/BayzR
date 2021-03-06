//
//  BayzR --- modelMean.h
//
// Computational class for fitting mean (intercept)
// - this one has no data!
// - par is size 1 to hold mean
// - hpar is not used
// Note: the mean-term goes through the parsing because there is a "1" inserted in the
// model-terms, but it means the name set in the base-class constructor is "1" and needs
// to be changed.
//
//  Created by Luc Janss on 03/08/2018.
//

#ifndef modelMean_h
#define modelMean_h

#include <Rcpp.h>
#include "modelCoeff.h"

class modelMean : public modelCoeff {
   
public:

   modelMean(dcModelTerm & modeldescr, modelBase * rmod)
         : modelCoeff(modeldescr, rmod) {
      fname = "mn";
      par.initWith(1,0.0l);
      parName = "mean";
   }

   ~modelMean() {
   }

   void sample() {
      size_t obs;
      double sum=0.0, temp=0.0;
      for (obs=0; obs < Nresid; obs++) resid[obs] += par[0];
      for (obs=0; obs< Nresid; obs++) {
         sum += resid[obs]*residPrec[obs];
         temp += residPrec[obs];
      }
      par[0] = R::rnorm((sum/temp), sqrt(1.0/temp));
      for (obs=0; obs < Nresid; obs++) resid[obs] -= par[0];
   }

private:
};

#endif /* modelMean_h */
