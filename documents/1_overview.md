# PLP1 - History and Hello World

<br />

## Table of Contents
0. [Code source](https://github.com/tnlong311/dart-cs308/blob/main/documents/1_hello.dart)
1. [Language overview](#overview)
2. [Getting started](#started)
3. [References](#references)

<br />

## **Language overview** <a name="overview"></a>

<p align="center">
    <img src="https://user-images.githubusercontent.com/69509154/155894883-09a305c4-c566-451c-a5c6-87ea41d7b91f.png">
</p>

<br />

### **What is Dart?**

**The Dart language** is an open-source, general-purposem object-oriented programming language optimized for quickly building apps. Dart’s compiler technology supports building both desktop software, and mobile or web apps in cross-platform environment. Dart is the foudational language for Flutter, a fast-growing UI-development framework backed by Google. 

Official web page: [https://dart.dev/](https://dart.dev/)

<br />

### **Establishment history**

Dart was first introduced in the GOTO conference on October 2010, at Denmark. The founders of Dart were Lars Bak and Kasper Lund, both of whom were  Danish programmers known for their work on virtual machines [(1)](#1).

Dart 1.0 was officially released on 14th November 2013 [(2)](#2). Five years later, the next version, Dart 2.0, was announced on 21th Jully 2018, on the same year with the release of Flutter, Dart’s most used toolkit [(3)](#3). The lastest version of the language is Dart 2.1.6. It is announced to fix several bugs and improve platform handling that its packages are currently suporting [(4)](#4).

<br />

### What is Dart used for?

Dart supports compiling programs in two ways:

1. For apps targeting mobile and desktop devices, Dart includes both a Dart VM with just-in-time (JIT) compilation and an ahead-of-time (AOT) compiler for producing machine code.
2. For apps targeting the web, Dart includes both a development time compiler (dartdevc) and a production time compiler (dart2js). Both compilers translate Dart into JavaScript [(5)](#5). 

In other words, Dart runs in multiple and cross platforms. This flexibility is the unique selling point for the language to become so increasingly wide-used. 

Because Dart is a programming language, it is applied by Flutter framework to build UI for a huge numbers of mobile and web apps. A showcase of applications of Dart and Flutter can be found [here](https://flutter.dev/showcase). 

<br />

### Where to get information on Dart?

Dart has a well-written and detailed documentation on its official page. Every information on the language’s syntax can be found here. To have an initial idea of what Dart is, you can view the [Overview](https://dart.dev/overview) or [Language tour](https://dart.dev/guides/language/language-tour) pages.

Since Dart is an open-source programming language, you can go to their Github repository to have a more in-dept knowledge of how the language is built. Their open-source community is also a good place to give suggestions and raise issues. 

In addition, Dart is well-known and fast-growing together with the trend of multiple-platform apps. Thus, information on Dart can be found widely online, including Youtube turtorials, articles, Stackoverflow or online courses. 

<br />

### Helpful links

Official docs page

- [Dart guides](https://dart.dev/guides)

Dart’s Github repo:

- [Dartlang](https://github.com/dart-lang) 

Articles

- [History, features, applications of Dart](https://www.answersjet.com/2021/06/dart-programming-language-history-features-applications-why-should-learn.html)

- [What is Dart programming language?](https://inlab.fib.upc.edu/en/blog/what-dart-programming-language)

Video turtorials

- [Dart Programming Tutorial](https://www.youtube.com/watch?v=Ej_Pcr4uC2Q) - FreeCodeCamp

- [Dart Programming for Flutter](https://www.youtube.com/watch?v=5rtujDjt50I&list=PLlxmoA0rQ-LyHW9voBdNo4gEEIh0SjG-q) - Smartherd

Course

- [Dart Course for Beginners](https://www.udemy.com/course/dartlang/) - Udemy 

Books 

- [Book list](https://dart.dev/resources/books) 

<br />

## **Getting started** <a name="started"></a>

### **Setup**

There are two options to run a Dart program: online and locally. 

**1. Online**

Dart can be run directly on its official website through an embeded IDE. This is for a quick try experience. Should you want to build a project and save it, follow the second part on how to run Dart in your local computer. 

You can go to [this link](https://dart.dev/#try-dart) to try Dart online.

<p align="center">
    <img src="https://user-images.githubusercontent.com/69509154/155894968-ffc535d9-fadf-4082-8634-28179514e57e.png">
</p>



**2. Locally**

I recommend using Visual Studio Code as the Integrated Development Environment (IDE) to run Dart programs. First, Visual Studio Code is among the most popular IDEs for unprofessional coding activities. Second, setting up Dart in Visual Studio Code is very fast and simple. 

Here are the steps to set up the required environment: 

1. Download and install Visual Studio Code [here.](https://code.visualstudio.com/updates/v1_64)
2. When Visual Studio Code is installed, open it up. 
3. Click the extension tab on the left panel, type “Dart” in the search box. 

<p align="center">
    <img width="50%" src="https://user-images.githubusercontent.com/69509154/155895030-1f083a1f-8993-403d-929c-5a44db071e8d.png">
</p>

4. Click on the Dart icon. Then click “Install”.

<p align="center">
    <img src="https://user-images.githubusercontent.com/69509154/155895068-33e0b0bd-81a0-4aa0-8d19-9d98deaf1388.png">
</p>

Now Visual Studio Code is all set to write and run Dart programs! The process is just as simple as that!

If you choose any IDE that does not include Dart intergration, please install Dart SDK directly on your computer. Detailed turtorial can be found [here.](https://dart.dev/get-dart)

<br />

### **Write your first "Hello world!" program in Dart**

Dart is insprired by some of the most popular programming languages, such as C, Java and Javascript. Therefore, if you have a bit of coding experience, you might find here and there in a Dart program something very similar to what you have known. 

Here are the steps to create and run your first “Hello world!” program:

1. On Visual Studio Code, create a new file named “hello.dart”. The tail “.dart” is to recognize Dart programs. 
2. Write the program as follows:
    
<p align="center">
    <img src="https://user-images.githubusercontent.com/69509154/155895089-3c7aec28-c8d2-49ed-b6ef-690d220f5469.png">
</p>

    The “main()” function is compulsory for every Dart program to be able to run.
    
3. Click on the little “Run” button appearing on top of the main() function. 

<p align="center">
    <img src="https://user-images.githubusercontent.com/69509154/155895139-bd772ff1-640e-4c3c-90c8-a0a1d3289b63.png">
</p>
    
    The print screen is in the Debug console at the bottom section.
    
 <p align="center">
    <img src="https://user-images.githubusercontent.com/69509154/155895300-33d4b334-8c8a-47c7-8159-f9a32db874b8.png">
</p>
    
<br />

## References <a name="references"></a>

<a name="1"></a> 
(1) Cleverism,  “Definition of Dart”, last retrieved on 27th Feb 2022, [https://www.cleverism.com/skills-and-tools/dart/](https://www.cleverism.com/skills-and-tools/dart/)

<a name="2"></a> 
(2) Dartlang news, “Dart 1.0: A stable SDK for structured web apps”, last retrieved on 27th Feb 2022 [https://news.dartlang.org/2013/11/dart-10-stable-sdk-for-structured-web.html](https://news.dartlang.org/2013/11/dart-10-stable-sdk-for-structured-web.html)

<a name="3"></a> 
(3) Michael Thomsen, Medium, “Getting ready for Dart 2”, last retrieved on 27th Feb 2022,  [https://medium.com/dartlang/getting-ready-for-dart-2-and-making-your-packages-look-great-on-the-pub-site-118464d7f59d](https://medium.com/dartlang/getting-ready-for-dart-2-and-making-your-packages-look-great-on-the-pub-site-118464d7f59d)

<a name="4"></a> 
(4) Michael Thomsen, Medium, “Dart 2.16: Improved tooling and platform handling”, last retrieved on 27th Feb 2022,  [https://medium.com/dartlang/dart-2-16-improved-tooling-and-platform-handling-dd87abd6bad1](https://medium.com/dartlang/dart-2-16-improved-tooling-and-platform-handling-dd87abd6bad1)

<a name="5"></a> 
(5) Dart.dev, Dart Overview, last retrieved on 27th Feb 2022, [https://dart.dev/overview](https://dart.dev/overview)
