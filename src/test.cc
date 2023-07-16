#include "test.h"


double Test::foo() {
    xt::xarray<double> arr1
        {{1.0, 2.0, 3.0},
        {2.0, 5.0, 7.0},
        {2.0, 5.0, 7.0}};
    return arr1(1,2);
}
