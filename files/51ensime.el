(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'ensime)
  (package-refresh-contents) (package-install 'ensime))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
