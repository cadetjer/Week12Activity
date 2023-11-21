/**
 * @description My query of functions that call pressActionKey
 * @kind problem
 * @id javascript/my-function-calls-pressActionKey
 * @problem.severity recommendation
 */
import javascript

/**
 * Holds if a function is longer than 10 lines.
 */
predicate isLongerThanTenLines(Function f) {
  exists(f.getNumLines() >= 10);
}

/**
* Holds if a test calls "pressActionKey".
*/
predicate calls(Function caller, Function callee) {
  exists(DataFlow::CallNode call |
    call.getEnclosingFunction() = caller and
    call.getACallee() = callee
  )
}

from Function test, Function callee
where isTest(test) and
      calls(test, callee)
select callee, "is directly called by a test"
