/**
 * @description My queries
 * @kind problem
 * @id javascript/my-function-queries
 * @problem.severity recommendation
 */
import javascript
 
predicate isJavaScriptOrTypeScriptFile(File file) {
  file.getExtension() = "ts" or file.getExtension() = "tsx"
}

/**
 * Holds if a function is longer than 10 lines.
 */
predicate isLongerThanTenLines(Function f) {
  exists(Function f |
    f.getNumLines() > 10
  )
}

from File file, Function f
where isJavaScriptOrTypeScriptFile(file) and
  isLongerThanTenLines(f)
select f, "has at least 10 lines"
