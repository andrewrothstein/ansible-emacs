(require 'package)

(add-to-list
 'package-archives
 '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(defun install-it (pkg)
  (unless (package-installed-p pkg)
    (package-refresh-contents) (package-install pkg)))
(let ((pkgs '(magit
	      docker-tramp
	      docker
	      dockerfile-mode
	      julia-mode
	      json-mode
	      sbt-mode scala-mode2 ensime
	      yaml-mode
	      go-mode
	      )))
  (mapc 'install-it pkgs))
