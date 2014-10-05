email2phone
===========

Use email to send an SMS or voice message to the phones of your buddies.

Use [localtunnel](https://localtunnel.me/) (ngrok is blocked at bloomberg)

- Put one or more mobile numbers in the subject
  - Separate by comma (,) or semi-colon (;)
  - Numbers can contain spaces
  - E.g. `12345678900, 00987654321; 123 4567 8900`
- Put your message in the body
  - Try to keep it simple and ideally plain text
- Text (SMS) is default delivery method :eyes:
  - Can also explicitly request it by prepending your subject with "text"
  - E.g. `text: 123456789` (case insensitive)
- Call (voice) is also possible :ear: :ear:
  - Request it by prepending your subject with "call"
  - E.g. `call: 123456789` (case insensitive)
