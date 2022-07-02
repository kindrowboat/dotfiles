(add-to-list 'mu4e-contexts
(make-mu4e-context
  :name "kindrobot"
  :match-func (lambda (msg)
                (when msg
                  (mu4e-message-contact-field-matches msg
                     :to "stef@kindrobot.ca")))
  :vars '((user-mail-address                . "stef@kindrobot.ca")
          (message-sendmail-extra-arguments . ("-a" "kindrobot"))
          (mu4e-sent-messages-behavior      . sent)
          (mu4e-drafts-folder               . "/kindrobot/Drafts")
          (mu4e-trash-folder                . "/kindrobot/Trash")
          (mu4e-sent-folder                 . "/kindrobot/Sent")
          (mu4e-maildir-shortcuts           . (("/kindrobot/INBOX" . ?i)
                                               ("/kindrobot/Drafts"         . ?d)
                                               ("/kindrobot/Sent" . ?s)))
          (user-full-name                   . "Stef Dunlap"))))
