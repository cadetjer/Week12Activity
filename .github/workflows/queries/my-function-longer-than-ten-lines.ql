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
predicate isLongerThanTenLines(Function func) {
  exists(Function func |
    func.getNumLines() > 10
  )
}

from Function func
where isLongerThanTenLines(func)
select func, "is longer than 10 lines"
