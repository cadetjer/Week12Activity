/**
 * @description finds functions longer than 10 lines
 * @kind problem
 * @id javascript/my-function-queries
 * @problem.severity recommendation
 */
import javascript

/**
 * Holds if a function is longer than 10 lines.
 */
predicate isLongerThanTenLines(Function func) {
    func.getBody().getNumLines() > 10
}

from Function function
where isLongerThanTenLines(function)
select function, "is longer than 10 lines"
