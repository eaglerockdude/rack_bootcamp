## k. mcfadden
### RACK API examples.

- Rack applications are objects that respond to CALL
- They must return a TRIPLET of status code, headers(hash), and body(enumerable).
- The key point/feature is that rack can be used to create stacks which allow you to influence
behavior by modifying and checking the interface variables themselves.

