(deftheme wheat
  "High-contrast green/blue/brown faces on a black background.
Basic, Font Lock, Isearch, Gnus, and Message faces are included.
The default face foreground is wheat, with other faces in shades
of green, brown, and blue.")

(custom-theme-set-faces
 'wheat
 '(default ((t (:family "default" :foundry "default" :width normal :height 1 :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "unspecified-fg" :background "unspecified-bg" :stipple nil))))
 '(cursor ((nil nil)))
 '(highlight ((nil nil)))
 '(region ((nil nil)))
 '(secondary-selection ((nil nil)))
 '(isearch ((nil nil)))
 '(lazy-highlight ((nil nil)))
 '(font-lock-builtin-face ((nil nil)))
 '(font-lock-comment-face ((nil nil)))
 '(font-lock-constant-face ((nil nil)))
 '(font-lock-function-name-face ((nil nil)))
 '(font-lock-keyword-face ((nil nil)))
 '(font-lock-string-face ((nil nil)))
 '(font-lock-type-face ((nil nil)))
 '(font-lock-variable-name-face ((nil nil)))
 '(link ((nil nil)))
 '(link-visited ((nil nil))))

(provide-theme 'wheat)
