(lang dune 3.8)

(using melange 0.1)

(generate_opam_files true)

(name melange-react-query)

(version 0.1.0)

(source
 (github ewert-online/melange-react-query))

(authors "Torben Ewert <torben@ewert-online.com>")

(maintainers "Torben Ewert <torben@ewert-online.com>")

(homepage "https://github.com/ewert-online/melange-react-query")

(bug_reports "https://github.com/ewert-online/melange-react-query")

(license "MIT")

(package
 (name melange-react-query)
 (synopsis "React Query support for Melange")
 (depends
  (ocaml
   (>= "5.1"))
  (melange
   (>= "3.0.0"))
  reason-react
  reason-react-ppx
  (opam-check-npm-deps :with-test)))
