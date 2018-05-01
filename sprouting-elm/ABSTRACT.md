Sprouting Elm: Introducing Elm into legacy systems
==================================================

The case for introducing Elm is a powerful one - elegant syntax, a wonderful type system, a fantastic compiler and that promise of no runtime errors. As compelling as these reasons may be, we need low-risk ways to introduce Elm into legacy systems to allow the framework and language to make its case!

That's the challenge we faced at Wejoinin - we needed a way to evaluate the strengths of Elm while not risking our core application. How could I convince my partner that the merits of Elm were worth investigating with a lean proof of concept, inserted at just the right place in the application?

Join me as we discover the design process to developing a proof of concept that could be developed outside our main Rails application, yet integrated with ease. We'll discuss the tooling we used to develop an A/B test matrix and develop the metrics needed to evaluate the business case for new features built on our new Elm platform. In the end, you'll leave with new ideas to introduce Elm into whatever systems you develop in!

---

Most of us don't always have opportunities to start greenfield projects on entirely new platforms. At Wejoinin, we wanted to evaluate the promise of Elm, but faced the limitations of developing on a legacy platform. Was a costly rewrite in the cards?

Fortunately, Elm apps are naturally modular and simple to integrate. In six weeks, we built a self-contained Elm app and successfully launched it on our Rails platform. We'll discuss how we architected our app, developed measurable business metrics, and the mistakes we made and lessons learned taking it to production. You'll leave with new ideas on how to introduce Elm anywhere you go!

---

This talk is aimed at folks who want to know the Elm-in-production story, and learn how to take their own apps and integrate with Elm. The intended audience is newcomers to Elm, or Elm beginners curious on taking the next step.

---

#### Intro

Last summer, after having developed a few Elm apps for fun, I took the plunge and discussed with my co-founded how to bring an Elm app into our system for Wejoinin (www.wejoinin.com), a signup-sheet web application that he and I run on the side. We had been considering taking the plunge with React, but I had already been spreading the hype about Elm with him. So he agreed to let me take a swing at a small project with Elm.

Some things he and I wanted to learn:

1. What was it like developing an app in Elm?
2. What did it really mean to have "no runtime errors"? Was the hype truly real?
3. Can we build Elm apps without having to build the world, first? (Our experience with React and webpack was less than ideal - React needed Babel, needed webpack, etc...)
4. What is Elm's interoperability story with JS?
5. How quickly can we build a production feature in Elm?

We didn't want to rewrite our application from the ground up, because we had thousands of users who had grown dependent on our existing experience. Plus, the time it would have taken to launch a complete rewrite would have made the project a colossal, difficult to launch endeavor. Instead, we devised a plan to launch a small, low-risk high-value feature in Elm, and then use that as a driver to evaluate whether Elm was worth keeping in our stack.

We decided to launch a mobile version of the core experience in our app. In the process of doing so:

* We built it as a self-contained app that leveraged our CSS component framework
* We leveraged Ports to interop with our existing code base (a mishmash of React and jQuery soup).
* The Elm app published a JS package, that was then loaded in our Rails app via npm and webpack.
* The mobile UI experience was loaded as a A/B test. Analytics events were hooked up via Google Analytics, Google Optimize, and Heap Analytics, leveraging both the native tools and signals via Ports. We implemented analytics events in the front and backend that tracked funnel conversions across various metrics.
* We avoided building a large multi-page Elm app with routing. We noticed the community seems to still be solidifying patterns on large Elm apps, so we just decided to build a small app.
* JS errors in the Elm app - what JS errors? Zero!

#### Outcomes

* Developer happiness - what a fun experience! The compiler is a dream.
* OO programmer has their eyes opened to powerful typed, FP system. 
* Some conversion metrics ticked upwards - some went down. Always important to measure - glad we did.
* Elm makes it easy - nay, fun! - to refactor. In much the same way developing on Rails at first was a freeing, magical experience from the confines of Java, Elm was the same magical experience. Being able to lean on type safety, tons of a-ha moments when things "click" programming functionally., and that freeing feeling that the thing you're building will Just Work.

#### Audience takeaways:

* Despite its intimidation factor, Elm has a low barrier of entry once you master the feel of a general TEA app.
* Ports make interop easy. You can find an integration seam with most any app you have.
* Start simple. Pick a component on the page, and then build an Elm app/component for it.
* The developer experience is amazing. Let others get their feet wet and Elm will speak for itself.
