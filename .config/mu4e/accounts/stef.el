(add-to-list 'mu4e-contexts
(make-mu4e-context
  :name "stef"
  :match-func (lambda (msg)
                (when msg
                  (mu4e-message-contact-field-matches msg
                     :to "stef@kindrobot.ca")))
  :vars '((user-mail-address                . "stef@kindrobot.ca")
          (message-sendmail-extra-arguments . ("-a" "stef"))
          (mu4e-sent-messages-behavior      . sent)
          (mu4e-drafts-folder               . "/stef/Drafts")
          (mu4e-trash-folder                . "/stef/Trash")
          (mu4e-sent-folder                 . "/stef/Sent")
          (mu4e-refile-folder               . "/stef/Archives.2022")
          (mu4e-maildir-shortcuts           . (("/stef/INBOX" . ?i)
                                               ("/stef/Drafts"         . ?d)
                                               ("/stef/Sent" . ?s)))
          (user-full-name                   . "Stef Dunlap"))))
