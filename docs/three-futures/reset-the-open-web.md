# Reset the open web

_It’s 2030, and hundreds of millions of people around the world support the artists and creators they love by streaming payments to them as they use the web._

Here’s how it happened.

Coil didn’t remain the sole Web Monetization provider for long. By 2022 the ecosystem had grown to include seven companies, each with different backgrounds including fintech, journalism, and entertainment. Yet despite all this excitement, product-market fit remained far from obvious. 

Spurred on by the global push for data privacy regulation, most providers had followed Coil’s lead, promising not to track a user’s activities, and building layers of obfuscation to ensure publishers couldn’t immediately do so as well. Publishers knew a Web Monetization subscriber was browsing their site, that a payment stream had begun, and could identify what provider was paying, but had no more than an anonymized, session-limited identifier with which to identify each visitor. This left them with a difficult choice: immediately enable perks on the assumption that the user would remain long enough (and continue paying at a high enough rate) within that session to warrant such a reward, or attempt to track their contribution across sessions and devices to reward them at a later date.

The former might have been palatable for indies who were overjoyed by the simplicity and openness of the technology, but proved far harder to justify for established brands who had jumped on the bandwagon amidst [Cookiepocalypse](https://www.modernretail.co/platforms/cookiepocalypse-what-the-death-of-the-third-party-cookie-means-for-retailers/) hoping to find a viable alternative to dwindling targeted ad revenues, but balked at trading content for some unspecified payment. And so many sites chose option two, setting the expectation that there were now tiers to unlock, and that only visitors who registered, logged-in (and ideally went on to do so on each device) would be accurately and consistently rewarded for their contribution. 

Caught in the middle were mid-sized sites. Too small to provide sophisticated tiers and tracking, yet too big to simply give content away in the hope it would all work out, they often fell prey to third party vendors trading cheap (or free) tools for the right to sell whatever first-party data they could quietly collect. Users who had bought into the “flat-rate premium content and zero tracking” dream were—as you can imagine—less than thrilled with this arrangement. The “Amazon Prime of the web” was starting to feel dead in the water.

## Privacy, but not as we’ve known it

It’s therefore not surprising that before too long, most providers gave up on the total privacy pitch, choosing instead to champion an approach the industry would optimistically dub Selective Privacy™. Based in-part on requirements introduced by laws such as the GDPR, providers now promised to only collect the smallest amount of data required to build features that would “stimulate innovation on the part of publishers, and deliver a high-quality service to subscribers”. In keeping with emerging best practice, these promises were backed by an open-source tech layer and annual bug-bounty to stimulate scrutiny and improve trust. And although these announcements generated a small wave of subscriber churn, they proved just what the ecosystem needed. 

Subscribers now enjoyed a host of tools aimed at helping them make the most of their membership. These included a monthly breakdown of how their subscription dollars were spent, tools to “boost” funding to the sites they most cared about, and ways to easily block payments to sites they might still be happy to occasionally visit—but preferred not to support financially. Some providers went a step further, building APIs that sites could use to contribute useful data, such as a monthly recap of perks a user had enjoyed, and the approximate “paid engagement” required to reach the next tier. 

When combined, these tools also addressed a common reason for subscriber churn: reaching the end of the month with little memory of where they had been, and whether their monthly fees had in fact supported sites they cared about (let alone the ones they most wanted perks from.) And while users didn’t find account customization particularly enjoyable, studies revealed that boosting or blocking a mere five sites was sufficient to shift user perception and increase confidence that their fee wasn’t randomly trickling away to fund a long tail they barely remembered visiting.

Sites in the meantime enjoyed a new suite of features designed to solve their primary challenge: equitable delivery of perks. These included light-touch, out of the box anonymized tracking that indies could set up with one line of code (and larger sites could integrate using an API), and real-time analytics with useful aggregate metrics such as average payment per user, and provider. 

The analytics proved particularly useful, leading large sites to experiment with the delivery of perks to subscribers on-load, simply based on their trust in that provider’s payment history, and average payment received per user. These improvements might not have been perfect (not knowing what the streaming rate would be from one moment to the next remained a top pain point—and some analysts suggested—the biggest barrier to further innovation) but no one would deny that these features had arrived just in time. 

## From user agent to user advocate

By 2026, browser support for third-party cookies had all but disappeared, and thanks to an EU ban on cross-site tracking and targeting, so had the vast ecosystem of ad-tech middlemen responsible for decades of bitstream data capture. In their place was however starting to emerge, not just a new generation of tools and standards, but an entirely new approach to the delivery of advertising, the monetization of content, and the protection of users on the web. 

The primary actor in this battle was the humble browser, officially re-cast from user-agent to bona fide user advocate, and tasked with a host of jobs that had in the past been entrusted to third parties. The first of these was real-time bidding, an entirely automated process (in the past powered by vast databases of user profile data gathered from across the web, or purchased from brokers) that enabled advertisers to compete for real-estate on a site. Facilitated by gigantic ad exchanges, these systems had moved billions of pieces of ad inventory on a daily basis, often serving as the sole revenue source for millions of sites, and yet powered by algorithms and technologies whose inner workings were known only to their creators.

All of this changed once real-time bidding switched from a cloud-based activity to one that took place entirely on the client. Although the process still leveraged user data, the profiles needed to personalize web experiences were now collected by the browser and then stored in an encrypted PrivacyToolbox™ that only the browser and user could inspect. This component also contained the algorithms that would determine the best ad for each user, using underlying code that was now either open-source or subject to periodic scrutiny by a neutral third party.

The browser also took on related tasks such as the certification of [view-through attribution](https://www.criteo.com/blog/demystifying-view-click-attribution-models/) (determining which served ad impressions were actually visible by users) and ensuring anonymization during [click-through attribution](https://www.criteo.com/blog/demystifying-view-click-attribution-models/) (the process of only crediting a sale to an ad when someone purchases after clicking on it). In all of these cases, the browser served as both technical facilitator and user advocate, managing opt-in, ensuring most interactions between users, websites, and advertisers took place with minimal data released to the cloud, and enabling users to opt-out of data collection by simply instructing their ‘advocate’ to do so.

It’s, therefore, no wonder that in 2028, the browser also took on the task of price negotiation and privacy-preserving payment attribution for web monetization. The new specification was bold, aiming to define the future of this emerging ecosystem by equitably balancing the needs of users and creators. This was the boost the Web Monetization API had been waiting for, and one that would arrive just in time for a new generation of sites that would desperately need it. 

## The collaborative web

Small creators had flocked to Web Monetization. They loved the real-time payments, the flexibility to choose how best to reward their audience, and were happy to cross-promote subscription providers to their fans as a way to support their work; yet constantly struggled to build a large enough audience to turn their small share of each subscription into a viable income. 

They needed to not only gain more fans but increase the proportion of those who were able to pay while they browsed. And what better way to do so, than to collaborate with other like-minded creators.

These collaborations were wildly creative, immediately breaking new ground by not limiting themselves to posting articles or hosting a Discord server, but instead considering what that specific community might need to thrive. Shared spaces designed around a common purpose, with affordances built to suit the unique characteristics of that community and its audience. A creative role-playing-game collective might for example host a mix of game tutorials; a [downloadable game](https://doad.co.uk/products/adventures-on-a-dime) and lore marketplace; and a suite of [utility apps](https://probabletrain.itch.io/dungeon-scrawl) useful to [gamemasters](https://en.wikipedia.org/wiki/Gamemaster). Different parts of the site might be monetized in different ways, leveraging streaming payment to unlock apps for occasional users, hosting real-time tutorials with a flat entry fee (and plenty of opportunities to tip), and pitching full-blown memberships for their most avid users. 

These early collaborations were cobbled together, repurposing publishing tools such as WordPress, leveraging social decentralized protocols such as [Scuttlebutt](https://www.planetary.social/), or open-source community-building software such as [Forem](https://www.forem.com/), yet piece-by-piece, a new ecosystem was quietly forming. An ecosystem of tools with a robust base offering, but the flexibility to bolt on micro-services to suit new collaborators or a shift in a community’s focus or maturity level.

* _Want to quickly spin up a multi-user Interledger wallet to manage earnings?_ 
* _How about collaboratively sourcing, managing, and paying for editorial or legal services?_ 
* _Maybe you’ve decided to convert your [ad-hoc cooperative](https://thebrick.house/faq/) to a US social benefit corporation?_ 
* _Or maybe you want to [find a physical space](https://www.listingsproject.com/) to colocate with like-minded people?_

Not only was there now an app for that, but you could either pay for it directly from the earnings in your creator wallet or incrementally stream payments with each use. This influx of very different apps not only made incidental use easy, but stimulated the growth of a new generation of “professional grade” Web Monetization subscriptions, specially designed for the higher cost, and different usage patterns of professional applications. 

Whether social, practical, or creative in nature, collaborations soon become destinations in their own right. Small enough not to feel (or behave) generic or corporate, yet [large enough to offer more value](https://studyhall.xyz/community/) than the sum of their individual parts. With each new collaborator came a new audience, simultaneously growing the value of the long tail web, and the new payment technology that powered it. It had taken a while, but the web was finally, for everyone.

***


## Reading list

Enjoyed this story? Discover ideas that inspired it, or may be of interest if this story has inspired you.


 
*   A [disturbing investigative piece](https://www.nytimes.com/2020/10/18/technology/timpone-local-news-metric-media.html) by the New York Times, about a 1500 strong network of propaganda sites, purpose-built to fill the void in online local news.
*   A [review](https://onezero.medium.com/the-ad-based-internet-is-about-to-collapse-what-comes-next-48e31d648a35) of Tim Hwang’s [Subprime Attention Crisis](https://us.macmillan.com/books/9780374538651), and Cory Doctorow’s [How to Destroy Surveillance Capitalism](https://onezero.medium.com/how-to-destroy-surveillance-capitalism-8135e6744d59), a series of short books that posit that the ad-funded web is headed for a crash, and explores how to build something better from the wreckage.
*   [Towards privacy-friendly and sustainable online advertising](https://panoptykon.org/sites/default/files/publikacje/panoptykon_to_track_or_not_to_track_final.pdf) (PDF): a thorough and accessible paper that explores an alternative to the current surveillance-based advertising model.
*   A quick primer on [the death of cookies](https://www.axios.com/tracking-cookies-are-dead-9c316a2c-33c2-40b8-9801-069df07593a8.html), and the battle [to determine the future ](https://digiday.com/media/w3c-third-party-cookie/)of (3rd-party-cookie-less) online advertising (and who gets to set that agenda).
*   An ode to contextual advertising (which doesn’t explicitly require data collection): [What if we all sold non-creepy advertising?](https://www.nytimes.com/2019/06/19/opinion/facebook-google-privacy.html)
*   [How to build a creative middle class](https://li.substack.com/p/building-the-middle-class-of-the). Interesting suggestions, including one of my favourites—explicitly encouraging the creation of low-replay content to reduce the concentration of mega-hits.