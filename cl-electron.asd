#-(or sbcl ccl)
(warn "unsupported implementation, satisfaction uncertain!")

(defsystem "cl-electron"
  :version "0.0.0"
  :author "Atlas Engineer"
  :license ""
  :depends-on (:uiop
               :usocket
               :parenscript)
  :components ((:module "source"
                :components
                ((:file "package")
                 (:file "global" :depends-on ("package"))
                 (:file "core" :depends-on ("package" "global"))
                 (:file "browser-window" :depends-on ("package" "core"))
                 (:file "browser-view" :depends-on ("package" "core"))
                 (:file "web-contents" :depends-on ("package" "core")))))
  :description "Common Lisp interface to Electron.")
