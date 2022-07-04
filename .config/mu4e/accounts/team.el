(add-to-list 'mu4e-contexts
(make-mu4e-context
  :name "team"
  :match-func (lambda (msg)
                (when msg
                  (mu4e-message-contact-field-matches msg
                     :to "kindrobot@tilde.team")))
  :vars '((user-mail-address                . "kindrobot@tilde.team")
          (message-sendmail-extra-arguments . ("-a" "team"))
          (mu4e-sent-messages-behavior      . sent)
          (mu4e-drafts-folder               . "/team/Drafts")
          (mu4e-trash-folder                . "/team/Trash")
          (mu4e-sent-folder                 . "/team/Sent")
          (mu4e-refile-folder               . "/team/Archives.2022")
          (mu4e-maildir-shortcuts           . (("/team/INBOX" . ?i)
                                               ("/team/Drafts"         . ?d)
                                               ("/team/Sent" . ?s)))
          (user-full-name                   . "Stef Dunlap"))))
