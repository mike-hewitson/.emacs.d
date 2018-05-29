{:repl
 {:plugins      [[cider/cider-nrepl "0.17.0"]]
  :dependencies [[org.clojure/tools.nrepl "0.2.13"]
                 [acyclic/squiggly-clojure "0.1.8" :exclusions [org.clojure/tools.reader]]]}

 :user
 {:plugins      [[lein-kibit "0.1.6"]
                 [jonase/eastwood "0.2.6"]
                 [lein-cljfmt "0.5.7"]
                 [cider/cider-nrepl "0.17.0"]
                 [refactor-nrepl "2.4.0-SNAPSHOT"]
                 [lein-ancient "0.6.12"]
                 [acyclic/squiggly-clojure  "0.1.8" :exclusions [org.clojure/tools.reader]]]
  :dependencies [[spyscope "0.1.6"]
                 [vvvvalvalval/scope-capture "0.1.4"]]
  :injections   [(require 'spyscope.core)
                 (require 'sc.api)]
  :eastwood     {:linters     [:all]
                 :add-linters [:unused-private-vars
                               :unused-locals
                               :unused-fn-args]}
  :env          {:squiggly {:checkers         [:eastwood :typed :kibit]
                            :eastwood-options {:linters     [:all]
                                               :add-linters [:unused-private-vars
                                                             :unused-locals
                                                             :unused-fn-args]}}}}}


