(defpackage #:snooze-common
  (:use #:cl)
  (:export
   #:ensure-atom
   #:make-genurl-form
   #:content-type-spec-or-lose
   #:verb-spec-or-lose
   #:parse-defroute-args
   #:supertype-metaclass
   #:scan-to-strings*
   #:find-content-class
   #:probe-class-sym
   #:*mime-type-hash*
   #:resource-generic-function
   #:find-resource
   #:*all-resources*
   #:find-verb-or-lose
   #:parse-content-type-header
   #:arglist-compatible-p
   #:prefilter-accepts-header
   #:parse-resource
   #:content-classes-in-accept-string
   #:gf-primary-method-specializer
   #:debug
   #:debug-condition
   #:destructive-p
   #:content-class-name
   #:all-resources))

(defpackage #:snooze
  (:use #:cl #:snooze-common)
  (:nicknames #:rip)
  (:export
   ;; server configuration
   ;; 
   #:snooze-server
   #:route-packages
   #:resource-name-regexp
   #:fall-through-p
   #:home-resource
   ;; server control
   ;; 
   #:start
   #:stop
   #:started-p
   ;; route definition
   ;; 
   #:defresource
   #:defroute
   #:fragment
   #:convert-arguments
   ;; error handling
   ;; 
   #:http-condition
   #:status-code
   #:http-error
   #:no-such-resource
   #:invalid-resource-arguments
   #:no-such-route
   #:no-matching-content-types
   #:explain-condition
   ;; request handling helpers
   ;; 
   #:request-body
   #:handle-request
   #:*catch-errors*
   #:*catch-http-conditions*
   #:*respect-accept-on-conditions*
   ;; backend stuff
   ;; 
   #:*backend*
   #:*request*
   #:make-clack-app))


