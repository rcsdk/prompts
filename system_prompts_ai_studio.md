System instructions 

bookmark_border
To see an example of system instructions, run the "Intro to Gemini 2.0 Flash" Jupyter notebook in one of the following environments:

Open in Colab | Open in Colab Enterprise | Open in Vertex AI Workbench user-managed notebooks | View on GitHub

This document describes what system instructions are and best practices for writing effective system instructions. To learn how to add system instructions to your prompts, see Use system instructions instead.

System instructions are a set of instructions that the model processes before it processes prompts. We recommend that you use system instructions to tell the model how you want it to behave and respond to prompts. For example, you can include things like a persona to adopt, contextual information, and formatting instructions.

System instructions are especially useful in cases when you want to provide the model with information that an end user can't see or change, which can help you give the model additional context to understand the task, provide more customized responses, adhere to specific guidelines over the full user interaction with the model. Additionally, system instructions are beneficial when you want to run multiple prompts with the same set of instructions.

When system instructions are set, they apply to the entire request. System instructions work across multiple user and model turns when included in the prompt. Though system instructions are separate from the contents of the prompt, they're still part of your overall prompts and therefore subject to standard data use policies.

Note: System instructions can help guide the model to follow instructions, but they don't fully prevent jailbreaks or leaks. We recommend exercising caution around putting any sensitive information in system instructions.
Use cases
Generally, we recommend using system instructions to do one or more of the following:

Define a persona or role
Define output format
Define output style and tone
Define goals or rules for the task
Provide additional context for the prompt

Persona or role
Output format
Style and tone
Goals and rules
Context
You can influence how a model responds to prompts by defining a persona or role in system instructions.

For example, suppose you want to use a model to help teach students about writing papers. Compare the difference in the model's responses when you define the following roles:

You are a bot, tasked with teaching college students about how to write a paper about a given subject.
You are a bot, tasked with helping primary school students about how to write a paper about a given subject.
System instructions	Bot for college students	Bot for primary school students
You are a bot, tasked with teaching college students about how to write a paper about a given subject.	You are a bot, tasked with helping primary school students about how to write a paper about a given subject.
Prompt	Subject: Photosynthesis	Subject: Photosynthesis
Response	
Writing a Paper on Photosynthesis: A Guide for College Students

Photosynthesis is a fascinating and complex process that forms the basis of life on Earth. Writing a paper on it can be a rewarding experience, allowing you to delve deeper into its intricacies and understand its significance. Here's a breakdown of how to approach this task:

Choosing a Focus:
Broad Overview: You could provide a comprehensive overview of photosynthesis, covering its stages, requirements, byproducts, and its role in the ecosystem.
Specific Aspect: Choose a specific aspect of photosynthesis to explore in detail, like:
The role of light in photosynthesis.
The different types of photosynthesis (C3, C4, CAM).
The impact of environmental factors on photosynthesis.
The evolution of photosynthesis.
The applications of photosynthesis in biotechnology.
Comparative Study: Compare and contrast different aspects of photosynthesis in different organisms (plants, algae, bacteria).
Research and Gathering Information:
Reliable Sources: Use academic journals, reputable online sources, and textbooks. Avoid relying solely on Wikipedia or general websites.
Keyword Search: Use keywords like "photosynthesis," "chloroplasts," "chlorophyll," "light-dependent reactions," "Calvin cycle," etc.
Note-taking: Organize your research by taking thorough notes and summarizing key points, ensuring to cite sources properly.
Outlining and Structuring your Paper:
Introduction:
Briefly introduce photosynthesis and its significance.
State your thesis statement, clearly outlining the main argument of your paper.
Body Paragraphs:
Develop your points in a logical sequence, using evidence from your research.
Use headings and subheadings to organize your paper and make it easier to read.
Each paragraph should focus on a single idea and provide supporting evidence.
Conclusion:
Summarize your main points and restate your thesis.
Discuss the implications of your findings and suggest future research directions.
Writing and Editing:
Clear and Concise Language: Use clear and concise language, avoiding jargon unless it is necessary.
Evidence-based Arguments: Support your claims with evidence from your research.
Proper Citation: Use a consistent citation style (MLA, APA, Chicago) throughout your paper.
Proofreading and Editing: Carefully proofread and edit your paper for grammar, spelling, and punctuation errors.
Additional Tips:
Visual Aids: Use diagrams, graphs, or charts to illustrate complex concepts.
Case Studies: If applicable, include relevant case studies to demonstrate the real-world applications of photosynthesis.
Personal Connection: Find a way to connect your topic to your own interests or experiences.
Example Paper Titles:

The Role of Light Intensity in Photosynthesis: A Comparative Study
The Evolution of Photosynthesis: From Early Life to Modern Plants
Harnessing Photosynthesis: The Potential of Biotechnology
The Impact of Climate Change on Photosynthesis: A Global Perspective
Remember: A well-written paper on photosynthesis should be clear, informative, and engaging. By following these steps and utilizing a strong foundation of research, you can produce a successful paper that demonstrates your understanding of this essential biological process.

(gemini-flash)
That's a great subject! Photosynthesis is super important for life on Earth. Here's how you can write a paper about it:

Think about what you already know:
What is photosynthesis?
What does a plant need to do photosynthesis?
What does a plant make during photosynthesis?
Do you know any interesting facts about photosynthesis?
Research and learn more:
Books: Check out your library for books about plants, nature, or science.
Websites: Look for websites for kids that explain photosynthesis in a simple way. Make sure the websites are reliable (like ones from National Geographic or NASA).
Ask a grown-up: Ask your teacher, parent, or librarian for help finding information.
Organize your thoughts:
Title: Think of a catchy title for your paper, like "The Amazing Process of Photosynthesis" or "How Plants Make Their Own Food."
Introduction: Start with a sentence that grabs the reader's attention. Explain what photosynthesis is in simple terms.
Main Body: Divide your paper into paragraphs. Each paragraph should focus on one key idea about photosynthesis:
What plants need: Sunlight, water, carbon dioxide.
What plants make: Sugar (for food) and oxygen.
Why photosynthesis is important: It provides food for us and animals, and it cleans the air.
Conclusion: Sum up what you learned about photosynthesis. You can also share your favorite fact or a question you still have.
Write your paper:
Use clear and simple language.
Don't be afraid to use pictures or drawings to help explain things.
Check your work for spelling and grammar mistakes.
Make it your own!
Add a personal touch to your paper.
Share an experience or observation you've had about plants.
Draw a diagram to show how photosynthesis works.
Remember: You're the expert on your paper! Have fun learning and writing about photosynthesis.

(gemini-flash)
What's next
Learn how to use system instructions
Explore more examples of prompts in the Prompt gallery.
