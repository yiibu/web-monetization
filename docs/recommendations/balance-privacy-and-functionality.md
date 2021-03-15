# Balance privacy and functionality

Enjoying absolute privacy as you browse the web would be ideal, and I applaud Coil for building robust privacy protections into their API. Doing so sets an important precedent for future discussions with browser vendors and standards bodies, and seems particularly important given recent regulatory and browser-based initiatives to reduce arbitrary tracking and data collection. 

What’s not yet clear, is whether this binary approach to privacy will serve their users as well as they believe. To better understand why, it helps to consider the role, incentives, and choices of each of our three actors.

=== "Providers"

    * **Providers** must gain and retain subscribers while making a profit—if not on each subscriber, then certainly across the aggregate of their user base. Thanks to the open standard, these subscribers will however be free to change providers at any time. 


    * To move beyond the role of transactional “dumb pipe”, providers may choose to compete on aspects such as price, performance, subscriber-facing features, and the quality of any integrations they offer to publishers (which, if they enable more seamless and consistent perks experiences, could be something that even _subscribers_ seek out). Providers that experiment with even a few of these may find it necessary to collect more data than is currently envisioned, or struggle to meaningfully use what they already collect if it remains fully anonymized.        
  

=== "Publishers"

    * **Publishers** will in the meantime have to strike a balance between providing tangible yet proportionate value to their new sporadic micro-payers, and ensuring any long-term subscribers feel their level commitment is still worth it. They will also need to contend with an open ecosystem of possibly thousands of providers, each with a different business model and streaming rates, and are therefore likely to welcome APIs that enable them to predict streaming rates, anticipate revenue per session, and accurately reward repeat visitors. And while this gap creates an opportunity for third parties to build tools to address these needs, these tools seem likely to almost immediately start collecting, or attempting to infer, some of the data a provider has obfuscated.

=== "Users"

    * **Users** will meanwhile want to reach the end of the month with a feeling that the amount they paid was “worth it”. What this means will vary from person to person, but is likely to include being able to easily see how their money has been spent, receive perks that feel proportional to the amount they have paid (especially if they regularly frequent a site), and adjust their spend to favour sites they most care about. 

    * This last point is particularly important. Just as sites now ask users with ad-blockers to shut them off, they will no doubt find ways to penalise users who stream while running on fumes. Users will therefore be incentivized to only pay websites they actually care about, and providers will in turn be compelled to enable them to do so. An unhappy user may choose to switch providers, stop visiting or (where available) block payments to certain sites in an effort to favour others, or stop participating in the ecosystem altogether. 

    All things considered—and assuming flat-rate streaming memberships remain the primary model—_it seems unlikely that the current privacy vision will enable the ecosystem to simultaneously fulfil all of these promises_. 
 

_All things considered—and assuming flat-rate streaming memberships remain the primary model—it seems unlikely that the current privacy vision will enable the ecosystem to simultaneously fulfil all of these promises_. 

## Who do you trust?

This need not be a problem. Users may be happy to opt-in to limited data collection that results in tangible value such as the ability to boost the streaming rate to their favourite site, or the ability for publishers to easily identify them as someone who has already paid $3 this month. But as someone will ultimately have to manage that process, it’s worth thinking about who that should preferably be. 

Publishers already have relationships with [an ecosystem of third parties](https://lumapartners.com/content/lumascapes/display-ad-tech-lumascape/) with expertise in the design of (often proprietary) tools and APIs to gather data, build user profiles, and creatively fill in the blanks to knit together disparate user sessions. Should these companies start offering Web Monetization tooling, they would likely find an audience, setting a precedent for the degree of openness, complexity, and transparency of this new ecosystem.

While we can’t prevent third parties from building web monetization tools (nor should we seek to do so), might it be possible to preempt publishers immediately turning to them for sensitive functionality such as _data collection_ by more “natively” providing what they need? 

Two ecosystem actors seem likely candidates to provide these capabilities: the browser, and Web Monetization providers. Both are (or presumably will be) already trusted by users to safeguard their browsing history, credit card details—and in the case of browsers, far more besides. Both also underpin the Web Monetization (and open web) interoperability stack, designed to be interchangeable should users feel unhappy with the terms, functionality, or degree of privacy they offer. 

Let’s look at how this might work, the opportunities for each actor, and where they might collaborate.

## Layered privacy…as a feature

Let’s first look at how different layers of privacy might work at the provider level. 


=== "Level 0"

    *   **Level 0 **is [what Coil offers](https://coil.com/p/sharafian/Doubling-Down-on-Privacy/cD_ZiwT2J) today. Users can browse the web in full confidence that their provider cannot see the sites they are visiting and that this obfuscation extends to its exchanges with both the wallet and publisher. As Coil isn’t gathering data, it cannot provide user-facing tools such as analytics, but users are free to install third-party browser extensions that do.

=== "Level 1"

    *   At **Level 1,** users would opt-in to limited data collection. Doing so would unlock functionality such as charts that show their money has been spent, the ability to block sites they prefer not to pay, and boost payment to sites they most care about. The data collected to enable this would be clearly explained during opt-in, and users could at any time clear their history, or revert to Level 0.


=== "Level 2"

    *   At **Level 2 **users could opt-in to share additional data, maybe not in this case used directly by providers, but shared onward to publishers. This might unlock new APIs enabling publishers to better interface with users, track and anticipate their spend (or lack thereof if payment is blocked), or signal what perks are available. Although the specification doesn’t currently envision this sort of tie-in with providers (which could result in provider consolidation to “own” the API) the downstream user experience benefits make it worth considering.
  

As the first provider, Coil has a unique opportunity to not only experiment with ways to achieve this at a technical level, but gain valuable insight into user sentiment, mental models, and comfort level with the trade-offs involved at each level. 

These insights could then be leveraged during discussions with browsers and web standards bodies to help determine whether to change or enhance the API, what features a baseline browser implementation should offer users, and the [design patterns](https://www.grantfortheweb.org/blog/w3c) and [ethical guidelines](w3.org/2001/tag/doc/ethical-web-principles/) the industry should advocate for. 

Augmentations to the standard might include new data formats (ideally leveraging standardized web stack components such as the manifest) to interoperably expose information that would improve the streaming payment experience. These might include:



*   A standard format** for websites to convey the perks on offer**. Providers could leverage this data to help subscribers discover participating websites during onboarding, users could easily toggle it on and off in-browser as added context while visiting a site, and search engines could index and display it alongside search results.
*   A standard format **for providers to convey their streaming rates**. Third parties could aggregate this data into convenience APIs for publishers, or leverage them to create ‘provider comparison tools’ for users. Agreeing this format with standards bodies would also set an important precedent, shaping future provider business models that might otherwise default to opacity, [framing streaming rates](https://github.com/WICG/webmonetization/issues/139#issuecomment-775777328) as the “secret sauce” that enables their subscribers to browse longer and gain more perks compared to their competition (I’m being optimistic here, but it’s early days, and we have an opportunity to bake equitable expectations into the standard).

Starting this experimentation early would also enable Coil to provide reference implementations for certain behaviours and interfaces (ideally open source, as Coil has already chosen to do with [many](https://github.com/coilhq/web-monetization-projects/tree/main/packages/coil-extension) of [its tools](https://webmonetization.org/docs/receipt-verifier)) while modelling “good behaviour”, and creating baseline expectations that would extend beyond key ecosystem actors. 



*   **Users** would look for and expect new providers to offer a well-documented privacy baseline, with clear opt-ins before enabling any additional data collection. 
*   Third-party **developers** would meanwhile understand the need (and opportunity) to provide value _above and beyond_ the basics offered by providers, but with a similar expectation of clarity in regards to what data they collect, and how it will be used.
*   Offering built-in tools and analytics would also enable a degree of transparency on the part of **providers**. Users would gain an understanding of [where and how their money has been spent](https://scroll.help/en/articles/3344866-why-does-scroll-need-to-know-what-i-m-reading), and the impact of different decisions on the streaming rate. This would enable users to make more informed decisions about the use of any block and boost tools (and perhaps justify purchasing long-term memberships for sites that already receive most of their monthly spend).
*   All of these factors would pay downstream dividends for **publishers,** who could leverage a better understanding of how providers work and how much money they are likely to receive to build stronger relationships with their (now more confident and engaged users). In an ideal world, these capabilities would also lower the bar for novice publishers, ensuring they aren’t from the very start compelled to leverage potentially costly or untrusted third-party tools.

A final actor that would benefit from these early experiments is **regulators**. Providers sit in the middle of the payment process. While currently not a wallet, it’s conceivable that some might choose to also become one, opening them up to stricter data collection requirements such as [KYC](https://en.wikipedia.org/wiki/Know_your_customer). Who is allowed (or can afford) to become a provider, would go on to impact _how many providers_ the ecosystem may contain—potentially result in a dramatically different opportunity space for the technology.

## The case for browser as advocate

At an industry level, there are already several projects proposing to leverage the browser in new ways to protect user privacy—primarily in the context of advertising and prompted in part by the upcoming decrease in support for third-party cookies. 

One of these is Google’s [Turtledove](https://github.com/WICG/turtledove#motivating-use-case), a proposal to enable local ad inventory bidding, executed entirely on-device, and powered by locally stored data and algorithms. A [similar project by Apple](https://webkit.org/blog/8943/privacy-preserving-ad-click-attribution-for-the-web/), this time related to ad-click attribution, proposes to task the browser with acting on behalf of the user, managing the attribution entirely on-device, and leveraging data obfuscated from even the browser.

And while some of these initiatives have been met with concerns by both [industry analysts](https://www.theregister.com/2020/02/10/googles_second_stab_at_preserving_both_privacy_and_ad_revenue_raises_concerns/) and [regulators](https://www.gov.uk/government/news/cma-to-investigate-google-s-privacy-sandbox-browser-changes) (in Google’s case due to its dominant role in the ad-tech ecosystem) it’s worth considering why and how we might task the browser with privacy-preserving facilitation in the case of Web Monetization.

The why…



*   **Choice: **Browser consolidation is always a risk, but there are still many browsers to choose from, and (discussions of rendering engine diversity aside), switching browsers does enable users to unlock dramatically different features. 
*   **Trust: **Users already trust the browser with their information. Some of this trust is aided by architecture and standards that put user safety first, but the existence of these standards and the formalized process to create new ones is proof that we should be able to do the same once again. Some browsers are also entirely open, enabling regular scrutiny, and making it relatively easy for someone to create a new browser. 
*   **Context:** The browser feels like a logical spot for a user to store global browsing preferences—which already often include passwords, payment credentials, and could in the future include customizations related to streaming payments.

Here are a few examples of how this might work…



*   What if we normalized the privacy levels described in the prior section? All browsers would understand that Level 0 means they shouldn’t collect or share browsing data and should anonymize any metadata shared with third parties. Ideally, Level 0 would be on by default.
*   Rather than opt-in to Level 1 at the provider-level, users would do so in the browser, and these permissions would propagate as needed ‘up’ (to providers) or ‘down’ (to publishers). 
*   In a perfect world, this ‘preference bundle’ would be exportable, and could be loaded into a new browser, enabling users to seamlessly switch browser or provider. 

This behaviour would fit right in with the goals of the multi-stakeholder group (whose members include privacy-focused tech companies, nonprofits, and publishers) currently developing the [Global Privacy Control](https://globalprivacycontrol.github.io/gpc-spec/), a specification aiming to [enable users to globally declare a “do not sell or share” provision](https://www.wired.com/story/global-privacy-control-launches-do-not-track-is-back/) that would propagate from the browser (or any other [authorized agent](https://medium.com/cr-digital-lab/putting-the-ccpa-into-practice-piloting-a-cr-authorized-agent-7301a72ca9f8)) to any site the user visits. Currently modelled after the needs of California’s CCPA privacy regulation, the long term goal is for this mechanism to be globally enforceable through related legislation such as Europe’s GDPR, leading the Brave browser to set the important precedent of [enabling it by default](https://brave.com/global-privacy-control/).
