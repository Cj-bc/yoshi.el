;;; foo.el --- Display 現場猫 when you save data -*- lexical-binding: t; -*-

;; Copyright (C) 2022 Cj-bc a.k.a Cj.bc-sd

;; Author: Cj-bc <cj.bc-sd@outlook.jp>
;; Created: 16 Nov 2022
;; Keywords: games
;; URL: https://github.com/Cj-bc/yoshi.el
;; Package-Requires: (posframe)

;; This file is not part of GNU Emacs.
;;; Commentary:
;; https://github.com/mattn/vim-yoshi を素朴にEmacs用にしたものです
;;; Code:

(require 'posframe)

(defcustom yoshi-el/AA
  (string-join '("                 /＼  ／ヽ"
		 "                {／￣￣￣ヽ!"
		 "                ∠＿＿╋＿＿ｊ"
		 "C-x C-s ヨシ!   / (.)八(.)  ヽ"
		 "               ｛=/(人_)=|´￣)｀ヽ"
		 "                ＼ { {_,ﾉ ﾉ   //~ `"
		 "            ⊂￣ヽ_＞―――‐''’,〈   (＿)"
		 "             `ヘ(＿ ィ r―‐γ   !"
		 "                  _,ﾉ j   |   |"
		 "                ｛   ｛    ﾉ  /＼"
		 "                 ＼ス￣￣￣lしｲ＼ ＼"
		 "                (￣ ）     j /   ＼_j＼"
		 "                 ￣￣     ( ｀ヽ   ＼__)"
		 "                           ＼__ﾉ")
	       "\n")
  "AA to show in posframe. Default AA is copyed from https://github.com/mattn/vim-yoshi and modifed by me"
  )

(defun yoshi-el/yoshi ()
  "Show yoshi at fixed position"
    (posframe-show "Posframe-yoshi" :string yoshi-el/AA
		   :timeout 2
		   :border-width 10 :border-color "black"))

(defvar yoshi-minor-mode nil)

(define-minor-mode yoshi-minor-mode
  "Display `yoshi' item when you save file"
  :lighter " yoshi"
  (if yoshi-minor-mode
      (add-hook 'after-save-hook #'yoshi-el/yoshi)
    (remove-hook 'after-save-hook #'yoshi-el/yoshi)))

(provide 'yoshi)

;;; yoshi.el ends here
