# TensorFlow For Tears

My life flipped upside-down when my son was born last year. In the overwhelming season that followed, I struggled with paternal postpartum depression. I coped the only way I knew how: by distracting myself with a side project. My goal was to train a TensorFlow model on a Raspberry Pi that would listen to hours of crying and tell me (quantitatively!) just how miserable I felt.

A funny thing happened: as I learned about the ins and outs of machine learning and TensorFlow, I also began developing more empathy and care for my son. Join me as I share how journeying through the stoic world of data led me to accept and celebrate my fragile, broken, and joyous humanity.


## Goruco

I struggled with a season of paternal postpartum depression after my son's birth. Fortunately, I had my own coping mechanisms!  In my free time, I trained a TensorFlow model on hours of my baby's cries and got it to quantitatively measure our family's suffering.

Join me on my journey into machine learning (and fatherhood) as I learn about the ins and outs of machine learning and explore basic TensorFlow concepts with Python and Ruby. Will machine learning be a solace from the overwhelming demands of family life? Or will I ultimately learn to connect with my son and embrace my own fragile humanity?

---

This is both a highly personal story of how I struggled with postpartum depression after my son's birth. It's a (slightly) humorous take on a real, dark topic that I hope to shine a light on.

Of course, it's also a fun tour through the basics of machine learning and neural networks. It'll showcase some simple Python Tensorflow code (and also, time permitting, show off some Ruby Tensorflow.rb code), and some bash glue scripts to do waveform processing. I'll show how I trained my model on the never-ending cries of my little one and got it running on a Raspberry Pi in his living room, rendering a nice web dashboard that I check on every day while at work, wondering how much crying and suffering the little guy can wring.

(Don't worry - he's doing much better these days, so the talk ends on a happy note)

---

ML is taking over all of our industries, and it's more important than ever that developers understand the tools that are at their disposal. Fortunately, there are plenty of tools for the Rubyist. This talk aims to discuss one fun application of ML via TensorFlow, as well as tell a very human story of my struggles with postpartum depression and how, by listening to hours and hours of my son's crying, I needed to embrace and accept my broken humanity (rather than shove it off to a machine). ❤️

## !!con

#### Oh For Cryin' Out Loud! How Neural Networks Made Me a Better Parent!

Parenthood is hard! In the months after my son arrived, I found myself struggling through depression, especially so during long episodes of infant crying. So I coped by building an AI baby monitor, training a TensorFlow model to recognize and quantify my little one's cries. Yikes!

But plunging into code didn't help me feel any better or be more connected to my son. As I researched neural networks, I learned about neuroscience's discovery of the mirror neuron, and the role it could play in building empathy and connection between human beings! Could this concept unlock my deepest frustrations and help me connect fully with my little one?

Join me on a journey through the inner workings of a TensorFlow audio recognition model. Together, we'll see how it works - no prior knowledge necessary! Finally, I'll share my learnings from both the machine and the mirror neuron that show us how we can relate to each other in a more compassionate, human way!

---
- Intro: Framing the Story (1m)

  Parenthood is not butterflies and rainbows. Many of us struggle through postpartum depression. My baby's crying left me feeling helpless and incredibly sad. (Parents, you are not alone)

- The general concepts of neurons in neural networks (2m)

  We'll start with a quick flyover of the simple neuron model we use in most neural networks. Discussion of weights, layers, activation functions.

- The technical problem: TF audio recognition (4m)

  Taking an example from TF's Audio Recognition example on their website, I'll discuss how I adapted it to fit to my son's training data. I'll break down the model line by line and use the code to explain basic TF concepts for the layperson: tensors, regression models, confusion matrices . This is a quick flyover of the model, and my goal is to show that these models are not as complicated as one might think.

  I then show a quick screencap of the system at work. Tada! That's it, right? But wait...

- The Insight of the Mirror Neurons (2m)

  But creating this machine didn't actually help me feel better. But one thing caught my interest as I read further in the literature, and that was the mirror neuron.

  Mirror neurons are hypothesized to exist throughout our brains and contribute to that sensation we feel when we watch someone else under duress as if we ourselves are there. There is speculation that mirror neurons help facilitate empathy and connection - especially between parents and their children. Could I learn something here?

- Being a better parent (1m)

  I realized that connection and empathy, as exhausted as I was, were still deep in the wells of my spirit. I trained myself in those hours spent cradling him asking myself - how does this feel? What is the meaning behind his crying? Is it his discomfort, or sense of loss being displaced from the womb? And how would that understanding transform my interpretation - my classification, if you will - of these early-morning episodes?

  In the same way that I trained my machine to listen to these cries and learn from them, I also needed to learn to listen to his cries and hear what he was actually saying. Then I may truly understand.
  
  Thank you!

## PyGotham

### Abstract

Parenthood is hard! In the months after my son arrived, I found myself struggling through depression, especially so during long episodes of infant crying. So I coped by beginning a journey to build an AI baby monitor, training a TensorFlow model to recognize and quantify my little one's cries. But this process was fraught with confusion - I had never worked with these models before. How do they work? And more importantly, how will knowing all this help me survive the travails of early parenthood?

Join me on a journey through the inner workings of a TensorFlow audio recognition model. Together, we'll see how it works by walking through a CNN described from a Google research paper. We'll explore core TensorFlow model concepts of weights, biases, and convolutions and learn how they work in the process. Even if you don't have any experience in machine learning, you'll walk away with key understanding of how ML models are structured so you can apply them to your next project!

### Outline

- Act I: If you walk into our house at the right time, you'll find a house in chaos
   - As parents, we would do the bedtime routine and put our child down to sleep, then... the crying would commence.
   - Sleep training - put the child in a room and let them cry with some comforting mixed in, but reinforce that they are to stay in their bed
   - The crying was starting to get to me; I needed some help getting insight.
   - I thought to myself - "I know what, I'll use data to solve this problem". Having time-series information about the environment of the kid's room coupled with cry detection might let me glean some insights about the factors that cause crying!

- Act II
   - Build a Raspberry Pi device and place it in the child's room
   - A continuous bash (UNIX) script runs in the background and continuously sends a recording up to a cloud file store (virtual machine)
      - tools: `sox` and `arecord`
   - Loudness alone won't solve the problem - it's inaccurate
   - Deep learning helps solve this.
   - Go over Convolutional Neural Networks (CNNs)
   - _Convolution Layers_:
      - They work by running a sliding window (a.k.a a _kernel_) across an image.
      - They allow us to detect forms in an image that are _translationally-invariant_ - that is, that they can be moved around in the image and still be detected.
   - _ReLU Layers_:
      - An activation function that dictates how a signal is attenuated between different layers of a network.
      - Stands for "Rectified Linear Unit"
   - _Max Pooling Layer_:
      - Is a way to simplify (downsample) the complexity of an image by choosing only a part of a subsample of a kernel.
  - Google Research paper - Keyword Spotting
    - cnn-trad-fpool3 architecture
    
    - Machine Learning Pipeline
    - Get Data
       - A Cronjob uploads 10-second audio clips constantly
    - Clean Data
       - I use scripts like `ffmpeg`, `curl` and `html`
    - Label Data
       - Use EchoML tool to label
    - Train Model
       - Execute a Python script. Your data gets divided into `test`, `training` and `validation` sets.
    - Test/Validate Model
       - We can use a tool like TensorBoard to visualize model performance.
    - Deploy Model
       - Ship the model up to production.
       - Save the model graph as a Protobuf binary file.

- Act III
   - I got realtime data, but it didn't reveal any insights
   - That night, my wife went in to comfort the little one and discovered that he just wanted to be with us
   - Which made me realize - I had been so caught up with measuring the system and building the model that I forgot to actually ask myself - what does he need?
   - if we are honest with ourselves, doesn't that happen more often than not at work?
   - How can we keep the human input loop active in our projects, systems and models at work today?
   - Personas - taken from UX research methodologies
   - Keep track of people, their profiles and motivations.
   - Get out there and talk to people so your team can have in mind the people that they are talking about



### Outline 2

* Intro: Framing the Story (1m)
    
    Parenthood is not butterflies and rainbows. Many of us struggle through postpartum depression. My baby's crying left me feeling helpless and incredibly sad. (Parents, you are not alone)

* The general concepts of neurons in neural networks (2m)

    We'll start with a quick flyover of the simple neuron model we use in most neural networks. Discussion of:

    * perceptrons
    * weights & biases
    * layers
    * activation functions

* The technical problem: TF audio recognition (15m)

    Taking an example from TF's Audio Recognition example on their website, I'll discuss how I adapted it to fit to my son's training data. I'll introduce the concept of a TF model, and start by explaining what a simple 1-layer network would look like in TF.
   
    Then, I'll break down the CNN model (the source code implements the model discussed in ["Convolutional Neural Networks for Small-footprint Keyword Spotting"](https://www.isca-speech.org/archive/interspeech_2015/papers/i15_1478.pdf)) line by line and use the code to explain basic TF concepts for the layperson.

    My goal is to help the audience understand the nuts and bolts of TensorFlow models and help them conceptually grasp how they work.

* The Insight of the Mirror Neurons (1m)

    But creating this machine didn't actually help me feel better. But one thing caught my interest as I read further in the literature, and that was the mirror neuron.

    Mirror neurons are hypothesized to exist throughout our brains and contribute to that sensation we feel when we watch someone else under duress as if we ourselves are there. There is speculation that mirror neurons help facilitate empathy and connection - especially between parents and their children. Could I learn something here?

* Being a better parent (1m)

    I realized that connection and empathy, as exhausted as I was, were still deep in the wells of my spirit. I trained myself in those hours spent cradling him asking myself - how does this feel? What is the meaning behind his crying? Is it his discomfort, or sense of loss being displaced from the womb? And how would that understanding transform my interpretation - my classification, if you will - of these early-morning episodes?

    In the same way that I trained my machine to listen to these cries and learn from them, I also needed to learn to listen to his cries and hear what he was actually saying.

Thank you!

### Takeaways

Audiences will understand how TensorFlow models are built and learn about key methods in the tensorflow library, so they can go tinker with existing models, or create models of their own. The beginners in the audience will have a better understanding of what happens under the hood of ML models, and develop vocabulary to talk about them.

This is a deeply technical talk with a mental health angle to it, too. Audience members will also hear some frank talk about mental health and depression as it relates to parenthood, and be encouraged to discuss these issues freely (and reach out for help) as well.
