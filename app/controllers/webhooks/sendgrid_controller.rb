class Webhooks::SendgridController < WebhooksController

  # Just to see what we have to work with (this is okay cause it's a hackathon :)
  SAMPLE_PARAMS = {
        "headers" => "Received: by mx-004.sjc1.sendgrid.net with SMTP id jQcjfqPPjE Sat, 04 Oct 2014 16:05:54 +0000 (GMT)\nReceived: from mail-lb0-f179.google.com (mail-lb0-f179.google.com [209.85.217.179]) by mx-004.sjc1.sendgrid.net (Postfix) with ESMTPS id 73DBC1044842 for <email2phone@bymail.in>; Sat,  4 Oct 2014 16:05:54 +0000 (GMT)\nReceived: by mail-lb0-f179.google.com with SMTP id l4so2406618lbv.10 for <email2phone@bymail.in>; Sat, 04 Oct 2014 09:05:52 -0700 (PDT)\nDKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113; h=mime-version:in-reply-to:references:from:date:message-id:subject:to :content-type; bh=8FyNjOA76G+xuN/eNFhEybWhZxVbUqIDnWu9OwcAOxw=; b=xzwjgH/XPMm3Tej1uvAH0aq3L7pY4I1z3s+bZywUcV7Ktj5bfPeRPIGdqriX+lei05 hGZwPnO393d3UzHXGXdmbS6p0rRYMrQYw4js/QfH2cR6b35NIbPqgvkB8N82vxwSqEVt Tbke95zgPoueZi1vtT2UVUvYoN2XRUvS8h9uuKICaw5a2HtvgUaAG26XUvh2fTRj+LTf umh7CyOPB2h95aGoEtU896TXLj9jwe6KXjtGnLsPs+3oXrCGmGdZn8aJc0tK7lXzJLYG tGh5UgIe7UQPrcEKMN2F0eXvuFZnc9ZYkSDMukbmGJOsCy17pbyJkFImmIMpgLyDFUzl f0rA==\nX-Received: by 10.152.27.66 with SMTP id r2mr3475302lag.84.1412438752379; Sat, 04 Oct 2014 09:05:52 -0700 (PDT)\nMIME-Version: 1.0\nReceived: by 10.25.28.72 with HTTP; Sat, 4 Oct 2014 09:05:12 -0700 (PDT)\nIn-Reply-To: <CAPRYb_Enq0yRj=wC==9AjDNNwqOFt1nyGNWgmJ0JqZ-qTthwYA@mail.gmail.com>\nReferences: <CAPRYb_EMKrC4o78KHRBAK4ChGBOWbzw084hNcN+vbgELriZTTA@mail.gmail.com> <CAPRYb_FGu6iRXqgSwHWk2Vgz5Ju4JCpy5jwBix5nThpprZaW3A@mail.gmail.com> <CAPRYb_Enq0yRj=wC==9AjDNNwqOFt1nyGNWgmJ0JqZ-qTthwYA@mail.gmail.com>\nFrom: Dennis Ideler <ideler.dennis@gmail.com>\nDate: Sat, 4 Oct 2014 17:05:12 +0100\nMessage-ID: <CAPRYb_GyyAr3BiitL5Njp7k9-TAT9wszw=i-JmkOvVr5RvhwBg@mail.gmail.com>\nSubject: Re: 123, 456\nTo: email2phone <email2phone@bymail.in>\nContent-Type: multipart/alternative; boundary=089e0158c0701a48a105049b0653\n",
           "dkim" => "{@gmail.com : pass}",
             "to" => "email2phone <email2phone@bymail.in>",
           "html" => "<div dir=\"ltr\"><div class=\"gmail_default\" style=\"font-family:verdana,sans-serif\">test test</div></div><div class=\"gmail_extra\"><br><div class=\"gmail_quote\">On 4 October 2014 16:58, Dennis Ideler <span dir=\"ltr\">&lt;<a href=\"mailto:ideler.dennis@gmail.com\" target=\"_blank\">ideler.dennis@gmail.com</a>&gt;</span> wrote:<br><blockquote class=\"gmail_quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\"><div dir=\"ltr\"><div class=\"gmail_default\" style=\"font-family:verdana,sans-serif\">And yet another test!</div></div><div class=\"HOEnZb\"><div class=\"h5\"><div class=\"gmail_extra\"><br><div class=\"gmail_quote\">On 4 October 2014 16:57, Dennis Ideler <span dir=\"ltr\">&lt;<a href=\"mailto:ideler.dennis@gmail.com\" target=\"_blank\">ideler.dennis@gmail.com</a>&gt;</span> wrote:<br><blockquote class=\"gmail_quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\"><div dir=\"ltr\"><div class=\"gmail_default\" style=\"font-family:verdana,sans-serif\">another test</div></div><div class=\"gmail_extra\"><br><div class=\"gmail_quote\">On 4 October 2014 16:50, Dennis Ideler <span dir=\"ltr\">&lt;<a href=\"mailto:ideler.dennis@gmail.com\" target=\"_blank\">ideler.dennis@gmail.com</a>&gt;</span> wrote:<br><blockquote class=\"gmail_quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\"><div dir=\"ltr\"><div class=\"gmail_default\" style=\"font-family:verdana,sans-serif\">this is a test</div></div>\n</blockquote></div><br></div>\n</blockquote></div><br></div>\n</div></div></blockquote></div><br></div>\n",
           "from" => "Dennis Ideler <ideler.dennis@gmail.com>",
           "text" => "test test\r\n\r\nOn 4 October 2014 16:58, Dennis Ideler <ideler.dennis@gmail.com> wrote:\r\n\r\n> And yet another test!\r\n>\r\n> On 4 October 2014 16:57, Dennis Ideler <ideler.dennis@gmail.com> wrote:\r\n>\r\n>> another test\r\n>>\r\n>> On 4 October 2014 16:50, Dennis Ideler <ideler.dennis@gmail.com> wrote:\r\n>>\r\n>>> this is a test\r\n>>>\r\n>>\r\n>>\r\n>\n",
      "sender_ip" => "209.85.217.179",
       "envelope" => "{\"to\":[\"email2phone@bymail.in\"],\"from\":\"ideler.dennis@gmail.com\"}",
    "attachments" => "0",
        "subject" => "Re: 123, 456",
       "charsets" => "{\"to\":\"UTF-8\",\"html\":\"UTF-8\",\"subject\":\"UTF-8\",\"from\":\"UTF-8\",\"text\":\"UTF-8\"}",
            "SPF" => "pass",
     "controller" => "webhooks/sendgrid",
         "action" => "email"
  }

  # POST /inbound -> /webhooks/sendgrid#email
  def email
    ap params if Rails.env.development?
    @inbound_email = InboundEmail.create(
      to: params['to'],
      from: params['from'],
      subject: params['subject'],
      text: params['text'].chomp,
      sender_ip: params['sender_ip'],
    )
    render json: { message: "OK" }, status: 200
  end

  protected  # I don't always make my controllers fat... but I do in hackathons!

  # Returns an array of phone numbers extracted from the email subject.
  # Splits on commas (,), semi-colons (;), and colons (:).
  # Does not split on space ( ), because numbers often have spaces in them.
  def extract_numbers(email_subject)
    email_subject.split(/[a-z A-Z ,;:]/).reject(&:empty?)
  end

end
