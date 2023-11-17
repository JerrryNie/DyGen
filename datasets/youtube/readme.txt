YouTube spam classification 

10 labeling functions (weak_labels)

0 as HAM
1 as SPAM
-1 as ABSTAIN

Labeling functions list:

    keyword_my,
    keyword_subscribe,
    keyword_link,
    keyword_please,
    keyword_song,
    regex_check_out,
    short_comment,
    has_person_nlp,
    textblob_polarity,
    textblob_subjectivity,

Keyword_my : Spam comments talk about 'my channel', 'my video', etc.

Keyword_subscribe : Spam comments ask users to subscribe to their channels.

Keyword_link : Spam comments post links to other channels.

Keyword_please : Spam comments make requests rather than commenting. 

Keyword_song : Ham comments actually talk about the video’s content.

Regex_check_out : Spam comments request users check other links.

Short_comment : Ham comments are often short, such as 'cool video!’.

Has_person_nlp : Ham comments mention specific people and are short.

Textblob_polarity : Ham comments if polarity scores > 0.9

Textblob_subjectivity : Ham comments if subjectivity scores >= 0.5

