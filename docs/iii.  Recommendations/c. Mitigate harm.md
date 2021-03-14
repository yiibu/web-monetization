# Mitigate harm

<!-----
NEW: Check the "Suppress top comment" option to remove this info from the output.

Conversion time: 1.12 seconds.


Using this Markdown file:

1. Paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β29
* Sun Mar 14 2021 09:52:09 GMT-0700 (PDT)
* Source doc: FINAL - Three futures: exploring the future of web monetization
* This is a partial selection. Check to make sure intra-doc links work.
----->


Throughout this paper, I’ve described functionality that should, in my opinion, **be considered table-stakes** for the ethical deployment of streaming payments. This includes: 



*   Clearly signposting when a payment session has begun and enabling users to manually close the payment stream, or block a site from future payment.
*   Briefly delaying payment (or instantly refunding it) to enable a zero-cost “bounce”.
*   Enabling users to understand how their money has been spent and ‘boost’ payment to the sites they most care about.

Although users are the web’s primary constituents (a primary statement of the [W3C’s Web Platform Design Principles](https://w3ctag.github.io/design-principles/#priority-of-constituencies)) we must also be mindful that a feature designed to help _users_, may in turn unnecessarily harm publishers, including small independent creators. Lowering the streaming payment rate to sites that users regularly block could for example be weaponized to harm small creators, or further narrow the reach of marginalized audiences (as frequently happens on social media). 

A final layer that we should work to preserve is the API’s interoperability. Ensuring a choice of provider, digital wallet, and browsers/extension will be critical to ensure this technology isn’t merely accessible to the most affluent users and creators, those with the most popular devices, or those living in the most attractive or profitable markets. Which brings us to the topic of **access**—or lack thereof—as an opportunity for [harm](https://www.w3.org/2001/tag/doc/ethical-web-principles/#noharm).

***

Most of us probably all agree that accessing the internet is—if not [a human right](https://en.wikipedia.org/wiki/Right_to_Internet_access) per se—then at the very least a right that should not be restricted. The internet not only enables us to exercise our right to free expression, but has become a necessary tool for us to live, learn, and thrive in the modern world. It’s also increasingly hard to envision how humanity will be able to successfully meet its most pressing challenges—be they the Covid pandemic or climate change—without the ability to easily communicate, collaborate, and engage as we do online. Yet if this true, what of the right to access the web (or if you prefer, the content and services that exist on the internet)?

Some things cost money at the point of use, while others habitually don’t. Most people would agree that you shouldn’t have to pay to access a government website because you’ve already paid for it through taxes. It would be equally strange to pay to use online banking, or shop for a flight, or visit a marketing site for a new car because you have (or will) pay for that in some other way. The question of when payment is necessary gets harder as the topic shifts to that ill-defined thing we call content. 

Is it our right to access Netflix free of charge? Surely not. What about speciality news, covering topics such as technology, knitting, or entertainment? Here again, this seems unlikely—though the specific nature of the content might cause some to disagree. Begin to drift towards journalistic content, and confidence that _at least some of it_ should be universally available begins to increase. 

Content such as regional news, local or national political reporting, or long-form investigative journalism. Content that helps shape and contributes to the health of our societies, enables us to understand the diversity of people and ideas in this world and empowers us to more confidently assert our democratic rights. Surely _some_ of this should be freely available to all?

And since the creation of the commercial internet, much of it has been, Primarily funded by advertisers vying for our attention, and silently fueled by that alter ego we all share—our data exhaust. We couldn’t _see_ our data’s role in this exchange, yet ‘paying’ in this way (and doing so often) not only ensured many critical parts of our information ecosystem remained free but remained that way for _everyone_—including those with little data or attention to share. 

_Which brings us back to the topic of harm._ 

My goal in introducing the Essential Web was twofold: to broach the idea that on the web, the “public interest” category might, in fact, be larger than we’ve so far considered, while also exploring the pitfalls of attempting to extend a model that has historically worked well enough for TV and radio, to the diversity of the open web. 

Even if you dislike the Essential Web as a concept, a good reason to think we might need something akin to it is that although creating high-quality information costs money, and the health of our democracies relies on a strong independent press, sites that disseminate fake news or disinformation [can be spun up, and maintained, for comparatively little cost](https://www.nytimes.com/2020/10/18/technology/timpone-local-news-metric-media.html). This challenge predates the Web Monetization API _and will continue to exist _regardless of any future monetization method we adopt. 

What might alternatives to this concept look like? How about distributing provider vouchers at food banks, providing a monthly [no-questions-asked browsing stipend](https://medium.com/message/spotify-but-for-the-titanic-a-proposal-for-the-future-of-news-and-publishing-40c41fbebe7b) for anyone with a provider account, or maybe [tax deductions](https://www.canada.ca/en/revenue-agency/services/tax/individuals/topics/about-your-tax-return/tax-return/completing-a-tax-return/deductions-credits-expenses/deductions-credits-expenses/digital-news-subscription.html) for users whose subscriptions primarily fund eligible local news organisations. 

We could also leverage the fact that this technology is in its infancy to (from the very start) embed it with features and behaviours that make it easy to give back to small creators and the organizations that support them. These might include



*   a tax on provider profit that would be used to fund initiatives that help small publishers and creators [succeed within this new ecosystem](https://library.substack.com/p/announcing-the-next-substack-fellowship). 
*   an expectation that providers donate a percentage of revenue to [initiatives that promote diversity, inclusion, and equity](https://www.grantfortheweb.org/blog/w3c) on the web
*   built-in tools enabling creators to spin up campaigns (lasting as little as an hour) that redirect a percentage of their earnings to charities, open-source initiatives such as Wikipedia, or another creator of their choice.

We will need many ideas such as these to continue growing a diverse, equitable, and future-facing web. A web where everyone can access high-quality information, and where the means of doing so are diverse enough to suit different societies, cultures, and abilities to pay. 

We will also need to acknowledge that there are two sides to this problem, each requiring us to ask similar but increasingly pressing questions. 



*   Are certain _sites_ “essential”? If so, how might we define them? 
*   Are certain _audiences_ “essential”? If so, how might we ensure that—as we transition from a ‘free’ ad-funded web to one where most content has a cost—the needs of this audience are considered, by design.

There will be different answers to these questions. Defining what is essential is a deeply personal question. A question that touches on where our society places values, and as the pandemic has taught us, a question that we should be asking far more often than we currently do. 

Thanks to advertising, we have avoided asking this question of the web, but the time may finally have come when we can no longer afford not to do so.
