(add-to-list 'mu4e-contexts
(make-mu4e-context
  :name "hello"
  :match-func (lambda (msg)
                (when msg
                  (mu4e-message-contact-field-matches msg
                     :to "hello@kindrobot.ca")))
  :vars '((user-mail-address                . "hello@kindrobot.ca")
          (message-sendmail-extra-arguments . ("-a" "hello"))
          (mu4e-sent-messages-behavior      . sent)
          (mu4e-drafts-folder               . "/hello/Drafts")
          (mu4e-trash-folder                . "/hello/Trash")
          (mu4e-sent-folder                 . "/hello/Sent")
          (mu4e-refile-folder               . "/hello/Archives.2022")
          (mu4e-maildir-shortcuts           . (("/hello/INBOX" . ?i)
                                               ("/hello/Drafts"         . ?d)
                                               ("/hello/Sent" . ?s)))
          (user-full-name                   . "kindrobot"))))
