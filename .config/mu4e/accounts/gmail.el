(add-to-list 'mu4e-contexts
(make-mu4e-context
  :name "gmail"
  :match-func (lambda (msg)
                (when msg
                  (mu4e-message-contact-field-matches msg
                     :to "apocryphalauthor@gmail.com")))
  :vars '((user-mail-address                . "apocryphalauthor@gmail.com")
          (message-sendmail-extra-arguments . ("-a" "gmail"))
          (mu4e-sent-messages-behavior      . delete)
          (mu4e-drafts-folder               . "/gmail/Drafts")
          (mu4e-trash-folder                . "/gmail/Trash")
          (mu4e-sent-folder                 . "/gmail/Sent")
          (mu4e-refile-folder               . "/gmail/Archives.2022")
          (mu4e-maildir-shortcuts           . (("/gmail/INBOX" . ?i)
                                               ("/gmail/Drafts"         . ?d)
                                               ("/gmail/Sent" . ?s)))
          (user-full-name                   . "Stef Dunlap"))))
