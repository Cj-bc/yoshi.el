
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
  "AA to show in posframe"
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
