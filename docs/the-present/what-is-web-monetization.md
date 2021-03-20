# What is Web Monetization?

[Web Monetization](https://webmonetization.org) is [a proposed API standard](https://webmonetization.org/specification.html) that enables a person viewing a webpage to stream very small payments (micropayments) to its creator in real-time, and in a privacy-preserving way. In exchange for this payment, a website can provide the user with a premium experience such as removing ads, allowing access to exclusive content or removing the need to log in to access certain features. Although currently enabled using a [web extension](https://help.coil.com/docs/membership/coil-extension/index.html), the goal is for the technology to become a web standard with widespread implementation directly through the browser.

Although web standards already exist to facilitate payments in contexts such as e-commerce, Web Monetization doesn’t seek to compete with them but instead _address the absence of a built-in revenue model for websites_. The hope is that this technology can create a meaningful alternative to today’s dominant monetization methods: filling your site with ads, or hosting your content on a centralized service or platform such as Medium or Patreon.

>“_…micropayments and subscriptions have always been built as closed systems, which fail to capture the huge variety of content on the web…we need an open marketplace that makes it easy for everybody on the web to compensate and support one another: the curators, the subscription services, the content creators and, of course, the users._” — [Building a new business model for the web](https://medium.com/coil/coil-building-a-new-business-model-for-the-web-d33124358b6)

Is the Web Monetization API a potential solution to the challenges described above? **The simple answer is that no one yet knows. **

The capabilities I'm about to describe are not only fast evolving, but doing so in a highly experimental environment. One that requires the participation of multiple actors, and where the true shape of the opportunity (and its challenges) may only become evident once the ecosystem reaches a certain size. 

Not only is this an ambitious goal, but a timely one given the growing regulatory push for increased privacy, competition, and interoperability on the web. With that in mind, let’s jump in and break down how Web Monetization currently works.


## How it (currently) works

The Web Monetization API is still evolving, so it’s important to distinguish how it works today with how it might do so once the API is accepted as a standard, and the ecosystem around it begins to grow. 

In its current state, Web Monetization has three primary actors.


* **Users**, who browse the web while streaming micropayments to participating websites,

* **Publishers**, who build the sites, apps, games and other services that receive these payments,

* **Providers**, who offer Web Monetization subscriptions to users, determine how much to pay on their behalf, and serve as the originating ledger for the micropayment. With just one of these subscriptions, users can browse _all web monetized sites_. At the time of writing, there is still just one provider—a company called Coil (founded by the same people who developed Interledger).


A fourth actor is the user’s **browser** (or _user agent_) which acts as an intermediary between the three of them. As no mainstream browser currently ships with support for Web Monetization, this role is currently played by [a browser extension](https://help.coil.com/docs/membership/coil-extension/index.html). If the technology is eventually accepted as a web standard, an important part of that process will be to clarify the _[exact role](https://github.com/WICG/webmonetization/issues/133)_ of the browser. 

That role could for example be purely functional, enabling users to log into their provider, and then triggering the necessary events to initiate and manage the streaming process (you can try an early version of this by downloading the [Puma mobile browser](https://www.pumabrowser.com)). There is however scope for the browser to play a much larger role; ensuring privacy throughout the streaming process; providing data to assist the provider in determining the correct streaming rate, and perhaps even playing the role of provider. 

We’ll be exploring some of these scenarios in the next chapter, but for the moment, let’s look more closely at how these four actors interact.

1. **Users** sign up with a Web Monetization **Provider** (or ‘_sender’_) capable of sending very small payments to websites. 

2. **Publishers** sign up with a Web Monetization _receiver_, a specialised **digital wallet** capable of processing an incoming stream of very small payments. 

3. When the user visits a web monetized site, their browser parses a link in the header of the site that contains the website’s **payment pointer **(a simple and easy-to-remember identifier for that site’s payment account). 

4. **The browser** contacts the website’s wallet to obtain a receiving address for the payment. The addresses provided are unique to the current session (e.g. page load or refresh) so cannot be used to track a user’s activity. 

5. **The browser** begins sending small payments via the user’s provider who is responsible for opening (and eventually closing) an Interledger connection to the payee. The provider will also in most cases set the streaming rate.

6. For each payment, **the browser** emits JavaScript events that **the publisher **can listen for to indicate a streaming session has begun, confirm payment, and ultimately decide whether to provide the user with an alternative “paid for” experience, such as not showing advertising, or delivering premium content.

7. Payment continues until **the user** closes or leaves the page, or **the browser** decides to stop payment (e.g. if the user is idle, or backgrounds the page).

This may seem like a lot of steps, but to the user, it simply feels like this.

    Alice has recently signed up with Coil, a Web Monetization provider, and has installed the Coil extension on her mobile. While on the bus, her friend sends her a link to an article on a news and entertainment site. Alice clicks the link and as the page loads, her browser immediately notices that it includes a payment pointer.
    
    The browser validates the pointer, and begins to stream micropayments at a rate of $0.0001 per second. Alice can see this is happening because an icon on the browser’s navigation bar has now turned green. She can click the icon to see a real-time payment counter, manually pause the payment stream, or permanently block this site from further micropayments.

    As Alice reaches the bottom of the article, she notices a graphic indicating that bonus content has been unlocked by the publisher in thanks for her contribution. Payments will continue to stream until Alice closes the tab, navigates to another site, or switches to a different application.

A critical aspect of the proposed standard is that **all of these actors are interchangeable**. 



*   Alice can easily _switch to a provider_ with a better offering (e.g. subscription cost, streaming rate, payment tracking features, specialized perks on certain sites)
*   Publishers can monetize _any visitor_—not simply those from a specific provider. 
*   Publishers _can choose any receiver wallet _through which to collect their earnings and do so in any currency that the wallet supports—not merely those supported by Alice’s provider. 

This is made possible thanks to the open nature of Interledger, and the design of the equally open Web Monetization API. Whether this interoperability is likely to persist, and what needs might prompt such a change, is something we will explore in the next chapter. 


## Payment flow Q&A

#### How small is a micropayment?

The amount streamed is expected to vary depending on the provider and plan the user has signed up for, yet (presuming the flat-rate subscription concept persists) amounts are expected to remain quite small. Coil, for example, streams at an average rate of $0.0001 USD per second, or $0.36 USD/hour.

#### Is the rate included as part of the API?

No. The spec includes as little as possible, leaving flexibility for ecosystem actors to build atop the technology, and devise new and innovative ways to use it.

#### Who can receive payments?

Two things are needed to receive payments: the ability to register with a digital wallet provider to obtain a payment pointer, and the ability to associate that payment pointer with a web site. 



*   The number of digital wallet providers [is currently limited](https://webmonetization.org/docs/ilp-wallets/), as are the currencies they support, and geographies they cover. They also currently all happen to be cryptocurrency wallets that have been updated to support Interledger (which doesn’t _itself_ rely on or require cryptocurrencies). Adoption by _at least a few_ mainstream providers—be they governments, banks, or digital payment facilitators such as Apple or AliPay—seems critical to the technology’s long-term viability.
*   Adding the pointer requires little or no technical knowledge, and the goal is to keep it that way. There is also no need for a server technology, meaning that basic Web Monetization can be implemented on a static site or lone web page. At the time of writing, most creators receiving payments are doing so on their own (self-hosted) website, but there’s nothing preventing the technology from being used on a hosted blogging service such as WordPress, or a platform such as [YouTube](https://dev.to/uu/youtube-monetization-how-to-set-up-web-monetization-for-youtube-4obh), GitHub, or TikTok. 

It’s worth remembering however that once receiving payments, many site owners will want to reward visitors for their contribution, and users may eventually expect they do so. To this end, [Web Monetization provider Coil](https://coil.com) currently offers a simple, [cloud-hosted blogging platform](https://help.coil.com/docs/monetize/content/coil-blogs/) that includes built-in tools to configure bonus content for paying users. To enable widespread adoption of the technology by non-technical users, the ecosystem will require far more [tools such as these](https://github.com/thomasbnt/awesome-web-monetization).

#### What is a payment pointer?

Payment pointers are a URL that points to a secure payment endpoint (or address) on the web. They are human legible, easy-to-remember, and safe to share with third parties as (unlike bank account or credit card numbers) they can only be used to pay funds into an account. 

Example:_ $stephanie.wallet.example and $wallet.example/stephanie._

Publishers simply add the pointer to the [document head](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML) (or template) of each page that they want to monetize. If they are using a CMS, adding this pointer may require a new field, but popular CMSs such as WordPress [already support this](https://xrpcommunity.blog/coil-wordpress/). 

#### Isn’t there already a W3C approved Web payments API?

There is. The W3C has ratified a [Payments API web standard](https://www.w3.org/TR/payment-request/) designed for scenarios where **a specific price has been expressed by a website**. In such a use case, that API’s role is to facilitate a smooth, secure, and consistent payment experience using traditional payment mechanisms such as credit cards, or on-device payment technologies that leverage these same mechanisms. 

Transactions such as these tend to require explicit user interaction—either because the sum is too large to presume it’s OK for payment to simply ‘happen’ in the background, or because completing the transaction requires the input of additional information, such as a shipping address. 

The Web Monetization API sets out to address an entirely different use case. One where transactions are so small that the user will (we presume) agree to not only let them proceed in the background but do so continuously. A potential alternative to streaming micropayments is ad-hoc tipping. 

Coil is expected to add this capability to their browser extension in the near future, justifying its suitability as an adjunct behaviour for the following reasons:



*   while tipping requires some form of user interaction, the tip value will be small enough not to require a more robust payment flow. 
*   the web site isn’t _asking to be paid a set amount_, it is simply letting the browser know that should someone want to send a tip, a wallet is in place to receive it,
*   subscribers wanting to tip a site will appreciate the simplicity of letting their provider facilitate the transaction using the credit card they currently have on file.

There are **a lot **of assumptions at play here, any of which may prove to be incorrect, and will no doubt also be subject to nuances of culture, geography, or payment context. 


## Provider 1.0

At the time of writing, [Coil](https://coil.com) remains the sole provider. The products they provide therefore serve as both a working prototype of the technology and a potential reference implementation for future providers. Let’s have a look at how it works. 

**The business model: “Spotify with open characteristics”**

Although Coil intends to implement the ability to tip web monetized sites, their primary offering remains a flat-rate subscription plan. Pitched to users as “a better way to access and reward the creators, publishers and platforms that create the content you love” the $5 USD monthly subscription enables users to stream payments to any web monetized website on the internet. 

Coil streams at an average rate of $0.0001 USD per second (or $0.36 an hour). Once a member has streamed $4.50, this amount [tapers to a lower rate](https://help.coil.com/accounts/creator-accounts#how-much-do-you-pay-out-to-creators), to stretch the remaining balance until the end of the month. If a member does reach $5, Coil continues paying but continues to do so at the lowered rate. (A subscriber streaming continuously at the base rate would either max out after 14 hours or compel Coil to pay out a whopping $260 USD per month). 

It’s unclear whether this approach will persist. Varying the streaming rate is bound to frustrate publishers, but as the specification is open, there’s nothing preventing a new provider from choosing a different rate, or an entirely different approach to both subscriptions and overages. As the ecosystem is currently small, Coil is working hard to attract both users and publishers. Covering overages (albeit at a lower stream rate) may simply be a cost they will have to bear, but it’s also worth noting that if a member _doesn’t_ browse enough to spend their $5 allotment, Coil keeps whatever remains.

**What’s in the subscription?**

Coil’s model is purely transactional. Any publisher can receive payments from Coil subscribers by placing a payment pointer on their site and requires no special permission or account to do so. _Unlike_ flat-rate streaming services for film or music, Coil has no formal agreement with creators. It doesn’t own or fund the creation of content, nor does it have a say in the benefits they provide to Coil subscribers. There is however nothing preventing future providers (or Coil itself) from choosing to alter these terms in an effort to increase profitability or work towards a superior product/market fit.

To encourage the growth of a healthy ecosystem, Coil does however strongly recommend sites offer subscribers _some form of benefit_ or note of thanks for their contribution. This might include disabling ads or trackers, providing exclusive or early access to content, or enabling a superior quality stream when watching videos. They also recommend that sites follow a [100+20 rule](https://coil.com/p/coil/The-100-20-Rule-for-Premium-Content/3l1ALJ3M6 )—unlocking special content or benefits for visitors who are paying, but where possible keeping the rest of the content free to browse. 

The end approach is however ultimately up to site owners, and as it’s still early days, many are still exploring and evaluating their options.

**Using and enabling Coil**

At the time of writing, Web Monetization is primarily available using a desktop browser extension provided by Coil. Once installed and configured with a user’s credentials, the extension streams payments to any web monetized site that requests it. Beyond this, the functionality is quite limited. Users are unable to stop the stream, block a domain that they prefer not to fund, or obtain transaction details such as the amount streamed in each browsing session. 

Some of these features will no doubt appear with time, but others have been _purposely left out_ as they would require more data collection than Coil is happy to undertake given its strict [privacy promise](https://help.coil.com/docs/general-info/privacy-policy/). They instead envision an ecosystem where users wanting such functionality can download third-party browser extensions such as [PayTrackr](https://dev.to/wobsoriano/introducing-paytrackr-an-easy-way-to-keep-track-of-all-your-micropayments-4m31) or [Akita,](https://github.com/esse-dev/akita/blob/master/README.md) which provide features such as a real-time count of payments to individual domains, and a running total of payments per day/month. 

**Coil’s privacy promise**

Coil’s founders started the company to experiment with alternatives to monetization through advertising, and in doing so, provide alternatives to the tracking and data collection that often accompany it. They’ve therefore taken a firm stance on user privacy, and have implemented a range of safeguards to ensure the technology doesn’t inadvertently introduce new opportunities to gather data about users’ activities on the web.



*   the Coil extension is designed not to track a user’s browsing history
*   the extension is open source, enabling the community to scrutinize its inner workings
*   built-in [wallet-side privacy](https://coil.com/p/sharafian/Doubling-Down-on-Privacy/cD_ZiwT2J) prevents Coil from inadvertently learning which sites a user has visited based on whom they’re sending micropayments to, 
*   built-in [sender-side privacy](https://coil.com/p/sharafian/Doubling-Down-on-Privacy/cD_ZiwT2J) prevents Coil from learning which subscriber triggered the micropayment request in the first place.

The upshot of this is that Coil can only see the following:



*   when a user is on a web-monetized site, but not which site.
*   the Interledger address of that site, which cannot be linked back to the site unless the site configures itself to be identifiable by Interledger address.

  

Coil works hard to protect subscriber privacy, but it’s important to remember that the only privacy-preserving pact in place is between Coil and it's users. Sites will still need to confirm a user has paid, and decide whether that payment is sufficient to unlock some form of reward, and will ultimately want to build a relationship with their audience. This means that, although Coil doesn’t disclose a visitor's identity, or assist sites in keeping track of how much that user has paid in a given session, sites may utilize other means (such as third-party tools) to do so. 

As there is also no built-in way to track paying visitors across sessions, larger or more capable sites may encourage users to create an account, and log-in whenever they use the site in an effort to more accurately reward visitors for their contribution.


## What is likely to change?

A lot can change when it comes to new technologies, and there’s nothing to indicate that Web Monetization will be any different. Here are the most likely short-term changes:

_More monetization providers_

To be successful, providers will need to strike a balance between providing value to both subscribers and publishers, while ensuring that doing so still enables them to turn a profit. How they will do so is yet to be defined, but is likely to include tweaks to the flat-rate streaming business model and the tools they offer to users and publishers. 

How we use this technology may also be defined by _who_ chooses to become a provider, the leverage they have within the industry, and how the ability to provide these services is regulated.

_Browsers and web standard support_

Without widespread browser adoption, Web Monetization is unlikely to grow, as it will remain tied to a browser extension. Extensions are only used by a small subset of the desktop browser user base, they require additional time to download and install, and remain unsupported on mobile. This seems particularly likely to prevent meaningful adoption in large parts of the world where mobile use is predominant, and limit the technology’s usefulness for news and journalism, a type of content that is increasingly consumed on mobile, and through social media. 

For all of these reasons, Coil is working to entice browser vendors to experiment with the technology and build a potential reference implementation. At the time of writing, [a small Mozilla team](https://community.webmonetization.org/wmfirefox) is working on a prototypical integration, and Coil is hoping to embed technology fellows within the Chrome and Edge teams to do the same. These early experiments will provide the sort of scrutiny that will be critical to developing a standard, and is also likely to lead to changes in the specification. 

Some of these changes may be relatively minor—Coil has, for example, already adjusted the API in response to a request from browser vendors to [minimize potential performance impacts](https://github.com/coilhq/web-monetization-projects/issues/900)—but others may be far more substantial.

_Tools for publishers_

In the near future, [it seems likely](https://github.com/WICG/webmonetization/issues/19) that the payment pointer metatag will be replaced by a new syntax, similar to that currently used to specify a style sheet or JavaScript file. While seemingly minor, this change is an important reminder that, just as widespread browser implementation will be critical to user adoption, the final publisher-facing implementation will determine how easy it is for creators to experiment with the technology. 

The current specification is simple enough to put the technology within reach of millions of bloggers and independent website owners, including those using turnkey hosted services such as Wix, and WordPress.com. This is an important requirement (and one that we should seek to preserve as the specification evolves) but should a creator wish to display a thank you message or unlock bonus content in thanks for a user’s contribution, they will currently need to build the tech to do so on their own.

Few of these tools currently exist, and what gets built (especially early on) may go on to influence the mental models of ecosystem actors, and the capabilities that are ultimately codified (or omitted) from the standard.
