# What is the Interledger protocol?

The Interledger protocol was [first envisioned](https://interledger.org/interledger.pdf) (PDF) in 2016, with the aim to solve a very specific problem: quickly and cheaply sending money from a random sender to a random recipient. 

Let’s begin by breaking down what this means, and why it’s useful compared to what exists today. The financial system consists of billions of ledgers. Your bank account is a ledger, as is your PayPal account, that balance you store in your Starbucks app, or the Patreon account you send $3 to each month in return for a short story. Despite this, few are designed to interoperate. 

Sending money from your bank account to another at the same bank is quick (and probably free) because the bank is merely moving money around its own systems. For this reason, you may also be able to quickly and cheaply send money to a friend who uses the same bank. And if you’re lucky, major financial institutions within your country will have agreed on a local standard to enable money to flow easily and cheaply between them. 

What all of these scenarios have in common is trust. A bank knows who it's customers are, and local institutions typically follow the same standards, so have more reliable signals with which to trust each other. In cases where despite all this, trust remains low, sheer proximity may prove enough to incentivize collaboration towards some form of local interoperability. 

All of this changes with distance. Instructing your bank to pay a random person in another country requires they not only interact with often unknown systems but ensure they have the most trustworthy partners with which to do so. The cost of this complexity and uncertainty is passed on to you, either in the form or high transfer fees, or the time it may take to ensure the risk of fraud has been sufficiently minimized. 

When using a bank to transfer funds isn’t possible, there are also third parties. From Western Union to Wise, these companies find clever ways to fill gaps and build bespoke interoperability layers atop the existing system. Western Union for example has a network of 500,000 agents around the world that can send or receive funds from another branch. The fees they charge can be high, but customers pay for the convenience of knowing their recipient won’t have to travel far to find a receiving branch, and that neither they nor the person they are paying needs a bank account to complete the transaction. (For this reason, Western Union processes [10-20% of the nearly $700 billion](https://blog.mondato.com/western-union-remittances-competition/) in annual global remittances, typically sent by foreign workers to their families in emerging economies). 

The current system is so needlessly costly and complex that it prevents us from considering more creative ways that money might flow between a sender and recipient. For example, both Patreon and Starbucks operate in the UK, and although I may have an account with each of them, it would take an unusually creative partnership for Patreon to enable creators to pay their earnings to a Starbucks account. 

Part of the reason is that there is no cheap, out of the box way to connect the millions of Patreon ledgers to those at Starbucks. And while the companies could no doubt devise a way to do so, it’s easy to imagine the feasibility of this decreasing (and the cost of using it, increasing) were the companies far smaller, and more geographically diverse.

Interledger is an open protocol that seeks to solve many of these challenges by building an interoperability layer atop all of these disparate systems. A system that is faster, smarter, and more efficient; that can be implemented worldwide; and isn’t immediately dependent on agreements between countries, regions, providers, or financial institutions. To bring this idea to life, Interledger’s creators have chosen to emulate the architecture and principles of another technology that cheaply, quickly, and efficiently routes data from one random party to another—the internet. 


### The internet applied to money

Using the internet is easy. You can access the network using your choice of device, internet provider, wired or wireless networking technology, and application. And while some of these choices may be limited (there are for example just a few mobile operating systems, and your country may only have a handful of broadband providers), enough interoperability is baked into the system to ensure you can make frequent, meaningful choices that don’t close the door to future change. 

This degree of interoperability is possible as the network has been designed to anticipate changing conditions. It doesn’t care if you’re using a smartphone, connected television, or connected thermostat to access data, or whether you’re viewing that data through a web browser or native app embedded on your car dashboard, nor does it expect you to understand or anticipate how the packets reaching you be routed, whether the 4G you are using is facilitated by a Nokia base-station or one built by Huawei, or whether you are temporarily piggybacking off a mobile operator’s wi-fi hotspot. And while the handover between these actors isn’t always seamless, it’s sufficiently resilient to common problems (such as network connectivity issues, or differing browser implementations), that you can go for days without thinking about it.

Now imagine if you could do the same with money. Open an app and say “Please pay Tobie $20” without needing to first check that you both have accounts with the same bank, cryptocurrency wallet, or third party providers such as PayPal or AliPay; or that although you can only send Euros, Tobie will be able to receive them in Pounds, Bitcoin, or [Twitch Bits](https://www.twitch.tv/bits). Once sent, the funds would arrive in minutes (or seconds) rather than days, the fees would be negligible, and the provider would be just as happy to enable a five-cent transaction, as one for five hundred or five thousand dollars.

The Interledger Protocol enables all of this, by applying the principles of network design to the movement of money. 

**Technology and currency agnostic: **Interledger isn’t tied to or owned by, any single company or currency. This means people can send and receive payments without being tied to a single currency or payment provider (or network, or bank, or payment method).

**Tiny packets to represent money: **If you need to send a large amount of data from one person to another, you can split it into smaller, standard-sized packets, send it across different paths, then reassemble it at the recipient. The internet has proven this works for communication, and Interledger has borrowed this pattern to route packets of money, instead of packets of data. \
 \
Keeping the packets small also solves several common payment problems: liquidity, exchange rates, and errors. Say for example that the fastest route for payment includes a network path that doesn’t have the necessary liquidity to handle a payment of that size. Or maybe that route includes partners with dramatically different exchange rates (because one might for example save their best rates for the largest transactions). 

If you were trying to send the entire payment in one go, each of these challenges (let alone both) might warrant an additional fee or processing delay as you negotiate a different route. Interledger solves these problems by keeping packets tiny (the average [“transaction” size](https://docs.google.com/presentation/d/1aC9nfoPuqb6BPKoZM1FvVwTA7ne3YlJgag_s9dVSPYY/edit#slide=id.g521580cf0f_0_24) is $0.00001) and consistently sized. Doing so makes them less route-dependent, enables you to apply a single exchange rate to each packet, and [vary the route on the fly](https://www.youtube.com/watch?v=lBPVAC0H8kU&feature=emb_logo&ab_channel=EpicenterPodcast) to ensure the necessary liquidity.

**Connectors to route payments: **Ledgers track accounts and balance but not everyone is on the same ledger or has the same currency, so Interledger uses a system of connectors (similar to the nodes that relay data on the internet) whose job it is to relay packets, and provide a rate between currencies. You can [read more about connectors](https://interledger.org/overview.html) on the Interledger website.

**An escrow system to enable trust: **Connectors work as a chain to forge a path through the network, competing to provide the best rate, and speed. Some payments may require a short chain, consisting of only a few connectors, while others a much longer one. This design may be efficient from a cost and speed perspective, but as there may be millions of connectors—each effectively indistinguishable from the other, and tasked with relaying bytes of money in fractions of a second—it also introduces the problem of trust. Interledger solves this by routing payment requests in a loop and using holds (a form of escrow) to provide security until both the sender and receiver have certified the payment is complete. See the first ten minutes of [this video](https://www.youtube.com/watch?v=6sg62TAng1U&feature=emb_logo&ab_channel=InterledgerProtocol) for an excellent explanation of the process.


### But will it work?

The scenarios in this paper are **a thought experiment** driven by the assumption that Interledger will be adopted, and become a widely used component of the global payments infrastructure. 

This is far from a foregone conclusion. The current payments infrastructure is controlled by powerful actors (including governments and large corporations) and relied upon to power billions of daily transactions. It may not always be cheap or efficient, but we understand it's boundaries, and guardrails exist to ensure its safety and resilience. 

It’s perhaps for this reason that [Interledger’s creators](https://dev.to/hammertoe/brief-history-of-web-monetization-5ech) chose a prototypical use case that _had nothing to do_ with disrupting financial payments—the absence of a _built-in_ monetization technology for web sites. 
