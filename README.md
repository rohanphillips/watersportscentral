# Rails Project Planning

## Introduction

The Rails project is a great chance for you to show off everything you’ve
learned about Ruby on Rails, MVC architecture, data modeling and so much more!

**Use this document to help you complete [this planning form][planning form]**

Tips on all aspects of the project are included here, so make sure to have a
look through!

> **Note:** Keep in mind that the Ask a Question team is not permitted to help while
> you are building your projects. Use the internet and the resources provided in
> this document if you get stuck!

## How to Get Started On a Successful Project Build

1. Read through the project requirements here carefully before getting started.

2. Come up with a project idea of your own, and devote some time to a planning
   session. Think about the following:

      a. What will your app do?
      b. What is the user experience?
      c. What will your models be?
      d. What are their associations?
      e. What are all the possible views for your app?

[Use this form][planning form] to jot down your plans and submit it to us so we
can see what you are planning! Check out the sections below on User Story and
Flow Diagrams for help in filling out the form.

3. Create a skeleton app and repository on Github. For more insight on how to
   plan out and get your project idea off the ground, you can watch
   [this live build][live build].

4. Plan your schedule. Note that it takes most full time (40+ hrs/week) students
   between 7-12 days to complete, and can take up to 5 business days to schedule
   your project review after that.

5. You should already be a member of the Slack channel #rails-section; It is a
   great place to connect with others who are working on their projects as well.
   Don’t hesitate to reach out to others in that channel. Flatiron School
   employees as well as students are active there.

We are here to help!  Each week, there are Open Office Hour [study groups][]
specifically designed to help with Rails Portfolio project questions. Also, keep
an eye out for Rails topic-based [study groups][].

### Making a User Story

Atlassian has an amazing write up on Agile Development and more specifically,
how to create user stories. Do see [this article][] to learn their approach. The
typical approach is something along the lines of:

- Who is your User?
- What is their pain point?
- How do they use our solution to overcome this problem?

In other words

- As a `<type of user>`
- I want `<some goal>`
- So that `<some reason>`

Consider this:

Daniel has done very well on their first 3 projects (CLI data gem, Sinatra and
Rails). As a matter of fact, the one pain point for every project has
perpetually been to come up with an app idea to build. As Daniel approaches
their Rails + JavaScript portfolio project, they are riddled with anxiety on
what to build.  Let’s build an app that houses app-idea suggestions for other
students! Here are some user stories that will help shape the app we want to
build.

Homepage on AppConcepts.com:

- As a guest
- I want to get information about AppConcepts.com
- So I can start my portfolio project

User signup → appconcepts.com/users/new:

- As a guest
- I want to sign up
- So I can submit a concept

Create concept → appconcepts.com/concepts/new

- As a user
- I want to submit a concept
- So that others can gain inspiration

Section index → appconcepts.com/sections/rails/concepts

- As a user
- I want to view all concepts for a section
- So that others can gain inspiration from my project

There are no set minimum or maximum for user stories. Try to create a user
story that will describe a feature on your application.

### Choosing Your Models; Modeling Your Data

- What are all the models associated with my app?
- How are they related to one another?

Figuring out what models are necessary, and how they are associated to one
another could very well be the hardest part of your portfolio project -- Which
is why planning is paramount! Let’s consider the app we have in mind for Daniel.
What are some models, model attributes and model relationships that would be
necessary for this app?

User:

- user_name : string
- first_name : string
- last_name : string
- email : string
- password : string

- has_many :projects
- has_many :comments

Concept:

- title : string
- description : string
- user_id : integer
- section_id : integer

- belongs_to :user
- belongs_to :section
- has_many :comments

Section:

- title : string
- description : string

- has_many :projects

Comments:

- body

- belongs_to :user
- belongs_to :concepts

There are a few other models to take into consideration, but this is a great
starting point! (In this small example, we have already set up a many to many
relationship between users and sections -- one of the requirements for your
rails project!)

### Diagraming Your Schema

Let’s consider the information above, and display it visually by diagramming
your schema. We recommend using [draw.io][] to put together a database diagram. It
doesn’t need to be over-complicated  - just a visual idea of your databases’
tables and their attributes and their relations.  Check out
[this video][draw.io video] for some starter information on how to use draw.io.

[Here is an example][diagram schema example] of a diagrammed schema:

![diagrammed schema](https://curriculum-content.s3.amazonaws.com/project-planning/schema%20diagram.png)

You don’t have to use software for this - a photo of a (legible) hand-drawn
sketch on a napkin also works! The symbols used in the examples above follow
basic database diagramming conventions. Please make sure the image or file you
share with us is accessible.

This gif shows how to make a shareable link on draw.io:

![make shareable draw.io gif](https://curriculum-content.s3.amazonaws.com/project-planning/shareable%20link.gif)

### Wireframing

Once we’ve figured out what our models will look like, and how they will relate
to one another, it’s time to think about the flow of your app, as your user will
experience it. There are many ways to go about wireframing -- For this project,
low-fidelity to mid-fidelity wireframing will work quite well.

Check out [this video][low-fi wireframing] on low fidelity wireframing. Whether
you decide to use an app like Sketchapp or [Figma][], or draw it out by hand, your
low fidelity wireframe will look something like this:

![Low-Fidelity Wireframe example](https://curriculum-content.s3.amazonaws.com/project-planning/low-fi%20wireframe.png)

After you’ve given that a go, check out [this video][mid-fi wireframing] on
mid-fidelity wireframing! Mid-fidelity wireframes should be done on an app (like
Figma) and will look similar to this:

![Mid-fidelity wireframe example](https://curriculum-content.s3.amazonaws.com/project-planning/mid-fi%20wireframe.png)

### Handy Tools

- [Requirements Checklist][]
- [Figma][] - A better way to design. Design, prototype, and gather feedback all in one place.
- [Rails Gems to Consider][] - A curated list of Rails very useful gems to consider.
- [draw.io][] - a free online tool for creating flowcharts and diagrams

### Videos

[Rails Live Build: First Steps in Approaching Rails Project Build][rails live build]

- This covers starting a rails project
- Defining your models
- Building a sign_up route.

[rails live build]: https://instruction.learn.co/student/video_lectures#/455
[Rails Gems to Consider]: https://dwayne.fm/rails-gems-to-consider/
[Requirements Checklist]: https://gist.github.com/dwyn/a83c01b70cacdbf5162899a47ef230b6
[Figma]: https://www.figma.com/
[mid-fi wireframing]: https://youtu.be/UKt537T5hEI
[low-fi wireframing]: https://www.youtube.com/watch?v=rTox2mQfYFI
[diagram schema example]: https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&page=2&title=EntityRelationshipModel-HabitTrackerApp#Uhttps%3A%2F%2Fdrive.google.com%2Fa%2Fseibert-media.net%2Fuc%3Fid%3D1WLDfAJyG3BhvFKczlLhJXldHqA08PEtd%26export%3Ddownload
[draw.io video]: https://www.youtube.com/watch?v=lAtCySGDD48
[draw.io]: https://www.draw.io/
[this article]: https://www.atlassian.com/agile/project-management/user-stories
[planning form]: https://docs.google.com/forms/d/1QRT2KbDTazeZY-ZLvRc0QjAaZb_ML3i_PM2AhvS_aYQ/edit?ts=5df9018c
[live build]: https://youtu.be/825w5S69J38
[study groups]: https://learn.co/study-groups
