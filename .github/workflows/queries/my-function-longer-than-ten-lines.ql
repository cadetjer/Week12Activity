/**
 * @description My queries
 * @kind problem
 * @id javascript/my-function-queries
 * @problem.severity recommendation
 */
import javascript

/**
 * Holds if a function is longer than 10 lines.
 */
predicate isLongerThanTenLines(Function f) {
  exists(f.getNumLines() >= 10);
}

from Function f
where isLongerThanTenLines(f)
select f, "has at least 10 lines"
