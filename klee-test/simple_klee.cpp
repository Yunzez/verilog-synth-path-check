#include <klee/klee.h>

int main() {
    int x, y;

    // Make them symbolic
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");

    if (x > 0) {
        if (y > 0) {

        } else {
            // branch 2
        }
    } else {
        if (y == 1234) {
            // branch 3
        } else {
            // branch 4
        }
    }

    return 0;
}
