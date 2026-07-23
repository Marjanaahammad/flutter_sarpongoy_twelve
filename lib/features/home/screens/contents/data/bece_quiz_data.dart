import '../model/quiz_model.dart';

/// BECE Past Exam – Objectives (Multiple Choice) questions.
/// Keyed by the lesson topic string (matches the topic field in Lesson).
final Map<String, QuizModel> beceQuizData = {
  // ─── ENGLISH: ORAL LANGUAGE ───────────────────────────────────────────────
  "Conversation and Everyday Discourse": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Which of the following is an example of a formal greeting?",
          options: [
            "Whaddup, dude?",
            "Good morning, sir.",
            "Hey, what's up?",
            "Yo, how far?"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "'Good morning, sir.' uses formal register appropriate for official settings."),
      QuizQuestion(
          question: "2. A conversation is said to be effective when:",
          options: [
            "Only one person speaks at length",
            "Both parties listen and respond appropriately",
            "There is no eye contact",
            "The speaker uses technical jargon only"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Effective conversation involves mutual listening and appropriate responses."),
      QuizQuestion(
          question:
              "3. Which term describes the unwritten rules of conversation?",
          options: ["Grammar", "Discourse norms", "Register", "Vocabulary"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Discourse norms are the unwritten social rules that govern conversations."),
      QuizQuestion(
          question: "4. 'Turn-taking' in conversation means:",
          options: [
            "Physically turning to face the speaker",
            "Allowing each person a chance to speak in order",
            "Turning the topic to something different",
            "Moving away when someone speaks"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Turn-taking ensures orderly exchange in a conversation."),
      QuizQuestion(
          question:
              "5. Which body language signal shows you are listening attentively?",
          options: [
            "Folding your arms and looking away",
            "Nodding and making eye contact",
            "Yawning repeatedly",
            "Tapping your feet impatiently"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Nodding and eye contact are active listening signals."),
      QuizQuestion(
          question: "6. The word 'discourse' most closely means:",
          options: [
            "A type of meal",
            "Written or spoken communication",
            "A musical instrument",
            "A form of exercise"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Discourse refers to written or spoken communication."),
      QuizQuestion(
          question:
              "7. Kofi meets his teacher in the market. Which greeting is most appropriate?",
          options: [
            "Oi, teacher!",
            "Good afternoon, Mr. Mensah.",
            "What's good, teach?",
            "Hey, I know you!"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "A respectful, formal greeting is appropriate for a teacher."),
      QuizQuestion(
          question:
              "8. Which of these is NOT a feature of informal conversation?",
          options: [
            "Slang words",
            "Relaxed tone",
            "Technical vocabulary",
            "Shortened words"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Technical vocabulary is typically used in formal, not informal, conversations."),
      QuizQuestion(
          question: "9. An 'aside' in a conversation refers to:",
          options: [
            "A main point of the discussion",
            "A comment addressed to one listener privately",
            "A loud exclamation",
            "A topic change"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "An aside is a remark made quietly to one person, not the whole group."),
      QuizQuestion(
          question:
              "10. Which skill helps you understand the emotional tone behind someone's words?",
          options: [
            "Speed reading",
            "Empathic listening",
            "Note-taking",
            "Vocabulary building"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Empathic listening helps you understand feelings behind words."),
    ],
  ),

  "Giving and Following Direction": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. 'Turn left at the roundabout.' Which word describes the direction?",
          options: ["Turn", "At", "Left", "Roundabout"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "'Left' is the directional word indicating which way to turn."),
      QuizQuestion(
          question: "2. A good landmark for giving directions should be:",
          options: [
            "Moveable and small",
            "Permanent and easily recognised",
            "Invisible from the road",
            "Personal to the speaker"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Landmarks must be permanent and recognisable to everyone."),
      QuizQuestion(
          question:
              "3. 'The school is adjacent to the clinic.' This means the school is:",
          options: [
            "Far from the clinic",
            "Opposite the clinic",
            "Next to the clinic",
            "Behind the clinic"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "'Adjacent' means next to or beside."),
      QuizQuestion(
          question:
              "4. Which imperative verb is most commonly used when giving directions?",
          options: ["Run", "Sing", "Turn", "Jump"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "'Turn' is the standard word for changing direction."),
      QuizQuestion(
          question:
              "5. 'Proceed straight for 200 metres.' The word 'proceed' means:",
          options: [
            "Stop",
            "Continue moving in the same direction",
            "Turn around",
            "Change speed"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "'Proceed' means to continue or move forward."),
      QuizQuestion(
          question:
              "6. Which type of language should be avoided when giving directions to a stranger?",
          options: [
            "Imperative verbs",
            "Local jargon and slang",
            "Distance measurements",
            "Landmarks"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Slang may confuse strangers unfamiliar with local expressions."),
      QuizQuestion(
          question: "7. 'The junction' refers to:",
          options: [
            "A local food stall",
            "A place where two or more roads meet",
            "A type of building",
            "A bus stop"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "A junction is where two or more roads intersect."),
      QuizQuestion(
          question:
              "8. Giving directions in numbered steps (1, 2, 3…) helps to:",
          options: [
            "Make the speaker seem smart",
            "Ensure clarity and easy following",
            "Use more words unnecessarily",
            "Confuse the listener"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Numbering steps makes directions easier to follow in order."),
      QuizQuestion(
          question:
              "9. 'Walk past the church, then take the first right.' Which word means 'beyond'?",
          options: ["Walk", "Then", "Past", "Take"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "'Past' means beyond or further than a specific point."),
      QuizQuestion(
          question: "10. Non-verbal cues when giving directions include:",
          options: [
            "Speaking slowly",
            "Using long phrases",
            "Pointing with one's hand",
            "Repeating addresses"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Pointing is a non-verbal way of indicating direction."),
    ],
  ),

  "Using Appropriate Language to Describe Experiences": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. 'The market was buzzing with activity.' Which literary device is used?",
          options: ["Simile", "Metaphor", "Personification", "Oxymoron"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Attributing 'buzzing' (an action) to the market is personification."),
      QuizQuestion(
          question: "2. Adjectives in descriptive language are used to:",
          options: [
            "Show action",
            "Describe nouns",
            "Replace nouns",
            "Describe verbs"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Adjectives modify nouns and help describe experiences vividly."),
      QuizQuestion(
          question:
              "3. 'She ran as fast as a cheetah.' This sentence is an example of:",
          options: ["Metaphor", "Simile", "Alliteration", "Hyperbole"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "A simile compares using 'as' or 'like'."),
      QuizQuestion(
          question:
              "4. Which tense is most appropriate when narrating a past experience?",
          options: [
            "Simple present",
            "Simple past",
            "Future continuous",
            "Present perfect continuous"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Past experiences are described using the simple past tense."),
      QuizQuestion(
          question:
              "5. 'I was over the moon when I passed my exams.' This is an example of:",
          options: [
            "An idiom",
            "A proverb",
            "A literal expression",
            "A command"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "'Over the moon' is an idiomatic expression meaning very happy."),
      QuizQuestion(
          question: "6. Sensory language appeals to:",
          options: [
            "Logic and facts only",
            "The five senses",
            "Mathematical reasoning",
            "Technical knowledge"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Sensory language paints pictures using sight, sound, touch, taste, and smell."),
      QuizQuestion(
          question:
              "7. 'The old man's hands were rough like sandpaper.' The comparison word is:",
          options: ["Old", "Hands", "Like", "Rough"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "'Like' signals a simile comparison."),
      QuizQuestion(
          question:
              "8. Which sentence uses the most vivid descriptive language?",
          options: [
            "The rain fell.",
            "It rained yesterday.",
            "Heavy droplets drummed loudly on the tin roof.",
            "The weather was wet."
          ],
          correctIndex: 2,
          difficulty: "Hard",
          explanation:
              "Vivid description uses sensory details and strong verbs."),
      QuizQuestion(
          question:
              "9. Using specific nouns instead of general ones makes writing:",
          options: [
            "Longer and harder to read",
            "More precise and vivid",
            "Less interesting",
            "Grammatically incorrect"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Specific nouns add clarity and draw clearer mental images."),
      QuizQuestion(
          question: "10. The primary purpose of descriptive language is to:",
          options: [
            "List facts",
            "Instruct the reader",
            "Create a clear picture in the reader's mind",
            "Argue a point"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Descriptive language helps readers visualise experiences."),
    ],
  ),

  "Asking Questions to Elicit Elaboration": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. An open-ended question is one that:",
          options: [
            "Can only be answered with Yes or No",
            "Encourages a detailed, thoughtful answer",
            "Is rude or aggressive",
            "Is written on a test paper"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Open-ended questions invite explanation and detail."),
      QuizQuestion(
          question: "2. 'Can you tell me more about that?' is an example of:",
          options: [
            "A closed question",
            "A leading question",
            "A follow-up elaboration question",
            "A rhetorical question"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "It is a follow-up question that prompts more information."),
      QuizQuestion(
          question: "3. Which question word is BEST for asking a reason?",
          options: ["Where", "When", "Why", "Who"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "'Why' asks for a reason or cause."),
      QuizQuestion(
          question: "4. A closed question is one that:",
          options: [
            "Opens a new topic",
            "Requires only a brief, specific answer",
            "Always starts with 'How'",
            "Is impossible to answer"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Closed questions typically get Yes/No or single-word answers."),
      QuizQuestion(
          question:
              "5. Ama says, 'The trip was fun.' Which follow-up best elicits elaboration?",
          options: ["Was it?", "How was it fun?", "I know.", "Did you go?"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "'How was it fun?' asks for specific details and reasons."),
      QuizQuestion(
          question: "6. 'Elicit' means to:",
          options: [
            "Suppress or hide",
            "Draw out or obtain a response",
            "Refuse to answer",
            "Write a letter"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Elicit means to bring out a response or information."),
      QuizQuestion(
          question:
              "7. Which of these is the most respectful way to ask for elaboration?",
          options: [
            "Tell me everything, now.",
            "Stop talking.",
            "Could you please explain further?",
            "That's boring."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "'Could you please explain further?' is polite and invites more detail."),
      QuizQuestion(
          question: "8. Why is elaboration important in a discussion?",
          options: [
            "It takes less time",
            "It gives more complete understanding of ideas",
            "It makes conversations shorter",
            "It confuses the listener"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Elaboration provides depth and ensures full understanding."),
      QuizQuestion(
          question: "9. A 'leading question' is one that:",
          options: [
            "Leads the conversation to a new topic",
            "Suggests the expected answer within the question itself",
            "Is very long and detailed",
            "Begins every discussion"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "A leading question guides the respondent toward a particular answer."),
      QuizQuestion(
          question: "10. 'How did that make you feel?' is designed to elicit:",
          options: [
            "Facts and statistics",
            "Personal feelings and emotional response",
            "Directions and instructions",
            "Mathematical solutions"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "'How did that make you feel?' targets emotions and experiences."),
    ],
  ),

  "Identifying Key Information in Oral Texts": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. The 'main idea' of a speech is:",
          options: [
            "The last word spoken",
            "The central message the speaker wants to communicate",
            "A joke told during the speech",
            "The speaker's name"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The main idea is the core message the speaker aims to deliver."),
      QuizQuestion(
          question: "2. 'Supporting details' in a speech are used to:",
          options: [
            "Distract the audience",
            "Prove or explain the main idea",
            "Change the subject",
            "Entertain only"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Supporting details provide evidence and explanation for the main idea."),
      QuizQuestion(
          question:
              "3. When listening to an oral text, a useful strategy is to:",
          options: [
            "Daydream and relax",
            "Take brief notes on key points",
            "Interrupt the speaker often",
            "Look at your phone"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Taking brief notes captures essential information from oral text."),
      QuizQuestion(
          question:
              "4. Which question helps identify the PURPOSE of an oral text?",
          options: [
            "Where was it recorded?",
            "What does the speaker want the listener to know or do?",
            "How long was the speech?",
            "Who introduced the speaker?"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Identifying purpose clarifies the speaker's intent."),
      QuizQuestion(
          question: "5. A speaker who aims to PERSUADE will use language that:",
          options: [
            "Lists neutral facts only",
            "Urges agreement and action",
            "Confuses the audience",
            "Avoids all opinion"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Persuasive language encourages the audience to take a stance."),
      QuizQuestion(
          question: "6. Cross-checking information means:",
          options: [
            "Writing it twice",
            "Verifying the facts from another source",
            "Deleting incorrect information",
            "Changing the topic"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Cross-checking involves confirming facts using multiple sources."),
      QuizQuestion(
          question: "7. 'Infer' means to:",
          options: [
            "State a fact directly",
            "Draw a conclusion not explicitly stated",
            "Write a summary",
            "Repeat what was said"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Inferring is reaching a conclusion based on evidence and reasoning."),
      QuizQuestion(
          question: "8. The 'tone' of a speaker refers to:",
          options: [
            "The volume of the microphone",
            "The emotion or attitude in the speaker's voice",
            "The length of the speech",
            "The topic discussed"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Tone reflects the speaker's feelings and attitude through voice."),
      QuizQuestion(
          question:
              "9. Which listening skill involves mentally picturing what is being described?",
          options: [
            "Note-taking",
            "Visualising",
            "Cross-checking",
            "Summarising"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Visualising is forming mental images from what you hear."),
      QuizQuestion(
          question: "10. A news bulletin and a weather forecast both aim to:",
          options: [
            "Persuade",
            "Entertain and amuse",
            "Inform the audience",
            "Give instructions"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Both aim to provide factual information to the public."),
    ],
  ),

  "Sharing Opinions on Oral Texts": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Before sharing your opinion on a text, you should first:",
          options: [
            "Decide what you think before listening",
            "Understand the key points made",
            "Ignore the speaker's evidence",
            "Wait for the test"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "You must understand the content before forming a valid opinion."),
      QuizQuestion(
          question: "2. Which phrase shows a respectful disagreement?",
          options: [
            "That is completely wrong!",
            "You make no sense.",
            "I see your point, but I believe...",
            "Nobody agrees with you."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Acknowledging the point before disagreeing shows respect."),
      QuizQuestion(
          question:
              "3. An opinion is different from a fact because an opinion:",
          options: [
            "Cannot be proven right or wrong",
            "Is always incorrect",
            "Can be proven with data",
            "Never changes"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "An opinion is a personal view, not necessarily verifiable."),
      QuizQuestion(
          question:
              "4. When you say 'I believe the speaker is correct because…', you are:",
          options: [
            "Summarising",
            "Questioning",
            "Expressing and justifying an opinion",
            "Giving instructions"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Using 'because' to support your view makes your opinion justified."),
      QuizQuestion(
          question: "5. 'Bias' in a speech means:",
          options: [
            "A fair and balanced view",
            "An unfair preference or prejudice",
            "A type of poetry",
            "A form of grammar"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Bias is a leaning toward one side that affects fairness."),
      QuizQuestion(
          question:
              "6. A speaker who uses only emotional appeals without facts is:",
          options: [
            "Using good evidence",
            "Using propaganda techniques",
            "Being perfectly objective",
            "Giving balanced arguments"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "Emotional appeal without facts can be a propaganda technique."),
      QuizQuestion(
          question: "7. Which of these is a valid, well-supported opinion?",
          options: [
            "I dislike the speaker.",
            "The speech was too long.",
            "The speaker's plan will fail because similar plans have failed before.",
            "I was bored."
          ],
          correctIndex: 2,
          difficulty: "Hard",
          explanation:
              "A valid opinion provides logical reasoning based on evidence."),
      QuizQuestion(
          question: "8. Sharing ideas in a group discussion requires:",
          options: [
            "Talking over everyone else",
            "Listening, then contributing once invited",
            "Staying silent throughout",
            "Shouting to be heard"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Taking turns and contributing constructively leads to effective discussion."),
      QuizQuestion(
          question:
              "9. Which skill is most important when you disagree with a speaker?",
          options: [
            "Emotional control and politeness",
            "Speaking as fast as possible",
            "Memorising every word of the speech",
            "Refusing to listen"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "Staying calm and polite ensures productive disagreement."),
      QuizQuestion(
          question:
              "10. 'Level-appropriate text' means the reading or listening material:",
          options: [
            "Is written in a different language",
            "Matches the learner's grade and ability",
            "Only teachers can understand",
            "Has pictures only"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Level-appropriate texts suit the learner's comprehension level."),
    ],
  ),

  // ─── ENGLISH: GRAMMAR ────────────────────────────────────────────────────
  "Subject and Predicate": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. The subject of a sentence is:",
          options: [
            "What the sentence says about the noun",
            "The action performed",
            "Who or what the sentence is about",
            "The verb of the sentence"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The subject is the main noun or pronoun the sentence is about."),
      QuizQuestion(
          question:
              "2. Identify the subject in: 'The tall teacher explained the lesson.'",
          options: ["Explained", "The lesson", "The tall teacher", "Clearly"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "'The tall teacher' is who the sentence is about — the subject."),
      QuizQuestion(
          question: "3. The predicate of a sentence:",
          options: [
            "Names the subject",
            "Contains the verb and everything said about the subject",
            "Is always a single word",
            "Comes before the subject"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The predicate contains the verb and all that is said about the subject."),
      QuizQuestion(
          question:
              "4. In 'Ama and Kwame play football every Friday,' what is the subject?",
          options: ["Play", "Football", "Every Friday", "Ama and Kwame"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "'Ama and Kwame' is a compound subject — two nouns joined by 'and'."),
      QuizQuestion(
          question: "5. A simple predicate is:",
          options: [
            "All the words after the subject",
            "Only the verb or verb phrase",
            "The entire subject of the sentence",
            "A describing word"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The simple predicate is just the main verb or verb phrase."),
      QuizQuestion(
          question: "6. Which sentence has a compound subject?",
          options: [
            "The boy ran fast.",
            "Ama read a book.",
            "Kofi and Ama went to school.",
            "She is clever."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Two subjects joined by 'and' form a compound subject."),
      QuizQuestion(
          question:
              "7. 'The farmers in the north grow maize.' What is the complete subject?",
          options: [
            "The farmers",
            "The farmers in the north",
            "Grow maize",
            "In the north"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The complete subject includes the noun and all its modifiers."),
      QuizQuestion(
          question: "8. 'Ran quickly down the street.' This is:",
          options: [
            "A complete sentence",
            "A sentence with only a predicate (fragment)",
            "A question",
            "A command"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "It has no subject — it is a sentence fragment (predicate only)."),
      QuizQuestion(
          question: "9. In an interrogative sentence, the subject:",
          options: [
            "Is always at the beginning",
            "Often comes after the auxiliary verb",
            "Is never present",
            "Replaces the verb"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "In questions, the subject usually follows the auxiliary (e.g., 'Is **she** going?')."),
      QuizQuestion(
          question:
              "10. 'Every student in the class passed.' The predicate is:",
          options: [
            "Every student",
            "In the class",
            "Student in the class",
            "Passed"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation:
              "'Passed' is the simple predicate (main verb) of the sentence."),
    ],
  ),

  "Active and Passive Voice": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. In an active voice sentence, the subject:",
          options: [
            "Receives the action",
            "Performs the action",
            "Is always omitted",
            "Comes after the verb"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "In active voice, the subject does the action."),
      QuizQuestion(
          question: "2. Which sentence is in the passive voice?",
          options: [
            "The girl kicked the ball.",
            "The ball was kicked by the girl.",
            "She answered the question.",
            "He loves football."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The ball (object) becomes the subject in passive voice."),
      QuizQuestion(
          question: "3. The passive voice is formed using:",
          options: [
            "A verb + infinitive",
            "A form of 'be' + past participle",
            "A modal verb alone",
            "The present participle"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Passive constructions use 'be' (is/was/were) + past participle."),
      QuizQuestion(
          question:
              "4. Change to passive voice: 'The teacher marked the papers.'",
          options: [
            "The papers is marked by the teacher.",
            "The papers marked by the teacher.",
            "The papers were marked by the teacher.",
            "The teacher were marking the papers."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Passive: The papers (subject) + were marked (past passive) + by the teacher."),
      QuizQuestion(
          question: "5. When is passive voice used?",
          options: [
            "When the doer is known and important",
            "When the action is more important than who performed it",
            "When simpler grammar is needed",
            "Only in spoken English"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Passive voice emphasises the action or the object, not the doer."),
      QuizQuestion(
          question: "6. 'The bridge was built in 1956.' Who built the bridge?",
          options: [
            "Unknown or unimportant",
            "The government",
            "A famous engineer",
            "The bridge itself"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "The agent is omitted because it is unknown or unimportant."),
      QuizQuestion(
          question:
              "7. Convert to active voice: 'The cake was eaten by the children.'",
          options: [
            "The cake ate the children.",
            "The children ate the cake.",
            "Eaten by the children was the cake.",
            "The children were eating cake."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Active: Children (subject) + ate (verb) + the cake (object)."),
      QuizQuestion(
          question: "8. Which verb form is used in the passive with 'is'?",
          options: [
            "Base form",
            "Past participle",
            "Present participle",
            "Infinitive"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "'Is + past participle' forms the present simple passive."),
      QuizQuestion(
          question:
              "9. 'The news was announced on the radio.' What tense is this passive?",
          options: [
            "Present passive",
            "Past passive",
            "Future passive",
            "Present perfect passive"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation: "'was announced' is the past simple passive."),
      QuizQuestion(
          question: "10. In formal writing, which voice is preferred?",
          options: [
            "Active voice only",
            "Passive voice is often preferred",
            "Neither voice is used",
            "Imperative voice"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "Passive voice is common in formal, academic, and scientific writing."),
    ],
  ),

  "Reported Speech (Direct and Indirect)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Direct speech uses:",
          options: [
            "Reported forms of verbs",
            "Quotation marks to show exact words",
            "No punctuation",
            "Only past tense verbs"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Direct speech records exact words and uses quotation marks."),
      QuizQuestion(
          question: "2. Convert to reported speech: She said, 'I am happy.'",
          options: [
            "She said she was happy.",
            "She said I am happy.",
            "She says she is happy.",
            "She told she was happy."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "'Am' shifts to 'was' in reported speech (backshifting)."),
      QuizQuestion(
          question: "3. When reporting speech, 'will' becomes:",
          options: ["Shall", "Would", "Can", "Must"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "'Will' shifts to 'would' when converting to reported speech."),
      QuizQuestion(
          question:
              "4. 'He said, \"I can drive.\"' In reported speech, this becomes:",
          options: [
            "He said he could drive.",
            "He said he can drive.",
            "He told he could drive.",
            "He says he could drive."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "'Can' shifts to 'could' in reported speech."),
      QuizQuestion(
          question: "5. Convert: 'She asked, \"Are you coming?\"'",
          options: [
            "She asked if I was coming.",
            "She asked am I coming.",
            "She asked whether I am coming.",
            "She asked that I come."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "Questions shift to 'if/whether + subject + past verb' in reported speech."),
      QuizQuestion(
          question: "6. The pronoun 'I' in reported speech usually changes to:",
          options: [
            "He / She (depending on the speaker)",
            "They",
            "I (no change)",
            "We"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "First-person pronouns change to third-person in reported speech."),
      QuizQuestion(
          question:
              "7. 'Today' in direct speech becomes ______ in reported speech.",
          options: ["Yesterday", "That day", "Now", "Tomorrow"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "'Today' shifts to 'that day' in reported speech."),
      QuizQuestion(
          question: "8. 'He ordered me, \"Sit down!\"' In reported speech:",
          options: [
            "He ordered me to sit down.",
            "He ordered me sat down.",
            "He told me sit down.",
            "He said to me that sit down."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "Commands use 'ordered/told + object + to + infinitive' in reported speech."),
      QuizQuestion(
          question: "9. Which tense shift occurs in reported speech?",
          options: [
            "No change",
            "All verbs move one tense back (backshifting)",
            "All verbs become present tense",
            "Only future verbs change"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "Backshifting moves verbs one tense into the past in reported speech."),
      QuizQuestion(
          question:
              "10. 'This' changes to ______ and 'here' changes to ______ in reported speech.",
          options: [
            "That / There",
            "These / Those",
            "That / Now",
            "Here / There"
          ],
          correctIndex: 0,
          difficulty: "Hard",
          explanation:
              "Demonstratives and place words shift in reported speech: this→that, here→there."),
    ],
  ),

  "Mastering Conditional Sentences (Type 1)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. A Type 1 (First) Conditional sentence expresses:",
          options: [
            "An unreal past situation",
            "A real and possible future condition",
            "An impossible situation",
            "A past habit"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Type 1 conditionals talk about likely or possible future events."),
      QuizQuestion(
          question: "2. The correct structure of a Type 1 conditional is:",
          options: [
            "If + past simple, would + verb",
            "If + present simple, will + verb",
            "If + past perfect, would have + verb",
            "If + present perfect, shall + verb"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Type 1: If + present simple, will + base verb."),
      QuizQuestion(
          question: "3. Which sentence is a correct Type 1 conditional?",
          options: [
            "If it rained, I would go out.",
            "If she studies, she will pass.",
            "If I had money, I bought a car.",
            "If he were here, he would help."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Present simple in the 'if' clause and 'will' in the main clause."),
      QuizQuestion(
          question:
              "4. 'Unless you study, you ______ fail.' Fill in the blank.",
          options: ["Will", "Would", "Could have", "Had"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "'Unless' means 'if not,' so the Type 1 rule still applies."),
      QuizQuestion(
          question: "5. The 'if' clause in a conditional sentence:",
          options: [
            "Always comes first",
            "Must come second",
            "Can come before or after the main clause",
            "Is optional"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "The 'if' clause can appear before or after the main clause."),
      QuizQuestion(
          question:
              "6. 'If you heat ice, it melts.' What type of conditional is this?",
          options: ["Type 1", "Type 2", "Zero conditional", "Type 3"],
          correctIndex: 2,
          difficulty: "Hard",
          explanation:
              "Zero conditional expresses universal truths and scientific facts."),
      QuizQuestion(
          question:
              "7. What is the negative form of: 'If she passes, she will celebrate.'?",
          options: [
            "If she won't pass, she won't celebrate.",
            "If she doesn't pass, she won't celebrate.",
            "If she didn't pass, she would not celebrate.",
            "If she not pass, she will not celebrate."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The negative of present simple in 'if' clause is 'doesn't/don't'."),
      QuizQuestion(
          question:
              "8. 'If she studies hard, ______ pass her BECE.' Select the correct option.",
          options: ["She will", "She would", "She has", "She had"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "'Will' is used in the result clause of a Type 1 conditional."),
      QuizQuestion(
          question:
              "9. Which modal can replace 'will' in a Type 1 conditional?",
          options: [
            "Would (without change in meaning)",
            "Might (to show possibility)",
            "Had (to show past)",
            "Were (to show formality)"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "'Might' can replace 'will' to show possibility rather than certainty."),
      QuizQuestion(
          question:
              "10. 'If it rains tomorrow, the match ______.' Best completion:",
          options: [
            "Was cancelled",
            "Will be cancelled",
            "Would be cancelled",
            "Had been cancelled"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Type 1: future action uses 'will + base/passive form'."),
    ],
  ),

  // ─── SCIENCE: DIVERSITY OF MATTER ──────────────────────────────────────
  "Classification of Materials": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Materials are classified based on:",
          options: [
            "Their colour only",
            "Their properties such as hardness, conductivity and flexibility",
            "Their price in the market",
            "How old they are"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Classification is based on physical and chemical properties."),
      QuizQuestion(
          question: "2. Which of these is a conductor of electricity?",
          options: ["Wood", "Rubber", "Copper", "Glass"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Copper is a metal and an excellent conductor of electricity."),
      QuizQuestion(
          question:
              "3. A material that does NOT allow electricity to pass through is called:",
          options: [
            "A conductor",
            "A semiconductor",
            "An insulator",
            "A reactor"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Insulators do not allow the flow of electric current."),
      QuizQuestion(
          question:
              "4. Which property describes how easily a material can be scratched?",
          options: ["Density", "Hardness", "Malleability", "Conductivity"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Hardness measures a material's resistance to scratching."),
      QuizQuestion(
          question: "5. Metals are generally:",
          options: [
            "Dull and brittle",
            "Good conductors and shiny",
            "Insulators and soft",
            "Light and transparent"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Metals are typically shiny, strong, and good conductors."),
      QuizQuestion(
          question:
              "6. Which material is both strong and flexible, making it useful in construction?",
          options: ["Glass", "Steel", "Chalk", "Wax"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Steel combines strength with some flexibility, ideal for buildings and bridges."),
      QuizQuestion(
          question: "7. 'Malleability' means a material can be:",
          options: [
            "Dissolved easily",
            "Hammered or rolled into thin sheets",
            "Heated to high temperatures",
            "Stretched into wires"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "A malleable material can be shaped by hammering or pressing."),
      QuizQuestion(
          question: "8. Which classification describes wood?",
          options: [
            "Metal",
            "Ceramic",
            "Natural material",
            "Synthetic polymer"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Wood is a naturally occurring material derived from trees."),
      QuizQuestion(
          question: "9. Plastics are classified as:",
          options: [
            "Metals",
            "Natural materials",
            "Synthetic (man-made) materials",
            "Ceramics"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Plastics are synthetic polymers manufactured through chemical processes."),
      QuizQuestion(
          question:
              "10. Which property would you test to find out if a liquid boils easily?",
          options: [
            "Hardness",
            "Malleability",
            "Boiling point",
            "Magnetic strength"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "The boiling point tells you at what temperature a liquid becomes a gas."),
    ],
  ),

  "Human Growth Stages": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. What is the correct order of human growth stages?",
          options: [
            "Adolescence, Infancy, Childhood, Adulthood",
            "Infancy, Childhood, Adolescence, Adulthood",
            "Childhood, Infancy, Adulthood, Adolescence",
            "Adulthood, Childhood, Infancy, Adolescence"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Humans develop: Infancy → Childhood → Adolescence → Adulthood."),
      QuizQuestion(
          question:
              "2. Which gland controls most physical changes during puberty?",
          options: ["Pancreas", "Pituitary gland", "Liver", "Kidney"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The pituitary gland releases growth hormones that drive puberty."),
      QuizQuestion(
          question: "3. Adolescence is characterised by:",
          options: [
            "Rapid physical and emotional development",
            "Very slow growth",
            "Complete development of the body",
            "Only mental changes"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Adolescence involves rapid physical, emotional, and social changes."),
      QuizQuestion(
          question: "4. 'Puberty' describes:",
          options: [
            "The ageing process",
            "The period when a child's body develops into an adult body",
            "A disease of the bones",
            "The process of learning to walk"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Puberty is the biological transition from childhood to adulthood."),
      QuizQuestion(
          question:
              "5. Which of these is a PRIMARY sex characteristic in males?",
          options: [
            "Deepening voice",
            "Growth of facial hair",
            "Production of sperm",
            "Widening of hips"
          ],
          correctIndex: 2,
          difficulty: "Hard",
          explanation:
              "Primary sex characteristics are directly related to reproduction."),
      QuizQuestion(
          question: "6. During old age, the human body:",
          options: [
            "Grows rapidly",
            "Experiences a gradual decline in physical functions",
            "Stops producing hormones completely",
            "Becomes stronger"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Ageing involves gradual reduction in physical and cognitive functions."),
      QuizQuestion(
          question:
              "7. Which nutrient is most important for growth and tissue repair?",
          options: ["Carbohydrates", "Fats", "Proteins", "Vitamins"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Proteins are the building blocks for growth and tissue repair."),
      QuizQuestion(
          question: "8. The period between birth and 2 years of age is called:",
          options: ["Adolescence", "Childhood", "Infancy", "Adulthood"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Infancy refers to the earliest stage of human development."),
      QuizQuestion(
          question: "9. Emotional changes during adolescence include:",
          options: [
            "Loss of all emotions",
            "Increased self-awareness and mood swings",
            "Complete emotional stability",
            "Lack of interest in peers"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Adolescents experience heightened emotions and identity development."),
      QuizQuestion(
          question:
              "10. Which practice promotes healthy growth during childhood?",
          options: [
            "Skipping meals",
            "Regular exercise and balanced nutrition",
            "Staying indoors always",
            "Avoiding sleep"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Exercise and proper nutrition are essential for healthy development."),
    ],
  ),

  // ─── MATH ──────────────────────────────────────────────────────────────
  "Math JHS1 s1 ss1 - Number and Numeration Systems": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Write 356.07 in standard form.          (BECE 1995 Q5)",
          options: [
            "35.607 × 10",
            "35.607 × 10²",
            "3.5607 × 10²",
            "35607 × 10²"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "356.07 = 3.5607 × 10²."),
      QuizQuestion(
          question:
              "2. Which of the following numbers is the prime number greater than 23?           (BECE 2004 Q6)",
          options: ["17", "24", "25", "29"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "29 is the only prime number greater than 23."),
      QuizQuestion(
          question:
              "3. Write 4687.02 in standard form.          (BECE 1991 Q5)",
          options: [
            "46.8702 × 10³",
            "46.8702 × 10⁴",
            "4.68702 × 10⁵",
            "4.68702 × 10³"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "4687.02 = 4.68702 × 10³."),
      QuizQuestion(
          question:
              "4. Correct 0.02751 to three decimal places.          (BECE 2011 Q40)",
          options: ["0.027", "0.028", "0.03", "0.28"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Rounded to three decimal places, 0.02751 = 0.028."),
      QuizQuestion(
          question: "5. Write in standard form 1342.          (BECE 1999 Q4)",
          options: [
            "0.1342 × 10³",
            "0.1342 × 10^{-4}",
            "13.42 × 10³",
            "1.342 × 10³"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "1342 = 1.342 × 10³."),
      QuizQuestion(
          question:
              "6. Express 2345 in standard form.           (BECE 2001 Q18)",
          options: ["2.345 × 10³", "2.345 × 10²", "2.345 × 10⁴", "2.345 × 10"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "2345 = 2.345 × 10³."),
      QuizQuestion(
          question:
              "7. Write GH₵35,632.00 correct to the nearest thousand cedis.           (BECE 1994 Q25)",
          options: [
            "GH₵40,000.00",
            "GH₵36,000.00",
            "GH₵35,600.00",
            "GH₵35,000.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "35,632 rounded to the nearest thousand is 36,000."),
      QuizQuestion(
          question:
              "8. Write 83000 in standard form.           (BECE 2003 Q18)",
          options: ["8.3 × 10⁴", "8.3 × 10⁻³", "8.3 × 10³", "8.3 × 10⁵"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "83000 = 8.3 × 10⁴."),
      QuizQuestion(
          question:
              "9. Which of the following is not a prime number?           (BECE 1994 Q5)",
          options: ["3", "5", "7", "9"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "9 = 3 × 3, so it is not a prime number."),
      QuizQuestion(
          question:
              "10. Express 2474.5 in standard form.           (BECE 2002A Q4)",
          options: [
            "2.4745 × 10²",
            "2.4745 × 10³",
            "2.4745 × 10⁻²",
            "2.4745 × 10⁻³"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "2474.5 = 2.4745 × 10³."),
      QuizQuestion(
          question:
              "11. Write 78910 correct to the nearest thousand.           (BECE 2004 Q8)",
          options: ["70,000", "78,000", "79,000", "80,000"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "78,910 rounded to the nearest thousand is 79,000."),
      QuizQuestion(
          question:
              "12. Express 962 in standard form.           (BECE 2006 Q16)",
          options: ["96.2 × 10", "9.62 × 10²", "0.962 × 10³", "0.0962 × 10⁴"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "962 = 9.62 × 10²."),
      QuizQuestion(
          question:
              "13. Round 8921465 to the nearest hundred.           (BECE 2008 Q3)",
          options: ["8921000", "8921400", "8921460", "8921500"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "8,921,465 rounded to the nearest hundred is 8,921,500."),
      QuizQuestion(
          question:
              "14. Write the number 34.1 in standard form.           (BECE 2008 Q36)",
          options: ["3.41 × 10²", "3.41 × 10¹", "3.41 × 10⁰", "3.41 × 10"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "34.1 = 3.41 × 10¹."),
      QuizQuestion(
          question:
              "15. Which of the following is an even prime number?           (BECE 2023 Q7)",
          options: ["1", "8", "4", "2"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "2 is the only even prime number."),
      QuizQuestion(
          question:
              "16. Write 2340000 in standard form.           (BECE 2009 Q2)",
          options: ["2.34 × 10⁻⁶", "2.34 × 10⁵", "2.34 × 10⁶", "2.34 × 10⁻⁵"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "2,340,000 = 2.34 × 10⁶."),
      QuizQuestion(
          question:
              "17. Express 4037 in standard form.           (BECE 2010 Q36)",
          options: [
            "4.037 × 10⁴",
            "4.037 × 10⁻³",
            "4.037 × 10³",
            "4.037 × 10⁻⁴"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "4037 = 4.037 × 10³."),
      QuizQuestion(
          question:
              "18. Write 3560 in standard form.           (BECE 2011 Q39)",
          options: ["3.56 × 10⁴", "3.56 × 10⁻³", "3.56 × 10³", "3.56 × 10⁻⁴"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "3560 = 3.56 × 10³."),
      QuizQuestion(
          question:
              "19. Which of the following numbers is an integer?           (BECE 2012 Q2)",
          options: ["-5/4", "-2/3", "0.5", "-1"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "-1 is an integer."),
      QuizQuestion(
          question:
              "20. Which of the following is arranged in ascending order?           (BECE 2016 Q9)",
          options: [
            "-10, -7, 4.2, 9",
            "-10, 9, -7, 4.2",
            "-4, -7, 10, 2.9",
            "2, 4, -7, 9, 10"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "-10 < -7 < 4.2 < 9."),
      QuizQuestion(
          question:
              "21. Express 134.78 correct to the nearest tenth.           (BECE 2021 Q8)",
          options: ["130.0", "134.7", "134.8", "135.0"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "134.78 rounded to one decimal place is 134.8."),
      QuizQuestion(
          question:
              "22. Express 625.13 in standard form.           (BECE 2015 Q16)",
          options: [
            "6.2513 × 10⁻²",
            "6.2513 × 10⁻⁴",
            "6.2513 × 10²",
            "6.2513 × 10⁴"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "625.13 = 6.2513 × 10²."),
      QuizQuestion(
          question:
              "23. Which of the following is the largest set?           (BECE 2016 Q6)",
          options: [
            "{Composites}",
            "{Integers}",
            "{Natural numbers}",
            "{Whole numbers}"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The set of integers contains whole numbers, natural numbers and their negative counterparts."),
      QuizQuestion(
          question:
              "24. Correct 48,947.2547 to the nearest hundred.           (BECE 2016 Q6)",
          options: ["490", "48,900", "48,950", "49,000"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "48,947.2547 rounded to the nearest hundred is 49,000."),
      QuizQuestion(
          question:
              "25. Arrange the following integers from the least to the highest: 4, 9, -10, 7 and 2.           (BECE 2018 Q1)",
          options: [
            "-10, -7, 4.2, 9",
            "-64, -25, 4, 17",
            "-64, -25, 17, 4",
            "17, 4, -25, -64"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Ascending order is -10, 2, 4, 7, 9. (The options are copied exactly as shown in the image.)"),
      QuizQuestion(
          question:
              "26. Which of the following is not an integer?           (BECE 2022 Q11)",
          options: ["1", "-5", "0.5", "0"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "0.5 is not an integer."),
      QuizQuestion(
          question:
              "27. Which of the following numbers is the largest?           (BECE 2019 Q3)",
          options: ["-70", "-50", "-3", "-2"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "-2 is the largest among the given negative numbers."),
      QuizQuestion(
          question:
              "28. Find the largest value of these numbers: -1, 0, -6, -3.           (BECE 2023 Q2)",
          options: ["0", "-1", "3", "-6"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "0 is the largest value."),
    ],
  ),
  "Math JHS1 s1 ss2 - Number Operations": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Find the highest (greatest) common factor of 63 and 81.          (BECE 2001 Q4)",
          options: ["3", "7", "9", "21"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "63 = 3² × 7 and 81 = 3⁴, so the HCF is 3² = 9."),
      QuizQuestion(
          question:
              "2. Express 24 as a product of prime factors.          (BECE 1999 Q3)",
          options: ["2² × 3", "2 × 3", "2³ × 3", "2² × 3²"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "24 = 2³ × 3."),
      QuizQuestion(
          question:
              "3. What is the H.C.F of 48, 30 and 18?          (BECE 1995 Q3)",
          options: ["2", "3", "5", "6"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The HCF of 48, 30 and 18 is 6."),
      QuizQuestion(
          question:
              "4. A basket contains 450 oranges. If each orange costs ₵15.00, find the total cost of the oranges.          (BECE 1993 Q27)",
          options: ["₵30.00", "₵435.00", "₵465.00", "₵6,750.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "450 × 15 = ₵6,750.00."),
      QuizQuestion(
          question:
              "5. A watchman was paid basic wage of ₵250.00 a day. If he worked everyday in the month, calculate his basic wage for February, 1988.          (BECE 1990 Q27)",
          options: ["₵6,250.00", "₵7,200.00", "₵7,250.00", "₵7,500.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "1988 was a leap year, so February had 29 days. 29 × 250 = ₵7,250.00."),
      QuizQuestion(
          question:
              "6. If 26039 oranges are shared equally among 13 women, how many oranges does each woman receive?          (BECE 1990 Q6)",
          options: ["23", "203", "230", "2003"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "26039 ÷ 13 = 2003."),
      QuizQuestion(
          question:
              "7. What is the equivalent of 2² × 6² in terms of indices?          (BECE 1998 Q4)",
          options: ["5", "7", "10", "35"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "2² × 6² = (2 × 6)² = 12² = 144. (The provided options appear incorrect in the source.)"),
      QuizQuestion(
          question:
              "8. Find the L.C.M. of 18, 42 and 90.          (BECE 1997 Q9)",
          options: ["2 × 3²", "2 × 3 × 7", "2 × 3² × 5", "2 × 3² × 5 × 7"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "LCM = 2 × 3² × 5 × 7 = 630."),
      QuizQuestion(
          question: "9. Simplify 11 - (11 - 4) + 13.          (BECE 2000 Q3)",
          options: ["9", "17", "9", "17"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "11 − (11 − 4) + 13 = 11 − 7 + 13 = 17."),
      QuizQuestion(
          question:
              "10. Find the least whole number which must be added to 207 to make it divisible by 17.          (BECE 1992 Q6)",
          options: ["0", "3", "13", "14"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "207 ÷ 17 leaves remainder 3. Add 14 to get 221, which is divisible by 17."),
      QuizQuestion(
          question:
              "11. Find the Greatest Common Factor (HCF) of 18, 36 and 120.          (BECE 2009 Q26)",
          options: ["6", "12", "18", "24"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The HCF of 18, 36 and 120 is 6."),
      QuizQuestion(
          question:
              "12. 200 bottles of equal capacity hold 350 litres of water. How much water does each bottle hold?          (BECE 1996 Q37)",
          options: ["1.750 litres", "175 litres", "17.5 litres", "1.75 litres"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "350 ÷ 200 = 1.75 litres."),
      QuizQuestion(
          question:
              "13. Find the least common multiple of 7, 14 and 18.          (BECE 1990 Q23)",
          options: ["71418", "1764", "252", "126"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "LCM = 2 × 3² × 7 = 252."),
      QuizQuestion(
          question:
              "14. A pencil sells at ₵180.00 and an eraser sells at ₵120.00. How much will you pay if you buy three pencils and four erasers?          (BECE 2000 Q11)",
          options: ["₵1,200.00", "₵1,080.00", "₵1,020.00", "₵1,280.00"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "3 × 180 + 4 × 120 = 540 + 480 = ₵1,020.00. (The correct value is ₵1,020.00, but the provided answer key/options appear inconsistent.)"),
      QuizQuestion(
          question: "15. What is the value of 4 + x⁰?          (BECE 2009 Q17)",
          options: ["3", "4", "5", "6"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Since x⁰ = 1 (for x ≠ 0), 4 + 1 = 5."),
      QuizQuestion(
          question:
              "16. A ribbon is 4 m long. How many pieces each 30 cm long can be cut from the ribbon?          (BECE 1999 Q8)",
          options: ["7.3", "11.3", "12.0", "13.3"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "4 m = 400 cm. 400 ÷ 30 = 13 remainder 10, so 13 full pieces can be cut. (The provided options appear incorrect.)"),
      QuizQuestion(
          question:
              "17. Find one-hundredth of 1.0756.          (BECE 1991 Q24)",
          options: ["107.56", "10.756", "0.1756", "0.010756"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "One-hundredth means divide by 100: 1.0756 ÷ 100 = 0.010756."),
      QuizQuestion(
          question:
              "18. Find the G.C.F (H.C.F) of 2³ × 3² and 2² × 3⁴.          (BECE 1991 Q9)",
          options: ["8", "9", "72", "648"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Take the smallest powers: 2² × 3² = 4 × 9 = 36. (The correct answer is 36, but it is not among the provided options.)"),
      QuizQuestion(
          question:
              "19. If Y = 595 and Z = 7071, find the sum of Y and Z.          (BECE 1999 Q6)",
          options: ["6466", "7566", "7666", "12,021"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "595 + 7071 = 7666."),
      QuizQuestion(
          question:
              "20. What is the H.C.F of 18, 42 and 90?          (BECE 1997 Q10)",
          options: ["21", "18", "9", "6"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The HCF of 18, 42 and 90 is 6."),
      QuizQuestion(
          question:
              "21. Express 350 as a product of prime factors.          (BECE 2006 Q15)",
          options: ["2 × 5 × 7", "2 × 5² × 7", "2² × 5 × 7²", "2² × 5 × 7"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "350 = 2 × 175 = 2 × 5² × 7."),
      QuizQuestion(
          question:
              "22. Simplify: -15 - (-20) + (-10).          (BECE 2022 Q13)",
          options: ["-45", "-25", "-5", "5"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "-15 - (-20) + (-10) = -15 + 20 - 10 = -5."),
      QuizQuestion(
          question:
              "23. Find the least common multiple (LCM) of 4, 6 and 10.          (BECE 2004 Q24)",
          options: ["10", "24", "30", "60"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "4 = 2², 6 = 2 × 3 and 10 = 2 × 5. Therefore, the LCM is 2² × 3 × 5 = 60."),
      QuizQuestion(
          question:
              "24. Kofi bought four pencils at ₵200.00 each and five pens at ₵350.00 each. How much did he pay altogether?          (BECE 2002 Q11)",
          options: ["₵2,400.00", "₵2,450.00", "₵2,550.00", "₵2,650.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The pencils cost 4 × ₵200.00 = ₵800.00 and the pens cost 5 × ₵350.00 = ₵1,750.00. Altogether, he paid ₵2,550.00."),
      QuizQuestion(
          question:
              "25. Find the product of 17 and 121.          (BECE 2003 Q9)",
          options: ["968", "1,751", "2,057", "8,591"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "17 × 121 = 2,057."),
      QuizQuestion(
          question:
              "26. 135 pencils were to be packed into boxes. Each box could take 12 pencils. Find the number of boxes that were fully packed.          (BECE 2002 Q8)",
          options: ["10 boxes", "11 boxes", "12 boxes", "13 boxes"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "135 ÷ 12 = 11 remainder 3. Therefore, 11 boxes were fully packed."),
      QuizQuestion(
          question:
              "27. Find the highest common factor of 48, 60 and 96.          (BECE 2004 Q15)",
          options: ["12", "24", "36", "48"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The greatest number that divides 48, 60 and 96 exactly is 12."),
      QuizQuestion(
          question:
              "28. Express 72 as a product of prime factors.          (BECE 2003 Q5)",
          options: ["2³ × 3²", "2² × 3³", "2² × 3²", "2³ × 3"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "72 = 8 × 9 = 2³ × 3²."),
      QuizQuestion(
          question:
              "29. Find the sum of all the even numbers between 70 and 80.          (BECE 2001 Q7)",
          options: ["200", "223", "280", "300"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The even numbers strictly between 70 and 80 are 72, 74, 76 and 78. Their sum is 72 + 74 + 76 + 78 = 300."),
      QuizQuestion(
          question:
              "30. Find the least common multiple (L.C.M) of the numbers 10, 15 and 25.          (BECE 2002 Q11)",
          options: ["30", "60", "120", "150"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "10 = 2 × 5, 15 = 3 × 5 and 25 = 5². Therefore, the LCM is 2 × 3 × 5² = 150."),
      QuizQuestion(
          question:
              "31. In sharing 95 oranges with Dede, Fofo kept 45 of them and shared the rest equally with Dede. How many oranges did Dede get?          (BECE 2005 Q16)",
          options: ["20", "25", "40", "55"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "After Fofo kept 45 oranges, 95 - 45 = 50 remained. Sharing the 50 equally between Fofo and Dede gives Dede 50 ÷ 2 = 25 oranges."),
      QuizQuestion(
          question:
              "32. Which of the following is equivalent to 2² × 6³?          (BECE 2004 Q29)",
          options: ["2⁶ × 3³", "2⁵ × 3³", "2⁴ × 3", "2³ × 3³"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Since 6³ = (2 × 3)³ = 2³ × 3³, then 2² × 6³ = 2² × 2³ × 3³ = 2⁵ × 3³."),
      QuizQuestion(
          question:
              "33. Araba owes ₵550,000.00 at a bank. She goes to pay ₵150,000.00. How much does Araba owe the bank now?          (BECE 2003 Q10)",
          options: ["₵700,000.00", "₵600,000.00", "₵500,000.00", "₵400,000.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "₵550,000.00 - ₵150,000.00 = ₵400,000.00."),
      QuizQuestion(
          question: "34. Simplify -35 - (-15) + (-30).          (BECE 2004 Q7)",
          options: ["17", "-50", "50", "30"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "-35 - (-15) + (-30) = -35 + 15 - 30 = -50."),
    ],
  ),
  "Math JHS1 s1 ss3 - Fractions, Decimals and Percentages": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              r"1. Simplify 2 × (3\frac{1}{2} + 1\frac{1}{2}).          (BECE 1992 Q7)",
          options: ["2", r"4\frac{1}{2}", r"6\frac{1}{2}", "9"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "3½ + 1½ = 5, and 2 × 5 = 10. The intended BECE answer in the options corresponds to 9 (as shown in the source, though the expression appears misprinted)."),
      QuizQuestion(
          question:
              r"2. Express \frac{3}{8} as a percentage.          (BECE 1992 Q16)",
          options: ["0.375%", r"12\frac{1}{2}%", "25%", r"37\frac{1}{2}%"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "3/8 = 0.375 = 37.5% = 37½%."),
      QuizQuestion(
          question:
              r"3. Arrange the fractions \frac{2}{3}, \frac{3}{4}, \frac{3}{5} in ascending order.          (BECE 1993 Q7)",
          options: [
            r"\frac{2}{3}, \frac{3}{4}, \frac{3}{5}",
            r"\frac{3}{4}, \frac{3}{5}, \frac{2}{3}",
            r"\frac{3}{5}, \frac{2}{3}, \frac{3}{4}",
            r"\frac{3}{5}, \frac{3}{4}, \frac{2}{3}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "3/5 = 0.6, 2/3 ≈ 0.667, 3/4 = 0.75."),
      QuizQuestion(
          question:
              "4. A tank contains 250 litres of water. If 196 litres is used, what percentage of the original quantity is left?          (BECE 1990 Q28)",
          options: ["61.6%", "60.5%", "59.0%", "54.2%"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "250 − 196 = 54 litres. (54 ÷ 250) × 100 = 21.6%. The options in the source appear inconsistent."),
      QuizQuestion(
          question:
              r"5. Which of the following inequalities is/are true? I. \frac{5}{6} > \frac{3}{4} II. \frac{1}{3} < \frac{3}{5} III. \frac{3}{8} > \frac{1}{2}          (BECE 1993 Q11)",
          options: ["I only", "II only", "III only", "I and II only"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "I and II are true, while III is false."),
      QuizQuestion(
          question:
              "6. In an examination 60% of the candidates passed. The number who passed was 240. How many failed?          (BECE 1990 Q11)",
          options: ["140", "160", "360", "400"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Total = 240 ÷ 0.6 = 400. Failed = 400 − 240 = 160."),
      QuizQuestion(
          question:
              "7. Express 25 as a percentage of 75.          (BECE 1994 Q18)",
          options: ["300%", "100%", "50%", "33.3%"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "(25 ÷ 75) × 100 = 33⅓%."),
      QuizQuestion(
          question:
              "8. If 22% of the length of a rope is 55 cm, find the full length of the rope.          (BECE 1991 Q39)",
          options: ["12.1 cm", "25 cm", "121 cm", "250 cm"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Length = 55 ÷ 0.22 = 250 cm."),
      QuizQuestion(
          question:
              r"9. Find 2\frac{1}{2}% of ₵2,000.00.          (BECE 1993 Q5)",
          options: ["₵40.00", "₵50.00", "₵100.00", "₵800.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "2.5% = 0.025. 0.025 × 2000 = ₵50.00."),
      QuizQuestion(
          question:
              "10. In a school, 80 pupils wrote an examination and 64 passed. What is the percentage who passed?          (BECE 1995 Q12)",
          options: ["80%", "16%", "20%", "64%"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "(64 ÷ 80) × 100 = 80%."),
      QuizQuestion(
          question:
              r"11. Arrange the following fractions in ascending order: \frac{1}{2}, \frac{2}{5}, \frac{1}{3}.          (BECE 1993 Q9)",
          options: [
            r"\frac{1}{2}, \frac{2}{5}, \frac{1}{3}",
            r"\frac{1}{3}, \frac{2}{5}, \frac{1}{2}",
            r"\frac{2}{5}, \frac{1}{3}, \frac{1}{2}",
            r"\frac{1}{3}, \frac{1}{2}, \frac{2}{5}"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "1/3 ≈ 0.333, 2/5 = 0.4, 1/2 = 0.5."),
      QuizQuestion(
          question:
              r"12. Simplify: \frac{1}{6} − \frac{2}{3} + \frac{1}{4}.          (BECE 1996 Q9)",
          options: [
            r"\frac{17}{30}",
            r"\frac{1}{12}",
            r"\frac{-7}{30}",
            r"\frac{-7}{12}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "LCM = 12. 2/12 − 8/12 + 3/12 = −3/12 = −1/4. (The source options appear inconsistent.)"),
      QuizQuestion(
          question: "13. What is 16% of ₵500,000.00?          (BECE 1996 Q31)",
          options: ["₵80.00", "₵8,000.00", "₵80,000.00", "₵420,000.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "0.16 × 500,000 = ₵80,000.00."),
      QuizQuestion(
          question:
              "14. Express 30 cm as a percentage of 2 m.          (BECE 1997 Q5)",
          options: ["0.15%", "1.5%", "6.7%", "15%"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "2 m = 200 cm. (30 ÷ 200) × 100 = 15%."),
      QuizQuestion(
          question:
              r"15. Arrange the following decimals in descending order: \frac{9}{16}, \frac{5}{8}, 0.62.          (BECE 1997 Q8)",
          options: [
            r"\frac{9}{16}, \frac{5}{8}, 0.62",
            r"0.62, \frac{5}{8}, \frac{9}{16}",
            r"\frac{5}{8}, 0.62, \frac{9}{16}",
            r"\frac{9}{16}, 0.62, \frac{5}{8}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "5/8 = 0.625, 0.62 = 0.62, 9/16 = 0.5625."),
      QuizQuestion(
          question:
              "16. If 22% of a rope is 55 metres long, find the full length of the rope.          (BECE 1997 Q31)",
          options: ["12.1 m", "35 m", "121 m", "250 m"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "55 ÷ 0.22 = 250 m."),
      QuizQuestion(
          question:
              r"17. Arrange the following numbers from the highest to the lowest: \frac{2}{3}, \frac{-9}{10}, 0.          (BECE 1998 Q10)",
          options: [
            r"\frac{2}{3}, 0, \frac{-9}{10}",
            r"\frac{-9}{10}, 0, \frac{2}{3}",
            r"0, \frac{2}{3}, \frac{-9}{10}",
            r"\frac{2}{3}, \frac{-9}{10}, 0"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "2/3 ≈ 0.667 > 0 > −0.9."),
      QuizQuestion(
          question:
              "18. Mansah obtained 150 marks out of 240 marks in an English test. What was her percentage score?          (BECE 1998 Q16)",
          options: ["33.33%", "36.59%", "41.67%", "62.5%"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "(150 ÷ 240) × 100 = 62.5%."),
      QuizQuestion(
          question:
              "19. Kweku had 300 mangoes. He sold 240 of them. What is the percentage of the mangoes left?          (BECE 1998 Q19)",
          options: ["8%", "20%", "25%", "36.7%"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Left = 60. (60 ÷ 300) × 100 = 20%."),
      QuizQuestion(
          question:
              r"20. Simplify: \frac{1}{2} − \frac{1}{4} + \frac{1}{8}.          (BECE 1999 Q7)",
          options: [
            r"\frac{1}{8}",
            r"\frac{3}{8}",
            r"\frac{8}{5}",
            r"\frac{7}{8}"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "4/8 − 2/8 + 1/8 = 3/8."),
      QuizQuestion(
          question:
              r"21. Which of the following fractions is the greatest: \frac{1}{6}, \frac{1}{4}, \frac{1}{2}, \frac{1}{3}, \frac{1}{5}?          (BECE 1999 Q14)",
          options: [
            r"\frac{1}{2}",
            r"\frac{1}{3}",
            r"\frac{1}{4}",
            r"\frac{1}{5}"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Among unit fractions, the one with the smallest denominator is the greatest."),
      QuizQuestion(
          question:
              "22. There are 6 girls and 18 boys in a class. What percentage of the class are girls?          (BECE 1999 Q17)",
          options: ["14.40%", "25.00%", "33.33%", "66.67%"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Total = 24. (6 ÷ 24) × 100 = 25%."),
      QuizQuestion(
          question:
              r"23. Arrange the following fractions from the lowest to the highest: \frac{1}{2}, \frac{1}{3}, \frac{2}{5}.          (BECE 2000 Q23)",
          options: [
            r"\frac{1}{2}, \frac{2}{5}, \frac{1}{3}",
            r"\frac{1}{3}, \frac{1}{2}, \frac{2}{5}",
            r"\frac{1}{3}, \frac{2}{5}, \frac{1}{2}",
            r"\frac{2}{5}, \frac{1}{3}, \frac{1}{2}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "1/3 ≈ 0.333, 2/5 = 0.4, 1/2 = 0.5."),
      QuizQuestion(
          question:
              "24. If 60% of the pupils in a school is 240, find the total enrolment in the school.          (BECE 2000 Q24)",
          options: ["144", "160", "360", "400"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Total = 240 ÷ 0.6 = 400."),
    ],
  ),
  "Math JHS1 s1 ss4 - Number: Ratios and Proportion": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Kofi and Ama shared an amount of money in the ratio 3 : 2 respectively. If Kofi had ₵60,000.00, how much was shared?          (BECE 2001 Q20)",
          options: ["₵36,000.00", "₵40,000.00", "₵90,000.00", "₵100,000.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Kofi's 3 parts equal ₵60,000.00, so one part is ₵20,000.00. The total is 5 × ₵20,000.00 = ₵100,000.00."),
      QuizQuestion(
          question:
              "2. Kwame, Atsu and Kojo shared a profit of ₵50,000.00 in the ratio 1 : 4 : 3 respectively. How much did Atsu get?          (BECE 1994 Q14)",
          options: ["₵62,500.00", "₵125,000.00", "₵187,500.00", "₵25,000.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 1 + 4 + 3 = 8. Atsu's share is 4/8 × ₵50,000.00 = ₵25,000.00."),
      QuizQuestion(
          question:
              "3. If 50 oranges cost ₵2,500.00, how many oranges can be bought for ₵15,000.00?          (BECE 1997 Q37)",
          options: ["3", "30", "60", "300"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "₵15,000.00 is 6 times ₵2,500.00, so the number of oranges is 6 × 50 = 300."),
      QuizQuestion(
          question:
              "4. If 21 : 2x = 7 : 10, find the value of x.          (BECE 1990 Q9)",
          options: ["3", "2¼", "15", "30"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "21/(2x) = 7/10. Cross-multiplying gives 210 = 14x, so x = 15."),
      QuizQuestion(
          question:
              "5. A trader sold 90 oranges at 3 for ₵50.00. How much did she get from selling all the oranges?          (BECE 1998 Q12)",
          options: ["₵1,500.00", "₵4,500.00", "₵6,000.00", "₵15,000.00"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "90 oranges make 90 ÷ 3 = 30 groups. The total amount is 30 × ₵50.00 = ₵1,500.00."),
      QuizQuestion(
          question:
              "6. A woman bought 210 oranges for ₵650.00. She sold all of them at 3 for ₵20.00. How much profit did she make?          (BECE 1996 Q28)",
          options: ["₵350.00", "₵450.00", "₵750.00", "₵650.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "210 oranges make 70 groups of 3. Her sales were 70 × ₵20.00 = ₵1,400.00. Profit = ₵1,400.00 - ₵650.00 = ₵750.00."),
      QuizQuestion(
          question:
              "7. Kojo, Ebo and Ama shared ₵14,000.00 among themselves. Kojo had twice as much as Ebo and Ebo also had twice as much as Ama. How much did Ebo get?          (BECE 1996 Q7)",
          options: ["₵8,000.00", "₵6,000.00", "₵4,000.00", "₵3,000.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Let Ama's share be 1 part. Ebo has 2 parts and Kojo has 4 parts, giving 7 parts altogether. Ebo's share is 2/7 × ₵14,000.00 = ₵4,000.00."),
      QuizQuestion(
          question:
              "8. The ratio of boys to girls in a school is 9 : 11. If there are 400 pupils in the school, how many boys are there?          (BECE 1996 Q29)",
          options: ["80", "120", "180", "220"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 9 + 11 = 20. The number of boys is 9/20 × 400 = 180."),
      QuizQuestion(
          question:
              "9. Adwoa and Ama shared an amount of ₵6,000.00 in the ratio 3 : 2. Find Adwoa's share.          (BECE 1997 Q32)",
          options: ["₵2,000.00", "₵2,400.00", "₵3,000.00", "₵3,600.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 3 + 2 = 5. Adwoa's share is 3/5 × ₵6,000.00 = ₵3,600.00."),
      QuizQuestion(
          question:
              "10. Adjoa and Ama share ₵600.00 between them in the ratio 3 : 2. Find Adjoa's share.          (BECE 1991 Q21)",
          options: ["₵200.00", "₵240.00", "₵300.00", "₵360.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 3 + 2 = 5. Adjoa's share is 3/5 × ₵600.00 = ₵360.00."),
      QuizQuestion(
          question:
              "11. An amount of money is shared between Kofi and Ama in the ratio 3 : 5. If Ama received ₵4,650.00, what is Kofi's share?          (BECE 1992 Q10)",
          options: ["₵930.00", "₵1,550.00", "₵1,743.75", "₵2,790.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Ama's 5 parts equal ₵4,650.00, so one part is ₵930.00. Kofi's share is 3 × ₵930.00 = ₵2,790.00."),
      QuizQuestion(
          question:
              "12. The sum of the ages of a man and his wife is 81 years. The ratio of their ages is 5 : 4. Find the age of the younger person.          (BECE 1999 Q15)",
          options: ["30 years", "36 years", "45 years", "51 years"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 5 + 4 = 9. The younger person's age is 4/9 × 81 = 36 years."),
      QuizQuestion(
          question:
              "13. A man has three children whose ages are 9 years, 12 years and 24 years. Find the ratio of their ages.          (BECE 1993 Q9)",
          options: ["1 : 2 : 3", "1 : 2 : 4", "2 : 3 : 6", "3 : 4 : 8"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The HCF of 9, 12 and 24 is 3. Dividing each age by 3 gives 3 : 4 : 8."),
      QuizQuestion(
          question:
              "14. The heights of two boys are in the ratio 4 : 5. The shorter boy is 80 cm. What is the height of the taller boy?          (BECE 1995 Q31)",
          options: ["100 cm", "150 cm", "164 cm", "180 cm"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The shorter boy's 4 parts equal 80 cm, so one part is 20 cm. The taller boy's height is 5 × 20 cm = 100 cm."),
      QuizQuestion(
          question:
              "15. If 1 : x is equivalent to 6¼ : 25, find x.          (BECE 1992 Q35)",
          options: ["4", "6.25", "24", "100"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Since 6¼ = 6.25, 1/x = 6.25/25 = 1/4. Therefore, x = 4."),
      QuizQuestion(
          question:
              "16. Express the ratio of 64 cm to 48 cm in simplest form.          (BECE 1991 Q29)",
          options: ["3 : 4", "4 : 3", "16 : 12", "12 : 16"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Divide both terms of 64 : 48 by their HCF, 16. This gives 4 : 3."),
      QuizQuestion(
          question:
              "17. The ratio 9 : x is equivalent to 36 : 20. What is the value of x?          (BECE 2000 Q19)",
          options: ["4", "5", "6", "8"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "9/x = 36/20. Cross-multiplying gives 180 = 36x, so x = 5."),
      QuizQuestion(
          question:
              "18. Three people share an amount of ₵910,800.00 in the ratio 2 : 3 : 4. What will be the highest share?          (BECE 2006 Q13)",
          options: ["₵202,400.00", "₵303,600.00", "₵404,800.00", "₵455,400.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 2 + 3 + 4 = 9. The highest share is 4/9 × ₵910,800.00 = ₵404,800.00."),
      QuizQuestion(
          question:
              "19. The ratio of mangoes to oranges in a basket is 3 : 2. If there are 36 mangoes, how many oranges are in the basket?          (BECE 2011 Q5)",
          options: ["90", "60", "24", "12"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The 3 parts representing mangoes equal 36, so one part is 12. The number of oranges is 2 × 12 = 24."),
      QuizQuestion(
          question:
              "20. Given that 1 : 3 = x : 21, find the value of x.          (BECE 2009 Q27)",
          options: ["4", "5", "7", "63"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "1/3 = x/21. Cross-multiplying gives 3x = 21, so x = 7."),
      QuizQuestion(
          question:
              "21. A typist charges ₵2,000.00 for the first 5 sheets typed and ₵600.00 for any additional sheet. How much will Barbara pay, if she presents 20 sheets for typing?          (BECE 2002A Q15)",
          options: ["₵8,000.00", "₵11,000.00", "₵12,000.00", "₵19,000.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The first 5 sheets cost ₵2,000.00. The remaining 15 sheets cost 15 × ₵600.00 = ₵9,000.00. Total cost = ₵11,000.00."),
      QuizQuestion(
          question:
              "22. Kwame and Ama shared an amount of money in the ratio 5 : 4 respectively. If Kwame had GH₵9.00, how much did they share?          (BECE 2011 Q28)",
          options: ["GH₵16.20", "GH₵36.00", "GH₵45.00", "GH₵81.00"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Kwame's 5 parts equal GH₵9.00, so one part is GH₵1.80. The total amount is 9 × GH₵1.80 = GH₵16.20."),
      QuizQuestion(
          question:
              "23. If 6 : 8 = r : 48, find the value of r.          (BECE 2019 Q19)",
          options: ["36", "34", "14", "12"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "6/8 = r/48. Cross-multiplying gives 8r = 288, so r = 36."),
      QuizQuestion(
          question:
              "24. A man divided his 360 cattle among his three sons in the ratio 7 : 6 : 5. How many cattle did the one who had the smallest share receive?          (BECE 2002B Q30)",
          options: ["100", "120", "140", "160"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 7 + 6 + 5 = 18. The smallest share is 5/18 × 360 = 100 cattle."),
      QuizQuestion(
          question:
              "25. Yakubu, Seidu and Amina shared an amount of money in the ratio 3 : 4 : 5. Find how much was shared, if Amina received ₵40,000.00.          (BECE 2002A Q17)",
          options: ["₵72,000.00", "₵80,000.00", "₵96,000.00", "₵120,000.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Amina's 5 parts equal ₵40,000.00, so one part is ₵8,000.00. The total amount is 12 × ₵8,000.00 = ₵96,000.00."),
      QuizQuestion(
          question:
              "26. There are 15 females in a debating club. If the ratio of females to males is 3 : 2, how many members are in the club?          (BECE 2020 Q31)",
          options: ["6", "10", "22", "25"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The 3 parts representing females equal 15, so one part is 5. The total number of parts is 5, giving 5 × 5 = 25 members."),
      QuizQuestion(
          question:
              "27. The number of boys in a school is 120. If the ratio of boys to girls is 5 : 7, find the total number of students in the school.          (BECE 2006 Q4)",
          options: ["240", "288", "600", "840"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The 5 parts representing boys equal 120, so one part is 24. The total number of students is 12 × 24 = 288."),
      QuizQuestion(
          question:
              "28. Kojo can buy 15 shirts at GH₵4.00 each. If the price is increased to GH₵5.00, how many shirts can he buy?          (BECE 2014 Q15)",
          options: ["12", "15", "19", "20"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Kojo has 15 × GH₵4.00 = GH₵60.00. At GH₵5.00 per shirt, he can buy 60 ÷ 5 = 12 shirts."),
      QuizQuestion(
          question:
              "29. Araba and Ama share 20 oranges in such a way that Ama receives 12 oranges. Find the ratio of Araba's share to that of Ama.          (BECE 2023 Q19)",
          options: ["3 : 2", "2 : 3", "2 : 5", "3 : 5"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Araba receives 20 - 12 = 8 oranges. The ratio 8 : 12 simplifies to 2 : 3."),
      QuizQuestion(
          question:
              "30. Ama is 9 years older than Kwame. If Kwame is 18 years old, find the ratio of the age of Kwame to that of Ama.          (BECE 2010 Q40)",
          options: ["3 : 2", "1 : 3", "2 : 3", "2 : 1"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Ama is 18 + 9 = 27 years old. The ratio of Kwame's age to Ama's age is 18 : 27 = 2 : 3."),
      QuizQuestion(
          question:
              "31. Vera is 11 years old and her brother is 9 years old. They shared 60 oranges in the ratio of their ages. How many more oranges does Vera get?          (BECE 2020 Q11)",
          options: ["6", "27", "34", "39"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The ratio is 11 : 9, making 20 parts altogether. Vera gets 33 oranges and her brother gets 27 oranges, so Vera gets 6 more."),
      QuizQuestion(
          question: "32. If y : 28 = 5 : 7, find y.          (BECE 2002B Q13)",
          options: ["5", "20", "31.2", "37.5"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "y/28 = 5/7. Therefore, y = 28 × 5/7 = 20."),
      QuizQuestion(
          question:
              "33. A boy sold some oranges at three for ₵500.00. If his total sales was ₵100,000.00, how many oranges did he sell?          (BECE 2006 Q10)",
          options: ["300", "400", "500", "600"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "₵100,000.00 contains 100,000 ÷ 500 = 200 groups of 3 oranges. Therefore, he sold 200 × 3 = 600 oranges."),
      QuizQuestion(
          question:
              "34. Kofi, Kojo and Ama shared GH₵480,000.00 in the ratio 3 : 5 : 4. How much did Ama receive?          (BECE 2014 Q23)",
          options: [
            "GH₵160,000.00",
            "GH₵200,000.00",
            "GH₵218,181.81",
            "GH₵342,859.14"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 3 + 5 + 4 = 12. Ama's share is 4/12 × GH₵480,000.00 = GH₵160,000.00."),
      QuizQuestion(
          question:
              "35. Charles and Helen started a business with an amount of GH₵7,000.00. If their contributions were in the ratio 4 : 3 respectively, find Helen's contribution.          (BECE 2025 Q40)",
          options: ["GH₵2,500.00", "GH₵3,000.00", "GH₵4,000.00", "GH₵5,000.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 4 + 3 = 7. Helen's contribution is 3/7 × GH₵7,000.00 = GH₵3,000.00."),
      QuizQuestion(
          question:
              "36. The ratio of farmers to children in a village is 13 : 11. If there were 312 farmers in the village, how many children were there?          (BECE 2022 Q27)",
          options: ["48", "143", "169", "264"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The 13 parts representing farmers equal 312, so one part is 24. The number of children is 11 × 24 = 264."),
      QuizQuestion(
          question: "37. If a : 27 = 6 : 18, find a.          (BECE 2007 Q27)",
          options: ["4", "9", "51", "81"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "a/27 = 6/18 = 1/3. Therefore, a = 27 ÷ 3 = 9."),
      QuizQuestion(
          question:
              "38. The ratio 8 : 12 is equivalent to y : 9. What is the value of y?          (BECE 2008 Q7)",
          options: ["4", "5", "6", "7"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "8/12 = y/9. Since 8/12 = 2/3, y = 2/3 × 9 = 6."),
      QuizQuestion(
          question:
              "39. Kofi and Ama shared an amount of GH₵3,000.00 in the ratio 2 : 3. Find the amount received by Kofi.          (BECE 2021 Q3)",
          options: ["GH₵1,000.00", "GH₵1,200.00", "GH₵1,500.00", "GH₵1,800.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 2 + 3 = 5. Kofi's share is 2/5 × GH₵3,000.00 = GH₵1,200.00."),
      QuizQuestion(
          question:
              "40. Esi and Kwasi are 12 and 8 years old respectively. They share 60 mangoes in the ratio of their ages. How many mangoes does Esi get?          (BECE 2010 Q12)",
          options: ["42", "40", "36", "18"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The ratio 12 : 8 simplifies to 3 : 2. Esi gets 3/5 × 60 = 36 mangoes."),
      QuizQuestion(
          question:
              "41. A trader sold 90 oranges at 3 for GH₵0.75. How much did she get from selling all the oranges?          (BECE 2019 Q28)",
          options: ["GH₵22.50", "GH₵67.50", "GH₵75.00", "GH₵225.50"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "90 oranges make 90 ÷ 3 = 30 groups. The total amount is 30 × GH₵0.75 = GH₵22.50."),
      QuizQuestion(
          question:
              "42. Cement and sand were mixed in the ratio 2 : 5. How many kilograms of cement were contained in the 35 kg of the mixture?          (BECE 2023 Q23)",
          options: ["7 kg", "88 kg", "14 kg", "10 kg"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 2 + 5 = 7. The amount of cement is 2/7 × 35 kg = 10 kg."),
      QuizQuestion(
          question:
              "43. The ratio of the ages of two sisters is 4 : 3. The older sister is 3 years older than the younger one. How old is the younger sister?          (BECE 2004 Q32)",
          options: ["9 years", "12 years", "15 years", "18 years"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The difference between 4 parts and 3 parts is 1 part, which represents 3 years. The younger sister is 3 × 3 = 9 years old."),
      QuizQuestion(
          question:
              "44. A man shared an amount of money between his two children, Esi and Ato in the ratio 2 : 3 respectively. If Ato received GH₵45.00, what was the total amount shared?          (BECE 2013 Q38)",
          options: ["GH₵18.00", "GH₵27.50", "GH₵75.00", "GH₵112.50"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Ato's 3 parts equal GH₵45.00, so one part is GH₵15.00. The total amount is 5 × GH₵15.00 = GH₵75.00."),
      QuizQuestion(
          question:
              "45. Jojo and Fiifi shared an amount of money in the ratio 3 : 4 respectively. If Fiifi had ₵140,000.00, how much was shared?          (BECE 2007 Q19)",
          options: ["₵200,000.00", "₵220,000.00", "₵245,000.00", "₵280,000.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Fiifi's 4 parts equal ₵140,000.00, so one part is ₵35,000.00. The total amount is 7 × ₵35,000.00 = ₵245,000.00."),
      QuizQuestion(
          question:
              "46. If 21 : 2x = 7 : 12, find the value of x.          (BECE 2017 Q2)",
          options: ["10", "12", "15", "18"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "21/(2x) = 7/12. Cross-multiplying gives 252 = 14x, so x = 18."),
      QuizQuestion(
          question:
              "47. An amount of ₵5,400.00 is shared among three sisters in the ratio of their ages. Their ages are 10 years, 6 years and 2 years. Find the share of the youngest sister.          (BECE 2007 Q29)",
          options: ["₵300.00", "₵600.00", "₵1,200.00", "₵1,800.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The total of their ages is 10 + 6 + 2 = 18. The youngest sister's share is 2/18 × ₵5,400.00 = ₵600.00."),
      QuizQuestion(
          question:
              "48. Express 15 : 12 in the form 1 : n.          (BECE 2022 Q30)",
          options: ["1 : 0.8", "1 : 1.2", "1 : 15", "1 : 12"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Divide both terms of 15 : 12 by 15. This gives 1 : 12/15 = 1 : 0.8."),
      QuizQuestion(
          question:
              "49. Eight copies of a book cost GH₵16.00. Find the cost of 5 copies.          (BECE 2011 Q20)",
          options: ["GH₵2.00", "GH₵3.20", "GH₵5.00", "GH₵10.00"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "One copy costs GH₵16.00 ÷ 8 = GH₵2.00. Therefore, 5 copies cost 5 × GH₵2.00 = GH₵10.00."),
      QuizQuestion(
          question:
              "50. The number of girls in a mixed school is 420. If the ratio of boys to girls in the school is 3 : 2, how many students are in the school?          (BECE 2018 Q12)",
          options: ["1050", "1470", "1630", "1680"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The 2 parts representing girls equal 420, so one part is 210. The total number of students is 5 × 210 = 1,050."),
      QuizQuestion(
          question:
              "51. If 180 oranges were shared among Kwame and Ama in the ratio 7 : 5 respectively, how many oranges did Ama receive?          (BECE 2013 Q28)",
          options: ["45", "60", "75", "90"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 7 + 5 = 12. Ama's share is 5/12 × 180 = 75 oranges."),
      QuizQuestion(
          question:
              "52. Eric and Ebo are to share an amount of ₵800,000.00 in the ratio 5 : 3 respectively. What will be Ebo's share?          (BECE 2005 Q27)",
          options: ["₵30,000.00", "₵50,000.00", "₵300,000.00", "₵500,000.00"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The total number of parts is 5 + 3 = 8. Ebo's share is 3/8 × ₵800,000.00 = ₵300,000.00."),
      QuizQuestion(
          question:
              "53. Zalia and Amina shared an amount of money in the ratio 2 : 5. If Amina had GH₵150.00 more than Zalia, how much did they share?          (BECE 2024 Q20)",
          options: ["GH₵100.00", "GH₵350.00", "GH₵250.00", "GH₵450.00"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The difference between 5 parts and 2 parts is 3 parts. If 3 parts equal GH₵150.00, then one part is GH₵50.00. The total amount shared is 7 × GH₵50.00 = GH₵350.00."),
    ],
  ),
  "Math JHS1 s2 ss1 - Patterns and Relations": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. If x → 3x - 4, what is the image of -2?          (BECE 2000 Q16)",
          options: ["-10", "-2", "-1", "2"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Substitute x = -2 into 3x - 4: 3(-2) - 4 = -6 - 4 = -10."),
      QuizQuestion(
          question:
              "2. Find the next term in the sequence: 3, 6, 12, 24, …          (BECE 2006 Q14)",
          options: ["27", "30", "36", "48"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Each term is multiplied by 2. Therefore, the next term is 24 × 2 = 48."),
      QuizQuestion(
          question:
              "3. State the rule for the mapping: x: 1, 2, 3, 4, 5 and y: 3, 5, 7, 9, …          (BECE 1991 Q25)",
          options: ["x → 2x - 1", "x → 2x - 1", "x → 2x + 1", "x → 20(x - 1)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "For each input x, the output is obtained using y = 2x + 1. For example, when x = 1, y = 2(1) + 1 = 3."),
      QuizQuestion(
          question:
              "4. Find the missing numbers in the set {5, 10, 15, 25, …, …, 40}.          (BECE 2001 Q33)",
          options: ["20 and 30", "30 and 35", "20, 35 and 40", "20, 30 and 35"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The numbers are multiples of 5 from 5 to 40. The missing numbers are 20, 30 and 35."),
      QuizQuestion(
          question:
              "5. State the rule for the following mapping: x: 0, 1, 2, 3, 4 and y: 1, 4, 9, 16, …          (BECE 2004 Q17)",
          options: ["x → x + 1", "x → x²", "x → 2x + 1", "x → (x + 1)²"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Each output is the square of one more than the input: y = (x + 1)². For example, when x = 2, y = 3² = 9."),
      QuizQuestion(
          question:
              "6. A mapping is defined by n → 2n - 3. What is the image of -2 under the mapping?          (BECE 2001 Q24)",
          options: ["-1", "-5", "-7", "7"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Substitute n = -2 into 2n - 3: 2(-2) - 3 = -4 - 3 = -7."),
      QuizQuestion(
          question:
              "7. What is the rule for the mapping: x: 1, 2, 3, 4 and y: 2, 4, 8, 16?          (BECE 1994 Q36)",
          options: ["y → 2x", "y → x²", "y → 2ˣ", "y → x + 2"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The outputs are powers of 2: 2¹ = 2, 2² = 4, 2³ = 8 and 2⁴ = 16. Therefore, y = 2ˣ."),
      QuizQuestion(
          question:
              r"8. What is the image of -4 under the mapping x → \frac{1}{2}x - 2?          (BECE 1995 Q10)",
          options: ["-2", "-4", "-6", "-8"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute x = -4: ½(-4) - 2 = -2 - 2 = -4."),
      QuizQuestion(
          question:
              "9. Find the missing number in the sequence: 11, 17, 23, 29, …, 41, 47, 53.          (BECE 2012 Q13)",
          options: ["32", "35", "37", "38"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The sequence increases by 6 each time. Therefore, the missing number is 29 + 6 = 35."),
      QuizQuestion(
          question:
              "10. Find the rule for the mapping: x: 1, 2, 3, 4, 5 and y: 5, 9, 13, 17, 21.          (BECE 2020 Q26)",
          options: ["x → 3x + 2", "x → 5x - 3", "x → x² + 1", "x → 4x + 1"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Each output is obtained using y = 4x + 1. For example, when x = 3, y = 4(3) + 1 = 13."),
      QuizQuestion(
          question:
              "11. If (x, y) → (x, 2y), find the image of (2½, -½) under the same mapping.          (BECE 1995 Q24)",
          options: ["(2½, -2)", "(2½, -1)", "(2, -2)", "(2, -1)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The x-coordinate remains unchanged, while the y-coordinate is multiplied by 2. Thus, (2½, -½) → (2½, -1)."),
      QuizQuestion(
          question:
              "12. Given the sequence {1, 3, 7, 15, 31, …}, the rule is 2ˣ - 1. What is the 7th term?          (Based on page 69, Q31 text context)",
          options: ["64", "127", "128", "255"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The 7th term is 2⁷ - 1 = 128 - 1 = 127."),
      QuizQuestion(
          question:
              "13. Find the value of x, if 1 → 1 → 3.14, 2 → 2 → 6.28, 3 → 4 → 12.56 and y → 10 → 50.24.          (BECE 1990 Q33)",
          options: ["9.42", "12", "18", "25.12"],
          correctIndex: 3,
          difficulty: "Medium",
          explanation:
              "The final mapping multiplies the middle value by 3.14. Therefore, 10 × 3.14 = 31.4, but the given result 50.24 corresponds to 16 × 3.14. The source appears inconsistent; among the options, 25.12 is the likely intended answer."),
      QuizQuestion(
          question:
              "14. Find the next term in the sequence: 2, 5, 9, 14, 20, …          (BECE 2002 Q6)",
          options: ["25", "26", "27", "35"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The differences are 3, 4, 5 and 6. The next difference is 7, so the next term is 20 + 7 = 27."),
      QuizQuestion(
          question:
              "15. State the rule for the following mapping: x: 1, 2, 3, 4, 5 and y: 3, 1, -1, -3, -5.          (BECE 2019 Q13)",
          options: ["y = 2x + 2", "y = -2x + 2", "y = 4x", "y = -2x + 5"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The outputs decrease by 2. Using x = 1 gives y = -2(1) + 5 = 3, so the rule is y = -2x + 5."),
      QuizQuestion(
          question:
              "16. State the rule of the following mapping: x: 1, 2, 3, 4, … and y: 1, 4, 9, 16, …          (BECE 2001 Q3)",
          options: ["x → x", "x → 2x", "x → x²", "x → x + 2"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Each output is the square of the input: 1² = 1, 2² = 4, 3² = 9 and 4² = 16."),
      QuizQuestion(
          question:
              "17. What is the fifth term in the sequence 1/3, 2/5, 7/15, …?          (BECE 2002B Q5)",
          options: ["4/9", "5/11", "6/13", "3/5"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The intended pattern gives fractions with numerators increasing by 1 and denominators increasing by 2, leading to the fifth term 5/11. The source sequence appears to contain a transcription inconsistency at the third term."),
      QuizQuestion(
          question:
              "18. Use the mapping x: 1, 2, 3, 4, 5 and y: -4, -2, 0, 2, m. What is the rule for the mapping?          (BECE 2003 Q27)",
          options: ["x → 2x - 3", "x → x - 5", "x → 2(x - 2)", "x → 2x - 3"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "For x = 1, 2(1 - 2) = -2, not -4, so the listed options appear inconsistent. The actual rule from the table is y = 2x - 6."),
      QuizQuestion(
          question:
              "19. Find the value of m in the mapping x: 1, 2, 3, 4, 5 and y: -4, -2, 0, 2, m.          (BECE 2003 Q28)",
          options: ["4", "4", "6", "8"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "The outputs increase by 2 each time: -4, -2, 0, 2, 4. Therefore, m = 4."),
      QuizQuestion(
          question:
              "20. What is the image of 2 in the mapping y → 2x + 5?          (BECE 2004 Q12)",
          options: ["7", "9", "12", "20"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute x = 2 into 2x + 5: 2(2) + 5 = 9."),
      QuizQuestion(
          question:
              "21. Find the next term in the sequence 1, 3, 7, 15, 31, …          (BECE 2005 Q11)",
          options: ["35", "39", "47", "63"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Each term is obtained by multiplying the previous term by 2 and adding 1. Therefore, 31 × 2 + 1 = 63."),
      QuizQuestion(
          question:
              "22. What is the rule for the following mapping: x: 0, 1, 2, 3, 4 and y: 5, 9, 13, 17, 21?          (BECE 2005 Q19)",
          options: ["y = x + 5", "y = 4x + 5", "y = 5x + 4", "y = 6x + 1"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The outputs increase by 4 for every increase of 1 in x. Since y = 5 when x = 0, the rule is y = 4x + 5."),
      QuizQuestion(
          question:
              "23. Find the rule for the mapping: 1, 2, 3, 4, 5, …, n → 10, 21, 32, 43, 54, …          (BECE 2006 Q35)",
          options: ["n → 10n", "n → 10n + 1", "n → 11n - 1", "n → 7n + 3"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Substituting n = 1 into 11n - 1 gives 10, and n = 2 gives 21. Therefore, the rule is n → 11n - 1."),
      QuizQuestion(
          question:
              "24. Find the image of -3 under the mapping x → 2(x + 3).          (BECE 2008 Q13)",
          options: ["0", "2", "6", "12"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Substitute x = -3: 2(-3 + 3) = 2(0) = 0."),
      QuizQuestion(
          question:
              r"25. State the rule for the mapping: x: 0, 1, 2, 3, 4 and y: 0, \frac{1}{4}, \frac{1}{2}, \frac{3}{4}, 1.          (BECE 2009 Q15)",
          options: [
            r"x → \frac{x}{4}",
            r"x → \frac{x}{2}",
            r"x → \frac{3x}{4}",
            r"x → \frac{1}{x²}"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Each output is obtained by dividing the input by 4. For example, when x = 3, y = 3/4."),
      QuizQuestion(
          question:
              "26. Find the rule of the mapping: 1, 2, 3, 4, 5, …, x → 7, 11, 15, 19, 23, …, y.          (BECE 2010 Q5)",
          options: ["x → 4x - 3", "x → 3 - 4x", "x → 4x + 3", "x → 4x + 5"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The outputs increase by 4. Since 4(1) + 3 = 7, the rule is y = 4x + 3."),
      QuizQuestion(
          question:
              "27. State the rule for the mapping: x: 1, 2, 3, 4 and y: 15, 30, 45, 60.          (BECE 2011 Q14)",
          options: ["x → 15x", "x → 15 + x", "x → x/15", "x → 10 + 5x"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Each output is 15 times the input. Therefore, the rule is x → 15x."),
      QuizQuestion(
          question:
              "28. Find the image of 3 under the mapping x → 10 - 2x.          (BECE 2012 Q12)",
          options: ["4", "5", "8", "16"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Substitute x = 3: 10 - 2(3) = 10 - 6 = 4."),
      QuizQuestion(
          question:
              "29. Find the rule of the mapping: 1, 2, 3, 4, 5, x → 5, 8, 11, 14, 17, y.          (BECE 2013 Q10)",
          options: ["x + 2", "x + 4", "2x + 3", "3x + 2"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "The outputs increase by 3. Since 3(1) + 2 = 5, the rule is y = 3x + 2."),
      QuizQuestion(
          question:
              "30. Find the value of x when y = 37 in the mapping y = 5x + 2.          (BECE 2021 Q16)",
          options: ["6", "7", "8", "9"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Substitute y = 37: 37 = 5x + 2. Therefore, 5x = 35 and x = 7."),
      QuizQuestion(
          question:
              "31. What is the missing number in the sequence: -5, -2, 1, …, 7?          (BECE 2025 Q39)",
          options: ["2", "3", "4", "5"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The sequence increases by 3 each time: -5, -2, 1, 4, 7. Therefore, the missing number is 4."),
      QuizQuestion(
          question:
              "32. Find the rule for the mapping: 1, 2, 3, 4, …, t → 9, 20, 31, 42, …          (BECE 2025 Q20)",
          options: ["t → 10t - 1", "t → 8t + 1", "t → 11t - 2", "t → 7t + 2"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The outputs increase by 11. Since 11(1) - 2 = 9, the rule is t → 11t - 2."),
    ],
  ),
  "ALGEBRAIC EXPRESSIONS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              r"1. Simplify: (35x^5y^3 \div 7xy^2\).          (BECE 2014 Q9)",
          options: [r"(5x^4y)", r"\(5x^4y^5\)", r"\(5x^6y\)", r"\(5x^6y^5\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Divide the coefficients and subtract the indices of like bases: \(35 \div 7 = 5\), \(x^5 \div x = x^{5-1} = x^4\), and \(y^3 \div y^2 = y^{3-2} = y\). Therefore, the answer is \(5x^4y\)."),
      QuizQuestion(
          question:
              r"2. If \(x = 2\), find the value of \(q\) in the equation \(3x - 4 = x + q\).          (BECE 1992 Q17)",
          options: [r"\(-7\)", r"\(13\)", r"\(12\)", r"\(25\)"],
          correctIndex: -1,
          difficulty: "Easy",
          explanation:
              r"Substitute \(x = 2\): \(3(2) - 4 = 2 + q\). This gives \(2 = 2 + q\), so \(q = 0\). The correct answer is not included in the supplied options."),
      QuizQuestion(
          question:
              r"3. Simplify: \(6a^2 \times 4a^2b^2\).          (BECE 2002B Q22)",
          options: [
            r"\(10a^4b^2\)",
            r"\(24a^2b^2\)",
            r"\(24a^4b^2\)",
            r"\(24a^2b^4\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Multiply the coefficients and add the indices of \(a\): \(6 \times 4 = 24\) and \(a^2 \times a^2 = a^4\). Therefore, the answer is \(24a^4b^2\)."),
      QuizQuestion(
          question:
              r"4. If \(a * b = 2a - b\), find \(3 * 2\).          (BECE 2002A Q20)",
          options: [r"\(1\)", r"\(4\)", r"\(5\)", r"\(6\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Using \(a * b = 2a - b\), \(3 * 2 = 2(3) - 2 = 6 - 2 = 4\)."),
      QuizQuestion(
          question:
              r"5. In the relation \(v = u + at\), find \(v\) when \(u = 6\), \(a = 10\), and \(t = 2\).          (BECE 1991 Q14)",
          options: [r"\(18\)", r"\(26\)", r"\(32\)", r"\(48\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Substitute the given values: \(v = 6 + 10(2) = 6 + 20 = 26\)."),
      QuizQuestion(
          question:
              r"6. If \(q = ut + \frac{1}{2}ft\), find \(q\) when \(u = 20\), \(t = 10\), and \(f = 15\).          (BECE 1990 Q21)",
          options: [r"\(350\)", r"\(275\)", r"\(237.5\)", r"\(55\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Substitute the values: \(q = 20(10) + \frac{1}{2}(15)(10) = 200 + 75 = 275\)."),
      QuizQuestion(
          question:
              r"7. Find the value of \(p^2 - 6p + 9\) when \(p = -2\).          (BECE 1992 Q14)",
          options: [r"\(-7\)", r"\(13\)", r"\(12\)", r"\(25\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Substitute \(p = -2\): \((-2)^2 - 6(-2) + 9 = 4 + 12 + 9 = 25\)."),
      QuizQuestion(
          question:
              r"8. The sum of two numbers is \(240\). If one of them is \(y\), find the other number.          (BECE 1997 Q22)",
          options: [r"\(120y\)", r"\(240 + y\)", r"\(240 - y\)", r"\(240y\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"If the other number is subtracted from the total, it is \(240 - y\)."),
      QuizQuestion(
          question:
              r"9. Ama is \(N\) years old now. How old will she be in \(10\) years?          (BECE 2000 Q40)",
          options: [
            r"\((N - 10)\text{ years}\)",
            r"\((N + 10)\text{ years}\)",
            r"\((10 - N)\text{ years}\)",
            r"\(N10\text{ years}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"After \(10\) years, \(10\) is added to Ama's present age. Therefore, she will be \((N + 10)\) years old."),
      QuizQuestion(
          question:
              r"10. Simplify: \(2ab^2 \times 3a^2b\).          (BECE 1991 Q13)",
          options: [
            r"\(5a^3b^3\)",
            r"\(5a^2b^2\)",
            r"\(6a^3b^3\)",
            r"\(6a^2b^2\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Multiply the coefficients and add the indices of like bases: \(2 \times 3 = 6\), \(a \times a^2 = a^3\), and \(b^2 \times b = b^3\). Therefore, the answer is \(6a^3b^3\)."),
      QuizQuestion(
          question:
              r"11. If \(a * b = 2a - b\), evaluate \(4 * 3\).          (BECE 2000 Q17)",
          options: [r"\(1\)", r"\(2\)", r"\(4\)", r"\(5\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Using \(a * b = 2a - b\), \(4 * 3 = 2(4) - 3 = 8 - 3 = 5\)."),
      QuizQuestion(
          question:
              r"12. Find the difference between the values of \((2d)^2\) and \(2d^2\), when \(d = 3\).          (BECE 1995 Q30)",
          options: [r"\(16\)", r"\(18\)", r"\(24\)", r"\(28\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"When \(d = 3\), \((2d)^2 = (6)^2 = 36\), while \(2d^2 = 2(3^2) = 18\). Their difference is \(36 - 18 = 18\)."),
      QuizQuestion(
          question:
              r"13. Simplify: \(4p + 6p^2 - 2p + 2p^2\).          (BECE 2001 Q25)",
          options: [
            r"\(2p + 8p^2\)",
            r"\(6p + 8p^2\)",
            r"\(2p - 8p^2\)",
            r"\(6p - 8p^2\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Collect like terms: \(4p - 2p = 2p\) and \(6p^2 + 2p^2 = 8p^2\). Therefore, the simplified expression is \(2p + 8p^2\)."),
      QuizQuestion(
          question:
              r"14. Three baskets contain \(95\) oranges, \(x\) oranges, and \(2x\) oranges. How many oranges are in the three baskets?          (BECE 2002B Q21)",
          options: [r"\(96x\)", r"\(95 + 3x\)", r"\(95 + 2x^2\)", r"\(98x\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Add the numbers of oranges: \(95 + x + 2x = 95 + 3x\)."),
      QuizQuestion(
          question:
              r"15. Simplify: \((2ab^2)(3a^{-3}b)\).          (BECE 1997 Q21)",
          options: [
            r"\(5a^3b^3\)",
            r"\(6a^{-2}b^3\)",
            r"\(5a^2b^3\)",
            r"\(6a^2b^3\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Multiply the coefficients and add the indices of like bases: \(2 \times 3 = 6\), \(a^1 \times a^{-3} = a^{1-3} = a^{-2}\), and \(b^2 \times b = b^3\). Therefore, the answer is \(6a^{-2}b^3\)."),
      QuizQuestion(
          question:
              r"16. If \(y = k + ax^2\), find \(y\) when \(k = \frac{14}{5}\), \(a = \frac{4}{5}\), and \(x = 2\).          (BECE 2000 Q26)",
          options: [r"\(1\)", r"\(2\)", r"\(4\)", r"\(5\)"],
          correctIndex: -1,
          difficulty: "Easy",
          explanation:
              r"Substitute the values: \(y = \frac{14}{5} + \frac{4}{5}(2^2) = \frac{14}{5} + \frac{16}{5} = \frac{30}{5} = 6\). The correct answer is not included in the supplied options."),
    ],
  ),
  "Algebraic Expressions": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              r"1. When a certain number is subtracted from \(10\) and the result is multiplied by \(2\), the final result is \(4\). Find the number.          (BECE 1991 Q37)",
          options: [r"\(8\)", r"\(12\)", r"\(16\)", r"\(24\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Let the number be \(x\). Then \(2(10 - x) = 4\). Dividing by \(2\) gives \(10 - x = 2\), so \(x = 8\)."),
      QuizQuestion(
          question:
              r"2. Solve for \(x\) if \(2x + 5 = 3x - 7\).          (BECE 1994 Q26)",
          options: [
            r"\(12\)",
            r"\(2\frac{2}{5}\)",
            r"\(-\frac{2}{5}\)",
            r"\(-2\frac{2}{5}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Subtract \(2x\) from both sides: \(5 = x - 7\). Adding \(7\) gives \(x = 12\)."),
      QuizQuestion(
          question:
              r"3. If \(\frac{3}{15}\) is equivalent to \(\frac{45}{a}\), find \(a\).          (BECE 1990 Q22)",
          options: [r"\(225\)", r"\(150\)", r"\(252\)", r"\(126\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Since \(\frac{3}{15} = \frac{45}{a}\), cross-multiply to get \(3a = 15 \times 45\). Therefore, \(a = \frac{675}{3} = 225\)."),
      QuizQuestion(
          question:
              r"4. Five times a number is four more than the number. Find the number.          (BECE 1993 Q26)",
          options: [
            r"\(\frac{3}{2}\)",
            r"\(1\)",
            r"\(\frac{2}{3}\)",
            r"\(\frac{1}{2}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Let the number be \(x\). Then \(5x = x + 4\). Therefore, \(4x = 4\), so \(x = 1\)."),
      QuizQuestion(
          question:
              r"5. Mark is \(30\) years old. Yaw is half as old as Mark. Paul is \(10\) years older than Yaw. How old is Paul?          (BECE 1994 Q3)",
          options: [
            r"\(30\text{ years}\)",
            r"\(25\text{ years}\)",
            r"\(20\text{ years}\)",
            r"\(15\text{ years}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Yaw is half of \(30\), so he is \(15\) years old. Paul is \(10\) years older, so Paul is \(15 + 10 = 25\) years old."),
      QuizQuestion(
          question:
              r"6. If \(\frac{1}{3}\) of a number is added to \(\frac{1}{5}\) of the same number, the result is \(8\). Find the number.          (BECE 1992 Q34)",
          options: [r"\(3\)", r"\(5\)", r"\(15\)", r"\(30\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Let the number be \(x\). Then \(\frac{x}{3} + \frac{x}{5} = 8\). Thus, \(\frac{5x + 3x}{15} = 8\), so \(\frac{8x}{15} = 8\). Therefore, \(x = 15\)."),
      QuizQuestion(
          question:
              r"7. Solve for \(h\) in the equation \(15 - 2h = 6\).          (BECE 1998 Q21)",
          options: [r"\(-10.5\)", r"\(-9.0\)", r"\(-4.5\)", r"\(4.5\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Subtract \(15\) from both sides: \(-2h = -9\). Dividing by \(-2\) gives \(h = 4.5\)."),
      QuizQuestion(
          question:
              r"8. Find \(x\), if \(\frac{1}{x} + \frac{1}{3} = 1\).          (BECE 1993 Q31)",
          options: [
            r"\(\frac{2}{3}\)",
            r"\(-\frac{2}{3}\)",
            r"\(\frac{3}{2}\)",
            r"\(\frac{3}{4}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"\(\frac{1}{x} = 1 - \frac{1}{3} = \frac{2}{3}\). Taking reciprocals gives \(x = \frac{3}{2}\)."),
      QuizQuestion(
          question:
              r"9. If \(\frac{1}{x} = 1\frac{1}{2}\), find \(x\).          (BECE 1994 Q11)",
          options: [
            r"\(3\)",
            r"\(\frac{1}{2}\)",
            r"\(\frac{4}{3}\)",
            r"\(\frac{2}{3}\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Convert \(1\frac{1}{2}\) to an improper fraction: \(1\frac{1}{2} = \frac{3}{2}\). Thus, \(\frac{1}{x} = \frac{3}{2}\), so \(x = \frac{2}{3}\)."),
      QuizQuestion(
          question:
              r"10. Solve the equation \(13x - 2(3x + 4) = 22\).          (BECE 2000 Q3)",
          options: [
            r"\(5\)",
            r"\(4\)",
            r"\(\frac{30}{7}\)",
            r"\(\frac{26}{7}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Expand and simplify: \(13x - 6x - 8 = 22\). Thus, \(7x = 30\), so \(x = \frac{30}{7}\)."),
      QuizQuestion(
          question:
              r"11. If \(4(m + 4) = 18\), find the value of \(m\).          (BECE 1999 Q29)",
          options: [
            r"\(\frac{1}{2}\)",
            r"\(\frac{3}{2}\)",
            r"\(\frac{5}{2}\)",
            r"\(\frac{3}{25}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Divide both sides by \(4\): \(m + 4 = \frac{18}{4} = \frac{9}{2}\). Therefore, \(m = \frac{9}{2} - 4 = \frac{1}{2}\)."),
      QuizQuestion(
          question:
              r"12. If \(13x - 12 = 5x + 60\), find \(x\).          (BECE 1995 Q33)",
          options: [r"\(-9\)", r"\(-6\)", r"\(9\)", r"\(6\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Subtract \(5x\) from both sides: \(8x - 12 = 60\). Add \(12\): \(8x = 72\). Therefore, \(x = 9\)."),
      QuizQuestion(
          question:
              r"13. The product of \(2x\) and \(3\) is \(138\). Find \(x\).          (BECE 1996 Q33)",
          options: [r"\(23\)", r"\(33\)", r"\(68\)", r"\(69\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"\((2x)(3) = 138\). Thus, \(6x = 138\), so \(x = 23\)."),
      QuizQuestion(
          question:
              r"14. Solve for \(y\) in the equation \(\frac{1}{3}y + \frac{1}{5}y = 8\).          (BECE 2002A Q27)",
          options: [r"\(15\)", r"\(30\)", r"\(45\)", r"\(60\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"\(\frac{1}{3}y + \frac{1}{5}y = \frac{8}{15}y = 8\). Hence, \(y = 15\)."),
      QuizQuestion(
          question:
              r"15. Kofi is \(2\) years older than Ama. If the sum of their ages is \(16\), find Ama's age.          (BECE 2002B Q25)",
          options: [
            r"\(7\text{ years}\)",
            r"\(9\text{ years}\)",
            r"\(14\text{ years}\)",
            r"\(18\text{ years}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Let Ama's age be \(x\). Then Kofi's age is \(x + 2\). Thus, \(x + (x + 2) = 16\), so \(2x = 14\) and \(x = 7\)."),
      QuizQuestion(
          question:
              r"16. Solve the equation: \(2x - 3(x - 1) = 6\).          (BECE 2009 Q12)",
          options: [r"\(3\)", r"\(-3\)", r"\(-7\)", r"\(-9\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Expand the bracket: \(2x - 3x + 3 = 6\). Therefore, \(-x = 3\), so \(x = -3\)."),
      QuizQuestion(
          question:
              r"17. Find the value of \(x\) in the equation \(\frac{x}{4} = 2\).          (BECE 2002B Q39)",
          options: [r"\(2\)", r"\(4\)", r"\(6\)", r"\(8\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Multiply both sides by \(4\): \(x = 8\)."),
      QuizQuestion(
          question:
              r"18. Solve for \(x\) in the equation \(15 - 2x = 6\).          (BECE 2004 Q21)",
          options: [r"\(-10.5\)", r"\(-4.5\)", r"\(4.5\)", r"\(10.5\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Subtract \(15\) from both sides: \(-2x = -9\). Divide by \(-2\): \(x = 4.5\)."),
      QuizQuestion(
          question:
              r"19. If \(3t - 2(t + 12) = 11\), find the value of \(t\).          (BECE 2003 Q7)",
          options: [r"\(-35\)", r"\(-13\)", r"\(13\)", r"\(35\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Expand the bracket: \(3t - 2t - 24 = 11\). Thus, \(t = 35\)."),
      QuizQuestion(
          question:
              r"20. If \(6n + 4 = 16\), find the value of \(n\).          (BECE 2005 Q10)",
          options: [r"\(2\)", r"\(3\)", r"\(5\)", r"\(6\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Subtract \(4\) from both sides: \(6n = 12\). Divide by \(6\): \(n = 2\)."),
      QuizQuestion(
          question:
              r"21. The difference between two numbers is \(168\). If the smaller number is \(113\), find the other number.          (BECE 2008 Q39)",
          options: [r"\(223\)", r"\(271\)", r"\(281\)", r"\(291\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"The larger number is \(113 + 168 = 281\)."),
      QuizQuestion(
          question:
              r"22. Solve the equation \(\frac{x + 2}{3} + 2x = 10\).          (BECE 2006 Q18)",
          options: [r"\(3\)", r"\(4\)", r"\(5\)", r"\(6\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Multiply through by \(3\): \(x + 2 + 6x = 30\). Thus, \(7x = 28\), so \(x = 4\)."),
      QuizQuestion(
          question:
              r"23. If \(8x - 3(2x - 4) = 4\), find the value of \(x\).          (BECE 2007 Q15)",
          options: [r"\(-8\)", r"\(-4\)", r"\(4\)", r"\(8\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Expand the bracket: \(8x - 6x + 12 = 4\). Therefore, \(2x = -8\), so \(x = -4\)."),
      QuizQuestion(
          question:
              r"24. Solve \(\frac{4k}{9} = 12\).          (BECE 2008 Q33)",
          options: [r"\(23\)", r"\(25\)", r"\(27\)", r"\(29\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Multiply both sides by \(9\): \(4k = 108\). Divide by \(4\): \(k = 27\)."),
      QuizQuestion(
          question:
              r"25. If \(x + 5 = -7\), find the value of \(\frac{x}{6}\).          (BECE 2009 Q20)",
          options: [
            r"\(-5\frac{5}{6}\)",
            r"\(-2\)",
            r"\(-\frac{1}{3}\)",
            r"\(2\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"From \(x + 5 = -7\), we get \(x = -12\). Therefore, \(\frac{x}{6} = \frac{-12}{6} = -2\)."),
      QuizQuestion(
          question:
              r"26. The sum of \(5\) and \(x\) divided by \(4\) is equal to \(3.25\). Find the value of \(x\).          (BECE 2010 Q4)",
          options: [
            r"\(8\)",
            r"\(7\)",
            r"\(2\frac{1}{4}\)",
            r"\(-3\frac{4}{13}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Interpret the statement as \(\frac{x + 5}{4} = 3.25\). Multiplying by \(4\) gives \(x + 5 = 13\), so \(x = 8\)."),
      QuizQuestion(
          question:
              r"27. Find the value of \(x\), if \(\frac{x}{4} + 1 = 5\).          (BECE 2010 Q20)",
          options: [r"\(24\)", r"\(20\)", r"\(19\)", r"\(16\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Subtract \(1\): \(\frac{x}{4} = 4\). Multiply by \(4\): \(x = 16\)."),
      QuizQuestion(
          question:
              r"28. If \(2x = 5(x - 2) + 7\), find the value of \(x\).          (BECE 2012 Q14)",
          options: [
            r"\(-5\frac{2}{3}\)",
            r"\(-1\)",
            r"\(1\)",
            r"\(5\frac{2}{3}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Expand: \(2x = 5x - 10 + 7 = 5x - 3\). Thus, \(-3x = -3\), so \(x = 1\). (The supplied answer key/options appear inconsistent.)"),
      QuizQuestion(
          question:
              r"29. If \(1 - 2 = m\), find \(m\).          (BECE 2013 Q11)",
          options: [r"\(3\)", r"\(-1\)", r"\(1\)", r"\(3\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Simply evaluate \(1 - 2 = -1\). Therefore, \(m = -1\)."),
      QuizQuestion(
          question: r"30. Solve \(3 + 3y = 1 - 13y\).          (BECE 2015 Q23)",
          options: [r"\(-6\)", r"\(-2\)", r"\(2\)", r"\(6\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Bring like terms together: \(3y + 13y = 1 - 3\). Thus, \(16y = -2\), so \(y = -\frac{1}{8}\). The correct answer is not among the supplied options."),
      QuizQuestion(
          question:
              r"31. When a number is doubled and the result is decreased by \(9\), the answer is \(19\). Find the number.          (BECE 2016 Q22)",
          options: [r"\(5\)", r"\(7\)", r"\(14\)", r"\(16\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Let the number be \(x\). Then \(2x - 9 = 19\). So \(2x = 28\) and \(x = 14\)."),
      QuizQuestion(
          question:
              r"32. Given that \(\frac{1}{2p} = \frac{1}{8}\), find the value of \(p\).          (BECE 2017 Q3)",
          options: [r"\(4\)", r"\(3\)", r"\(2\)", r"\(1\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Since \(\frac{1}{2p} = \frac{1}{8}\), it follows that \(2p = 8\). Therefore, \(p = 4\)."),
      QuizQuestion(
          question:
              r"33. Solve \(2 + \frac{x}{3} = 1 - 2x\).          (BECE 2017 Q8)",
          options: [
            r"\(-1\frac{2}{7}\)",
            r"\(-\frac{3}{7}\)",
            r"\(\frac{3}{7}\)",
            r"\(1\frac{2}{7}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Multiply through by \(3\): \(6 + x = 3 - 6x\). Thus, \(7x = -3\), so \(x = -\frac{3}{7}\)."),
      QuizQuestion(
          question:
              r"34. At a meeting attended by \(23\) people, the females were \(7\) more than the males. How many males were there?          (BECE 2017 Q14)",
          options: [r"\(8\)", r"\(15\)", r"\(16\)", r"\(30\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Let the number of males be \(m\). Then females are \(m + 7\). So \(m + (m + 7) = 23\), giving \(2m = 16\) and \(m = 8\)."),
      QuizQuestion(
          question:
              r"35. If \(4 - x = 3(4x + 5)\), find the value of \(x\).          (BECE 2018 Q37)",
          options: [
            r"\(\frac{11}{13}\)",
            r"\(1\frac{6}{13}\)",
            r"\(-1\frac{6}{13}\)",
            r"\(-\frac{11}{13}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Expand: \(4 - x = 12x + 15\). Thus, \(-13x = 11\), so \(x = -\frac{11}{13} = -\frac{11}{13}\). The mixed-number option \(-1\frac{6}{13}\) in the source is inconsistent."),
      QuizQuestion(
          question:
              r"36. Solve the equation \(10 - \frac{x + 3}{2} = 8\).          (BECE 2019 Q7)",
          options: [r"\(-9\)", r"\(-3\)", r"\(1\)", r"\(15\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"\(\frac{x + 3}{2} = 2\). Therefore, \(x + 3 = 4\), so \(x = 1\)."),
      QuizQuestion(
          question:
              r"37. When twelve is subtracted from three times a certain number and the result is divided by four, the answer is eighteen. Find the number.          (BECE 2019 Q25)",
          options: [r"\(84\)", r"\(40\)", r"\(28\)", r"\(20\)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Let the number be \(x\). Then \(\frac{3x - 12}{4} = 18\). Hence, \(3x - 12 = 72\), so \(3x = 84\) and \(x = 28\)."),
      QuizQuestion(
          question:
              r"38. In a class of \(23\) students, the girls were \(7\) more than the boys. How many boys were there in the class?          (BECE 2019 Q34)",
          options: [r"\(8\)", r"\(15\)", r"\(16\)", r"\(30\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Let the number of boys be \(b\). Then girls are \(b + 7\). Thus, \(b + (b + 7) = 23\), so \(2b = 16\) and \(b = 8\)."),
      QuizQuestion(
          question:
              r"39. If \(\frac{w}{3} = 3(w - 1) - 1\), find the value of \(w\).          (BECE 2020 Q16)",
          options: [
            r"\(\frac{3}{2}\)",
            r"\(\frac{5}{4}\)",
            r"\(\frac{3}{5}\)",
            r"\(\frac{1}{2}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"\(\frac{w}{3} = 3w - 4\). Multiplying through by \(3\): \(w = 9w - 12\). Thus, \(8w = 12\), so \(w = \frac{3}{2}\)."),
      QuizQuestion(
          question:
              r"40. If \(2x - 1 = 5\), find the value of \(x\).          (BECE 2021 Q34)",
          options: [r"\(3\)", r"\(4\)", r"\(5\)", r"\(6\)"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              r"Add \(1\) to both sides: \(2x = 6\). Therefore, \(x = 3\)."),
      QuizQuestion(
          question:
              r"41. If \(\frac{n}{100} = 10.5\), find the value of \(n\).          (BECE 2022 Q23)",
          options: [r"\(0.0105\)", r"\(0.105\)", r"\(105\)", r"\(1050\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Multiply both sides by \(100\): \(n = 10.5 \times 100 = 1050\)."),
      QuizQuestion(
          question:
              r"42. A certain number is subtracted from \(12\) and the result is multiplied by \(3\). If the answer is \(21\), find the number.          (BECE 2022 Q37)",
          options: [r"\(4\)", r"\(5\)", r"\(6\)", r"\(8\)"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Let the number be \(x\). Then \(3(12 - x) = 21\). So \(12 - x = 7\), giving \(x = 5\)."),
      QuizQuestion(
          question:
              r"43. If \(2n - 5 = \frac{1}{2}n\), find the value of \(n\).          (BECE 2023 Q15)",
          options: [
            r"\(\frac{1}{3}\)",
            r"\(2\frac{1}{2}\)",
            r"\(3\frac{1}{3}\)",
            r"\(\frac{1}{2}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"Multiply both sides by \(2\): \(4n - 10 = n\). Thus, \(3n = 10\), so \(n = \frac{10}{3} = 3\frac{1}{3}\)."),
      QuizQuestion(
          question:
              r"44. A story book contains \(50\) pages. If a student reads \(10\) pages per hour, find the relationship between the number of unread pages (\(N\)) and time (\(t\)).          (BECE 2024 Q29)",
          options: [
            r"\(N = 10t + 50\)",
            r"\(N = 10t - 50\)",
            r"\(N = -10t + 50\)",
            r"\(N = -\frac{1}{10}t + 50\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              r"The number of unread pages decreases by \(10\) every hour. Hence, \(N = 50 - 10t = -10t + 50\)."),
      QuizQuestion(
          question:
              r"45. Solve: \(4x - 2(x + 5) = -10\).          (BECE 2025 Q10)",
          options: [
            r"\(x = -10\)",
            r"\(x = 0\)",
            r"\(x = \frac{1}{2}\)",
            r"\(x = 2\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Expand: \(4x - 2x - 10 = -10\). Thus, \(2x = 0\), so \(x = 0\)."),
      QuizQuestion(
          question:
              r"46. Ama is three times as old as Kofi. The sum of their ages is \(40\). How old is Ama?          (BECE 2025 Q12)",
          options: [
            r"\(10\text{ years}\)",
            r"\(30\text{ years}\)",
            r"\(37\text{ years}\)",
            r"\(43\text{ years}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              r"Let Kofi's age be \(k\). Then Ama's age is \(3k\). Since \(k + 3k = 40\), we get \(4k = 40\), so \(k = 10\). Therefore, Ama is \(30\) years old."),
      QuizQuestion(
          question:
              r"47. Given that \(0.03 \times y = 2.4\), find the value of \(y\).          (BECE 2025 Q22)",
          options: [r"\(0.08\)", r"\(0.8\)", r"\(8.0\)", r"\(80.0\)"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              r"Divide both sides by \(0.03\): \(y = \frac{2.4}{0.03} = 80\)."),
    ],
  ),

  "The Algebra Journey": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Solve for x: 3x + 5 = 20",
          options: ["x = 3", "x = 5", "x = 8", "x = 15"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "3x = 15 → x = 5."),
      QuizQuestion(
          question: "2. Simplify: 4a + 3b − 2a + b",
          options: ["2a + 4b", "6a + 2b", "2a + 2b", "6a + 4b"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "(4a − 2a) + (3b + b) = 2a + 4b."),
      QuizQuestion(
          question: "3. Expand: 3(x + 4)",
          options: ["3x + 4", "3x + 7", "3x + 12", "x + 12"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Distribute 3: 3×x + 3×4 = 3x + 12."),
      QuizQuestion(
          question: "4. Factorise: 6x + 9",
          options: ["3(2x + 3)", "2(3x + 9)", "6(x + 9)", "9(x + 3)"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "HCF of 6 and 9 is 3. 6x + 9 = 3(2x + 3)."),
      QuizQuestion(
          question: "5. Solve: 2(x − 3) = 10",
          options: ["x = 4", "x = 7", "x = 8", "x = 10"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "2x − 6 = 10 → 2x = 16 → x = 8."),
      QuizQuestion(
          question: "6. What is the value of y in: y/4 = 7?",
          options: ["y = 1.75", "y = 11", "y = 28", "y = 3"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "y = 7 × 4 = 28."),
      QuizQuestion(
          question: "7. Solve the inequality: 2x + 3 > 11",
          options: ["x > 4", "x > 7", "x < 4", "x < 7"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "2x > 8 → x > 4."),
      QuizQuestion(
          question: "8. If a = 2, b = 3, find the value of 2a² − b.",
          options: ["5", "8", "11", "13"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "2(2²) − 3 = 2(4) − 3 = 8 − 3 = 5."),
      QuizQuestion(
          question: "9. Simplify: (3x)(4x)",
          options: ["7x", "12x", "12x²", "7x²"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Multiply coefficients and add exponents: 3×4 = 12, x×x = x². Answer: 12x²."),
      QuizQuestion(
          question: "10. Which of these is a linear equation?",
          options: ["x² + 2 = 10", "3x + 2 = 14", "x³ = 8", "x² − 4 = 0"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "A linear equation has variables to the power of 1 only."),
    ],
  ),

  "THE ARCHITECTURE OF ANGLES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. An acute angle measures:",
          options: [
            "Exactly 90°",
            "More than 90° but less than 180°",
            "Less than 90°",
            "Exactly 180°"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Acute angles are less than 90°."),
      QuizQuestion(
          question: "2. What is the sum of angles in a triangle?",
          options: ["90°", "180°", "270°", "360°"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The interior angles of any triangle always sum to 180°."),
      QuizQuestion(
          question: "3. Complementary angles add up to:",
          options: ["90°", "180°", "270°", "360°"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Complementary angles sum to exactly 90°."),
      QuizQuestion(
          question: "4. Supplementary angles add up to:",
          options: ["90°", "180°", "270°", "360°"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Supplementary angles sum to exactly 180°."),
      QuizQuestion(
          question: "5. A reflex angle measures:",
          options: [
            "Less than 90°",
            "Between 90° and 180°",
            "Exactly 180°",
            "Between 180° and 360°"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation:
              "Reflex angles are greater than 180° but less than 360°."),
      QuizQuestion(
          question: "6. In a parallelogram, opposite angles are:",
          options: [
            "Supplementary",
            "Complementary",
            "Equal (congruent)",
            "Right angles"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Opposite angles in a parallelogram are always equal."),
      QuizQuestion(
          question: "7. The sum of interior angles of a quadrilateral is:",
          options: ["180°", "270°", "360°", "540°"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Any quadrilateral's interior angles sum to 360°."),
      QuizQuestion(
          question: "8. Alternate angles are equal when:",
          options: [
            "Lines are perpendicular",
            "Two parallel lines are cut by a transversal",
            "Angles are adjacent",
            "Lines intersect"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "When a transversal crosses parallel lines, alternate angles are equal."),
      QuizQuestion(
          question:
              "9. Two angles are vertically opposite. One measures 65°. What is the other?",
          options: ["25°", "65°", "115°", "180°"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Vertically opposite angles are always equal."),
      QuizQuestion(
          question: "10. An exterior angle of a triangle equals:",
          options: [
            "The sum of the two opposite interior angles",
            "The adjacent interior angle",
            "90°",
            "180° minus all three interior angles"
          ],
          correctIndex: 0,
          difficulty: "Hard",
          explanation:
              "Exterior angle = sum of the two non-adjacent interior angles."),
    ],
  ),

  // ─── SOCIAL STUDIES ────────────────────────────────────────────────────
  "JHS 1 - Environmental Issues": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following may help solve the problem of forest destruction in Ghana?         (BECE 1993 Q19)",
        options: ["Bush burning", "Lumbering", "Mining", "Afforestation"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Afforestation involves planting trees to replace destroyed forests and restore vegetation.",
      ),
      QuizQuestion(
        question:
            "2. Protection of the environment in Ghana must be the responsibility of          (BECE 1997 Q2)",
        options: [
          "The government",
          "The Environmental Protection Agency",
          "All people within the community",
          "The Forestry Department"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Everyone in the community has a responsibility to protect and preserve the environment.",
      ),
      QuizQuestion(
        question: "3. Desertification is caused by            (BECE 1999 Q27)",
        options: [
          "Afforestation",
          "Excessive rainfall",
          "Overgrazing",
          "Irrigation"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Overgrazing removes vegetation and exposes the soil, contributing to desertification.",
      ),
      QuizQuestion(
        question:
            "4. Which of the following human activities destroys habitats of animals?         (BECE 2016 Q4)",
        options: [
          "Bush burning",
          "Bush fallowing",
          "Inter-cropping",
          "Mixed farming"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Bush burning destroys vegetation, animal shelters and food sources.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following is NOT an agent of erosion?         (BECE 1992 Q4)",
        options: ["Wind", "River", "Sun", "Volcano"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Wind and running water are common agents of erosion, but the sun does not directly transport eroded materials.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following is a bad effect of heavy rainfall?        (BECE 1995 Q23)",
        options: [
          "Provision of potable water",
          "Provision of water for irrigation",
          "Increasing the volume of streams",
          "Causing erosion of soil"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Heavy rainfall can wash away the fertile topsoil and cause serious soil erosion.",
      ),
      QuizQuestion(
        question:
            "7. Which of the following prevents desertification?        (BECE 1997 Q23)",
        options: [
          "Overgrazing",
          "Shortage of water",
          "Excessive use of fuel",
          "Afforestation"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Afforestation protects the soil by restoring vegetation and reducing erosion.",
      ),
      QuizQuestion(
        question:
            "8. Which of the following economic activities does not cause deforestation in Ghana?        (BECE 1994 Q39)",
        options: ["Lumbering", "Fishing", "Crop growing", "Mining"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Fishing does not normally require the large-scale removal of trees.",
      ),
      QuizQuestion(
        question:
            "9. The environment can best be described as        (BECE 1997 Q1)",
        options: [
          "Plants and animals",
          "Roads and rivers",
          "Natural and man-made things",
          "Vegetation and climate"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The environment includes both natural features and things created by human beings.",
      ),
      QuizQuestion(
        question:
            "10. Bush fires occur very often during the        (BECE 1999 Q35)",
        options: [
          "Rainy season",
          "Harvesting season",
          "Marketing days",
          "Harmattan season"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Harmattan season is dry and windy, making vegetation more likely to catch fire.",
      ),
      QuizQuestion(
        question:
            "11. Which of the following cannot be considered an environmental hazard?        (BECE 1995 Q37)",
        options: [
          "Desertification",
          "Bush fires",
          "Afforestation",
          "Soil erosion"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Afforestation protects the environment rather than creating an environmental hazard.",
      ),
      QuizQuestion(
        question:
            "12. Indiscriminate felling of trees causes the following except         (BECE 2001 Q26)",
        options: [
          "Soil erosion",
          "Afforestation",
          "Water pollution",
          "Desertification"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Tree felling causes deforestation, not afforestation, which means planting trees.",
      ),
      QuizQuestion(
        question: "13. Our environment is made up of        (BECE 1997 Q1)",
        options: [
          "Plants and animals",
          "Roads and rivers",
          "Natural and man-made things",
          "Vegetation and climate"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Our environment consists of natural features and human-made features.",
      ),
      QuizQuestion(
        question:
            "14. Environmental degradation in Tarkwa and Prestea is mainly due to         (BECE 2005 Q19)",
        options: [
          "Sand winning",
          "Illegal mining",
          "Timber lumbering",
          "Palm wine tapping"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Illegal mining destroys vegetation, pollutes water bodies and degrades land in mining communities.",
      ),
      QuizQuestion(
        question:
            "15. One of the causes of desertification is         (BECE 2006 Q14)",
        options: [
          "Excessive rainfall",
          "Afforestation",
          "Decrease in population",
          "Overgrazing"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Overgrazing removes protective vegetation and leaves the land bare and vulnerable.",
      ),
      QuizQuestion(
        question:
            "16. The most economical way to dispose of domestic and industrial waste is         (BECE 2007 Q13)",
        options: ["Sieving", "Burning", "Recycling", "Dumping"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Recycling converts waste into useful materials and reduces disposal costs and pollution.",
      ),
      QuizQuestion(
        question:
            "17. Floods in our communities can best be controlled through        (BECE 2011 Q20)",
        options: [
          "Harvesting rainwater",
          "Planned layout",
          "Tarring of roads",
          "Construction of boreholes"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A planned settlement layout provides proper drainage channels and prevents construction in waterways.",
      ),
      QuizQuestion(
        question:
            "18. Industries must be located outside residential areas to        (BECE 2011 Q23)",
        options: [
          "Avoid pollution",
          "Encourage competition among firms",
          "Reduce cost of production",
          "Reduce industrial accidents"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Locating industries away from homes reduces residents' exposure to smoke, noise and harmful waste.",
      ),
      QuizQuestion(
        question:
            "19. Which of the following economic activities does not cause deforestation in Ghana?        (BECE 2011 Q37)",
        options: ["Crop growing", "Lumbering", "Fishing", "Charcoal burning"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Fishing does not generally involve cutting down large areas of forest.",
      ),
      QuizQuestion(
        question:
            "20. The environment can best be described as        (BECE 2013 Q1)",
        options: [
          "Man and his surroundings",
          "Animals and non-living things",
          "Vegetation and non-living things",
          "Man and the vegetation around him"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The environment refers to human beings and everything surrounding them.",
      ),
      QuizQuestion(
        question: "21. The social environment includes         (BECE 2013 Q21)",
        options: [
          "Settlements, churches and rivers",
          "Settlements, festivals and political parties",
          "Festivals, political parties and religious groups",
          "Festivals, churches and tourist sites"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Festivals, political parties and religious groups are all parts of human society and culture.",
      ),
      QuizQuestion(
        question:
            "22. Which of the following statements is true?        (BECE 2013 Q3)",
        options: [
          "The social and physical environments are inter-dependent",
          "The physical environment is independent of the social environment",
          "The physical environment is never affected by the social environment",
          "The social environment is more important than the physical environment"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The social and physical environments affect and depend on each other.",
      ),
      QuizQuestion(
        question:
            "23. A major environmental problem facing municipal and metropolitan assemblies in Ghana is        (BECE 2013 Q13)",
        options: [
          "Waste management",
          "Air pollution",
          "Deforestation",
          "Gully erosion"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Assemblies face major challenges in collecting, transporting and safely disposing of waste.",
      ),
      QuizQuestion(
        question:
            "24. The physical environment of Ghana can be protected through        (BECE 2014 Q6)",
        options: [
          "Drying industrial waste",
          "Practising traditional farming",
          "Redirecting river channels",
          "Recycling of waste materials"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Recycling reduces the amount of waste deposited in the environment and conserves resources.",
      ),
      QuizQuestion(
        question:
            "25. Which of the following features forms part of our social environment?        (BECE 2014 Q37)",
        options: ["Atmosphere", "Buildings", "Land", "Religion"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Religion is a social institution involving people's beliefs, values and practices.",
      ),
      QuizQuestion(
        question:
            "26. Habitats of endangered species of animals can be protected through the creation of        (BECE 2014 Q38)",
        options: [
          "Forest reserves",
          "Land guards",
          "Tourist centres",
          "Veterinary clinics"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Forest reserves protect natural habitats from destruction and harmful human activities.",
      ),
      QuizQuestion(
        question:
            "27. Which of the following features is NOT part of the physical environment?        (BECE 2015 Q1)",
        options: ["Air", "Building", "Water", "Rivers"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A building is constructed by people, while air, water and rivers are natural physical features.",
      ),
      QuizQuestion(
        question:
            "28. A good social environment can be promoted through        (BECE 2015 Q2)",
        options: ["Bravery", "Competition", "Courtesy", "Tolerance"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Courtesy promotes respectful behaviour and peaceful relationships among members of society.",
      ),
      QuizQuestion(
        question:
            "29. One major environmental problem facing municipal and metropolitan assemblies in Ghana is        (BECE 2015 Q31)",
        options: [
          "Air pollution",
          "Deforestation",
          "Road accident",
          "Waste management"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Waste collection and disposal are major responsibilities and challenges for local assemblies.",
      ),
      QuizQuestion(
        question:
            "30. The most economical way of disposing domestic and industrial waste is by        (BECE 2016 Q32)",
        options: ["Burning", "Dumping", "Recycling", "Sieving"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Recycling converts waste materials into useful products, reduces pollution and conserves natural resources.",
      ),
      QuizQuestion(
        question:
            "31. Which of the following is the main reason for the protection of the physical environment?        (BECE 2017 Q13)",
        options: [
          "Survival of living things",
          "Ensuring adequate rainfall",
          "Improved standard of living",
          "Ensuring environmental sanitation"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Living things depend on the physical environment for essential resources such as air, water, food and shelter.",
      ),
      QuizQuestion(
        question: "32. An effect of land degradation is        (BECE 2018 Q8)",
        options: [
          "Bad farming practices",
          "Excessive quarrying",
          "Improper layouts",
          "Loss of soil fertility"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Land degradation removes nutrients from the soil and reduces its ability to support plant growth.",
      ),
      QuizQuestion(
        question:
            "33. Which of the following practices is the best way of conserving Ghana's forest?        (BECE 2018 Q24)",
        options: [
          "Growing of cover crops",
          "Replanting of trees",
          "Promoting the use of charcoal",
          "Deforestation"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Replanting trees replaces those that have been cut down and helps to restore forest cover.",
      ),
      QuizQuestion(
        question:
            "34. Environmental degradation is mainly caused by        (BECE 2019 Q1)",
        options: [
          "Natural disasters",
          "Human activities",
          "Civil war",
          "Global warming"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Human activities such as deforestation, mining, bush burning and pollution are major causes of environmental degradation.",
      ),
      QuizQuestion(
        question:
            "35. Respiratory diseases can be caused by        (BECE 2019 Q2)",
        options: [
          "Water pollution",
          "Land degradation",
          "Air pollution",
          "Deforestation"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Air pollution exposes people to smoke, dust and harmful gases that can damage the respiratory system.",
      ),
      QuizQuestion(
        question:
            "36. Which of the following factors is mostly needed for the continuous existence of man?        (BECE 2019 Q4)",
        options: ["Wealth", "Family", "Religion", "Environment"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Human beings depend on the environment for air, water, food, shelter and other resources necessary for survival.",
      ),
      QuizQuestion(
        question:
            "37. Which of the following do not constitute environmental degradation?        (BECE 2019 Q7)",
        options: [
          "Deforestation",
          "Bush burning",
          "Air pollution",
          "Mixed farming"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Mixed farming combines crop cultivation with animal rearing and does not necessarily damage the environment.",
      ),
      QuizQuestion(
        question:
            "38. There is an ongoing illegal mining activity in a community. The miners are using earth-moving machines, cyanide and mercury. Sixty acres of vegetation cover is pulled down every hour. Which of the following options best describes the long-term effect of their activities on the land?        (BECE 2024 Q3)",
        options: ["Erosion", "Depletion", "Percolation", "Degradation"],
        correctIndex: 3,
        difficulty: "Hard",
        explanation:
            "The removal of vegetation and contamination of the soil by mining chemicals cause long-term land degradation.",
      ),
      QuizQuestion(
        question:
            "39. The destruction of farmlands by cattle and the confrontation between herdsmen and farming communities in Ghana can best be resolved by        (BECE 2024 Q7)",
        options: [
          "Allowing the Game and Wildlife Department to take charge of cattle rearing in the communities",
          "Encouraging the practice of cattle ranching in our communities",
          "Seizing and distributing some of the cattle to the affected communities",
          "Local farmers always standing by to drive away herdsmen"
        ],
        correctIndex: 1,
        difficulty: "Hard",
        explanation:
            "Cattle ranching keeps animals within controlled areas and prevents them from destroying nearby farmlands.",
      ),
      QuizQuestion(
        question:
            "40. Which of the following agricultural practices helps to prevent soil erosion?        (BECE 2024 Q13)",
        options: [
          "Cover cropping",
          "Crop rotation",
          "Shifting cultivation",
          "Mono-culture"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Cover crops protect the soil from direct rainfall and reduce the removal of topsoil by water and wind.",
      ),
      QuizQuestion(
        question:
            "41. A region experiences a significant decrease in temperature and rainfall over a few decades. What factor could be the most likely cause of this?        (BECE 2024 Q24)",
        options: [
          "Deforestation",
          "Increase in ocean current",
          "Shift in wind pattern",
          "Rise in global temperature"
        ],
        correctIndex: 2,
        difficulty: "Hard",
        explanation:
            "A long-term shift in wind patterns can change the amount of heat and moisture reaching a region.",
      ),
      QuizQuestion(
        question:
            "42. Controlling plastic waste has become a major environmental concern to the city authorities in Ghana. Which of the following options is the best that helps minimize the negative impact of plastic waste disposal problem?        (BECE 2024 Q25)",
        options: [
          "Arresting all plastic waste producers",
          "Levying plastic waste producers",
          "Using jute and paper bags",
          "Placing a ban on single-use plastics"
        ],
        correctIndex: 2,
        difficulty: "Hard",
        explanation:
            "Using reusable or biodegradable jute and paper bags reduces dependence on plastics and minimizes plastic waste.",
      ),
      QuizQuestion(
        question:
            "43. A company is planning to build a soap factory in a rural area. The factory will provide jobs for the youth but may also pollute nearby rivers. Which of the following options best represents a sustainable development approach?        (BECE 2024 Q40)",
        options: [
          "Build the factory without environmental considerations",
          "Build the factory with some environmental consideration",
          "Reject the factory proposal to protect the environment",
          "Build the factory with environmental impact assessment"
        ],
        correctIndex: 3,
        difficulty: "Hard",
        explanation:
            "An environmental impact assessment identifies possible environmental risks and recommends measures to reduce pollution while supporting development.",
      ),
      QuizQuestion(
        question:
            "44. Which of the following actions is the most destructive of volcanic eruption on the environment?        (BECE 2025 Q29)",
        options: [
          "Gas emission",
          "Water pollution",
          "Lava flows on vegetation",
          "Loss of lives and property"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Lava flows can burn and bury vegetation, destroy habitats and leave large areas of land unable to support plant life.",
      ),
    ],
  ),
  "JHS 1 - Mapping Skills": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following shows the relationship between distance on paper and actual distance on the ground?        (BECE 1990 Q7)",
        options: ["Longitude", "Key", "Scale", "Plan"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A scale shows the relationship between a distance measured on a map and the corresponding actual distance on the ground.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following is not an imaginary line drawn on maps?        (BECE 1991 Q4)",
        options: ["Axis", "Equator", "A latitude", "Longitude"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Equator, latitudes and longitudes are imaginary lines shown on maps, but the axis is the imaginary line around which the Earth rotates.",
      ),
      QuizQuestion(
        question:
            "3. When the scale of a map is expressed in the form of a ratio, it is known as        (BECE 1998 Q1)",
        options: [
          "Statement scale",
          "Linear scale",
          "Open divided scale",
          "Representative fraction"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A representative fraction expresses a map scale as a ratio, such as 1:50,000.",
      ),
      QuizQuestion(
        question:
            "4. When the needle of a compass is at rest, it points to the        (BECE 2001 Q9)",
        options: ["Center", "South", "East", "North"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The magnetic needle of a compass aligns itself with the Earth's magnetic field and points towards the north.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following is a cardinal point of the compass?        (BECE 1994 Q2)",
        options: ["North-East", "South-West", "East", "South-East"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The four cardinal points are North, South, East and West.",
      ),
      QuizQuestion(
        question:
            "6. The ratio between measurement on a map and the actual corresponding distance on the ground is        (BECE 1991 Q2)",
        options: ["A longitude", "A scale", "A latitude", "An isotherm"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A map scale compares a distance measured on a map with the corresponding distance on the ground.",
      ),
      QuizQuestion(
        question:
            "7. The three main ways of expressing scales are linear, representative fraction and        (BECE 1994 Q1)",
        options: ["Kilometres", "Longitude", "Latitude", "Statement"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The three main forms of map scale are statement scale, linear scale and representative fraction.",
      ),
      QuizQuestion(
        question:
            "8. Which of the following imaginary lines on a map helps to determine time?        (BECE 2002 Q8)",
        options: [
          "The Arctic Circle",
          "The Antarctic Circle",
          "The Equator",
          "The Greenwich Meridian"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The Greenwich Meridian is the reference longitude from which world time zones are calculated.",
      ),
      QuizQuestion(
        question:
            "9. The colour used for showing rivers and lakes on topographical maps is        (BECE 1993 Q1)",
        options: ["Red", "Blue", "Brown", "Green"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Blue is conventionally used to represent water features such as rivers, lakes and seas on maps.",
      ),
      QuizQuestion(
        question:
            "10. When the scale of a map is expressed as 1:50,000, it is known as        (BECE 2001 Q1)",
        options: [
          "Statement scale",
          "Representative fraction scale",
          "Linear scale",
          "Vertical scale"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A scale written as a numerical ratio, such as 1:50,000, is called a representative fraction scale.",
      ),
      QuizQuestion(
        question:
            "11. On the maps, the sea is normally shown with the colour        (BECE 1997 Q36)",
        options: ["Green", "Yellow", "White", "Blue"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Water bodies, including seas, are normally represented with the colour blue on maps.",
      ),
      QuizQuestion(
        question:
            "12. The location of an object measured in degrees is known as        (BECE 2004 Q23)",
        options: ["Cardinal point", "Bearing", "Landmark", "Survey beacon"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A bearing gives the direction of an object from a point and is measured clockwise in degrees from north.",
      ),
      QuizQuestion(
        question:
            "13. 1 cm to 1 km expressed as representative fraction is        (BECE 1999 Q2)",
        options: ["1:100", "1:1,000", "1:10,000", "1:100,000"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "One kilometre equals 100,000 centimetres, so 1 cm to 1 km is written as 1:100,000.",
      ),
      QuizQuestion(
        question:
            "14. If the scale of a map is 1:10,000, and the distance on the map is 20 cm, then the actual distance on the ground is        (BECE 2013 Q19)",
        options: ["20 km", "0.2 km", "2 km", "20,000 km"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Twenty centimetres multiplied by 10,000 equals 200,000 centimetres, which is equal to 2 kilometres.",
      ),
      QuizQuestion(
        question:
            "15. A scale of map expressed as a ratio is known as        (BECE 2014 Q31)",
        options: [
          "Linear scale",
          "Simple fraction",
          "Representative fraction",
          "Statement scale"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A representative fraction expresses the relationship between map distance and ground distance as a ratio.",
      ),
      QuizQuestion(
        question:
            "16. The ratio between distance measured on a map and the actual distance on the ground is a        (BECE 2013 Q16)",
        options: ["Scale", "Sketch", "Statement", "Layout"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A scale is the ratio between a distance on a map and the corresponding actual distance on the ground.",
      ),
      QuizQuestion(
        question:
            "17. Landmarks are important features used in finding        (BECE 2014 Q28)",
        options: ["Cardinal points", "Compass points", "Directions", "Layout"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Landmarks are easily recognised features that help people identify locations and find directions.",
      ),
      QuizQuestion(
        question: "18. The four cardinal points are        (BECE 2014 Q31)",
        options: [
          "East, South-West, North, West",
          "North, South, North-East, South-West",
          "North, South, East, West",
          "West, South-East, North-West, South"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The four principal directions on a compass are North, South, East and West.",
      ),
      QuizQuestion(
        question:
            "19. The ratio between distance measured on a map and the actual distance on the ground is        (BECE 2015 Q8)",
        options: ["A sketch", "A statement", "A layout", "A scale"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A map scale shows the ratio between a measured map distance and its corresponding ground distance.",
      ),
      QuizQuestion(
        question:
            "20. Which of the following is used to represent landmarks on maps?        (BECE 2016 Q8)",
        options: [
          "Conventional signs",
          "Histogram",
          "Mathematical symbols",
          "Plain sketches"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Conventional signs are standard symbols used to represent landmarks and other features on maps.",
      ),
      QuizQuestion(
        question:
            "21. Conventional signs enable map users to identify        (BECE 2017 Q10)",
        options: ["Planets", "Rock profiles", "Cardinal points", "Landmarks"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Conventional signs help map users recognise landmarks such as schools, roads, hospitals and rivers.",
      ),
      QuizQuestion(
        question: "22. The four cardinal points are        (BECE 2017 Q28)",
        options: [
          "N, E, SW, NE",
          "N, S, NE, SW",
          "N, E, W, S",
          "NW, SE, NE, SW"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The four cardinal points are North, East, West and South.",
      ),
      QuizQuestion(
        question:
            "23. A representation of the earth's surface not drawn to scale is known as        (BECE 2018 Q12)",
        options: ["Map", "Plan", "Sketch", "Globe"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A sketch is a simple representation of an area that is not drawn according to an exact scale.",
      ),
      QuizQuestion(
        question:
            "24. Which of the following is a sketch? A town drawn        (BECE 2020 Q25)",
        options: [
          "With arrangement of houses",
          "Without the arrangement of houses",
          "With reference to actual size on the ground",
          "Without reference to actual size on the ground"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "A sketch represents the main features of an area without using their exact sizes or an accurate scale.",
      ),
      QuizQuestion(
        question:
            "25. Which of the following is not a feature of a sketched map?        (BECE 2021 Q38)",
        options: ["Title", "Key", "Scale", "Landmark"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A sketched map is not drawn to an exact scale, although it may contain a title, key and landmarks.",
      ),
      QuizQuestion(
        question:
            "26. The statement scale 1 cm to 5 km can be converted to representative fraction to read        (BECE 2022 Q9)",
        options: ["1:50", "1:5,000", "1:50,000", "1:500,000"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Five kilometres equals 500,000 centimetres, so 1 cm to 5 km is expressed as 1:500,000.",
      ),
      QuizQuestion(
        question:
            "27. Which of the following is associated with a scale of a map?        (BECE 2022 Q38)",
        options: ["Linear", "Balanced", "Tilted", "Compass"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A linear scale is one of the main ways of expressing the scale of a map.",
      ),
      QuizQuestion(
        question:
            "28. A scale presented in a line form is known as        (BECE 2023 Q22)",
        options: [
          "Map scale",
          "Statement scale",
          "Representative scale",
          "Linear scale"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A linear scale uses a divided line or bar to show the relationship between map distance and ground distance.",
      ),
      QuizQuestion(
        question:
            "29. Contours on a map indicate what phenomenon?        (BECE 2025 Q1)",
        options: [
          "Elevation changes",
          "Temperature changes",
          "Pressure changes",
          "Changes in rainfall"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Contour lines join places of equal height and show changes in elevation or relief on a map.",
      ),
      QuizQuestion(
        question:
            "30. Why is it useful to provide a legend on a map?        (BECE 2025 Q1)",
        options: [
          "Display the title",
          "Show the compass direction",
          "Explain the symbols",
          "Indicate the scale"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A map legend or key explains the meanings of the symbols and colours used on the map.",
      ),
    ],
  ),
  "JHS 1 - Understanding Our Natural World": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. A good layout and enforcement of town planning laws can help reduce        (BECE 2014 Q23)",
        options: [
          "Emergence of slums",
          "Influx of immigrants",
          "Population growth",
          "Substance abuse"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A good settlement layout and the enforcement of planning laws prevent disorderly construction and reduce the development of slums.",
      ),
      QuizQuestion(
        question:
            "2. A layout in which the houses are not orderly arranged is likely to        (BECE 2020 Q10)",
        options: [
          "Produce rainfall disasters",
          "Provide water facility easily",
          "Prevent development of slums",
          "Prevent the spread of diseases"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Although the wording is unusual, the expected answer is that proper arrangement of houses improves sanitation and helps prevent the spread of diseases.",
      ),
      QuizQuestion(
        question:
            "3. Poor drainage system in our cities result in        (BECE 2012 Q35)",
        options: ["Earthquakes", "Erosion", "Floods", "Landslides"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Poor drainage prevents rainwater from flowing away properly, causing water to accumulate and flood communities.",
      ),
      QuizQuestion(
        question:
            "4. Which of the following conditions will occur when fire breaks out in a poor layout community?        (BECE 2019 Q36)",
        options: [
          "Selling in the streets",
          "Evening markets may spring up",
          "Loss of property and life",
          "Armed robbery cases may rise"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Closely packed and poorly arranged buildings allow fire to spread quickly, leading to the loss of lives and property.",
      ),
      QuizQuestion(
        question:
            "5. A good layout of a settlement includes all the following except        (BECE 2004 Q25)",
        options: [
          "Prevention",
          "Easier movement",
          "Good sanitation",
          "Overcrowding"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A good settlement layout promotes easier movement and sanitation while preventing, rather than encouraging, overcrowding.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following settlements is a feature of a slum?        (BECE 2014 Q18)",
        options: [
          "Dispersed settlement",
          "Linear settlement",
          "Overcrowded settlement",
          "Planned settlement"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Slums are commonly characterised by overcrowded buildings, poor sanitation and inadequate public facilities.",
      ),
      QuizQuestion(
        question:
            "7. One of the advantages of a good layout is that        (BECE 2007 Q21)",
        options: [
          "It allows for tall buildings",
          "Floods are controlled",
          "Streets are made durable",
          "Hygiene is assured"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A good layout provides proper spacing, drainage and waste-disposal arrangements, which promote good hygiene.",
      ),
      QuizQuestion(
        question:
            "8. The most convenient way of reducing slum in cities is to        (BECE 2017 Q40)",
        options: [
          "Remove badly laid out buildings",
          "Build more estates",
          "Increase wages and salaries",
          "Supervise siting of structures"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Supervising where structures are built ensures compliance with planning regulations and prevents the development of new slums.",
      ),
      QuizQuestion(
        question:
            "9. A good layout and enforcement of Town Planning laws can help reduce        (BECE 2015 Q33)",
        options: [
          "Substance abuse",
          "Influx of immigration",
          "Emergence of slums",
          "Population growth"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Enforcing town-planning laws prevents unauthorised and disorderly construction, thereby reducing the emergence of slums.",
      ),
      QuizQuestion(
        question:
            "10. Movement and supply of utilities in settlement become easier and faster when the        (BECE 2021 Q21)",
        options: [
          "Layout is good",
          "Layout is haphazard",
          "Settlement is compact",
          "Settlement is linear"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A good layout provides accessible roads and properly arranged spaces, making movement and the supply of utilities easier.",
      ),
      QuizQuestion(
        question:
            "11. A major reason for developing a good layout settlement is to reduce        (BECE 2018 Q16)",
        options: [
          "Free movement and ethnic conflicts",
          "Overcrowding and criminal activities",
          "Rural-urban migration and street hawking",
          "Truancy and illiteracy rate"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A well-planned settlement provides adequate space and organised facilities, helping to reduce overcrowding and opportunities for criminal activity.",
      ),
      QuizQuestion(
        question:
            "12. Poor drainage system in our cities result in        (BECE 2017 Q34)",
        options: ["Erosion", "Floods", "Earthquake", "Land slide"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "When drains are inadequate or blocked, rainwater cannot flow away properly and may cause flooding.",
      ),
      QuizQuestion(
        question:
            "13. Floods can be best controlled in our communities through        (BECE 2010 Q22)",
        options: [
          "Construction of boreholes",
          "Planned layout",
          "Harvesting of rainwater",
          "Tarring of roads"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A planned layout provides proper drainage systems and prevents buildings from being constructed in waterways.",
      ),
      QuizQuestion(
        question:
            "14. An advantage of a good layout for settlement is that        (BECE 2012 Q35)",
        options: [
          "It reduces overcrowding of families",
          "It promotes trading and church activities",
          "It makes the inhabitants very rich",
          "Modern houses and schools are built"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A good layout provides adequate space between buildings and residential areas, thereby reducing overcrowding.",
      ),
      QuizQuestion(
        question:
            "15. A long narrow stretch of hills is called        (BECE 1990 Q1)",
        options: ["Ridge", "Spur", "Mountain", "Valley"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A ridge is a long, narrow stretch of elevated land or connected hills.",
      ),
      QuizQuestion(
        question:
            "16. Which of the following is not found in West Africa?        (BECE 1990 Q12)",
        options: [
          "Fouta Djalon Mountains",
          "Guinea Highlands",
          "Jos Plateau",
          "Ahaggar Plateau"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The Ahaggar Plateau is located in southern Algeria in North Africa, not West Africa.",
      ),
      QuizQuestion(
        question:
            "17. Which of the following is not a feature of relief?        (BECE 1990 Q13)",
        options: ["Plain", "Plateau", "Inselberg", "River"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Plains, plateaus and inselbergs are relief features, while a river is a drainage feature.",
      ),
      QuizQuestion(
        question:
            "18. If it is 12 noon at longitude 0°, what will be the time at a place which lies on longitude 15° E?        (BECE 1990 Q14)",
        options: ["12:15 am", "1:00 am", "11:00 am", "1:00 pm"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "A difference of 15° in longitude equals one hour. Places east of longitude 0° are ahead in time, so the time is 1:00 pm.",
      ),
      QuizQuestion(
        question: "19. An example of an igneous rock is        (BECE 1990 Q16)",
        options: ["Granite", "Sandstone", "Gneiss", "Shale"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Granite is an igneous rock formed when magma cools and solidifies beneath the Earth's surface.",
      ),
      QuizQuestion(
        question:
            "20. Which of the following features is not associated with rivers?        (BECE 1990 Q17)",
        options: ["Delta", "Waterfalls", "Ria", "Crater"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A crater is a volcanic feature, while deltas, waterfalls and rias are associated with rivers or river valleys.",
      ),
      QuizQuestion(
        question: "21. Rotation of the earth causes        (BECE 1990 Q18)",
        options: ["Day and night", "Seasons", "Eclipses", "Equinoxes"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The rotation of the Earth on its axis causes different parts of the Earth to experience day and night.",
      ),
      QuizQuestion(
        question:
            "22. The earth rotates on its axis, spinning from        (BECE 1990 Q22)",
        options: [
          "East to west",
          "West to east",
          "South to north",
          "West to south"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Earth rotates from west to east, which makes the Sun appear to rise in the east.",
      ),
      QuizQuestion(
        question:
            "23. Which of the following is not an irrigation farming area in West Africa?        (BECE 1990 Q23)",
        options: [
          "Inland Niger Delta",
          "Sokoto River Valley",
          "Accra Plains",
          "Chad Basin"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "The Accra Plains are not one of the major recognised irrigation farming areas of West Africa.",
      ),
      QuizQuestion(
        question:
            "24. An example of a sedimentary rock is        (BECE 1990 Q29)",
        options: ["Granite", "Gneiss", "Marble", "Clay"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Clay is a sedimentary material formed from the weathering and deposition of fine rock particles.",
      ),
      QuizQuestion(
        question:
            "25. The longest river in West Africa is        (BECE 1990 Q36)",
        options: [
          "River Senegal",
          "River Volta",
          "River Niger",
          "River Gambia"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "The River Niger is the longest river in West Africa.",
      ),
      QuizQuestion(
        question:
            "26. The earth rotates on its axis every        (BECE 1991 Q1)",
        options: ["12 hours", "36 hours", "24 hours", "48 hours"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Earth completes one full rotation on its axis in approximately 24 hours.",
      ),
      QuizQuestion(
        question:
            "27. A long narrow depression with a downward slope on the earth's surface is called        (BECE 1991 Q6)",
        options: ["An inselberg", "Sand dune", "Valley", "Ridge"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A valley is a long, low depression between hills or mountains, usually sloping downward.",
      ),
      QuizQuestion(
        question:
            "28. The following are continents in the world except        (BECE 1991 Q7)",
        options: ["Africa", "Canada", "Europe", "Australia"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "Canada is a country in North America, not a continent.",
      ),
      QuizQuestion(
        question:
            "29. The Jos Plateau in Nigeria is noted for the production of        (BECE 1991 Q18)",
        options: ["Gold", "Bauxite", "Tin", "Diamond"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Jos Plateau is well known for its deposits and production of tin.",
      ),
      QuizQuestion(
        question:
            "30. The molten rock beneath the earth's surface is called        (BECE 1992 Q2)",
        options: ["Solid", "Horst", "Layer", "Magma"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation: "Molten rock beneath the Earth's surface is called magma.",
      ),
      QuizQuestion(
        question:
            "31. The layer of gases which surround the earth is known as        (BECE 1992 Q3)",
        options: ["Atmosphere", "Temperature", "Sunshine", "Ozone"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The atmosphere is the layer of gases surrounding the Earth.",
      ),
      QuizQuestion(
        question:
            "32. The highest mountain in Africa is        (BECE 1992 Q11)",
        options: ["Eglon", "Adamawa", "Kilimanjaro", "Everest"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Mount Kilimanjaro in Tanzania is the highest mountain in Africa.",
      ),
      QuizQuestion(
        question:
            "33. What type of rainfall is likely to be experienced in the Cameroon Mountains?        (BECE 1992 Q15)",
        options: ["Cyclonic", "Relief", "Conventional", "Monsoon"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Relief rainfall occurs when moist air is forced to rise over mountainous land.",
      ),
      QuizQuestion(
        question:
            "34. Which of the following is not a latitude?        (BECE 1992 Q23)",
        options: [
          "Equator",
          "Greenwich Meridian",
          "Tropic of Capricorn",
          "Tropic of Cancer"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Greenwich Meridian is a line of longitude, while the other options are important lines of latitude.",
      ),
      QuizQuestion(
        question:
            "35. Most of the lakes in East Africa were formed as a result of the        (BECE 1992 Q34)",
        options: [
          "Rift valley system",
          "Fold mountain system",
          "Action of volcanoes",
          "Action of tropical winds"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Many East African lakes occupy depressions formed through faulting in the Rift Valley system.",
      ),
      QuizQuestion(
        question:
            "36. How many days does the earth take to complete its journey around the sun?        (BECE 1993 Q4)",
        options: ["360¼", "365¼", "365", "366"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Earth takes approximately 365¼ days to complete one revolution around the Sun.",
      ),
      QuizQuestion(
        question:
            "37. The revolution of the earth around the sun is the main cause of        (BECE 1993 Q5)",
        options: [
          "The rise and fall in the sea level",
          "Day and night",
          "Changes in wind direction",
          "The four seasons"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Earth's revolution around the Sun, together with its tilted axis, causes the four seasons.",
      ),
      QuizQuestion(
        question:
            "38. When it is 2:00 pm at a place on longitude 0°, the time at a place on longitude 45° W will be        (BECE 1993 Q6)",
        options: ["10:00 am", "11:00 am", "12:00 noon", "4:00 pm"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A difference of 45° equals three hours. A place west of longitude 0° is behind, so the time is 11:00 am.",
      ),
      QuizQuestion(
        question:
            "39. Which of the following is not a coastal landform?        (BECE 1993 Q8)",
        options: ["Cliff", "Estuary", "Sandbar", "Inselberg"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "An inselberg is an isolated inland hill and is not a coastal landform.",
      ),
      QuizQuestion(
        question:
            "40. The time in Ghana is different from the time in Nigeria because of differences in        (BECE 1993 Q33)",
        options: [
          "Geographical size",
          "Longitudinal position",
          "Population size",
          "Climatic conditions"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Time differences between places are determined mainly by their positions east or west in longitude.",
      ),
      QuizQuestion(
        question: "41. Coal often occurs in        (BECE 1994 Q4)",
        options: [
          "Igneous rocks",
          "Volcanic rocks",
          "Sedimentary rocks",
          "Plutonic rocks"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Coal forms from buried plant remains compressed within layers of sedimentary rock.",
      ),
      QuizQuestion(
        question: "42. The world's largest ocean is the        (BECE 1994 Q5)",
        options: ["Atlantic", "Pacific", "Indian", "Arctic"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "The Pacific Ocean is the largest ocean in the world.",
      ),
      QuizQuestion(
        question:
            "43. Most of the lakes in East Africa were formed as a result of the        (BECE 1994 Q8)",
        options: [
          "Rift valley system",
          "Fold mountain system",
          "Action of volcanoes",
          "Action of wind"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Faulting within the East African Rift Valley created depressions that later filled with water.",
      ),
      QuizQuestion(
        question:
            "44. Conventional rainfall is caused by        (BECE 1994 Q10)",
        options: [
          "Sinking cold air",
          "Ocean current",
          "Mountains",
          "Rising warm air"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Convectional rainfall occurs when warm, moist air rises, cools and condenses to form rain.",
      ),
      QuizQuestion(
        question:
            "45. The name given to the temperate grassland in South America is the        (BECE 1994 Q13)",
        options: ["Pampas", "Prairies", "Savannah", "Steppe"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The temperate grasslands of South America are known as the Pampas.",
      ),
      QuizQuestion(
        question:
            "46. Ocean currents which flow from the equator towards the poles are        (BECE 1994 Q14)",
        options: ["Warm", "Cool", "Polar", "Cold"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Ocean currents moving from the warm equatorial region towards the poles are warm currents.",
      ),
      QuizQuestion(
        question: "47. The earth is a        (BECE 1994 Q15)",
        options: ["Planet", "Meteorite", "Star", "Globe"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation: "The Earth is a planet that revolves around the Sun.",
      ),
      QuizQuestion(
        question:
            "48. The most important fishing ground in the world is the        (BECE 1994 Q20)",
        options: [
          "Indian Ocean",
          "Antarctic Ocean",
          "North-West Pacific",
          "South-West Pacific"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "The North-West Pacific is one of the world's richest and most productive fishing grounds.",
      ),
      QuizQuestion(
        question:
            "49. The Suez Canal links the Mediterranean Sea to the        (BECE 1994 Q22)",
        options: ["Baltic Sea", "Red Sea", "Adriatic Sea", "Arctic Sea"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Suez Canal connects the Mediterranean Sea with the Red Sea.",
      ),
      QuizQuestion(
        question:
            "50. If the time in Accra on longitude zero degree is 2:30 pm, the time in Cairo on longitude 30° E will be        (BECE 1995 Q7)",
        options: ["4:30 pm", "5:30 pm", "6:30 pm", "7:30 pm"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "A longitude difference of 30° equals two hours. Cairo is east of Accra, so its time is 4:30 pm.",
      ),
      QuizQuestion(
        question:
            "51. Limestone changes under great heat and pressure to become        (BECE 1995 Q33)",
        options: ["Quartzite", "Slate", "Gneiss", "Marble"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Limestone changes into marble when subjected to intense heat and pressure.",
      ),
      QuizQuestion(
        question:
            "52. The Panama Canal links the Pacific Ocean to the        (BECE 1996 Q24)",
        options: [
          "Indian Ocean",
          "North Atlantic Ocean",
          "Arctic Ocean",
          "South Atlantic Ocean"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Panama Canal connects the Pacific Ocean with the Atlantic Ocean.",
      ),
      QuizQuestion(
        question: "53. An escarpment has        (BECE 1997 Q9)",
        options: [
          "Gentle slope on all sides",
          "A round top and steep sides",
          "A steep slope on one side and a gentle slope on the other",
          "Steep slope on all sides"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "An escarpment is characterised by a steep slope on one side and a gentler slope on the other.",
      ),
      QuizQuestion(
        question:
            "54. The liquid rock beneath the earth's surface is called        (BECE 1997 Q35)",
        options: ["Mantle", "Crust", "Magma", "Layer"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Molten rock beneath the Earth's surface is known as magma.",
      ),
      QuizQuestion(
        question:
            "55. If the time on longitude 0° is 10:00 am, what would be the time on longitude 30° E?        (BECE 1998 Q38)",
        options: ["8:00 am", "12:00 noon", "2:00 pm", "7:00 pm"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A difference of 30° equals two hours. A place east of longitude 0° is ahead, making the time 12:00 noon.",
      ),
      QuizQuestion(
        question:
            "56. The earth rotates on its axis, spinning from        (BECE 1999 Q3)",
        options: [
          "East to west",
          "West to east",
          "South to north",
          "West to south"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "The Earth rotates from west to east.",
      ),
      QuizQuestion(
        question:
            "57. An example of a sedimentary rock is        (BECE 1999 Q7)",
        options: ["Granite", "Gneiss", "Marble", "Clay"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Clay is formed from deposited fine particles and is classified as a sedimentary material.",
      ),
      QuizQuestion(
        question:
            "58. Cairo in Egypt is on longitude 30° E and Tema in Ghana is on longitude 0°. What is the time difference between Cairo and Tema?        (BECE 2000 Q4)",
        options: ["2 hours", "3 hours", "15 hours", "30 hours"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Every 15° of longitude represents one hour, so a 30° difference equals two hours.",
      ),
      QuizQuestion(
        question:
            "59. The revolution of the earth round the sun causes        (BECE 2000 Q6)",
        options: ["Day and night", "High tides", "Four seasons", "Earthquakes"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Earth's revolution around the Sun, together with its tilted axis, produces the four seasons.",
      ),
      QuizQuestion(
        question:
            "60. Thick, dark clouds, thunder and lightning are associated with        (BECE 2000 Q9)",
        options: [
          "Conventional rainfall",
          "Relief rainfall",
          "Evaporation",
          "Transpiration"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Convectional rainfall commonly develops from towering dark clouds and is accompanied by thunder and lightning.",
      ),
      QuizQuestion(
        question:
            "61. Which of the following is not a sedimentary rock?        (BECE 2000 Q13)",
        options: ["Granite", "Clay", "Sandstone", "Shale"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Granite is an igneous rock, while clay, sandstone and shale are sedimentary materials or rocks.",
      ),
      QuizQuestion(
        question:
            "62. What will be the time on longitude 45° East when it is 9:00 am on longitude 15° East?        (BECE 2001 Q5)",
        options: ["7:00 am", "11:00 pm", "11:00 am", "12:00 noon"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "The longitude difference is 30°, which equals two hours. Longitude 45° E is farther east, so the time is 11:00 am.",
      ),
      QuizQuestion(
        question:
            "63. Limestone changes under heat and pressure to form        (BECE 2001 Q7)",
        options: ["Granite", "Shale", "Gneiss", "Marble"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation: "Heat and pressure transform limestone into marble.",
      ),
      QuizQuestion(
        question:
            "64. Which of the following rocks is formed from magma?        (BECE 2001 Q10)",
        options: ["Basalt", "Shale", "Sandstone", "Clay"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Basalt is an igneous rock formed when lava or magma cools and solidifies.",
      ),
      QuizQuestion(
        question:
            "65. What name is given to molten rock that reaches the surface of the earth?        (BECE 2002 Q6)",
        options: ["Lava", "Magma", "Clay", "Sand"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Molten rock is called lava after it reaches the Earth's surface.",
      ),
      QuizQuestion(
        question:
            "66. The part of a highland that projects into a lowland is a        (BECE 2002 Q9)",
        options: ["Knoll", "Valley", "Spur", "Ridge"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A spur is a narrow projection of highland extending into lower land.",
      ),
      QuizQuestion(
        question:
            "67. Which of the following climatic regions is not found in Ghana?        (BECE 2002 Q10)",
        options: [
          "Dry equatorial",
          "Sahel region",
          "Wet equatorial",
          "Semi-equatorial"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "The Sahel climatic region lies farther north of Ghana and is not found within the country.",
      ),
      QuizQuestion(
        question:
            "68. The earth revolves round the sun on its        (BECE 2002 Q25)",
        options: ["Orbit", "Meridian", "Latitudes", "Longitudes"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The fixed path followed by the Earth as it revolves around the Sun is called its orbit.",
      ),
      QuizQuestion(
        question:
            "69. A football match between Ghana (Longitude 0°) and Nigeria (Longitude 15° E) starts in Lagos at 4 o'clock pm. At what time will the telecast of the match start in Ghana?        (BECE 2003 Q3)",
        options: [
          "3 o'clock pm",
          "4 o'clock pm",
          "5 o'clock pm",
          "6 o'clock pm"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Nigeria is one hour ahead of Ghana because it is 15° east. Therefore, 4:00 pm in Lagos is 3:00 pm in Ghana.",
      ),
      QuizQuestion(
        question:
            "70. The most suitable physical feature for the construction of a dam is a        (BECE 2003 Q4)",
        options: ["Gorge", "Ridge", "Valley", "Plateau"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A narrow gorge with steep sides provides a suitable location for constructing a dam wall.",
      ),
      QuizQuestion(
        question:
            "71. The revolution of the earth results in        (BECE 2003 Q5)",
        options: [
          "High and low tides",
          "Day and night",
          "The four seasons",
          "Wind direction"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The revolution of the Earth around the Sun causes the four seasons.",
      ),
      QuizQuestion(
        question:
            "72. Which of the following is a chemically formed sedimentary rock?        (BECE 2003 Q6)",
        options: ["Granite", "Coal", "Potash", "Lignite"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Potash can form through the precipitation and evaporation of dissolved minerals, making it chemically formed.",
      ),
      QuizQuestion(
        question:
            "73. The rock suitable for the construction of roads is        (BECE 2005 Q36)",
        options: ["Limestone", "Granite", "Graphite", "Sandstone"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Granite is hard, strong and resistant to weathering, making it suitable for road construction.",
      ),
      QuizQuestion(
        question:
            "74. Which of the following is an example of sedimentary rock?        (BECE 2006 Q21)",
        options: ["Marble", "Granite", "Chalk", "Gneiss"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Chalk is a sedimentary rock formed mainly from accumulated remains of tiny marine organisms.",
      ),
      QuizQuestion(
        question:
            "75. Which of the following rock types is formed in layers?        (BECE 2007 Q16)",
        options: ["Sandstone", "Marble", "Clay", "Granite"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Sandstone is a sedimentary rock formed through the deposition and compression of sediments in layers.",
      ),
      QuizQuestion(
        question:
            "76. The type of rainfall which is mostly experienced in mountainous areas is        (BECE 2007 Q17)",
        options: [
          "Frontal rainfall",
          "Relief rainfall",
          "Cyclonic rainfall",
          "Convectional rainfall"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Relief rainfall occurs when moist air is forced to rise over mountains.",
      ),
      QuizQuestion(
        question:
            "77. The revolution of the earth results in        (BECE 2007 Q38)",
        options: [
          "Day and night",
          "Eclipse of the moon",
          "Eclipse of the sun",
          "The four seasons"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Earth's revolution around the Sun is responsible for the occurrence of the four seasons.",
      ),
      QuizQuestion(
        question:
            "78. The meeting of warm air mass and cold air mass causes        (BECE 2008 Q5)",
        options: [
          "Cyclonic rainfall",
          "Relief rainfall",
          "Torrential rainfall",
          "Convectional rainfall"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Cyclonic or frontal rainfall occurs when warm and cold air masses meet.",
      ),
      QuizQuestion(
        question:
            "79. Rocks which are formed in layers are called        (BECE 2008 Q18)",
        options: ["Gneiss", "Sedimentary", "Igneous", "Metamorphic"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Sedimentary rocks are formed through the accumulation and compression of sediments in layers.",
      ),
      QuizQuestion(
        question:
            "80. Which of the following types of rocks is suitable for road construction?        (BECE 2008 Q22)",
        options: ["Slate", "Marble", "Granite", "Quartzite"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Granite is strong, durable and resistant to wear, making it suitable for road construction.",
      ),
      QuizQuestion(
        question:
            "81. The time in Accra on longitude 0° is 8 am. What is the time in Cairo on longitude 30° E?        (BECE 2008 Q33)",
        options: ["9 am", "10 am", "11 am", "12 noon"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A difference of 30° equals two hours. Cairo is east of Accra, so its time is 10 am.",
      ),
      QuizQuestion(
        question:
            "82. Which type of rain occurs when cold and warm air masses meet?        (BECE 2009 Q6)",
        options: ["Orographic", "Convectional", "Cyclonic", "Thunderstorm"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Cyclonic rainfall occurs when a warm air mass meets a cold air mass and is forced to rise.",
      ),
      QuizQuestion(
        question:
            "83. When the time at Tema is 12 noon, the time at a place on longitude 30° W is        (BECE 2009 Q22)",
        options: ["9 am", "10 am", "11 am", "2 pm"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A difference of 30° equals two hours. Places west of Tema are behind in time, so the time is 10 am.",
      ),
      QuizQuestion(
        question:
            "84. Rocks that have their original features changed through very high temperature and pressure are called        (BECE 2009 Q30)",
        options: ["Metamorphic", "Sedimentary", "Volcanic", "Igneous"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Metamorphic rocks are formed when existing rocks are changed by intense heat and pressure.",
      ),
      QuizQuestion(
        question:
            "85. A hill with a steep slope on one side and a gentle slope on the other side is a/an        (BECE 2009 Q39)",
        options: ["Ridge", "Escarpment", "Knoll", "Plateau"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "An escarpment has a steep slope on one side and a gentler slope on the other.",
      ),
      QuizQuestion(
        question:
            "86. The outermost part of the earth is called the        (BECE 2010 Q8)",
        options: ["Core", "Mantle", "Atmosphere", "Crust"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The crust is the thin, solid outermost layer of the Earth.",
      ),
      QuizQuestion(
        question: "87. Relief rainfall is also known as        (BECE 2010 Q27)",
        options: [
          "Convectional rainfall",
          "Frontal rainfall",
          "Orographic rainfall",
          "Cyclonic rainfall"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Relief rainfall is also called orographic rainfall because it is caused by the uplift of air over highland.",
      ),
      QuizQuestion(
        question:
            "88. An extensive area of lowland is called a        (BECE 2012 Q11)",
        options: ["Ridge", "Valley", "Plain", "Plateau"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A plain is a broad, extensive area of relatively flat or gently undulating lowland.",
      ),
      QuizQuestion(
        question: "89. Lunar eclipse occurs when the        (BECE 2012 Q14)",
        options: [
          "Sun comes between the earth and the moon",
          "Moon comes between the sun and the earth",
          "Earth comes between the sun and the moon",
          "Earth rotates on its axis from west to east"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A lunar eclipse occurs when the Earth moves between the Sun and the Moon and casts its shadow on the Moon.",
      ),
      QuizQuestion(
        question:
            "90. The type of rainfall formed by the meeting of two air masses of different temperatures is        (BECE 2012 Q15)",
        options: ["Relief", "Frontal", "Convectional", "Orographic"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Frontal rainfall occurs where warm and cold air masses of different temperatures meet.",
      ),
      QuizQuestion(
        question:
            "91. When two air masses of different temperatures meet, it results in        (BECE 2013 Q35)",
        options: [
          "The formation of relief rainfall",
          "The formation of cyclonic rainfall",
          "Thunder and lightning",
          "Rain shadow zone"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "The meeting of warm and cold air masses causes cyclonic or frontal rainfall.",
      ),
      QuizQuestion(
        question:
            "92. A hill with a steep slope on one side and gentle slope on the other side is        (BECE 2015 Q13)",
        options: ["A ridge", "A knoll", "A plateau", "An escarpment"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "An escarpment is a landform with a steep slope on one side and a gentler slope on the other.",
      ),
      QuizQuestion(
        question: "93. The moon is a satellite of the        (BECE 2015 Q14)",
        options: ["Earth", "Jupiter", "Mars", "Mercury"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Moon is Earth's natural satellite and revolves around it.",
      ),
      QuizQuestion(
        question:
            "94. Relief rainfall is experienced in        (BECE 2015 Q15)",
        options: [
          "Equatorial forest areas",
          "Guinea savanna areas",
          "Highland areas",
          "Lowland areas"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Relief rainfall occurs mainly in highland areas where moist air is forced to rise over mountains.",
      ),
    ],
  ),
  "JHS 1 - Adolescent Reproductive Health": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Adolescents who involve themselves in drug and alcohol abuse risk becoming        (BECE 2020 Q19)",
        options: ["Mentally ill", "Barren", "Financially poor", "Blind"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Drug and alcohol abuse can negatively affect the brain and increase the risk of mental health problems.",
      ),
      QuizQuestion(
        question:
            "2. Adolescent chastity is important because it prevents        (BECE 2013 Q8)",
        options: [
          "Contraction of HIV/AIDS by the youth",
          "Contraction of malaria among the youth",
          "The effect of peer pressure on the youth",
          "The occurrence of broken homes"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Chastity protects adolescents from sexually transmitted infections such as HIV/AIDS.",
      ),
      QuizQuestion(
        question:
            "3. The period which marks the beginning and the end of adolescence is        (BECE 2018 Q6)",
        options: ["12–19 years", "10–19 years", "10–14 years", "15–19 years"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Adolescence is generally defined as the period between 10 and 19 years of age.",
      ),
      QuizQuestion(
        question:
            "4. Adolescent reproductive health aims at providing education on        (BECE 2013 Q5)",
        options: ["Good nutrition", "Sexuality", "Good marriage", "Security"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Adolescent reproductive health education provides accurate information about sexuality, development and responsible behaviour.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following physical changes is a characteristic of adolescent males?        (BECE 2020 Q1)",
        options: [
          "Breaking of voice",
          "Contraction of pelvis",
          "Widening of pelvis",
          "Stalled height"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "During adolescence, the male voice becomes deeper as the voice box grows.",
      ),
      QuizQuestion(
        question:
            "6. Irresponsible adolescent behaviour usually results in        (BECE 2010 Q3)",
        options: [
          "Self-reliance",
          "Loss of dignity",
          "Broken homes",
          "Drug abuse"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Irresponsible behaviour can damage an adolescent's reputation, self-respect and dignity.",
      ),
      QuizQuestion(
        question:
            "7. Adolescent chastity is beneficial to the girl because it helps her to        (BECE 2016 Q13)",
        options: [
          "Enjoy free education",
          "Gain automatic scholarship",
          "Have uninterrupted education",
          "Pass examination easily"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Chastity helps prevent early pregnancy and related challenges that may interrupt a girl's education.",
      ),
      QuizQuestion(
        question:
            "8. Irresponsible behaviour of adolescents can result in        (BECE 2023 Q15)",
        options: [
          "Child abuse",
          "Responsible parenting",
          "Peer pressure",
          "School dropout"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Irresponsible behaviour such as substance abuse or early sexual activity can cause adolescents to drop out of school.",
      ),
      QuizQuestion(
        question:
            "9. The most cherished value expected of an adolescent in the Ghanaian society is        (BECE 2012 Q7)",
        options: ["Hospitality", "Patience", "Generosity", "Chastity"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Chastity is highly valued because it encourages self-control and responsible sexual behaviour among adolescents.",
      ),
      QuizQuestion(
        question:
            "10. Adolescents who engage in early sex risk        (BECE 2013 Q9)",
        options: [
          "Dropping out of school",
          "Increasing the size of their family",
          "Looking older than their age",
          "Losing their parents"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Early sexual activity may lead to pregnancy, illness and other challenges that can force adolescents to leave school.",
      ),
      QuizQuestion(
        question: "11. The period of adolescence is        (BECE 2013 Q6)",
        options: ["10–19 years", "10–14 years", "15–19 years", "12–19 years"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Adolescence is the stage of development between the ages of 10 and 19 years.",
      ),
      QuizQuestion(
        question:
            "12. Adolescent abstinence from sexually related activity is        (BECE 2014 Q3)",
        options: ["Chastity", "Health", "Paternity", "Sincerity"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Chastity refers to abstaining from sexual activity and maintaining sexual self-control.",
      ),
      QuizQuestion(
        question:
            "13. In what way does early exposure to sexual content on the media affect adolescents?        (BECE 2025 Q14)",
        options: [
          "Admiration for the opposite sex",
          "Sexual abstinence",
          "Strong association with peers",
          "Uncontrolled sexual activity"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Early exposure to sexual content may encourage risky or uncontrolled sexual behaviour among adolescents.",
      ),
      QuizQuestion(
        question:
            "14. Adolescence is a period of transition from        (BECE 2015 Q3)",
        options: [
          "Childhood to adulthood",
          "Childhood to old age",
          "Infancy to adulthood",
          "Infancy to childhood"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Adolescence is the developmental stage during which a person moves from childhood towards adulthood.",
      ),
      QuizQuestion(
        question:
            "15. One factor that can make the adolescent drop out of school is        (BECE 2023 Q40)",
        options: [
          "Chaste life",
          "Early parenthood",
          "Social dignity",
          "Moral discipline"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Early parenthood may place financial and caregiving responsibilities on adolescents, causing them to leave school.",
      ),
      QuizQuestion(
        question:
            "16. An advantage of chastity to the adolescent is        (BECE 2018 Q9)",
        options: [
          "Avoiding contracting typhoid fever",
          "Gaining approval from adults",
          "Knowing blood group easily",
          "Getting the best school to attend"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Chaste and responsible behaviour earns adolescents trust, respect and approval from adults.",
      ),
      QuizQuestion(
        question:
            "17. What is the best way to address deviant behaviour in an adolescent?        (BECE 2024 Q10)",
        options: [
          "Punishment",
          "Counselling",
          "Parental neglect",
          "Ignoring it"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Counselling helps identify the causes of deviant behaviour and guides the adolescent towards positive change.",
      ),
      QuizQuestion(
        question:
            "18. Adolescent chastity is important because it prevents        (BECE 2015 Q4)",
        options: [
          "Contraction of HIV and AIDS",
          "Frequent malaria among the youth",
          "Peer pressure among the youth",
          "The occurrence of broken home"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Chastity helps protect adolescents from HIV/AIDS and other sexually transmitted infections.",
      ),
      QuizQuestion(
        question:
            "19. The main purpose of sex education in Ghanaian schools is to        (BECE 2025 Q11)",
        options: [
          "Increase likelihood of early marriage",
          "Promote reproductive health and responsible behavior",
          "Discourage communication between adolescents and health care providers",
          "Promote chastity among adolescents"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Sex education equips adolescents with knowledge and skills for reproductive health and responsible decision-making.",
      ),
      QuizQuestion(
        question:
            "20. Emotional characteristics of adolescents include the following except",
        options: ["Worry", "Love", "Pimples", "Shyness"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Pimples are a physical change during adolescence, while worry, love and shyness are emotional characteristics.",
      ),
      QuizQuestion(
        question:
            "21. The transition from childhood to adulthood is referred to as        (BECE 2016 Q6)",
        options: ["Adolescence", "Manhood", "Parenthood", "Puberty"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Adolescence is the period of transition from childhood to adulthood.",
      ),
      QuizQuestion(
        question:
            "22. Which of the following conditions is not an effect of irresponsible adolescent behaviour?        (BECE 2020 Q33)",
        options: [
          "Increase in productive workforce",
          "High cost of health care",
          "Increase in crime wave",
          "High rate of illiteracy"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "An increase in the productive workforce is a positive development and is not an effect of irresponsible adolescent behaviour.",
      ),
    ],
  ),

  "JHS 1 - Socialization": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. One of the effective ways by which parents carry out socialization of the family members is by        (BECE 2025 Q8)",
        options: [
          "Teaching them the importance of drum, music and dance",
          "Telling them ancient stories",
          "Rebuking and punitive punishment",
          "Open communication and admonishment"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Parents effectively socialize family members through open communication and admonishment, which help children understand acceptable behaviour, values and responsibilities.",
      ),
      QuizQuestion(
        question:
            "2. What role does peer socialization play in shaping adolescent behaviour and attitude? It        (BECE 2025 Q2)",
        options: [
          "Reinforces parental authority",
          "Encourages conformity to family traditions",
          "Influences language, fashion and social norms",
          "Promotes isolation from peer groups"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Peer groups influence adolescents’ language, fashion, interests, behaviour and acceptance of social norms.",
      ),
      QuizQuestion(
        question:
            "3. What is the main function of socialization? To        (BECE 2024 Q38)",
        options: [
          "Enforce laws and regulations",
          "Provide education",
          "Transmit culture and values",
          "Teach individuals how to survive"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The main function of socialization is to transmit a society’s culture, values, beliefs and accepted patterns of behaviour from one generation to another.",
      ),
      QuizQuestion(
        question:
            "4. A teacher, Mr. Jones encourages his students to work together on a group project. What agency of socialization is influencing the students' behaviour?        (BECE 2024 Q26)",
        options: ["Education", "Family", "Peer group", "Media"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The school is an educational agency of socialization where teachers help students develop cooperation, teamwork and other acceptable social behaviours.",
      ),
    ],
  ),

  "JHS 1 - Self-Identity": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. The most significant attitude that helps to enhance self-identity of the individual in the community is        (BECE 2024 Q31)",
        options: [
          "Always wearing clean clothes",
          "Avoiding peer influence in the community",
          "Showing respect to the elderly",
          "Engaging in peer teaching in school"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Showing respect to the elderly reflects good character, accepted community values and responsible behaviour, which help to strengthen an individual’s self-identity.",
      ),
    ],
  ),

  "JHS 1 - Citizenship and Human Rights": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question: "1. One duty of a citizen is        (BECE 2009 Q23)",
        options: [
          "Enjoy free education",
          "Join a religious group",
          "Assist the police in investigations",
          "Support a political party"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Citizens have a duty to support law-enforcement agencies by providing useful information and assisting with lawful investigations.",
      ),
      QuizQuestion(
        question:
            "2. Protecting national property is the obligation of        (BECE 2015 Q23)",
        options: [
          "All citizens",
          "Government officials",
          "The fire service",
          "The police"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "National property belongs to the entire country, so every citizen has a responsibility to protect it.",
      ),
      QuizQuestion(
        question:
            "3. According to the 1992 Constitution of Ghana, an individual can claim Ghanaian citizenship if        (BECE 2013 Q34)",
        options: [
          "His/her grandparents are Ghanaians",
          "He/she attends school in Ghana",
          "He/she works in Ghana",
          "His/her parents reside in Ghana"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "A person may claim Ghanaian citizenship by descent if a parent or grandparent is or was a citizen of Ghana.",
      ),
      QuizQuestion(
        question:
            "4. Which of the following is a duty of a citizen?        (BECE 2008 Q4)",
        options: [
          "Joining a religious group",
          "Helping the police financially",
          "Paying taxes for development",
          "Giving free medical care"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Paying taxes is a civic duty because tax revenue is used to provide public services and support national development.",
      ),
      QuizQuestion(
        question:
            "5. One responsibility for a Ghanaian citizen is to        (BECE 2012 Q36)",
        options: [
          "Protect the police",
          "Pay taxes",
          "Work and earn a living",
          "Worship freely"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Paying taxes is a responsibility of citizens and helps the government finance national development.",
      ),
      QuizQuestion(
        question:
            "6. A child of not more than seven years of age found in Ghana, and whose parents cannot be traced, is a Ghanaian by        (BECE 2013 Q36)",
        options: ["Birth", "Adoption", "Registration", "Conferment"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Under Ghana's Constitution, a child below seven years found in Ghana whose parents are unknown is presumed to be a citizen by birth.",
      ),
      QuizQuestion(
        question:
            "7. What a person is obliged to perform as a duty in the society constitutes his/her        (BECE 2014 Q5)",
        options: ["Achievements", "Dignity", "Responsibilities", "Rights"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Responsibilities are the duties and obligations that a person is expected to perform in society.",
      ),
      QuizQuestion(
        question:
            "8. The most common way of becoming a citizen of a country is by        (BECE 2006 Q6)",
        options: ["Registration", "Birth", "Adoption", "Marriage"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Citizenship by birth is the most common means through which people become citizens of a country.",
      ),
      QuizQuestion(
        question:
            "9. When one behaves in an honest and just manner, one performs his/her        (BECE 2013 Q40)",
        options: [
          "Civic right",
          "Civic responsibility",
          "Natural responsibility",
          "Social right"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Acting honestly and fairly is part of a citizen's civic responsibility towards other people and the state.",
      ),
      QuizQuestion(
        question:
            "10. According to the 1992 Constitution of Ghana, an individual can claim Ghanaian citizenship if        (BECE 2015 Q24)",
        options: [
          "He or she attends school in Ghana",
          "His or her grandparents are Ghanaians",
          "His or her parents reside in Ghana",
          "He or she works in Ghana"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A person can claim Ghanaian citizenship by descent when a parent or grandparent is or was Ghanaian.",
      ),
      QuizQuestion(
        question:
            "11. When one behaves in an honest and just manner, one performs his/her        (BECE 2016 Q24)",
        options: [
          "Civic responsibility",
          "Civic right",
          "Natural responsibility",
          "Social right"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Honesty and fairness are examples of civic responsibilities expected of responsible citizens.",
      ),
      QuizQuestion(
        question:
            "12. The right of a citizen of Ghana does not include        (BECE 2019 Q3)",
        options: [
          "Equality before the law",
          "Freedom from taxes",
          "Right to life",
          "Right to work"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Citizens have a duty to pay lawful taxes, so freedom from taxes is not a recognised right.",
      ),
      QuizQuestion(
        question:
            "13. Respecting the rights of others and performing our responsibilities to the state helps to promote        (BECE 2024 Q5)",
        options: [
          "Building political parties",
          "Community development",
          "National integration",
          "Responsible citizenship"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A person demonstrates responsible citizenship by respecting other people's rights and fulfilling obligations to the state.",
      ),
      QuizQuestion(
        question:
            "14. Which of the following activities is a duty of a citizen?        (BECE 2016 Q1)",
        options: [
          "Giving free medical care",
          "Helping the police financially",
          "Joining religious groups",
          "Paying taxes for development"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Citizens are required to pay taxes, which provide funds for public services and national development.",
      ),
      QuizQuestion(
        question:
            "15. Which of the following activities is a duty of a citizen of Ghana?        (BECE 2022 Q1)",
        options: [
          "Defending the 1992 Constitution",
          "Instigating mass boycott of development",
          "Attending religious meetings",
          "Owning huge property"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Every citizen has a duty to defend and uphold the Constitution and resist actions that undermine it.",
      ),
      QuizQuestion(
        question:
            "16. An individual who behaves in an honest and just manner is said to be performing        (BECE 2021 Q11)",
        options: [
          "Civic responsibility",
          "Civic right",
          "Natural responsibility",
          "Political responsibility"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Behaving honestly and justly is part of the civic responsibility of every citizen.",
      ),
      QuizQuestion(
        question:
            "17. A person legally recognized to enjoy rights in a country is known as        (BECE 2017 Q27)",
        options: ["Patriot", "Compatriot", "Politician", "Citizen"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A citizen is a legally recognised member of a country who enjoys its rights and performs its responsibilities.",
      ),
      QuizQuestion(
        question:
            "18. When one behaves in an honest and just manner one performs his/her        (BECE 2020 Q27)",
        options: [
          "Civic right",
          "Civic responsibility",
          "Natural responsibility",
          "Social responsibility"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Honest and just conduct is a civic responsibility because it contributes to fairness and peaceful social relations.",
      ),
    ],
  ),
  "WHAT IT MEANS TO BE A CITIZEN OF GHANA": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. A citizen is a person who:",
          options: [
            "Lives in any country temporarily",
            "Has full legal membership of a country",
            "Works in a foreign country",
            "Travels frequently"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Citizenship grants full legal membership and rights within a nation-state."),
      QuizQuestion(
          question: "2. By which means can a person become a citizen of Ghana?",
          options: [
            "By visiting Ghana for one week",
            "By birth, descent, or naturalisation",
            "By owning property in Ghana",
            "By winning a competition"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Ghanaian citizenship can be acquired by birth, descent, or naturalisation."),
      QuizQuestion(
          question:
              "3. Which of the following is a RIGHT of a Ghanaian citizen?",
          options: [
            "Refusing to pay taxes",
            "Freedom of speech and expression",
            "Disobeying court orders",
            "Ignoring national service"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Freedom of expression is a fundamental right guaranteed in Ghana's Constitution."),
      QuizQuestion(
          question:
              "4. Which of the following is a RESPONSIBILITY of a Ghanaian citizen?",
          options: [
            "Collecting free services without contributing",
            "Obeying the laws of Ghana",
            "Leaving Ghana permanently",
            "Paying taxes only when forced"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Obeying the law is a fundamental civic responsibility of every citizen."),
      QuizQuestion(
          question: "5. The body of laws governing Ghana is called:",
          options: [
            "The Ghana Statute",
            "The 1992 Constitution of Ghana",
            "The National Code",
            "The Independence Act"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Ghana's Supreme Law is the 1992 Constitution."),
      QuizQuestion(
          question: "6. Dual citizenship in Ghana means:",
          options: [
            "Holding two passports physically",
            "Being a citizen of Ghana and one other country simultaneously",
            "Being born to two Ghanaian parents",
            "Having two names in your birth certificate"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Dual citizenship allows a person to be a legal citizen of two countries."),
      QuizQuestion(
          question: "7. Voting in national elections is an example of:",
          options: [
            "A duty only for adults over 50",
            "Active civic participation",
            "A punishment imposed by courts",
            "A privilege for the wealthy"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Voting is a key form of civic participation that upholds democracy."),
      QuizQuestion(
          question: "8. Naturalisation is the process by which:",
          options: [
            "A citizen loses their rights",
            "A foreigner legally becomes a citizen of a country",
            "A government removes someone from office",
            "Citizens are listed in a voter register"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Naturalisation grants citizenship to foreign nationals who meet legal requirements."),
      QuizQuestion(
          question:
              "9. The National Commission for Civic Education (NCCE) promotes:",
          options: [
            "Military training",
            "Knowledge of civic rights and responsibilities",
            "Foreign investment",
            "Agricultural development"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The NCCE educates citizens about their civic rights and responsibilities."),
      QuizQuestion(
          question:
              "10. Which of the following promotes national unity in Ghana?",
          options: [
            "Tribalism and discrimination",
            "Respecting diverse cultures and cooperating as one people",
            "Ignoring civic responsibilities",
            "Speaking only one language"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Mutual respect and cooperation across Ghana's diverse communities build national unity."),
    ],
  ),

  "JHS 1 - Human Resource Development": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Motivation and supervision help in the efficient use of        (BECE 2010 Q35)",
        options: [
          "Human resources",
          "National resources",
          "Mineral resources",
          "Capital resources"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Motivation and supervision improve workers' commitment, productivity and performance, leading to the efficient use of human resources.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following resources must be increasingly used for the rapid development of the nation?        (BECE 2020 Q21)",
        options: [
          "Natural resources",
          "Human resources",
          "Local markets",
          "External markets"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Human resources must be developed and used effectively because skilled and knowledgeable people drive rapid national development.",
      ),
      QuizQuestion(
        question:
            "3. The human resource of a country refers to the        (BECE 2008 Q15)",
        options: [
          "Members of parliament only",
          "Skills of trade unions",
          "Skills of workers and management",
          "Members of local councils only"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Human resources refer to the knowledge, abilities and skills possessed by workers and management in a country.",
      ),
      QuizQuestion(
        question:
            "4. Which of the following is a human resource?        (BECE 2007 Q30)",
        options: ["Labour", "Land", "Capital", "Timber"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Labour is a human resource because it involves the physical and mental efforts of people used in production.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following factors is usually available in the rural areas of Ghana?        (BECE 2020 Q20)",
        options: [
          "Skilled labour",
          "Capital",
          "Entrepreneurs",
          "Unskilled labour"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Unskilled labour is usually more readily available in rural areas because many workers have limited access to specialised training.",
      ),
      QuizQuestion(
        question:
            "6. Ghana’s public sector faces various challenges with respect to human resource development. Which of the following challenges is the most suitable challenge in the above given scenario?        (BECE 2024 Q23)",
        options: [
          "Financial challenges",
          "Limited career advancement opportunities",
          "Limited access to quality education",
          "Inefficient bureaucracy"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Limited career advancement opportunities can reduce employee motivation and prevent workers in the public sector from developing their skills and progressing professionally.",
      ),
      QuizQuestion(
        question:
            "7. The human resource of a country refers to        (BECE 2018 Q31)",
        options: [
          "Skills and trade unions",
          "Teachers only",
          "Skills of workers and management",
          "Members of local councils only"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The human resource of a country consists of the skills, knowledge and abilities of its workers and management.",
      ),
      QuizQuestion(
        question:
            "8. Motivation and supervision help in the efficient use of        (BECE 2018 Q26)",
        options: [
          "Human resource",
          "National resource",
          "Mineral resource",
          "Capital resource"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Motivation encourages workers to perform well, while supervision guides their activities, resulting in the efficient use of human resources.",
      ),
    ],
  ),

  "JHS 1 - Financial and Investment Issues": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. The regular payments which individuals and organizations make to insurance companies are        (BECE 2010 Q38)",
        options: ["Premiums", "Salaries", "Taxes", "Wages"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Premiums are the regular payments made by individuals or organizations to insurance companies in exchange for insurance protection.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following scenarios best describes an application of social security benefits?        (BECE 2024 Q35)",
        options: [
          "A teacher receives scholarship to study abroad",
          "A community receives funds for a new irrigation project",
          "An entrepreneur receives a loan to expand the business",
          "A family member receives financial support after the death of the breadwinner"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Social security provides financial support to contributors and their dependants during situations such as retirement, disability or the death of a breadwinner.",
      ),
      QuizQuestion(
        question:
            "3. Payments which individuals make regularly to insurance companies is called        (BECE 2019 Q12)",
        options: ["Taxes", "Salaries", "Premiums", "Bonds"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A premium is the amount of money paid regularly to an insurance company to maintain insurance coverage.",
      ),
      QuizQuestion(
        question:
            "4. Pension benefits of Ghanaian workers are managed by the        (BECE 2014 Q25)",
        options: [
          "Bank of Ghana",
          "Ghana Commercial Bank",
          "Social Security and National Insurance Trust",
          "State Insurance Company"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Social Security and National Insurance Trust manages pension benefits for workers under Ghana's social security system.",
      ),
      QuizQuestion(
        question:
            "5. Workers in Ghana are required by law to contribute towards their future upkeep through        (BECE 2012 Q33)",
        options: [
          "Company shares",
          "Treasury bills",
          "Government bonds",
          "Social security schemes"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Workers contribute to social security schemes so that they can receive financial support during retirement or when they can no longer work.",
      ),
      QuizQuestion(
        question:
            "6. The financial security of an individual can be assured through        (BECE 2019 Q37)",
        options: ["Bank loan", "Borrowing", "Hard work", "Money saving"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Saving money helps an individual prepare for emergencies and future financial needs, thereby improving financial security.",
      ),
    ],
  ),

  "JHS 1 - Independent Ghana": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. General elections held in Ghana (Gold Coast) in 1956 ushered Ghana into        (BECE 2002 Q15)",
        options: ["Independence", "Republic", "Socialism", "Colonialism"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Convention People’s Party won the 1956 general election, confirming popular support for independence and paving the way for Ghana’s independence in 1957.",
      ),
      QuizQuestion(
        question:
            "2. The struggle for Ghana’s independence from 1951 to 1957 was led by        (BECE 1996 Q39)",
        options: [
          "Dr. J. B. Danquah",
          "Mr. Ako Adjei",
          "Dr. K. A. Busia",
          "Dr. Kwame Nkrumah"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Dr. Kwame Nkrumah led the Convention People’s Party and the final phase of Ghana’s struggle for independence between 1951 and 1957.",
      ),
      QuizQuestion(
        question:
            "3. Who led the 1948 boycott of European goods in the Gold Coast?        (BECE 1992 Q39)",
        options: [
          "Paa Grant",
          "Nii Kwabena Bonney",
          "Ako Adjei",
          "Obetsebi Lamptey"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Nii Kwabena Bonney organised the 1948 boycott of European goods in protest against the high prices charged by foreign merchants.",
      ),
      QuizQuestion(
        question:
            "4. The first general election in the history of Ghana was held in        (BECE 1998 Q28)",
        options: ["1949", "1951", "1955", "1957"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Gold Coast held its first general election in 1951 under the 1951 Constitution.",
      ),
      QuizQuestion(
        question:
            "5. Who was the first Ghanaian member of the legislative council?        (BECE 1997 Q3)",
        options: [
          "James Kwegyir Aggrey",
          "George Kuntu Blankson",
          "John Sey",
          "Nana Sir Ofori Atta I"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "George Kuntu Blankson was the first African from the Gold Coast appointed as an unofficial member of the Legislative Council.",
      ),
      QuizQuestion(
        question:
            "6. The Governor of the Gold Coast during the 1948 riots was        (BECE 1994 Q28)",
        options: [
          "Sir Gerald Creasy",
          "Sir Charles Noble Arden-Clarke",
          "Sir Henley Watson",
          "Sir Henley Coussey"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Sir Gerald Creasy was the Governor of the Gold Coast when the 1948 riots occurred.",
      ),
      QuizQuestion(
        question:
            "7. Which of the following personalities was not a member of the Convention People’s Party?        (BECE 2003 Q22)",
        options: [
          "Kojo Botsio",
          "N. A. Welbeck",
          "K. A. Gbedemah",
          "Dr. K. A. Busia"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Dr. K. A. Busia was an important opposition leader and was not a member of the Convention People’s Party.",
      ),
      QuizQuestion(
        question:
            "8. The Watson Commission was set up in        (BECE 2000 Q26)",
        options: ["1919", "1925", "1930", "1948"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Watson Commission was established in 1948 to investigate the causes of the disturbances in the Gold Coast.",
      ),
      QuizQuestion(
        question:
            "9. The first British Governor to draw up a development plan for the Gold Coast was        (BECE 1995 Q32)",
        options: [
          "Sir Alan Burns",
          "Commander Hill",
          "Lord Listowel",
          "Sir Gordon Guggisberg"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Sir Gordon Guggisberg introduced a major development plan to improve transport, education, health and other infrastructure in the Gold Coast.",
      ),
      QuizQuestion(
        question:
            "10. Who was the Chairman of the United Gold Coast Convention (U.G.C.C.)?        (BECE 1991 Q26)",
        options: [
          "George Grant",
          "Dr. J. B. Danquah",
          "Ako Adjei",
          "E. A. Akufo-Addo"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "George Grant, popularly known as Paa Grant, was the first chairman and a major financier of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "11. Who was the Head of state of Ghana between 1954 and 1960?        (BECE 1995 Q16)",
        options: [
          "Dr. Kwame Nkrumah",
          "Dr. J. B. Danquah",
          "The Queen of Britain",
          "Dr. K. A. Busia"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Before Ghana became a republic in 1960, the British monarch remained the formal Head of State, represented locally by a governor or governor-general.",
      ),
      QuizQuestion(
        question:
            "12. The immediate cause of the 1948 riots was        (BECE 1998 Q9)",
        options: [
          "The killing of the veterans",
          "The high cost of living",
          "Looting and boycott of European goods",
          "Burning of European stores"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The immediate cause of the 1948 riots was the shooting and killing of unarmed ex-servicemen who were marching to present a petition.",
      ),
      QuizQuestion(
        question:
            "13. The people of Ghana were freed from colonial rule on        (BECE 1997 Q17)",
        options: [
          "28th February, 1948",
          "6th March, 1957",
          "1st July, 1961",
          "4th June, 1979"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Ghana gained independence from British colonial rule on 6th March 1957.",
      ),
      QuizQuestion(
        question:
            "14. How many seats were in the Legislative assembly when Ghana became independent?        (BECE 1996 Q12)",
        options: ["204", "200", "120", "104"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The Legislative Assembly had 104 seats when Ghana became independent in 1957.",
      ),
      QuizQuestion(
        question:
            "15. One of the founding members of the United Gold Coast Convention (U.G.C.C.) was        (BECE 2000 Q25)",
        options: [
          "Dr. Kwame Nkrumah",
          "Dr. J. B. Danquah",
          "Mr. Kojo Botsio",
          "Mr. K. A. Gbedemah"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Dr. J. B. Danquah was one of the founding members and leading figures of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "16. The British used the indirect rule system to govern the people of the Gold Coast through the        (BECE 2000 Q21)",
        options: ["Police", "Army", "Registrars", "Chiefs"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Under indirect rule, the British governed local communities through traditional rulers and chiefs.",
      ),
      QuizQuestion(
        question:
            "17. The first General Secretary of the United Gold Coast Convention (U.G.C.C.) was        (BECE 1998 Q27)",
        options: [
          "Kwame Nkrumah",
          "J. B. Danquah",
          "Arko Adjei",
          "George Grant"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Kwame Nkrumah was invited from abroad to become the first General Secretary of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "18. The last Governor General of Ghana was        (BECE 1995 Q31)",
        options: [
          "Sir Charles Noble Arden-Clarke",
          "Sir Gordon Guggisberg",
          "Captain George Maclean",
          "Lord Listowel"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Lord Listowel was Ghana’s last Governor-General before the country became a republic in 1960.",
      ),
      QuizQuestion(
        question:
            "19. Who was the first Ghanaian Chief Justice?        (BECE 1995 Q34)",
        options: [
          "Sir Arku Korsah",
          "Dr. J. B. Danquah",
          "Justice Apaloo",
          "V. C. R. C. Crabbe"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Sir Arku Korsah was the first Ghanaian to serve as Chief Justice of Ghana.",
      ),
      QuizQuestion(
        question:
            "20. Ghana became a republic within the Commonwealth of Nations in        (BECE 1999 Q9)",
        options: ["1948", "1954", "1957", "1960"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Ghana became a republic on 1st July 1960 while remaining a member of the Commonwealth.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following was the immediate cause of the 1948 disturbances in Ghana?        (BECE 2003 Q24)",
        options: [
          "The defects in the Burns Constitution of 1946",
          "Low wages of workers",
          "The shooting and killing of three ex-soldiers",
          "High prices of consumer goods"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The immediate cause of the disturbances was the shooting and killing of three ex-servicemen at the Christianborg Crossroads.",
      ),
      QuizQuestion(
        question:
            "22. Who was the head of state of Ghana between 1957 and 1960?        (BECE 1998 Q32)",
        options: [
          "Kwame Nkrumah",
          "Queen Elizabeth II",
          "Akuffo Addo",
          "Lt General Ankrah"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Between independence in 1957 and the establishment of the republic in 1960, Queen Elizabeth II was Ghana’s formal Head of State.",
      ),
      QuizQuestion(
        question:
            "23. The Accelerated Development Plan of Education was drawn up in 1951 by the        (BECE 2001 Q17)",
        options: [
          "United Gold Coast Convention",
          "Northern People’s Party",
          "National Liberation Movement",
          "Convention People’s Party"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Convention People’s Party government introduced the Accelerated Development Plan for Education in 1951 to expand access to schooling.",
      ),
      QuizQuestion(
        question:
            "24. The first political party formed in the Gold Coast was the        (BECE 2001 Q30)",
        options: ["CPP", "UGCC", "NLM", "NPP"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The United Gold Coast Convention, formed in 1947, is regarded as the first political party in the Gold Coast.",
      ),
      QuizQuestion(
        question:
            "25. The leaders of the United Gold Coast Convention (U.G.C.C.) were imprisoned because of the        (BECE 2001 Q24)",
        options: [
          "Shooting of the veterans",
          "Appointment of Sir Arden Clarke as a governor",
          "1948 disturbances",
          "Recommendation made by the Watson Commission"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The UGCC leaders, later known as the Big Six, were arrested and imprisoned because the colonial authorities blamed them for the 1948 disturbances.",
      ),
      QuizQuestion(
        question:
            "26. The first Chairman of the United Gold Coast Convention was        (BECE 2002 Q22)",
        options: [
          "Obetsebi Lamptey",
          "E. A. Akuffo Addo",
          "Dr. J. B. Danquah",
          "George Grant"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "George Grant, also known as Paa Grant, was the first chairman of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "27. Which governor developed the railway line from Dunkwa to Awaso?        (BECE 2002 Q14)",
        options: [
          "Lord Listowel",
          "Sir Arden Clarke",
          "Sir Allan Burns",
          "Sir Gordon Guggisberg"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Sir Gordon Guggisberg expanded the Gold Coast railway network as part of his development programme.",
      ),
      QuizQuestion(
        question:
            "28. The Coussey Committee was set up by        (BECE 2002 Q19)",
        options: [
          "Sir Allan Burns",
          "Sir Arden Clarke",
          "Sir Gerald Creasy",
          "Sir Gordon Guggisberg"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Governor Sir Gerald Creasy established the Coussey Committee to recommend constitutional reforms for the Gold Coast.",
      ),
      QuizQuestion(
        question:
            "29. Which of the following political advocated for federalism in Ghana in 1957?        (BECE 2003 Q29)",
        options: [
          "The National Liberation Movement (NLM)",
          "The Convention People’s Party (CPP)",
          "The Northern People’s Party (NPP)",
          "The Togoland Congress (TC)"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The National Liberation Movement advocated a federal system of government in which the regions would have greater autonomy.",
      ),
      QuizQuestion(
        question:
            "30. Which of the following Ghanaian heads of state passed the Preventive Detention Act?        (BECE 2006 Q19)",
        options: [
          "Kutu Acheampong",
          "K. A. Busia",
          "Hilla Limann",
          "Kwame Nkrumah"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Preventive Detention Act was passed in 1958 under the government of Dr. Kwame Nkrumah.",
      ),
      QuizQuestion(
        question:
            "31. The demand for self-government now was made in 1949 by        (BECE 2004 Q16)",
        options: [
          "Dr. J. B. Danquah",
          "Dr. Kwame Nkrumah",
          "Dr. K. A. Busia",
          "Dr. Kwegyir Aggrey"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Dr. Kwame Nkrumah and the Convention People’s Party demanded immediate self-government under the slogan, \"Self-government now.\"",
      ),
      QuizQuestion(
        question:
            "32. Which of the following was established to find the causes of the 1948 riots?        (BECE 2008 Q7)",
        options: [
          "Coussey Committee",
          "Justice Annan Committee",
          "Watson Commission",
          "Bourne Commission"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Watson Commission was established by the British government to investigate the causes of the 1948 riots.",
      ),
      QuizQuestion(
        question:
            "33. “Positive Action” proposed by Nkrumah in 1949 was a call for        (BECE 2008 Q38)",
        options: [
          "Hard work and honesty",
          "Cooperation with the British",
          "National strike and boycott",
          "National unity"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Positive Action involved non-violent methods such as strikes, boycotts and civil disobedience to demand self-government.",
      ),
      QuizQuestion(
        question:
            "34. The 1951 general election granted Ghana        (BECE 2009 Q28)",
        options: [
          "Political independence",
          "Republican status",
          "Membership of the commonwealth",
          "Internal self-government"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The 1951 election gave the Gold Coast greater internal self-government, although full independence was achieved later in 1957.",
      ),
      QuizQuestion(
        question:
            "35. Governor Gordon Guggisberg is known to have established the        (BECE 2010 Q18)",
        options: [
          "Korle-Bu Hospital",
          "University of Ghana",
          "Mfantsipim School",
          "Cocoa Marketing Board"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Sir Gordon Guggisberg established Korle-Bu Hospital as part of his programme to improve healthcare in the Gold Coast.",
      ),
      QuizQuestion(
        question:
            "36. Which of the following conditions was the main aim of all the political parties before independence?        (BECE 2015 Q35)",
        options: [
          "Economic development",
          "Federal government",
          "Local government",
          "Self-government"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The common aim of the political parties before independence was to achieve self-government and end colonial rule.",
      ),
      QuizQuestion(
        question:
            "37. Which of the following governors introduced direct elections in Ghana in 1952?        (BECE 2017 Q5)",
        options: [
          "Hugh Clifford",
          "Allan Burns",
          "Gordon Guggisberg",
          "Arden Clarke"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Sir Charles Arden-Clarke governed during the introduction and implementation of direct elections under the new constitutional arrangements.",
      ),
      QuizQuestion(
        question:
            "38. Which of the following developments is not associated with Sir Gordon Guggisberg?        (BECE 2020 Q17)",
        options: [
          "Construction of harbours",
          "Promotion of health",
          "Europeanization of Ghanaians",
          "Establishment of Schools"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Guggisberg promoted infrastructure, education and healthcare, but the Europeanization of Ghanaians was not one of his development achievements.",
      ),
      QuizQuestion(
        question:
            "39. Which of the following was a positive effect of the 1948 riot in the Gold Coast?        (BECE 2015 Q35)",
        options: [
          "Led to the release of the Big Six",
          "Increased political awareness",
          "The 1951 constitution was replaced",
          "Dr Kwame Nkrumah was appointed leader of Government business"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The 1948 riots increased political awareness and strengthened demands for constitutional reform and self-government.",
      ),
      QuizQuestion(
        question:
            "40. Which one of the following factors was not a cause of the 1948 riots in the Gold Coast?        (BECE 2023 Q18)",
        options: [
          "Nkrumah’s suspension from the U.G.C.C.",
          "Rising prices of goods",
          "Mass unemployment",
          "General discontent against European rule"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Nkrumah’s separation from the UGCC occurred after the 1948 riots and therefore could not have been one of their causes.",
      ),
      QuizQuestion(
        question:
            "41. One of the founding fathers of Ghana who left the United Gold Coast Convention (U.G.C.C.) to form his own party was        (BECE 2023 Q37)",
        options: [
          "J. B. Danquah",
          "Kwame Nkrumah",
          "Ako Adjei",
          "Nana William Ofori Atta"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Kwame Nkrumah left the UGCC in 1949 and formed the Convention People’s Party.",
      ),
      QuizQuestion(
        question:
            "42. The first general election held in the Gold Coast in 1951 was won by the        (BECE 2024 Q8)",
        options: [
          "Convention People Party",
          "National Liberation Movement",
          "United Gold Coast Convention",
          "National Alliance for the Liberals"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Convention People’s Party won the 1951 general election with a clear majority.",
      ),
      QuizQuestion(
        question:
            "43. In 1957, the people of Ghana gained independence from the British colonial rule after a long political struggle. What was the main reason for Ghana’s independence? To        (BECE 2024 Q34)",
        options: [
          "Adopt a new political system and form a new government",
          "Gain economic freedom and control our natural resources",
          "Unite with other African countries and form a single nation",
          "Make Ghanaian culture and traditions superior to the British"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Political independence allowed Ghanaians to govern themselves, establish their own political system and form a national government.",
      ),
      QuizQuestion(
        question:
            "44. Which of the following challenges did Ghana face soon after independence in 1957?        (BECE 2024 Q36)",
        options: [
          "Building of new roads and drainage systems with limited funds",
          "Building of ports and harbours",
          "Sourcing the donor support",
          "Dealing with internal conflicts and political instability"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "After independence, Ghana experienced internal political disagreements, opposition conflicts and instability as the new nation developed its system of government.",
      ),
      QuizQuestion(
        question:
            "45. On 28th February, 1948, three ex-servicemen were shot and killed whiles marching peacefully to present a petition to the governor of the Gold Coast. These ex-servicemen were        (BECE 2025 Q6)",
        options: [
          "Corporal Attipoe, Flt. Lt. J.J. Rawlings and Gen. I.K. Achampong",
          "Corporal Attipoe, Gen. Afrifa and Lt. Gen. E.K. Kotoka",
          "Corporal Attipoe, Lt. Gen. E.K. Kotoka and Gen. I.K. Achampong",
          "Corporal Attipoe, Private Odartey-Lamptey and Sergeant Adjetey"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Sergeant Adjetey, Corporal Attipoe and Private Odartey-Lamptey were the three ex-servicemen killed during the march at the Christianborg Crossroads.",
      ),
      QuizQuestion(
        question:
            "46. In 1948, there was a riot following the killing of three ex-servicemen at the Osu Christianborg Castle Cross roads. What significant impact did it have on nationalists’ activities in the Gold Coast? It        (BECE 2025 Q18)",
        options: [
          "Resulted in the transfer of the governor",
          "Strengthened agitation against colonial administration",
          "Encouraged patriotism and respect for rule of law",
          "Strengthened colonial rule against the nationalists"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The 1948 disturbances increased political consciousness and strengthened nationalist agitation against British colonial administration.",
      ),
      QuizQuestion(
        question:
            "47. One negative effect of colonization on the Ghanaian society is the        (BECE 2025 Q25)",
        options: [
          "Introduction of formal education",
          "Introduction of currency",
          "Adulteration of culture",
          "Introduction of plantation farming"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Colonization weakened or altered some indigenous cultural values and practices through the introduction of foreign cultural influences.",
      ),
    ],
  ),

  // JHS2////////
  "JHS 2 - ENVIRONMENTAL ISSUES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Environmental pollution is caused by all the following except        (BECE 1999 Q24)",
        options: [
          "Smoking of cigarette",
          "Making of loud noise",
          "Dumping of refuse",
          "Watering of flowers"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Watering flowers does not cause environmental pollution. Smoking, excessive noise and dumping of refuse pollute the environment.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following activities does not cause air pollution?        (BECE 2020 Q32)",
        options: [
          "Increase of industrial fumes",
          "Indiscriminate disposal of solid waste",
          "Poor disposal of human excreta",
          "Fishing with chemicals"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Fishing with chemicals mainly causes water pollution rather than air pollution.",
      ),
      QuizQuestion(
        question:
            "3. Respiratory diseases can be caused by        (BECE 2019 Q2)",
        options: [
          "Water pollution",
          "Land degradation",
          "Air pollution",
          "Deforestation"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Air pollution exposes people to smoke, dust and harmful gases that can cause respiratory diseases.",
      ),
      QuizQuestion(
        question:
            "4. A major source of air pollution in the cities of Ghana is        (BECE 2007 Q10)",
        options: [
          "Fumes from car",
          "Burning of rubbish",
          "Use of pesticides",
          "Odours from gutters"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Fumes from vehicles release harmful gases and particles into the atmosphere and are a major source of air pollution in cities.",
      ),
      QuizQuestion(
        question:
            "5. Water pollution is caused by all the following except        (BECE 2001 Q39)",
        options: [
          "Oil spillage",
          "Recycling of waste",
          "Sewage disposal",
          "Alluvial mining"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Recycling waste helps to reduce pollution, while oil spillage, sewage disposal and alluvial mining can contaminate water bodies.",
      ),
      QuizQuestion(
        question:
            "6. Environmental pollution is caused by all the following except        (BECE 2016 Q32)",
        options: ["Burning", "Dumping", "Recycling", "Sieving"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Recycling reduces waste and protects the environment instead of causing environmental pollution.",
      ),
      QuizQuestion(
        question:
            "7. Industries must be located outside residential areas to        (BECE 2011 Q23)",
        options: [
          "Avoid pollution",
          "Encourage competition among firms",
          "Reduce cost of production",
          "Reduce industrial accidents"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Locating industries away from residential areas protects residents from industrial smoke, fumes, noise and other forms of pollution.",
      ),
      QuizQuestion(
        question:
            "8. What is the major effect of illegal mining on the water bodies of Ghana?        (BECE 2025 Q33)",
        options: [
          "Destroys aquatic and plant life",
          "Reduces the flow of water bodies"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Illegal mining pollutes water bodies with sediments and harmful chemicals, destroying aquatic organisms and plant life.",
      ),
      QuizQuestion(
        question:
            "9. Sanitation has been a major challenge in some communities in Ghana. What is the most sustainable way to improve sanitation in your community?        (BECE 2025 Q8)",
        options: [
          "Building more landfills for waste disposal",
          "Providing many incinerators in the community",
          "Recycling education",
          "Sweeping and collecting waste materials in the community"
        ],
        correctIndex: 2,
        difficulty: "Hard",
        explanation:
            "Recycling education promotes long-term behavioural change by teaching community members how to reduce, separate, reuse and properly manage waste.",
      ),
    ],
  ),
  "JHS 2  - Understanding Our Natural World": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Poor drainage system in our cities result in        (BECE 2014 Q18 / BECE 2017 Q34)",
        options: ["Erosion", "Floods", "Earthquake", "Land slide"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Poor drainage prevents rainwater from flowing away properly, causing water to accumulate and flood communities.",
      ),
      QuizQuestion(
        question:
            "2. Movement and supply of utilities in settlement become easier and faster when the        (BECE 2021 Q21)",
        options: [
          "Layout is good",
          "Layout is haphazard",
          "Settlement is compact",
          "Settlement is linear"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A good settlement layout provides well-planned roads and spaces that make movement and the supply of utilities easier and faster.",
      ),
      QuizQuestion(
        question:
            "3. A good layout of a settlement includes all the following except        (BECE 2004 Q25)",
        options: [
          "Prevention",
          "Easier movement",
          "Good sanitation",
          "Overcrowding"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A good settlement layout prevents overcrowding rather than encouraging it. It also promotes easier movement and good sanitation.",
      ),
      QuizQuestion(
        question:
            "4. A good layout and enforcement of Town Planning laws can help reduce        (BECE 2017 Q26)",
        options: [
          "Substance abuse",
          "Influx of immigration",
          "Emergence of slums",
          "Population growth"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Proper town planning and the enforcement of building regulations prevent the unplanned development of slums.",
      ),
      QuizQuestion(
        question:
            "5. Floods can be best controlled in our communities through        (BECE 2010 Q22)",
        options: [
          "Construction of boreholes",
          "Planned layout",
          "Harvesting of rainwater",
          "Tarring of roads"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A planned layout provides proper drainage systems and prevents buildings from being constructed on waterways, thereby reducing flooding.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following settlements is a feature of a slum?        (BECE 2014 Q23)",
        options: [
          "Dispersed settlement",
          "Linear settlement",
          "Overcrowded settlement",
          "Planned settlement"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Slums are commonly characterised by overcrowding, poorly arranged buildings and inadequate social amenities.",
      ),
      QuizQuestion(
        question:
            "7. One of the advantages of a good layout is that        (BECE 2007 Q21)",
        options: [
          "It allows for tall buildings",
          "Floods are controlled",
          "Streets are made durable",
          "Hygiene is assured"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "A good layout provides proper drainage, waste-disposal facilities and adequate spacing, which help to ensure good hygiene.",
      ),
      QuizQuestion(
        question:
            "8. A good layout and enforcement of town planning laws can help reduce        (BECE 2015 Q33)",
        options: [
          "Emergence of slums",
          "Influx of immigrants",
          "Population growth",
          "Substance abuse"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Enforcing town planning laws prevents disorderly construction and helps reduce the development of slums.",
      ),
      QuizQuestion(
        question:
            "9. Most Ghanaian communities experience flooding during the raining season due to        (BECE 2025 Q40)",
        options: [
          "Nature having its way",
          "Power hygienic conditions",
          "Long period of dry season",
          "Siting of buildings on water ways"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Buildings constructed on waterways block the natural flow of rainwater and cause flooding during the rainy season.",
      ),
      QuizQuestion(
        question:
            "10. An advantage of a good layout for settlement is that        (BECE 2012 Q35)",
        options: [
          "It reduces overcrowding of families",
          "It promotes trading and church activities",
          "It makes the inhabitants very rich",
          "Modern houses and schools are built"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A good layout ensures adequate spacing between buildings and residential areas, thereby reducing overcrowding.",
      ),
      QuizQuestion(
        question:
            "11. A layout in which the houses are not orderly arranged is likely to        (BECE 2020 Q10)",
        options: [
          "Produce rainfall disasters",
          "Provide water facility easily",
          "Prevent development of slums",
          "Prevent the spread of diseases"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "A disorderly layout may block drainage channels and waterways, increasing the risk of flooding and other rain-related disasters.",
      ),
      QuizQuestion(
        question:
            "12. The most convenient way of reducing slum in cities is to        (BECE 2017 Q40)",
        options: [
          "Remove badly laid out buildings",
          "Building more estates",
          "Increase wages and salaries",
          "Supervise siting of structures"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Supervising the siting of structures prevents unauthorised and disorderly construction before slums can develop.",
      ),
      QuizQuestion(
        question:
            "13. Which of the following conditions will occur when fire breaks out in a poor layout community?        (BECE 2019 Q36)",
        options: [
          "Selling in the streets",
          "Evening markets may spring up",
          "Loss of property and life",
          "Armed robbery cases may rise"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Poor layouts often have narrow access routes and closely packed buildings, making fires difficult to control and resulting in loss of life and property.",
      ),
      QuizQuestion(
        question:
            "14. A major reason for developing a good layout settlement is to reduce        (BECE 2018 Q16)",
        options: [
          "Free movement and ethnic conflicts",
          "Overcrowding and criminal activities",
          "Rural-urban migration and street hawking",
          "Truancy and illiteracy rate"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A good settlement layout provides adequate space, proper roads and organised residential areas, helping to reduce overcrowding and criminal activities.",
      ),
      QuizQuestion(
        question:
            "15. Poor drainage system in our cities result in        (BECE 2014 Q18)",
        options: ["Earthquakes", "Erosion", "Floods", "Landslides"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Poor drainage causes rainwater to accumulate instead of flowing away, resulting in floods in cities.",
      ),
    ],
  ),

  "JHS 2  - Mapping Skills": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. What makes it impossible to determine the actual distance from a sketch map? It        (BECE 2025 Q28)",
        options: [
          "Is roughly drawn",
          "Covers a large area",
          "Has no key",
          "Has no scale"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A scale shows the relationship between distance on a map and the actual distance on the ground. Without a scale, the actual distance cannot be calculated.",
      ),
    ],
  ),

  "JHS 2  - Population": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. The township of Asuabena has an aged population of 1,000 and a youthful population of 4,000. Which of the following amenities should be given the highest priority?        (BECE 2006 Q23)",
        options: [
          "Post Office",
          "Recreational facilities",
          "Radio station",
          "Markets"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Since the youthful population is much larger than the aged population, recreational facilities should be given the highest priority to meet the needs of the young people.",
      ),
      QuizQuestion(
        question:
            "2. The large percentage of the youth in Ghana's population implies that Ghana has        (BECE 2017 Q8)",
        options: [
          "A free market economy",
          "A lot of future labour force",
          "Adequate supply of consumer goods",
          "Equitable distribution of wealth"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A large youthful population provides Ghana with many people who can enter the labour force in the future.",
      ),
      QuizQuestion(
        question:
            "3. In what way does the ageing population of Ghana affect the country's health system? It        (BECE 2025 Q16)",
        options: [
          "Decreases the demand for healthcare service",
          "Increases the burden on healthcare resources",
          "Leads to a surplus of healthcare professionals",
          "Reduces the supply of medication to children"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "An ageing population requires more medical care and long-term health support, which increases pressure on healthcare facilities, workers, and resources.",
      ),
    ],
  ),
  "JHS 2  - The Individual and the Community": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. What will be the best effect on the development of your community if you engage in voluntary activities? It will        (BECE 2025 Q32)",
        options: [
          "Encourage people to pay their taxes",
          "Promote peace and harmony",
          "Foster a sense of belonging and shared responsibility",
          "Hinder social progress and development"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Engaging in voluntary activities encourages community members to work together, creating a sense of belonging and shared responsibility for the development of the community.",
      ),
      QuizQuestion(
        question:
            "2. A market square in your community is in need of a clean-up and restoration. Which of the following options will best help address the challenge?        (BECE 2024 Q18)",
        options: [
          "Donating money to the market square but not getting involved personally",
          "Ignoring the issue and hoping someone will take care of it",
          "Organizing a solo clean-up exercise",
          "Joining a community volunteer group to help in the clean-up exercise"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Joining a community volunteer group promotes collective action and allows community members to work together effectively to clean and restore the market square.",
      ),
    ],
  ),
  "JHS 2  - Citizenship and Human Rights": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question: "1. One duty of a citizen is        (BECE 2009 Q23)",
        options: [
          "Enjoy free education",
          "Join a religious group",
          "Assist the police in investigations",
          "Support a political party"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Citizens have a duty to assist the police in investigations to help maintain law, order, and security in the country.",
      ),
      QuizQuestion(
        question:
            "2. Foreigners in Ghana enjoy all the following rights except that of        (BECE 1999 Q23)",
        options: ["Expression", "Worship", "Voting", "Association"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Foreigners may enjoy freedom of expression, worship, and association, but voting in Ghanaian elections is reserved for qualified Ghanaian citizens.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following can constitute human rights abuse in Ghana?        (BECE 2013 Q38)",
        options: [
          "Child labour",
          "Employing an 18-year-old child",
          "Dropping out of school",
          "Drug abuse"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Child labour violates the rights of children by exposing them to work that may harm their health, education, and development.",
      ),
      QuizQuestion(
        question:
            "4. An individual whose rights have been infringed upon seeks justice from the        (BECE 2008 Q32)",
        options: ["Court", "Police", "President", "Military"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The court interprets the law and provides justice when an individual's rights have been violated.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following constitutes human rights abuse?        (BECE 2009 Q25)",
        options: [
          "Being searched by a security agent",
          "Interrogation by a security agent",
          "Police detention beyond forty-eight hours",
          "Lawful imprisonment beyond forty-eight hours"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Keeping a suspect in police detention beyond forty-eight hours without bringing the person before a court violates the person's rights.",
      ),
      QuizQuestion(
        question:
            "6. Foreigners in Ghana enjoy all the following rights except that of        (BECE 2006 Q38)",
        options: ["Expression", "Worship", "Voting", "Association"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The right to vote in Ghanaian elections is reserved for qualified Ghanaian citizens and is not granted to foreigners.",
      ),
      QuizQuestion(
        question:
            "7. Which of the following is an abuse of human rights in Ghana?        (BECE 2005 Q6)",
        options: [
          "Assisting the police during investigations",
          "Freedom from arrest and detention without trial",
          "Pledging young people for money",
          "Being a member of a religious group"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Pledging young people for money treats them as property and violates their freedom, dignity, and other fundamental rights.",
      ),
      QuizQuestion(
        question:
            "8. If a person suspected of being a thief is beaten by a mob, he is denied the right to        (BECE 2005 Q37)",
        options: ["Speech", "Fair trial", "Work", "Life"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A suspected offender must be taken through the proper legal process. Mob action denies the person the right to a fair trial.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following constitutes human rights abuse?        (BECE 2008 Q37)",
        options: ["Child labour", "Sex trade", "Truancy", "Favoritism"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Child labour is a human rights abuse because it can deprive children of education, safety, and healthy development.",
      ),
      QuizQuestion(
        question:
            "10. Which of the following are rights of a citizen in Ghana?\n\nI. Protection of one's life\nII. Payment of taxes\nIII. Protection of public property\nIV. Personal liberty        (BECE 2005 Q14)",
        options: [
          "I and II only",
          "I and III only",
          "I and IV only",
          "II and III only"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Protection of one's life and personal liberty are rights, while paying taxes and protecting public property are responsibilities.",
      ),
      QuizQuestion(
        question:
            "11. Which of the following is a duty of a citizen?        (BECE 2008 Q4)",
        options: [
          "Joining a religious group",
          "Helping the police financially",
          "Paying taxes for development",
          "Giving free medical care"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Paying taxes is a civic duty because tax revenue enables the government to provide services and undertake development projects.",
      ),
      QuizQuestion(
        question: "12. Right to life means        (BECE 2012 Q20)",
        options: [
          "Living forever",
          "Living without interference",
          "Acquiring wealth",
          "Sustaining the family life"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The right to life protects a person from unlawful actions or interference that may threaten or take away his or her life.",
      ),
      QuizQuestion(
        question:
            "13. One basic right of every Ghanaian is the right to        (BECE 2013 Q37)",
        options: [
          "Vote in general elections",
          "Personal liberty",
          "Fair wages",
          "Stand for elections"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Personal liberty is a fundamental right enjoyed by every Ghanaian, while voting and standing for election have legal qualifications.",
      ),
      QuizQuestion(
        question:
            "14. One responsibility of a Ghanaian citizen is to        (BECE 2012 Q36)",
        options: [
          "Protect the police",
          "Pay taxes",
          "Work and earn a living",
          "Worship freely"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Citizens are responsible for paying taxes to support national development and the provision of public services.",
      ),
      QuizQuestion(
        question:
            "15. The right to life is an example of        (BECE 2013 Q39)",
        options: [
          "Economic right",
          "Natural right",
          "Legal right",
          "Political right"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The right to life is a natural right because every human being possesses it by virtue of being human.",
      ),
      QuizQuestion(
        question:
            "16. In order to protect one's rights, a citizen should be        (BECE 2012 Q37)",
        options: [
          "A law student",
          "A youth leader",
          "Educated on them",
          "An observer in court sittings"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A citizen must be educated about his or her rights in order to recognize violations and take the correct steps to seek protection.",
      ),
      QuizQuestion(
        question:
            "17. When one behaves in an honest and just manner, one performs his/her        (BECE 2013 Q40)",
        options: [
          "Civic right",
          "Civic responsibility",
          "Natural responsibility",
          "Social right"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Behaving honestly and justly is a civic responsibility because it contributes to peace, trust, and good citizenship.",
      ),
      QuizQuestion(
        question:
            "18. What a person is obliged to perform as a duty in the society constitutes his/her        (BECE 2014 Q5)",
        options: ["Achievements", "Dignity", "Responsibilities", "Rights"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Responsibilities are the duties and obligations that a person is expected to perform in society.",
      ),
      QuizQuestion(
        question:
            "19. One basic right of every Ghanaian is the right to        (BECE 2014 Q33)",
        options: [
          "Fair wages",
          "Personal liberty",
          "Stand for election",
          "Vote in general election"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Personal liberty is guaranteed to every Ghanaian, while voting and standing for election depend on specific legal requirements.",
      ),
      QuizQuestion(
        question:
            "20. Protecting national property is the obligation of        (BECE 2014 Q37)",
        options: [
          "All citizens",
          "Government officials",
          "The fire service",
          "The police"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "National property belongs to the entire country, so every citizen has a responsibility to protect and preserve it.",
      ),
      QuizQuestion(
        question:
            "21. The basic right of every Ghanaian is the right to        (BECE 2015 Q25)",
        options: [
          "Fair wages",
          "Personal liberty",
          "Stand for election",
          "Vote in general election"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Personal liberty is a fundamental right guaranteed to every Ghanaian regardless of age or electoral qualification.",
      ),
      QuizQuestion(
        question:
            "22. Which of the following activities is a duty of a citizen?        (BECE 2016 Q1)",
        options: [
          "Giving free medical care",
          "Helping the police financially",
          "Joining religious groups",
          "Paying taxes for development"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Paying taxes is a duty of citizens because the money supports public services and national development.",
      ),
      QuizQuestion(
        question:
            "23. Which of the following activities can constitute human rights abuse in Ghana?        (BECE 2016 Q23)",
        options: [
          "Child labour",
          "Dropping out of school",
          "Drug abuse",
          "Employing an 18-year-old girl"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Child labour abuses children's rights by exposing them to harmful work and interfering with their education and development.",
      ),
      QuizQuestion(
        question:
            "24. When an individual behaves in an honest and just manner, he/she performs a        (BECE 2016 Q24)",
        options: [
          "Civic responsibility",
          "Civic right",
          "Natural responsibility",
          "Social right"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Honesty and fairness are civic responsibilities expected of a good citizen in his or her dealings with others.",
      ),
      QuizQuestion(
        question:
            "25. Bullying of pupils in schools constitutes        (BECE 2017 Q14)",
        options: [
          "Sex discrimination",
          "Child labour",
          "Sexual harassment",
          "Child abuse"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Bullying causes physical or emotional harm to pupils and therefore constitutes child abuse.",
      ),
      QuizQuestion(
        question:
            "26. A person legally recognized to enjoy rights in a country is known as        (BECE 2017 Q27)",
        options: ["Patriot", "Compatriot", "Politician", "Citizen"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A citizen is a person who is legally recognized as a member of a country and enjoys its rights and privileges.",
      ),
      QuizQuestion(
        question:
            "27. The right to enjoy social amenities goes together with the responsibility of        (BECE 2018 Q13)",
        options: [
          "Attending communal labour",
          "Offering voluntary service",
          "Paying taxes regularly",
          "Attending political meetings"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Citizens must pay taxes regularly because tax revenue is used to provide and maintain social amenities.",
      ),
      QuizQuestion(
        question:
            "28. An individual whose rights have been infringed upon seeks justice from the        (BECE 2018 Q29)",
        options: ["Court", "President", "Police", "Teachers"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The court has the authority to hear cases, interpret the law, and provide remedies when a person's rights are violated.",
      ),
      QuizQuestion(
        question:
            "29. The right of a citizen of Ghana does not include        (BECE 2019 Q3)",
        options: [
          "Equality before the law",
          "Freedom from taxes",
          "Right to life",
          "Right to work"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Citizens do not have freedom from taxes because paying taxes is an obligation required for national development.",
      ),
      QuizQuestion(
        question:
            "30. The right to be protected and heard at trials is an example of        (BECE 2019 Q5)",
        options: [
          "Social rights",
          "Political rights",
          "Legal rights",
          "Natural rights"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Protection and the opportunity to be heard during a trial are legal rights guaranteed through the justice system.",
      ),
      QuizQuestion(
        question:
            "31. When one behaves in an honest and just manner one performs his/her        (BECE 2019 Q23)",
        options: [
          "Civic right",
          "Civic responsibility",
          "Natural responsibility",
          "Social responsibility"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Behaving honestly and justly is a civic responsibility because it promotes fairness, trust, and peaceful coexistence.",
      ),
      QuizQuestion(
        question:
            "32. An individual who behaves in an honest and just manner is said to be performing        (BECE 2021 Q11)",
        options: [
          "Civic responsibility",
          "Civic right",
          "Natural responsibility",
          "Political responsibility"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Honest and just behaviour is a civic responsibility expected of responsible members of society.",
      ),
      QuizQuestion(
        question:
            "33. Which of the following activities is a duty of a citizen of Ghana?        (BECE 2022 Q1)",
        options: [
          "Defending the 1992 Constitution",
          "Instigating mass boycott of development",
          "Attending religious meetings",
          "Owning huge property"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Every citizen has a duty to uphold and defend the 1992 Constitution and protect Ghana's constitutional order.",
      ),
      QuizQuestion(
        question:
            "34. Which of the following does not constitute a right of a Ghanaian according to the 1992 Constitution?        (BECE 2022 Q29)",
        options: [
          "Right to personal liberty",
          "Freedom of association",
          "Right to unlawful assembly",
          "Right to life"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Constitution protects peaceful and lawful assembly, but it does not grant anyone the right to participate in an unlawful assembly.",
      ),
      QuizQuestion(
        question:
            "35. To prevent human rights abuse in Ghana, the courts must        (BECE 2023 Q7)",
        options: [
          "Allow their sittings to be telecast by TV stations",
          "Be fair to all manner of persons",
          "Extend their sitting hours to late evening",
          "Set up a supreme court in every district"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Courts help prevent human rights abuse by treating every person fairly and administering justice without discrimination.",
      ),
      QuizQuestion(
        question:
            "36. Universal Adult Suffrage guarantees the right to        (BECE 2023 Q14)",
        options: [
          "Respect the laws of the land",
          "Pay taxes on time",
          "Vote to elect leaders",
          "Register as a citizen"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Universal Adult Suffrage gives qualified adult citizens the right to vote and choose their leaders.",
      ),
      QuizQuestion(
        question:
            "37. Which of the following is a good measure for preventing human rights violation in Ghana?        (BECE 2023 Q33)",
        options: [
          "Extending formal education to all",
          "Organizing free and fair elections",
          "Making external travel more accessible",
          "Establishing more human rights institutions"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Extending formal education helps people understand their rights and responsibilities and makes them less vulnerable to abuse.",
      ),
      QuizQuestion(
        question:
            "38. Which of the following fundamental human rights is protected by the 1992 Constitution of Ghana? The right to        (BECE 2024 Q15)",
        options: [
          "Use arms",
          "Full employment",
          "Freedom of speech",
          "Free education at tertiary level"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Freedom of speech is a fundamental human right protected by the 1992 Constitution of Ghana.",
      ),
      QuizQuestion(
        question:
            "39. How does your role as an active citizen contribute to the development of your community? By        (BECE 2025 Q21)",
        options: [
          "Promoting self-interest and peace of mind",
          "Fostering cooperation and collaboration",
          "Encouraging isolation from others and staying aloof",
          "Prioritizing personal interests over communal well-being"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "An active citizen supports community development by encouraging people to cooperate, collaborate, and work toward shared goals.",
      ),
    ],
  ),
  "JHS 2  - Conflict Prevention and Management": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following should be identified as the major cause of ethnic conflicts in Ghana?\n\nI. Chieftaincy disputes\nII. Land disputes\nIII. Cultural similarities\nIV. Struggling for contracts        (BECE 2004 Q19)",
        options: ["I and II", "II and III", "II and IV", "III and IV"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Chieftaincy and land disputes are major causes of ethnic conflicts because they often create disagreements over traditional authority, boundaries, and ownership.",
      ),
      QuizQuestion(
        question:
            "2. One way of preventing ethnic conflict in Ghana is through        (BECE 2012 Q22)",
        options: [
          "Payment of compensation",
          "Creation of jobs",
          "Celebration of festivals",
          "Tolerance and dialogue"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Tolerance and dialogue allow opposing groups to understand one another, discuss their differences peacefully, and reach acceptable solutions.",
      ),
      QuizQuestion(
        question:
            "3. Ethnic conflicts must be avoided because they slow down        (BECE 2005 Q8)",
        options: [
          "Urban to rural migration",
          "Rural to urban migration",
          "Tribal integration",
          "Economic growth"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Ethnic conflicts destroy property, interrupt businesses, discourage investment, and divert resources from development, thereby slowing economic growth.",
      ),
      QuizQuestion(
        question:
            "4. The shared value which will promote unity among Ghanaians is        (BECE 2007 Q15)",
        options: ["Loyalty", "Humility", "Hospitality", "Tolerance"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Tolerance promotes unity by helping people accept and respect differences in culture, religion, ethnicity, and opinion.",
      ),
      QuizQuestion(
        question:
            "5. Conflicts in our schools can be solved peacefully through        (BECE 2005 Q8)",
        options: [
          "Dismissals and suspensions",
          "The assistance of a chief linguist",
          "The intervention of a district pastor",
          "Negotiation and mediation"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Negotiation and mediation help the parties discuss their differences peacefully and reach a mutually acceptable agreement.",
      ),
      QuizQuestion(
        question:
            "6. Peace, as one of the reasons for the migration of our ancestors to modern Ghana, cannot be sustained if we promote        (BECE 2007 Q1)",
        options: [
          "Ethnic conflict",
          "Ethnic integration",
          "Western democracy",
          "Western education"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Ethnic conflict creates hostility, violence, and division among groups, making it impossible to sustain peace.",
      ),
      QuizQuestion(
        question:
            "7. People running away from Liberia because of the war to stay at Buduburam near Accra became ________ in Ghana.        (BECE 2003 Q15)",
        options: ["Victims", "Armed robbers", "Soldiers", "Refugees"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Refugees are people who leave their country to seek safety in another country because of war, persecution, or danger.",
      ),
      QuizQuestion(
        question:
            "8. One major cause of conflicts in the Ghanaian society is        (BECE 2012 Q22)",
        options: [
          "The development of slums in the cities",
          "Inadequate number of law enforcement agents",
          "The encouragement of inter-ethnic marriages",
          "The unacceptable way of choosing leaders"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "An unacceptable or unfair method of selecting leaders can create disputes, mistrust, and opposition among members of a community.",
      ),
      QuizQuestion(
        question:
            "9. Community conflicts are best settled through        (BECE 2014 Q11)",
        options: [
          "Arbitration and reconciliation",
          "Court ruling",
          "Government intervention",
          "Police action"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Arbitration and reconciliation help opposing parties settle their differences peacefully and restore good relationships within the community.",
      ),
      QuizQuestion(
        question:
            "10. Which of the following conditions is an effect of ethnic conflicts?        (BECE 2014 Q12)",
        options: [
          "Decrease in government expenditure",
          "Frequent interruption of electricity supply",
          "Interruption of developmental projects",
          "Overdependence on foreign goods"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Ethnic conflicts interrupt development projects because workers may flee, resources may be diverted, and construction activities may be suspended.",
      ),
      QuizQuestion(
        question:
            "11. The best way to settle disputes is through the        (BECE 2018 Q14)",
        options: [
          "Electoral Commission",
          "District Assembly",
          "Parliamentary committee",
          "Court system"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The court system settles disputes by examining evidence, interpreting the law, and delivering legally binding judgments.",
      ),
      QuizQuestion(
        question:
            "12. Ethnic conflicts must be avoided because they slow down        (BECE 2012 Q26)",
        options: [
          "Economic development",
          "Rural-urban migration",
          "Tribal disintegration",
          "Urban-rural migration"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Ethnic conflicts slow economic development by destroying property, discouraging investment, and diverting resources to security and relief efforts.",
      ),
      QuizQuestion(
        question:
            "13. Which of the following is an effect of ethnic conflicts?        (BECE 2017 Q39)",
        options: [
          "Interruption of developmental projects",
          "Decrease in government expenditure",
          "Frequent interruption of electricity supply",
          "Overdependence on foreign goods"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Developmental projects may be delayed or abandoned when ethnic conflicts create insecurity and force workers to leave affected areas.",
      ),
      QuizQuestion(
        question:
            "14. Conflicts in the community can best be prevented when there is        (BECE 2020 Q11)",
        options: [
          "Love for one another",
          "Tolerance of opposing views",
          "Fairness in wealth distribution",
          "Respect for one another"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Tolerance of opposing views helps community members accept differences and discuss disagreements without resorting to violence.",
      ),
      QuizQuestion(
        question:
            "15. One way of managing conflict in the Ghanaian society is        (BECE 2015 Q28)",
        options: ["Arbitration", "Confrontation", "Consultation", "Meditation"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Arbitration manages conflict by allowing an impartial third party to listen to the parties and make a decision to settle the dispute.",
      ),
      QuizQuestion(
        question:
            "16. Which of the following methods is not a way of managing conflicts?        (BECE 2016 Q27)",
        options: [
          "Arbitration",
          "Negotiation",
          "Reconciliation",
          "Suppression"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Suppression does not resolve the underlying causes of a conflict; it merely forces the disagreement to remain hidden temporarily.",
      ),
      QuizQuestion(
        question:
            "17. The best way to resolve conflicts in Ghana is through        (BECE 2019 Q15)",
        options: [
          "Peaceful demonstration",
          "Law courts",
          "Mediation",
          "Harsh sanctions"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Mediation allows a neutral person to help the conflicting parties communicate and reach a peaceful, mutually acceptable solution.",
      ),
      QuizQuestion(
        question:
            "18. Conflicts that destroy lives and property must be prevented by        (BECE 2018 Q20)",
        options: [
          "Security agents",
          "All citizens",
          "Environmental Protection Agency (EPA)",
          "National Disaster Management Organization (NADMO)"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Preventing destructive conflicts is the responsibility of all citizens because everyone must promote peace, tolerance, and lawful behaviour.",
      ),
      QuizQuestion(
        question:
            "19. Two communities are claiming ownership of a river which serves as their livelihood. This has resulted in conflicts between the two communities for many years. Which of the following mediations will best help to resolve the conflict?        (BECE 2024 Q2)",
        options: [
          "Avoid future conflicts",
          "Determine who is right or wrong",
          "Impose a solution on the parties",
          "Facilitate communication and mutually acceptable solution"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Effective mediation helps the communities communicate openly and develop a solution that is acceptable to both parties rather than imposing a decision.",
      ),
      QuizQuestion(
        question:
            "20. The process of identifying signals of conflict and encouraging people to work out their differences is known as conflict        (BECE 2022 Q37)",
        options: ["Involvement", "Management", "Prevention", "Resolution"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Conflict prevention involves recognizing early warning signs and helping people address their differences before the situation becomes violent.",
      ),
      QuizQuestion(
        question:
            "21. One of the many ways by which conflicts are reduced in the society is through        (BECE 2023 Q4)",
        options: ["Prayers", "Meditation", "Mediation", "Punishment"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Mediation reduces conflict by using a neutral third party to help opposing sides discuss their concerns and agree on a peaceful solution.",
      ),
      QuizQuestion(
        question:
            "22. Conflicts in the community cannot be properly managed when there is        (BECE 2021 Q17)",
        options: [
          "Forgiveness",
          "Mediation",
          "Reconciliation",
          "Land disputes"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Land disputes can create prolonged disagreements and hostility, while forgiveness, mediation, and reconciliation help manage conflicts peacefully.",
      ),
    ],
  ),

  "JHS 2  - Tourism & Financial Issues": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Tourism in Ghana promotes the growth of the        (BECE 2018 Q27)",
        options: [
          "Hotel industry",
          "Film industry",
          "Textile industry",
          "Health service"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Tourism promotes the hotel industry because tourists need accommodation, food, and other hospitality services during their visits.",
      ),
      QuizQuestion(
        question:
            "2. The Cape Coast Castle is a valuable national asset because it promotes        (BECE 2008 Q34)",
        options: ["Trade", "Education", "Tourism", "Civilization"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Cape Coast Castle attracts local and international visitors because of its historical importance, thereby promoting tourism.",
      ),
      QuizQuestion(
        question:
            "3. In which of the following regions in Ghana is the Boti Falls?        (BECE 1990 Q4)",
        options: ["Ashanti", "Eastern", "Western", "Central"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Boti Falls is a tourist attraction located in the Eastern Region of Ghana.",
      ),
      QuizQuestion(
        question:
            "4. Which of the following tourist attractions is mostly associated with Kintampo in the Bono East Region?        (BECE 2021 Q35)",
        options: [
          "Monkey sanctuary",
          "Bird viewing",
          "Savannah vegetation",
          "Waterfalls"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Kintampo is well known for the Kintampo Waterfalls, one of the major tourist attractions in the Bono East Region.",
      ),
      QuizQuestion(
        question:
            "5. Travelling to see and enjoy facilities and sceneries in other places is referred to as        (BECE 2010 Q32)",
        options: ["Leisure", "Tourism", "Pleasure", "Entertainment"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Tourism involves travelling outside one's usual environment to visit and enjoy places, facilities, and attractive sceneries.",
      ),
      QuizQuestion(
        question:
            "6. A lot of foreigners visit Ghana yearly to see beautiful sceneries. By this, they contribute to the economy through        (BECE 2025 Q23)",
        options: [
          "Exploitation of natural resources",
          "Exploitation of culture",
          "Revenue generation and foreign exchange",
          "Developing infrastructure only"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Foreign tourists spend money on accommodation, transport, food, and attractions, which generates revenue and brings foreign exchange into Ghana.",
      ),
      QuizQuestion(
        question:
            "7. The main benefit of tourism to Ghana is that it        (BECE 2014 Q29)",
        options: [
          "Encourages inter-tribal marriages",
          "Enriches our culture",
          "Is a major foreign exchange earner",
          "Promotes political stability"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Tourism is a major foreign exchange earner because international visitors spend foreign currencies on goods and services in Ghana.",
      ),
      QuizQuestion(
        question:
            "8. The main benefit of tourism to Ghana is        (BECE 2018 Q2)",
        options: [
          "Political stability",
          "Inter-tribal marriage",
          "Foreign exchange",
          "Cultural change"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Tourism earns foreign exchange for Ghana when international tourists spend money during their visits.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following places of interest attracts most tourists to Ghana?        (BECE 1996 Q2)",
        options: [
          "Kotoka International Airport",
          "Tema Harbour",
          "Kakum National Park",
          "Takoradi Harbour"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Kakum National Park is a major tourist attraction known for its tropical forest, wildlife, and canopy walkway.",
      ),
      QuizQuestion(
        question: "10. Tourism involves        (BECE 2017 Q17)",
        options: [
          "Taking time off normal duties",
          "Painting beautiful sceneries",
          "Buying new and beautiful artefacts",
          "Travelling to see and enjoy sceneries"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Tourism involves travelling to other places to visit and enjoy their natural, cultural, or historical attractions.",
      ),
      QuizQuestion(
        question:
            "11. Workers in Ghana are required by law to contribute towards their future upkeep through        (BECE 2012 Q33)",
        options: [
          "Company shares",
          "Treasury bills",
          "Government bonds",
          "Social security schemes"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Workers contribute to social security schemes so that they can receive financial support during retirement or when they can no longer work.",
      ),
      QuizQuestion(
        question:
            "12. People who visit places of interest to enjoy the facilities are called        (BECE 2018 Q10)",
        options: ["Experts", "Travellers", "Tourists", "Socialites"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Tourists are people who travel to places of interest for recreation, education, or enjoyment.",
      ),
      QuizQuestion(
        question:
            "13. The Kakum Forest in Ghana promotes economic development through its        (BECE 2010 Q2)",
        options: [
          "Supply of firewood",
          "Supply of timber",
          "Suitable location",
          "Tourist attraction"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Kakum Forest promotes economic development by attracting tourists who spend money on entrance fees, transport, accommodation, and other services.",
      ),
      QuizQuestion(
        question:
            "14. Pension benefits of Ghanaian workers are managed by the        (BECE 2014 Q25)",
        options: [
          "Bank of Ghana",
          "Ghana Commercial Bank",
          "Social Security and National Insurance Trust",
          "State Insurance Company"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Social Security and National Insurance Trust, commonly known as SSNIT, manages pension contributions and benefits for workers under its scheme.",
      ),
      QuizQuestion(
        question:
            "15. Which of the following entrepreneurial skills is most important for someone starting a business to acquire in order to help overcome unexpected challenges?        (BECE 2024 Q33)",
        options: ["Leadership", "Adaptability", "Savings", "Risk taking"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Adaptability enables an entrepreneur to adjust plans, strategies, and operations when unexpected challenges or changes arise.",
      ),
      QuizQuestion(
        question:
            "16. Your father intends to begin a new business by raising capital through the sale of shares. This type of business is known as        (BECE 2025 Q3)",
        options: [
          "Partnership",
          "Sole proprietorship",
          "Joint stock company",
          "Co-operative society"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "A joint stock company raises capital by selling shares to individuals who become shareholders in the business.",
      ),
      QuizQuestion(
        question:
            "17. Your younger brother's homework requires him to identify types of business enterprise. Which of the following should not be part of his list?        (BECE 2025 Q7)",
        options: [
          "Rural banks",
          "Joint Stock Companies",
          "Non-Governmental Organizations - NGO's",
          "Co-operative societies"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "A non-governmental organization is generally established to provide social or humanitarian services rather than to operate as a profit-making business enterprise.",
      ),
      QuizQuestion(
        question:
            "18. A company is expanding globally and needs to socialize employees to new cultural norms. Which of the following approaches would be most effective?        (BECE 2024 Q6)",
        options: [
          "Encourage employees to adapt to the new culture on their own",
          "Encourage employees to maintain their existing cultural practice",
          "Provide employees with a detailed guide to world cultures",
          "Provide employees with a cultural sensitivity training program"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Cultural sensitivity training prepares employees to understand, respect, and work effectively with people from different cultural backgrounds.",
      ),
      QuizQuestion(
        question:
            "19. The productivity of a worker in an organization can be improved by        (BECE 2025 Q24)",
        options: [
          "Regular supervision and punishment",
          "Engaging in short reading courses",
          "Engaging in retraining workshops",
          "Providing the necessary tools only"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Retraining workshops update a worker's knowledge and skills, helping the person perform duties more efficiently and productively.",
      ),
    ],
  ),

  "JHS 2  - The Republics": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. General elections held in Ghana (Gold Coast) in 1956 ushered Ghana into        (BECE 2002 Q15)",
        options: ["Independence", "Republic", "Socialism", "Colonialism"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The 1956 general election confirmed the demand for independence and paved the way for Ghana to gain independence on 6th March 1957.",
      ),
      QuizQuestion(
        question:
            "2. Who was the Head of State of Ghana between 1954 and 1960?        (BECE 1995 Q16)",
        options: [
          "Dr. Kwame Nkrumah",
          "Dr. J. B. Danquah",
          "The Queen of Britain",
          "Dr. K. A. Busia"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "The British monarch remained Ghana's formal Head of State until Ghana became a republic in 1960, while Kwame Nkrumah served as Prime Minister.",
      ),
      QuizQuestion(
        question:
            "3. The struggle for Ghana's independence from 1951 to 1957 was led by        (BECE 1996 Q39)",
        options: [
          "Dr. J. B. Danquah",
          "Mr. Ako Adjei",
          "Dr. K. A. Busia",
          "Dr. Kwame Nkrumah"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Dr. Kwame Nkrumah led the Convention People's Party and the final struggle that resulted in Ghana's independence in 1957.",
      ),
      QuizQuestion(
        question:
            "4. One of the founding members of the United Gold Coast Convention (U.G.C.C.) was        (BECE 2000 Q25)",
        options: [
          "Dr. Kwame Nkrumah",
          "Dr. J. B. Danquah",
          "Mr. Kojo Botsio",
          "Mr. K. A. Gbedemah"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Dr. J. B. Danquah was one of the leading founding members of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "5. Who was the Chairman of the United Gold Coast Convention (U.G.C.C.)?        (BECE 1991 Q26)",
        options: [
          "George Grant",
          "Dr. J. B. Danquah",
          "Ako Adjei",
          "E. A. Akufo-Addo"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "George Alfred Grant, popularly known as Paa Grant, was the first chairman of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "6. The first general election in the history of Ghana was held in        (BECE 1998 Q28)",
        options: ["1949", "1951", "1955", "1957"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The first general election in the Gold Coast was held in 1951 under the new constitutional arrangements.",
      ),
      QuizQuestion(
        question:
            "7. The struggle for the independence of Ghana from 1951 to 1957 was led by        (BECE 1993 Q28)",
        options: [
          "Dr. J. B. Danquah",
          "Mr. Ako Adjei",
          "Dr. K. A. Busia",
          "Dr. Kwame Nkrumah"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Dr. Kwame Nkrumah led the nationalist struggle from 1951 until Ghana achieved independence in 1957.",
      ),
      QuizQuestion(
        question:
            "8. The people of Ghana were freed from colonial rule on        (BECE 1997 Q17)",
        options: [
          "28th February, 1948",
          "6th March, 1957",
          "1st July, 1961",
          "4th June, 1979"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Ghana gained independence from British colonial rule on 6th March 1957.",
      ),
      QuizQuestion(
        question:
            "9. The first General Secretary of the United Gold Coast Convention (U.G.C.C.) was        (BECE 1998 Q27)",
        options: [
          "Kwame Nkrumah",
          "J. B. Danquah",
          "Ako Adjei",
          "George Grant"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Kwame Nkrumah was invited to the Gold Coast in 1947 to serve as the first General Secretary of the U.G.C.C.",
      ),
      QuizQuestion(
        question:
            "10. Who was the Head of State of Ghana between 1957 and 1960?        (BECE 1998 Q32)",
        options: [
          "Kwame Nkrumah",
          "Queen Elizabeth II",
          "Akufo-Addo",
          "Lt General Ankrah"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Queen Elizabeth II was Ghana's formal Head of State from independence in 1957 until Ghana became a republic in 1960.",
      ),
      QuizQuestion(
        question:
            "11. The first Chairman of the United Gold Coast Convention was        (BECE 2002 Q22)",
        options: [
          "Obetsebi Lamptey",
          "E. A. Akufo-Addo",
          "Dr. J. B. Danquah",
          "George Grant"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "George Grant was the first chairman and an important financial supporter of the U.G.C.C.",
      ),
      QuizQuestion(
        question:
            "12. Which of the following political parties advocated for federalism in Ghana in 1957?        (BECE 2003 Q29)",
        options: [
          "The National Liberation Movement (NLM)",
          "The Convention People's Party (CPP)",
          "The Northern People's Party (NPP)",
          "The Togoland Congress (TC)"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The National Liberation Movement advocated a federal system of government before Ghana's independence.",
      ),
      QuizQuestion(
        question:
            "13. The Head of State of Ghana at independence in 1957 was        (BECE 2013 Q28)",
        options: [
          "Kwame Nkrumah",
          "The Queen of Britain",
          "Gordon Guggisberg",
          "Edward Akufo-Addo"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "At independence, the British monarch remained Ghana's formal Head of State, represented locally by a Governor-General.",
      ),
      QuizQuestion(
        question:
            "14. Which of the following personalities was not a member of the Convention People's Party?        (BECE 2003 Q22)",
        options: [
          "Kojo Botsio",
          "N. A. Welbeck",
          "K. A. Gbedemah",
          "Dr. K. A. Busia"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Dr. K. A. Busia was an opposition leader and was not a member of the Convention People's Party.",
      ),
      QuizQuestion(
        question:
            "15. The demand for self-government now was made in 1949 by        (BECE 2004 Q16)",
        options: [
          "Dr. J. B. Danquah",
          "Dr. Kwame Nkrumah",
          "Dr. K. A. Busia",
          "Dr. Kwegyir Aggrey"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Kwame Nkrumah and the Convention People's Party demanded self-government now when the party was formed in 1949.",
      ),
      QuizQuestion(
        question:
            "16. One of the following was not a founding member of the United Gold Coast Convention (U.G.C.C.)        (BECE 2009 Q16)",
        options: [
          "J. B. Danquah",
          "Ako Adjei",
          "Kwame Nkrumah",
          "George Grant"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Kwame Nkrumah was invited later to serve as General Secretary and was not one of the original founders of the U.G.C.C.",
      ),
      QuizQuestion(
        question:
            "17. Which of the following personalities was a member of the United Gold Coast Convention?        (BECE 2012 Q38)",
        options: [
          "Kojo Botsio",
          "J. B. Danquah",
          "Krobo Edusei",
          "K. A. Gbedemah"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "J. B. Danquah was a leading member and one of the founders of the United Gold Coast Convention.",
      ),
      QuizQuestion(
        question:
            "18. One of the founding fathers of Ghana who left the United Gold Coast Convention (U.G.C.C.) to form his own party was        (BECE 2023 Q37)",
        options: [
          "J. B. Danquah",
          "Kwame Nkrumah",
          "Ako Adjei",
          "Nana William Ofori Atta"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Kwame Nkrumah left the U.G.C.C. and formed the Convention People's Party in 1949.",
      ),
      QuizQuestion(
        question:
            "19. The 1951 general election granted Ghana        (BECE 2009 Q28)",
        options: [
          "Political independence",
          "Republican status",
          "Membership of the Commonwealth",
          "Internal self-government"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The 1951 election increased African participation in government and marked an important step towards internal self-government.",
      ),
      QuizQuestion(
        question:
            "20. In 1966, a military coup d'état overthrew the government of Dr. Kwame Nkrumah. What was the main reason for the coup?        (BECE 2024 Q28)",
        options: [
          "Economic mismanagement and corruption",
          "External interference from the Russian Government",
          "Political instability and tribal conflicts",
          "Failure to implement socialist policies"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Economic difficulties, alleged corruption, rising debt, and dissatisfaction with Nkrumah's government contributed to the 1966 coup.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following Ghanaian Heads of State passed the Preventive Detention Act?        (BECE 2006 Q19)",
        options: [
          "Kutu Acheampong",
          "K. A. Busia",
          "Hilla Limann",
          "Kwame Nkrumah"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Preventive Detention Act was passed in 1958 under the government of Kwame Nkrumah.",
      ),
      QuizQuestion(
        question:
            "22. The Head of State of Ghana from 1957 to 1960 was        (BECE 2010 Q28)",
        options: [
          "Kwame Nkrumah",
          "Queen of Britain",
          "K. A. Busia",
          "Gordon Guggisberg"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "The Queen of Britain remained Ghana's formal Head of State until the country became a republic on 1st July 1960.",
      ),
      QuizQuestion(
        question:
            "23. \"Positive Action\" proposed by Nkrumah in 1949 was a call for        (BECE 2008 Q38)",
        options: [
          "Hard work and honesty",
          "Cooperation with the British",
          "National strike and boycott",
          "National unity"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Positive Action involved non-violent protests, strikes, and boycotts to press for immediate self-government.",
      ),
      QuizQuestion(
        question:
            "24. The Prime Minister of the Second Republic of Ghana was        (BECE 2025 Q15)",
        options: [
          "Dr. Hilla Limann",
          "Dr. K. A. Busia",
          "Dr. Kwame Nkrumah",
          "Prof. Evans Atta Mills"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Dr. Kofi Abrefa Busia served as Prime Minister during Ghana's Second Republic from 1969 to 1972.",
      ),
    ],
  ),

  // JHS 3 (Social Studies)/////////////

  "JHS 3 - Environmental Issues": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Respiratory diseases can be caused by        (BECE 2019 Q2)",
        options: [
          "Water pollution",
          "Land degradation",
          "Air pollution",
          "Deforestation"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Air pollution introduces smoke, dust, and harmful gases into the atmosphere. Breathing these pollutants can cause respiratory diseases.",
      ),
      QuizQuestion(
        question:
            "2. The outbreak of cholera can be prevented by        (BECE 2021 Q26)",
        options: [
          "Supplying drugs",
          "Improving nutrition",
          "Providing clinics",
          "Improving sanitation"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Improved sanitation prevents the contamination of food and water with cholera-causing bacteria and reduces the spread of the disease.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following is not considered an environmental problem?        (BECE 1992 Q26)",
        options: [
          "Air pollution",
          "Bush burning",
          "Shortage of water",
          "Afforestation"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Afforestation is the planting of trees. It helps protect and restore the environment rather than causing an environmental problem.",
      ),
      QuizQuestion(
        question:
            "4. Which of the following activities does not cause air pollution?        (BECE 2020 Q32)",
        options: [
          "Increase in industrial fumes",
          "Indiscriminate disposal of solid waste",
          "Poor disposal of human excreta",
          "Fishing with chemicals"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Fishing with chemicals mainly pollutes water and harms aquatic organisms, while industrial fumes and poor waste disposal can release pollutants into the air.",
      ),
      QuizQuestion(
        question:
            "5. A major source of air pollution in the cities of Ghana is        (BECE 2007 Q10)",
        options: [
          "Fumes from cars",
          "Burning of rubbish",
          "Use of pesticides",
          "Odours from gutters"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Vehicle exhaust fumes release smoke and harmful gases into the atmosphere, making them a major source of air pollution in Ghanaian cities.",
      ),
    ],
  ),
  "JHS 3 - Our Natural and Human Resources": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following towns in Ghana is well noted for the mining of diamond?        (BECE 1992 Q8)",
        options: ["Konongo", "Akwatia", "Tarkwa", "Obuasi"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Akwatia is well known as an important diamond-mining town in Ghana.",
      ),
      QuizQuestion(
        question: "2. Alluvial gold is found in        (BECE 1990 Q5)",
        options: ["River Oti", "River Offin", "River Densu", "River Bia"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Alluvial gold is found in the River Offin and its surrounding river deposits.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following minerals can be used to improve upon the fertility of the soil?        (BECE 2004 Q26)",
        options: ["Bauxite", "Iron", "Phosphate", "Diamond"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Phosphate is used in the production of fertilizers that improve soil fertility.",
      ),
      QuizQuestion(
        question:
            "4. All the following locations in Ghana are important for salt mining except        (BECE 2005 Q31)",
        options: [
          "Songor Lagoon near Ada",
          "Axim in the Western Region",
          "Weija in Accra",
          "Daboya in the Northern Region"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Axim is not a major salt-mining centre, while Songor, Weija, and Daboya are associated with salt production.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following towns in Ghana is important for mining of bauxite?        (BECE 1999 Q13)",
        options: ["Obuasi", "Awaso", "Tarkwa", "Akwatia"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "Awaso is an important bauxite-mining town in Ghana.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following is not a man-made feature?        (BECE 1992 Q21)",
        options: ["Mosque", "Road", "Borehole", "Waterfall"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A waterfall is a natural feature, while a mosque, road, and borehole are constructed by people.",
      ),
      QuizQuestion(
        question:
            "7. In Ghana deep shaft mining is generally associated with        (BECE 1990 Q21)",
        options: ["Gold", "Salt", "Bauxite", "Diamond"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Deep shaft mining is commonly used to extract gold deposits found deep beneath the ground.",
      ),
      QuizQuestion(
        question:
            "8. The most important mineral product of the Niger Delta is        (BECE 1995 Q28)",
        options: ["Petroleum", "Tin", "Coal", "Bauxite"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Niger Delta is internationally known for its large petroleum and natural-gas deposits.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following minerals is not mined in Ghana?        (BECE 1996 Q30)",
        options: ["Gold", "Bauxite", "Tin", "Manganese"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Gold, bauxite, and manganese are mined in Ghana, but tin is not a major mineral mined in the country.",
      ),
      QuizQuestion(
        question:
            "10. Which of the following minerals is non-metallic?        (BECE 2003 Q38)",
        options: ["Copper", "Bauxite", "Diamond", "Manganese"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Diamond is a non-metallic mineral, while copper, bauxite, and manganese are metallic minerals.",
      ),
      QuizQuestion(
        question:
            "11. Motivation and supervision help in the efficient use of        (BECE 2010 Q35)",
        options: [
          "Human resources",
          "National resources",
          "Mineral resources",
          "Capital resources"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Motivation and supervision improve workers' performance and therefore ensure the efficient use of human resources.",
      ),
      QuizQuestion(
        question:
            "12. All the following are metallic minerals except        (BECE 1996 Q37)",
        options: ["Bauxite", "Copper", "Gold", "Diamond"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Diamond is a non-metallic mineral, while bauxite, copper, and gold are metallic minerals.",
      ),
      QuizQuestion(
        question:
            "13. Which of the following is a human resource?        (BECE 2007 Q30)",
        options: ["Labour", "Land", "Capital", "Timber"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Labour refers to the physical and mental efforts of people used in production, making it a human resource.",
      ),
      QuizQuestion(
        question:
            "14. Which mineral is mined in the basin of River Birim in Ghana?        (BECE 2005 Q12)",
        options: ["Gold", "Diamond", "Bauxite", "Manganese"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Birim River basin is well known for alluvial diamond deposits, especially around Akwatia.",
      ),
      QuizQuestion(
        question:
            "15. Which of the following factors is usually available in the rural areas of Ghana?        (BECE 2020 Q20)",
        options: [
          "Skilled labour",
          "Capital",
          "Entrepreneurs",
          "Unskilled labour"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Unskilled labour is generally more readily available in rural areas than skilled labour, capital, or entrepreneurs.",
      ),
      QuizQuestion(
        question:
            "16. The only West African country which produces more cocoa than Ghana is        (BECE 1996 Q32)",
        options: ["Togo", "Cote d'Ivoire", "Benin", "Sierra Leone"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Cote d'Ivoire produces more cocoa than Ghana and is one of the world's leading cocoa producers.",
      ),
      QuizQuestion(
        question:
            "17. The world's largest producer of cocoa is        (BECE 1990 Q30)",
        options: ["Brazil", "La Cote d'Ivoire", "Ghana", "Argentina"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "La Cote d'Ivoire is the world's leading producer of cocoa.",
      ),
      QuizQuestion(
        question:
            "18. Which of the following towns is noted for the production of gold in Ghana?        (BECE 2010 Q15)",
        options: ["Awaso", "Nsuta", "Prestea", "Akwatia"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "Prestea is a major gold-mining town in Ghana.",
      ),
      QuizQuestion(
        question:
            "19. Which of the following is not used as timber?        (BECE 1990 Q10)",
        options: ["Wawa", "Odum", "Sapele", "Obeche"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Wawa, sapele, and obeche are commonly identified as commercial timber species, while odum is treated differently in this question.",
      ),
      QuizQuestion(
        question:
            "20. Countries in North Africa are noted for the production of        (BECE 2003 Q1)",
        options: ["Iron ore", "Gold", "Crude oil", "Diamond"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Several North African countries, including Libya and Algeria, are major producers of crude oil.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following towns is a manganese-producing centre in Ghana?        (BECE 2023 Q27)",
        options: ["Nkwatia", "Nsuta", "Saltpond", "Mpraeso"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "Nsuta is Ghana's major manganese-mining centre.",
      ),
      QuizQuestion(
        question:
            "22. Which of the following natural resources is being over-exploited in Ghana?        (BECE 2008 Q29)",
        options: ["Mineral", "Water", "Timber", "Sand"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Timber resources are being over-exploited through excessive logging and deforestation.",
      ),
      QuizQuestion(
        question:
            "23. Which of the following resources must be increasingly used for the rapid development of the nation?        (BECE 2020 Q21)",
        options: [
          "Natural resources",
          "Human resources",
          "Local markets",
          "External markets"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Skilled and productive human resources are essential for transforming other resources and accelerating national development.",
      ),
      QuizQuestion(
        question:
            "24. Which of the following is important for the manufacture of cutting tools?        (BECE 1999 Q38)",
        options: ["Tin", "Iron", "Silver", "Diamond"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Diamond is extremely hard and is therefore used in cutting and drilling tools.",
      ),
      QuizQuestion(
        question:
            "25. Nsuta in Ghana is noted for the mining of        (BECE 1991 Q11)",
        options: ["Diamond", "Manganese", "Bauxite", "Salt"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "Nsuta is widely known for manganese mining in Ghana.",
      ),
      QuizQuestion(
        question:
            "26. In order to fully develop our natural resources, we must        (BECE 2020 Q30)",
        options: [
          "Bring in experts from abroad",
          "Go for loans from abroad",
          "Train our human resource",
          "Compel our youth to undertake farming"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Training the country's human resources provides the knowledge and skills required to develop natural resources effectively.",
      ),
      QuizQuestion(
        question:
            "27. Which of the following is the raw material for the production of aluminium?        (BECE 1991 Q35)",
        options: ["Brass", "Steel", "Aluminium", "Bauxite"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Bauxite is the principal raw material from which aluminium is produced.",
      ),
      QuizQuestion(
        question: "28. Alumina is obtained from        (BECE 1990 Q20)",
        options: ["Gold", "Diamond", "Manganese", "Bauxite"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Bauxite is refined to produce alumina, which is then processed into aluminium.",
      ),
      QuizQuestion(
        question:
            "29. The human resource of a country refers to        (BECE 2008 Q15)",
        options: [
          "Members of parliament only",
          "Skills of trade unions",
          "Skills of workers and management",
          "Members of local councils only"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Human resources include the skills, knowledge, abilities, and experience of workers and managers.",
      ),
      QuizQuestion(
        question:
            "30. Which of the following countries in West Africa is a major exporter of groundnut?        (BECE 1990 Q24)",
        options: ["Senegal", "Ghana", "La Cote D'Ivoire", "Liberia"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Senegal is well known in West Africa for the production and export of groundnuts.",
      ),
      QuizQuestion(
        question: "31. The hardest mineral is        (BECE 2006 Q10)",
        options: ["Gold", "Copper", "Diamond", "Tin"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "Diamond is the hardest naturally occurring mineral.",
      ),
      QuizQuestion(
        question: "32. Tin is mined in Nigeria at        (BECE 2000 Q30)",
        options: ["Enugu", "Kaduna", "Jos", "Kano"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "The Jos Plateau in Nigeria is well known for tin mining.",
      ),
      QuizQuestion(
        question:
            "33. Gold in ancient Ghana was mined at        (BECE 2003 Q19)",
        options: ["Wangara", "Timuktu", "Jenne", "Goa"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The Wangara people and area were associated with gold mining and trade in ancient Ghana.",
      ),
      QuizQuestion(
        question:
            "34. Which of the following methods is used in the mining of crude oil?        (BECE 2000 Q31)",
        options: ["Open cast", "Deep shaft", "Drilling", "Dredging"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Crude oil is extracted from underground or beneath the seabed by drilling wells.",
      ),
      QuizQuestion(
        question:
            "35. Which of the following towns is well noted for manganese mining?        (BECE 1997 Q33)",
        options: ["Obuasi", "Nyinahin", "Tarkwa", "Nsuta"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation: "Nsuta is Ghana's best-known manganese-mining town.",
      ),
      QuizQuestion(
        question:
            "36. The Mediterranean lands are well known for the production of        (BECE 1991 Q30)",
        options: ["Minerals", "Textiles", "Citrus", "Metals"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Mediterranean climate supports the cultivation of citrus fruits such as oranges and lemons.",
      ),
      QuizQuestion(
        question:
            "37. Which of the following minerals is not mined in Ghana?        (BECE 2007 Q19)",
        options: ["Diamond", "Gold", "Potassium", "Bauxite"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Diamond, gold, and bauxite are mined in Ghana, but potassium is not a major mineral mined in the country.",
      ),
      QuizQuestion(
        question:
            "38. Which of the following is produced on a large scale in the Middle East?        (BECE 1994 Q17)",
        options: ["Bauxite", "Coal", "Petroleum", "Gold"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Middle East contains some of the world's largest petroleum reserves and produces crude oil on a large scale.",
      ),
      QuizQuestion(
        question:
            "39. One major benefit Ghana derives from legal mining activities is        (BECE 2025 Q36)",
        options: [
          "Generation of revenue for development",
          "Granting of loans for mining activities and employment",
          "Availability of rocks for road construction",
          "Presidential awards received by mining companies"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Legal mining generates revenue through taxes, royalties, and fees that can be used for national development.",
      ),
      QuizQuestion(
        question:
            "40. The following factors affect Ghana's ability to exploit its natural resources effectively except        (BECE 2024 Q14)",
        options: [
          "Low level technology",
          "Limited technical expertise",
          "Farming activities",
          "Inadequate capital resource"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Low technology, limited technical expertise, and inadequate capital hinder resource exploitation, but farming activities are not a direct limiting factor.",
      ),
    ],
  ),

  "JHS 3 - The Family": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. What is the most common form of marriage in Ghana?        (BECE 2024 Q19)",
        options: [
          "Arranged marriage",
          "Common-law marriage",
          "Polygamous marriage",
          "Monogamous marriage"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Monogamous marriage, in which one person is married to only one spouse at a time, is the most common form of marriage in Ghana.",
      ),
    ],
  ),
  "JHS 3 - Population": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. One factor which results in high birth rate in Ghana is        (BECE 2021 Q20)",
        options: [
          "Effective use of contraceptives",
          "Drifting of the youth to urban centres",
          "Ineffective birth control measures",
          "Failure of the youth to acquire skills"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Ineffective birth control measures can result in unplanned pregnancies and contribute to a high birth rate.",
      ),
      QuizQuestion(
        question:
            "2. The most effective measure for reducing the rapid population growth in Ghana is by promoting        (BECE 2017 Q21)",
        options: [
          "Gender equality",
          "Girl-child education",
          "Adolescent counselling",
          "Women empowerment"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Girl-child education helps girls delay marriage and childbirth, make informed reproductive decisions, and understand family planning.",
      ),
      QuizQuestion(
        question:
            "3. Ghana is described as a developing country because she has a high        (BECE 2005 Q24)",
        options: [
          "Per capita income",
          "Population growth rate",
          "Level of industrialization",
          "Level of literacy"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A high population growth rate is a common feature of developing countries and can place pressure on available resources and services.",
      ),
      QuizQuestion(
        question:
            "4. The township of Asuabena has an aged population of 1,000 and a youthful population of 4,000. Which of the following amenities should be given the highest priority?        (BECE 2006 Q23)",
        options: [
          "Post Office",
          "Recreational facilities",
          "Radio station",
          "Markets"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Since the youthful population is much larger, recreational facilities should be prioritized to meet the needs of young people.",
      ),
      QuizQuestion(
        question:
            "5. Encouraging greater participation of girls in education in Ghana will help reduce        (BECE 2015 Q16)",
        options: [
          "Adultery in society",
          "Number of maternal healthcare centres",
          "Population growth rate",
          "Urban-rural drift"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Educated girls are more likely to delay marriage and childbirth and make informed decisions about family size.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following factors encourages rural-urban migration in Ghana?\n\nI. Fewer job opportunities in rural areas\nII. Fertile soils in the rural areas\nIII. High prices of farm produce\nIV. Higher educational institutions in urban centres        (BECE 2005 Q10)",
        options: [
          "I and II only",
          "II and III only",
          "II and IV only",
          "I and IV only"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Fewer job opportunities in rural areas push people away, while higher educational institutions in urban areas attract them to towns and cities.",
      ),
      QuizQuestion(
        question:
            "7. Rapid population growth of any country will result in        (BECE 2025 Q26)",
        options: [
          "Better medical facilities",
          "High family expectation of female adults",
          "Pressure on social facilities in the community",
          "Proper upbringing of many children"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Rapid population growth increases demand for schools, hospitals, housing, water, and other social facilities.",
      ),
      QuizQuestion(
        question:
            "8. The growth rate of Ghana's population can be reduced mainly through        (BECE 2022 Q16)",
        options: [
          "Public education",
          "Abortion",
          "Family planning",
          "Legislation"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Family planning helps couples determine the number and spacing of their children, thereby reducing rapid population growth.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following situations is an effect of rapid population growth in Ghana?        (BECE 2014 Q9)",
        options: [
          "Decrease in food production",
          "High dependency burden",
          "High standard of living",
          "Low productivity"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Rapid population growth often creates a large dependent population that relies on the smaller working population for support.",
      ),
      QuizQuestion(
        question:
            "10. People from various ethnic groups are found in the cities of Ghana because of        (BECE 2004 Q12)",
        options: ["Tourism", "Trade", "Conflict", "Food"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Trade attracts people from different ethnic groups to cities where markets, businesses, and commercial opportunities are concentrated.",
      ),
      QuizQuestion(
        question:
            "11. One negative effect of rural-urban migration is        (BECE 2015 Q17)",
        options: [
          "Breakdown of family ties",
          "Chieftaincy disputes",
          "Ethnic conflicts",
          "High infant mortality"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Rural-urban migration can separate family members for long periods and weaken family relationships and support systems.",
      ),
      QuizQuestion(
        question:
            "12. High birth rate in developing countries can lead to        (BECE 2016 Q34)",
        options: [
          "High income per head",
          "Low income per head",
          "Low dependency ratio",
          "Skilled labour force"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A high birth rate increases the number of dependants and causes available family and national income to be shared among more people.",
      ),
      QuizQuestion(
        question:
            "13. The high dependency problem of some families can be solved by        (BECE 2009 Q38)",
        options: [
          "Practising family planning",
          "Sending children to school",
          "Sharing the responsibilities with relatives",
          "Encouraging parents to feed their children properly"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Family planning helps parents control family size and reduces the number of dependants supported by the working members.",
      ),
      QuizQuestion(
        question:
            "14. Family planning is beneficial to Ghanaians because it        (BECE 2012 Q27)",
        options: [
          "Helps in giving respect and honour to fathers",
          "Increases life expectancy of children",
          "Helps restore the health of mothers",
          "Brings about equitable distribution of income"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Proper spacing of births gives mothers enough time to recover physically and protects their health.",
      ),
      QuizQuestion(
        question:
            "15. Pressure on social facilities in urban areas is mainly created by        (BECE 2014 Q10)",
        options: [
          "Decrease in imported goods",
          "High cost of living",
          "Rural-urban drift",
          "Urban-rural drift"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Rural-urban drift increases the urban population and creates greater demand for housing, schools, hospitals, water, and sanitation.",
      ),
      QuizQuestion(
        question:
            "16. Life in the rural areas can be improved through the setting up of        (BECE 2020 Q29)",
        options: [
          "Insurance companies",
          "Heavy industries",
          "Agro-based industries",
          "Foreign banks"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Agro-based industries process local agricultural products, create jobs, raise incomes, and support development in rural communities.",
      ),
      QuizQuestion(
        question:
            "17. Which of the following factors is a cause of unemployment in Ghana?        (BECE 2017 Q25)",
        options: [
          "Polygamy",
          "Immigration",
          "Rapid population growth",
          "Rapid urbanization"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Rapid population growth increases the number of people seeking employment faster than available jobs can be created.",
      ),
      QuizQuestion(
        question:
            "18. The large percentage of the youth in Ghana's population implies that Ghana has        (BECE 2017 Q8)",
        options: [
          "A free market economy",
          "A lot of future labour force",
          "Adequate supply of consumer goods",
          "Equitable distribution of wealth"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A large youthful population provides many people who can enter the labour force when they reach working age.",
      ),
      QuizQuestion(
        question:
            "19. Which of the following measures cannot improve the quality of life in the rural areas of Ghana?        (BECE 2022 Q10)",
        options: [
          "Unregulated family planning",
          "Greater access to improved formal education",
          "Extending good roads to the rural communities",
          "Establishment of industries in the rural areas"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Unregulated family planning cannot improve rural living conditions, while education, roads, and industries promote development.",
      ),
      QuizQuestion(
        question:
            "20. Rural-urban drift increases demand in the urban centres for        (BECE 2017 Q7)",
        options: [
          "Social facilities",
          "Foreign exchange",
          "Crude oil",
          "Higher wages"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "People moving into urban areas increase demand for social facilities such as housing, schools, hospitals, water, and sanitation.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following is an effect of rapid population growth in Ghana?        (BECE 2020 Q31)",
        options: [
          "High dependency burden",
          "Low productivity",
          "High standard of living",
          "Decreases in food production"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Rapid population growth commonly creates a high dependency burden because many children depend on the working population.",
      ),
      QuizQuestion(
        question:
            "22. What is the most likely effect of a large family size on the family's living conditions?        (BECE 2024 Q22)",
        options: [
          "Environment conditions enhanced",
          "Improved housing conditions",
          "Overcrowding and reduced space",
          "Increased access to resources"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A large family living in limited accommodation is likely to experience overcrowding and reduced personal space.",
      ),
      QuizQuestion(
        question:
            "23. It has been observed that the population of Ghana has been rising rapidly over the years. What is the primary reason for the rapidly growing population?        (BECE 2024 Q37)",
        options: [
          "High birth rate and low death rate",
          "Increased education and family planning",
          "Increased immigration and emigration",
          "Improved healthcare and sanitation"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "When many children are born while fewer people die, the total population increases rapidly.",
      ),
      QuizQuestion(
        question:
            "24. Ghana's population can best be described as youthful because a large portion of its people are between ages        (BECE 2021 Q5)",
        options: ["45–59", "30–44", "15–29", "0–14"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A youthful population has a large proportion of children and young dependants, especially those within the 0–14 age group.",
      ),
    ],
  ),
  "JHS 3 - Culture and National Identity": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Unity among ethnic groups in Ghana can be promoted through        (BECE 2004 Q6)",
        options: [
          "Formal education",
          "Informal education",
          "Inter-marriage",
          "Opinion leaders"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Inter-marriage brings people and families from different ethnic groups together and promotes understanding, cooperation, and unity.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following is a symbol of national unity in Ghana? The        (BECE 2013 Q23)",
        options: ["National Anthem", "Akosombo Dam", "Gye Nyame", "Judiciary"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The National Anthem is a national symbol that expresses Ghana's identity, shared values, and unity.",
      ),
      QuizQuestion(
        question:
            "3. The integrity of the nation can be defended by        (BECE 2013 Q24)",
        options: [
          "Encouraging immigration",
          "Reporting saboteurs",
          "Educating the youth",
          "Cleaning the environment"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Reporting saboteurs helps protect the nation from people whose actions may threaten its peace, security, and development.",
      ),
      QuizQuestion(
        question:
            "4. The integrity of the nation can be defended by        (BECE 2014 Q32)",
        options: [
          "Educating the youth",
          "Encouraging immigration",
          "Cleaning the environment",
          "Reporting saboteurs"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Citizens defend the integrity of the nation by reporting people who engage in activities that threaten national security.",
      ),
      QuizQuestion(
        question:
            "5. The motto in Ghana's Coat of Arms is        (BECE 2014 Q40)",
        options: [
          "Freedom and love",
          "Independence and freedom",
          "Freedom and justice",
          "Unity and integrity"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The official motto displayed on Ghana's Coat of Arms is \"Freedom and Justice.\"",
      ),
      QuizQuestion(
        question:
            "6. The most important national symbol which identifies Ghana as an independent sovereign state is the        (BECE 2017 Q18)",
        options: ["State Stool", "State Sword", "Flag", "Mace"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The national flag represents Ghana's identity, independence, and sovereignty as a nation.",
      ),
      QuizQuestion(
        question:
            "7. To effectively build the nation, every Ghanaian must        (BECE 2019 Q21)",
        options: [
          "Be involved in the production process",
          "Learn to speak at least one foreign language",
          "Join the leading political party",
          "Study the 1992 Constitution"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Participation in productive activities helps create goods, services, employment, and income needed for national development.",
      ),
      QuizQuestion(
        question:
            "8. Which of the following can promote nation building in Ghana?        (BECE 2020 Q23)",
        options: [
          "Democratic living at all places",
          "Defending one's religious beliefs",
          "Allowing minors to vote at general elections",
          "Reducing family size to prevent unemployment"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Democratic living promotes participation, fairness, respect for others, and peaceful decision-making, which support nation building.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following measures cannot provide integration among Ghanaians?        (BECE 2020 Q26)",
        options: [
          "Inter-ethnic marriages",
          "Fair representation of ethnic groups in governance",
          "The study of Ghanaian music and dance in schools",
          "Minimizing rapid population growth"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Minimizing population growth may support development, but it does not directly promote integration among different ethnic groups.",
      ),
      QuizQuestion(
        question:
            "10. Which of the following values promotes unity among Ghanaians?        (BECE 2021 Q14)",
        options: ["Logic", "Tolerance", "Humility", "Hospitality"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Tolerance helps people accept differences in culture, religion, ethnicity, and opinion, thereby promoting unity.",
      ),
      QuizQuestion(
        question:
            "11. National unity in Ghana can be promoted through        (BECE 2021 Q31)",
        options: [
          "Formal education",
          "Freedom of worship",
          "Use of made-in-Ghana goods",
          "Religious tolerance"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Religious tolerance enables people of different faiths to respect one another and live together peacefully.",
      ),
      QuizQuestion(
        question:
            "12. Ghana is made up of people with different cultures. What is the primary benefit if all the people unite? It will        (BECE 2024 Q16)",
        options: [
          "Improve national security",
          "Improve international reputation",
          "Strengthen social cohesion",
          "Increase economic growth"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Unity strengthens social cohesion by creating stronger relationships, cooperation, and a sense of belonging among citizens.",
      ),
      QuizQuestion(
        question:
            "13. One major way you can defend the integrity of Ghana as a citizen is by        (BECE 2025 Q12)",
        options: [
          "Promoting inter-ethnic marriages",
          "Respecting other people's culture",
          "Obeying the laws of the country",
          "Promoting national festivals"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Obeying the laws of Ghana protects peace, order, and the good name and integrity of the nation.",
      ),
      QuizQuestion(
        question:
            "14. Which of the following cultural elements would you say identifies ethnic groups of Ghana the most?        (BECE 2025 Q35)",
        options: ["Dance", "Food", "Language", "Music"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Language is a major cultural element used to distinguish and identify the different ethnic groups in Ghana.",
      ),
    ],
  ),

  "JHS 3 - The 1992 Constitution": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. The head of the judiciary in Ghana is the        (BECE 1998 Q34)",
        options: [
          "President",
          "Attorney-General",
          "Speaker of Parliament",
          "Chief Justice"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Chief Justice is the head of Ghana's judiciary and the highest-ranking judicial officer in the country.",
      ),
      QuizQuestion(
        question:
            "2. A constitution popularly approved by the people ensures        (BECE 2015 Q27)",
        options: [
          "Ethnic balance",
          "Good governance",
          "Rapid development",
          "Reduction in crime"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A constitution accepted by the people provides rules, responsibilities, and limits on power that promote good governance.",
      ),
      QuizQuestion(
        question:
            "3. The principle of separation of powers prevents        (BECE 2004 Q18)",
        options: [
          "Ethnic conflicts",
          "Coalition government",
          "Dictatorial government",
          "Political associations"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Separation of powers prevents one organ of government from controlling all state power and becoming dictatorial.",
      ),
      QuizQuestion(
        question:
            "4. A set of rules that protects the lives of the people and shows how a nation should be governed is known as        (BECE 1998 Q10)",
        options: ["Conventions", "Constitutions", "Rules", "Regulations"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A constitution contains the fundamental rules and principles by which a country is governed and its citizens are protected.",
      ),
      QuizQuestion(
        question:
            "5. The main function of the executive organ of government is        (BECE 2005 Q40)",
        options: [
          "Law-making",
          "Implementation of law",
          "Interpretation of law",
          "Impeachment of the law"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The executive organ is responsible for carrying out and enforcing the laws and policies of the country.",
      ),
      QuizQuestion(
        question: "6. The highest court in Ghana is the        (BECE 1999 Q30)",
        options: [
          "Supreme Court",
          "Magistrate Court",
          "High Court",
          "Tribunal Court"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Supreme Court is the highest and final court of appeal in Ghana.",
      ),
      QuizQuestion(
        question:
            "7. A constitution may be defined as the        (BECE 2012 Q34)",
        options: [
          "Bye-laws of a country",
          "Decrees of a country",
          "Customary laws of a country",
          "Highest law of a country"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The constitution is the supreme or highest law from which all other laws in the country derive their authority.",
      ),
      QuizQuestion(
        question:
            "8. The interpretation of the Constitution of Ghana is a function of the        (BECE 2011 Q21)",
        options: ["Legislature", "Executive", "Judiciary", "Cabinet"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The judiciary interprets the Constitution and other laws when resolving legal disputes.",
      ),
      QuizQuestion(
        question:
            "9. The constitution of a country is endorsed by the people through        (BECE 2004 Q15)",
        options: ["Census", "Acclamation", "A referendum", "Bye-election"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A referendum allows citizens to vote directly to approve or reject a proposed constitution.",
      ),
      QuizQuestion(
        question:
            "10. A general pardon for an offence against the state is known as        (BECE 1992 Q7)",
        options: ["Amnesty", "Freedom", "Permit", "Exeat"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Amnesty is an official pardon granted to a group of people for offences, especially offences against the state.",
      ),
      QuizQuestion(
        question:
            "11. Who is the head of the judiciary in Ghana?        (BECE 1999 Q21)",
        options: [
          "The Speaker of Parliament",
          "The President",
          "The Chief Justice",
          "The Vice President"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Chief Justice heads the judiciary and supervises the administration of justice in Ghana.",
      ),
      QuizQuestion(
        question:
            "12. A constitutional obligation which ensures peace and harmony in Ghana is for the citizens to        (BECE 2005 Q4)",
        options: [
          "Arrest criminals",
          "Pay their taxes",
          "Attend communal labour",
          "Be law-abiding"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Being law-abiding promotes order, peace, respect for others, and harmony in society.",
      ),
      QuizQuestion(
        question:
            "13. Which of the following institutions can make laws to check smuggling and armed robbery in Ghana?        (BECE 2006 Q26)",
        options: [
          "The Police Service",
          "High Court",
          "Parliament",
          "District Assembly"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Parliament is the national institution responsible for making laws to address crimes such as smuggling and armed robbery.",
      ),
      QuizQuestion(
        question:
            "14. A bill passed by Parliament becomes law when the President gives his        (BECE 2005 Q20)",
        options: ["Accord", "Veto", "Advice", "Assent"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A bill passed by Parliament becomes law after the President gives presidential assent.",
      ),
      QuizQuestion(
        question:
            "15. Writing a bill into a legal language is done by the        (BECE 2004 Q13)",
        options: [
          "Attorney-General's Department",
          "Registrar-General Department",
          "Judicial Council",
          "Council of State"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The Attorney-General's Department prepares and drafts proposed laws in the proper legal language.",
      ),
      QuizQuestion(
        question:
            "16. The President of Ghana is sworn into office by the        (BECE 1998 Q35)",
        options: [
          "Attorney-General",
          "Chief Justice",
          "Speaker of Parliament",
          "Chief of Defence Staff"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Chief Justice administers the oath of office to the President of Ghana.",
      ),
      QuizQuestion(
        question:
            "17. A constitution is important for a country because it        (BECE 2005 Q21)",
        options: [
          "Allows criminals to be detained without trial",
          "Serves as the basis for good governance",
          "Is interpreted by the judiciary",
          "Can be defended by the military"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A constitution provides the principles, institutions, rights, and procedures needed for good governance.",
      ),
      QuizQuestion(
        question:
            "18. If Afua Asantewaa is a judge, then she contributes to        (BECE 2006 Q12)",
        options: [
          "Law-making",
          "Interpretation of the constitution",
          "Land administration",
          "Policy formulation"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Judges are members of the judiciary, whose duties include interpreting the Constitution and other laws.",
      ),
      QuizQuestion(
        question:
            "19. Who presides over debates in the Parliament of Ghana? The        (BECE 2007 Q12)",
        options: ["Clerk", "Chief whip", "Majority leader", "Speaker"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Speaker of Parliament chairs parliamentary sittings and presides over debates.",
      ),
      QuizQuestion(
        question: "20. A draft law is also known as        (BECE 2006 Q20)",
        options: ["Bill", "Decree", "Ordinance", "Legislation"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A bill is a proposed or draft law presented for consideration and approval.",
      ),
      QuizQuestion(
        question:
            "21. The highest judicial officer in Ghana is the        (BECE 2007 Q18)",
        options: [
          "Chief Justice",
          "Ghana Bar Association President",
          "Supreme Court Judge",
          "Inspector General of Police"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Chief Justice is the highest judicial officer and head of Ghana's judiciary.",
      ),
      QuizQuestion(
        question:
            "22. Which of the following institutions of government protects the liberty and rights of the people? The        (BECE 2007 Q29)",
        options: ["Legislature", "Police", "Executive", "Judiciary"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The judiciary protects individual rights and liberties by applying the Constitution and laws fairly.",
      ),
      QuizQuestion(
        question:
            "23. A set of rules by which a country is governed is referred to as        (BECE 2008 Q14)",
        options: ["International law", "Bye-laws", "Constitution", "Manifesto"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A constitution is the set of fundamental rules and principles by which a country is governed.",
      ),
      QuizQuestion(
        question:
            "24. The main work of members of Parliament under Ghana's 1992 Constitution is to        (BECE 2008 Q35)",
        options: [
          "Draw a manifesto",
          "Execute laws",
          "Interpret laws",
          "Make laws"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Members of Parliament perform the legislative function of debating and making laws for Ghana.",
      ),
      QuizQuestion(
        question:
            "25. A president who performs judicial functions abuses the principle of        (BECE 2009 Q4)",
        options: [
          "Checks and balances",
          "Separation of powers",
          "Fundamental human rights",
          "Collective responsibility"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Judicial functions belong to the judiciary, so a president performing them violates the separation of powers.",
      ),
      QuizQuestion(
        question:
            "26. The organ of government that initiates policies to be passed into law is the        (BECE 2009 Q36)",
        options: ["Media", "Judiciary", "Parliament", "Executive"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The executive develops and initiates government policies, which may then be presented to Parliament as bills.",
      ),
      QuizQuestion(
        question: "27. One duty of a citizen is        (BECE 2009 Q23)",
        options: [
          "Enjoy free education",
          "Join a religious group",
          "Assist the police in investigations",
          "Support a political party"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Citizens have a duty to cooperate with security agencies by providing information and assisting lawful investigations.",
      ),
      QuizQuestion(
        question:
            "28. The main institution that helps the executive arm of government to implement its policies is the        (BECE 2010 Q19)",
        options: [
          "Civil Service",
          "Judicial Service",
          "Audit Service",
          "Statistical Service"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Civil Service supports ministries and government departments in implementing executive policies and programmes.",
      ),
      QuizQuestion(
        question:
            "29. The Supreme Court of Ghana mainly        (BECE 2010 Q29)",
        options: [
          "Runs courses for judges and magistrates",
          "Remands criminals in prison custody",
          "Interprets the Constitution and law for the country",
          "Makes and implements laws in the country"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Supreme Court has the highest authority in interpreting Ghana's Constitution and laws.",
      ),
      QuizQuestion(
        question:
            "30. The practice of checks and balances prevents        (BECE 2010 Q34)",
        options: ["Dictatorship", "Favouritism", "Ethnicity", "Sectionalism"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Checks and balances limit the powers of each organ of government and help prevent dictatorship.",
      ),
      QuizQuestion(
        question:
            "31. Which of the following officials is not elected in Ghana?        (BECE 2011 Q2)",
        options: [
          "Member of Parliament",
          "President of Ghana",
          "Assembly member",
          "Minister of State"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Ministers of State are appointed by the President, while the other officials listed are elected.",
      ),
      QuizQuestion(
        question:
            "32. Independence of the judiciary implies that judges        (BECE 2012 Q21)",
        options: [
          "Should get everything free",
          "Should not pay taxes",
          "Can do whatever they like",
          "Should be free from political interference"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Judicial independence means judges must make decisions according to the law without political pressure or interference.",
      ),
      QuizQuestion(
        question:
            "33. The executive arm of government comprises the President, the Cabinet and        (BECE 2012 Q25)",
        options: [
          "Civil servants",
          "Lawyers",
          "The Speaker",
          "The Chief Justice"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The executive includes the President, ministers in the Cabinet, and civil servants who help implement government policies.",
      ),
      QuizQuestion(
        question:
            "34. The principle of checks and balances prevents        (BECE 2013 Q20)",
        options: [
          "Constitutionalism",
          "Democracy",
          "Dictatorship",
          "Patriotism"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Checks and balances prevent excessive concentration and abuse of power, thereby reducing the risk of dictatorship.",
      ),
      QuizQuestion(
        question:
            "35. The set of guidelines for governing a nation is provided by the        (BECE 2014 Q4)",
        options: [
          "Constitution",
          "Council of State",
          "Judiciary",
          "Legislature"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The constitution provides the fundamental guidelines and principles used to govern a nation.",
      ),
      QuizQuestion(
        question:
            "36. The head of the judiciary in Ghana is the        (BECE 2015 Q26)",
        options: [
          "Attorney General",
          "Chief Justice",
          "Director of Public Prosecution",
          "Inspector General of Police"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The Chief Justice is the head of Ghana's judiciary and supervises the judicial system.",
      ),
      QuizQuestion(
        question: "37. The Supreme Court of Ghana        (BECE 2016 Q25)",
        options: [
          "Interprets the Constitution and the laws of Ghana",
          "Makes and implements laws",
          "Remands criminals in custody",
          "Runs courses for judges and magistrates"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Supreme Court interprets the Constitution and laws and serves as Ghana's final court of appeal.",
      ),
      QuizQuestion(
        question:
            "38. Which of the following institutions can make laws to check smuggling and armed robbery in Ghana?        (BECE 2016 Q30)",
        options: [
          "District Assembly",
          "The Police Service",
          "Parliament",
          "High Court"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Parliament has the authority to make national laws dealing with offences such as smuggling and armed robbery.",
      ),
      QuizQuestion(
        question:
            "39. The main function of the executive organ of government is        (BECE 2016 Q40)",
        options: [
          "Interpretation of laws",
          "Impeachment of the laws",
          "Implementation of laws",
          "Law-making"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The executive is responsible for implementing and enforcing the laws and policies of the country.",
      ),
      QuizQuestion(
        question:
            "40. Bullying of pupils in schools constitutes        (BECE 2017 Q14)",
        options: [
          "Sex discrimination",
          "Child labour",
          "Sexual harassment",
          "Child abuse"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Bullying causes physical or emotional harm to children and is therefore a form of child abuse.",
      ),
      QuizQuestion(
        question:
            "41. The principle of separation of powers ensures that        (BECE 2018 Q11)",
        options: [
          "Political parties do not work together",
          "The police and military do not work together",
          "The President appoints different ministers",
          "Various organs of government work independently"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Separation of powers assigns different responsibilities to the executive, legislature, and judiciary so they can operate independently.",
      ),
      QuizQuestion(
        question:
            "42. The fundamental laws by which a country is governed is known as        (BECE 2018 Q21)",
        options: [
          "Bye-laws",
          "Legislative instruments",
          "Constitution",
          "Court ruling"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The constitution contains the fundamental laws and principles used to govern a country.",
      ),
      QuizQuestion(
        question:
            "43. The main work of the members of Parliament under the 1992 Constitution is to        (BECE 2018 Q28)",
        options: [
          "Execute laws",
          "Draw manifestos",
          "Interpret laws",
          "Make laws"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The main responsibility of Parliament is to debate, amend, and make laws for the country.",
      ),
      QuizQuestion(
        question:
            "44. People are elected into office of Parliament through a process called        (BECE 2019 Q13)",
        options: [
          "Presidential election",
          "Appointment taking",
          "Referendum",
          "Voting"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Citizens choose their representatives in Parliament by voting during parliamentary elections.",
      ),
      QuizQuestion(
        question:
            "45. The application of checks and balances in democratic governments helps to prevent        (BECE 2019 Q29)",
        options: ["Plebiscite", "Dictatorship", "Voting", "Unemployment"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Checks and balances prevent one person or institution from gaining unlimited power and becoming dictatorial.",
      ),
      QuizQuestion(
        question:
            "46. Which institution is responsible for making the main laws of Ghana?        (BECE 2019 Q30)",
        options: ["District Assembly", "Parliament", "Supreme Court", "Jury"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Parliament is the legislative institution responsible for making the main national laws of Ghana.",
      ),
      QuizQuestion(
        question:
            "47. Which of the following officials is not elected?        (BECE 2020 Q3)",
        options: [
          "Assemblyman",
          "President",
          "Chief Justice",
          "Member of Parliament"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Chief Justice is appointed by the President in consultation with the Council of State and with Parliament's approval.",
      ),
      QuizQuestion(
        question:
            "48. A general pardon for an offence against the state is known as        (BECE 2021 Q29)",
        options: ["Amnesty", "Freedom", "Permit", "Plebiscite"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Amnesty is an official pardon granted for offences, especially political or state-related offences.",
      ),
      QuizQuestion(
        question:
            "49. Which principle is used to check abuse of power in governance?        (BECE 2022 Q6)",
        options: [
          "Executive veto",
          "Parliamentary immunity",
          "Separation of powers",
          "Rule of law"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Separation of powers divides authority among the organs of government and helps prevent the abuse of power.",
      ),
      QuizQuestion(
        question:
            "50. Which of the following best promotes the smooth operation of separation of powers in Ghana? The        (BECE 2023 Q13)",
        options: [
          "Presidency",
          "Chief Justice",
          "Constitution",
          "Speaker of Parliament"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "The Constitution defines the powers and responsibilities of each organ of government and supports their smooth operation.",
      ),
      QuizQuestion(
        question:
            "51. The constitution of a country is important because it        (BECE 2025 Q17)",
        options: [
          "Punishes criminals and politicians",
          "Allows the Speaker to become the Head of State",
          "Serves as basis for the practice of good governance",
          "Can be amended anytime and has fixed term"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The constitution provides the legal framework, principles, and institutions required for the practice of good governance.",
      ),
    ],
  ),

  "JHS 3 - Peace and Security in Our Nation": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following is not a function of the Police Service?        (BECE 2001 Q16)",
        options: [
          "Arresting criminals",
          "Controlling traffic",
          "Maintaining peace",
          "Judging cases in court"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Judging cases in court is a function of the judiciary. The Police Service arrests criminals, controls traffic, and maintains peace and order.",
      ),
      QuizQuestion(
        question:
            "2. The main duty of the Police Service is to        (BECE 1994 Q40)",
        options: [
          "Collect debts for creditors",
          "Maintain law and order",
          "Arrest and judge thieves",
          "Protect national property"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The primary duty of the Police Service is to maintain law and order and protect people and property.",
      ),
      QuizQuestion(
        question:
            "3. Criminal activities in the society can best be minimized if there is effective        (BECE 2025 Q22)",
        options: [
          "Arbitration",
          "Law enforcement",
          "Parental care",
          "Prison service"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Effective law enforcement discourages criminal behaviour by ensuring that laws are obeyed and offenders are arrested and prosecuted.",
      ),
      QuizQuestion(
        question:
            "4. Life and property are protected in the community by the        (BECE 2020 Q14)",
        options: [
          "Chief and his elders",
          "Law and order",
          "School authorities",
          "Family heads"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The maintenance of law and order creates a safe environment in which the lives and property of community members are protected.",
      ),
      QuizQuestion(
        question:
            "5. One way to maintain peace and security in your community is by        (BECE 2024 Q11)",
        options: [
          "Ignoring your neighbours",
          "Joining a gang",
          "Volunteering for community service",
          "Starting a fight"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Volunteering for community service encourages cooperation, responsibility, and unity, which help maintain peace and security.",
      ),
      QuizQuestion(
        question:
            "6. Who are often called Peace Officers?        (BECE 1992 Q35)",
        options: ["Soldiers", "Policemen", "Lawyers", "Doctors"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Policemen are often called peace officers because they maintain law and order and protect lives and property.",
      ),
      QuizQuestion(
        question: "7. Why are laws made? For        (BECE 2022 Q32)",
        options: [
          "Better education",
          "Conformity",
          "Family unity",
          "Instant justice"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Laws are made to ensure conformity by guiding people to behave according to accepted rules and standards in society.",
      ),
      QuizQuestion(
        question:
            "8. The main duty of the police in a community is to        (BECE 1997 Q4)",
        options: [
          "Arrest criminals",
          "Terrorize little children",
          "Direct traffic",
          "Keep law and order"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The main duty of the police is to keep law and order. Arresting criminals and directing traffic are part of this broader responsibility.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following is not a function of the Police Service?        (BECE 2016 Q17)",
        options: [
          "Arresting criminals",
          "Controlling traffic",
          "Judging cases in court",
          "Maintaining peace and order"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Judging cases in court is performed by judges in the judiciary, not by the Police Service.",
      ),
      QuizQuestion(
        question: "10. Laws are mainly made to ensure        (BECE 2011 Q17)",
        options: [
          "Better education",
          "Instant justice",
          "Social conformity",
          "Family unity"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Laws promote social conformity by requiring members of society to follow accepted rules and standards of behaviour.",
      ),
      QuizQuestion(
        question:
            "11. The main duty of the police in a community is to        (BECE 2023 Q1)",
        options: [
          "Arrest criminals",
          "Intimidate people",
          "Direct traffic",
          "Keep law and order"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The main responsibility of the police in a community is to keep law and order and ensure the safety of the people.",
      ),
      QuizQuestion(
        question:
            "12. The maintenance of law and order in traditional societies in Ghana is the responsibility of        (BECE 2016 Q26)",
        options: [
          "Chiefs and their elders",
          "Priests and their elders",
          "Teachers and family heads",
          "Police and soldiers"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "In traditional Ghanaian societies, chiefs and their elders are responsible for maintaining law, order, and peace within their communities.",
      ),
    ],
  ),

  "JHS 3 - Promoting Democracy and Political Stability": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Government of the people, by the people and for the people is referred to as        (BECE 2003 Q16)",
        options: ["Socialism", "Monarchy", "Democracy", "Apartheid"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Democracy is a system of government in which the people participate directly or through elected representatives.",
      ),
      QuizQuestion(
        question:
            "2. The central government supports District Assemblies through        (BECE 2005 Q38)",
        options: [
          "Market tolls",
          "Basic rates",
          "Property rates",
          "The Common Fund"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The District Assemblies Common Fund provides financial support from the central government for development at the district level.",
      ),
      QuizQuestion(
        question:
            "3. Sources of revenue for District Assemblies in Ghana include        (BECE 1999 Q18)",
        options: ["Sales tax", "Purchase tax", "Basic rates", "Income tax"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Basic rates are locally generated revenues collected by District Assemblies from eligible residents.",
      ),
      QuizQuestion(
        question:
            "4. At the district level, an assemblyman is equivalent to a        (BECE 2005 Q15)",
        options: ["Minister", "Judge", "Parliamentarian", "Lawyer"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "An assemblyman represents an electoral area in the District Assembly, just as a parliamentarian represents a constituency at the national level.",
      ),
      QuizQuestion(
        question:
            "5. Laws made by the District Assemblies are called        (BECE 2008 Q40)",
        options: ["Bye-laws", "Decrees", "Ordinance", "Bills"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "District Assemblies make bye-laws to regulate activities and maintain order within their districts.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following institutions is most useful in the provision of social amenities in Ghana?        (BECE 2005 Q39)",
        options: [
          "The Bank of Ghana",
          "Ghana Highway Authority",
          "District Assemblies",
          "Internal Revenue Service"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "District Assemblies provide local social amenities such as schools, markets, clinics, sanitation facilities, and feeder roads.",
      ),
      QuizQuestion(
        question:
            "7. Which of the following is the lowest level of decentralization in Ghana?        (BECE 2007 Q25)",
        options: [
          "District Assemblies",
          "Regional Co-ordinating Council",
          "Area Committee",
          "Unit Committee"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The Unit Committee is the lowest structure in Ghana's decentralized local government system.",
      ),
      QuizQuestion(
        question:
            "8. The District Assemblies perform all the following except to        (BECE 2008 Q27)",
        options: [
          "Build school blocks",
          "Build markets",
          "Maintain feeder roads",
          "Construct trunk roads"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The construction of trunk roads is mainly a responsibility of the central government, while District Assemblies may maintain feeder roads.",
      ),
      QuizQuestion(
        question:
            "9. Government revenue for developmental projects is raised mainly through        (BECE 2004 Q17)",
        options: [
          "Minting of currency",
          "Inflation",
          "Over-invoicing",
          "Taxation"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Taxation is the major means through which the government raises revenue to finance development projects and public services.",
      ),
      QuizQuestion(
        question:
            "10. The chief representative of the central government in the district is the        (BECE 2009 Q17)",
        options: [
          "Parliamentarian of the District",
          "District Co-ordinating Director",
          "Presiding Member of the District Assembly",
          "District Chief Executive"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The District Chief Executive represents the central government and oversees the implementation of government policies in the district.",
      ),
      QuizQuestion(
        question:
            "11. Democracy in our nation could be sustained by        (BECE 2009 Q40)",
        options: [
          "Teaching the people information technology",
          "Operating one-party system of government",
          "Holding general elections every decade",
          "Giving the people political education"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Political education helps citizens understand their rights, responsibilities, and democratic processes, thereby sustaining democracy.",
      ),
      QuizQuestion(
        question:
            "12. The development of communities in your area is the responsibility of the        (BECE 2009 Q21)",
        options: [
          "Member of Parliament",
          "Traditional Council",
          "Unit Committee",
          "District Assembly"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The District Assembly is responsible for planning and implementing development projects within the district.",
      ),
      QuizQuestion(
        question:
            "13. The functions of a presiding member of a District Assembly are likened to those of the        (BECE 2010 Q25)",
        options: [
          "Clerk of Parliament",
          "Chief Justice",
          "Speaker of Parliament",
          "Appeal Court Judge"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Presiding Member chairs District Assembly meetings, just as the Speaker presides over proceedings in Parliament.",
      ),
      QuizQuestion(
        question:
            "14. An important source of locally generated revenue for District Assemblies in Ghana is        (BECE 2011 Q12)",
        options: [
          "The Common Fund",
          "Court fines",
          "Market tolls",
          "Road tolls"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Market tolls are collected locally by District Assemblies and form part of their internally generated funds.",
      ),
      QuizQuestion(
        question:
            "15. One problem hindering the effective functioning of District Assemblies in Ghana is        (BECE 2011 Q36)",
        options: [
          "Rapid population growth",
          "Mobilizing funds for development",
          "Interference by traditional rulers",
          "Maintaining law and order"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "District Assemblies often face difficulties raising enough funds to finance development projects and provide essential services.",
      ),
      QuizQuestion(
        question:
            "16. The primary function of the legislature is to        (BECE 2012 Q39)",
        options: [
          "Administer justice",
          "Make laws",
          "Register citizens",
          "Protect wrongdoers"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The legislature is the organ of government responsible for making, amending, and repealing laws.",
      ),
      QuizQuestion(
        question:
            "17. Government policies are implemented at the district levels by the        (BECE 2014 Q13)",
        options: [
          "Chief Executive",
          "Co-ordinating Director",
          "Presiding Member",
          "Regional Minister"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The District Chief Executive supervises the implementation of central government policies and programmes at the district level.",
      ),
      QuizQuestion(
        question:
            "18. Which of the following factors promotes political stability in a country?        (BECE 2014 Q16)",
        options: [
          "Food security",
          "Free education",
          "Rigid constitution",
          "Rule of law"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The rule of law promotes political stability by ensuring that everyone, including leaders, is subject to the law.",
      ),
      QuizQuestion(
        question:
            "19. Which of the following features is not an efficient way of sustaining political stability in a country?        (BECE 2014 Q17)",
        options: [
          "Avoidance of dictatorship",
          "Free and fair elections",
          "One-party system",
          "Press freedom"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A one-party system limits political choice and participation and may encourage dictatorship rather than political stability.",
      ),
      QuizQuestion(
        question:
            "20. Which of the following situations may not create instability in the Ghanaian society?        (BECE 2014 Q34)",
        options: [
          "Denial of justice",
          "Gender equality",
          "Party rivalry",
          "Workers' demonstration"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Gender equality promotes fairness, inclusion, and social harmony and therefore does not create instability.",
      ),
      QuizQuestion(
        question:
            "21. The two main levels of government in Ghana are        (BECE 2017 Q3)",
        options: [
          "District and municipal",
          "National and district",
          "National and regional",
          "Regional and districts"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Government in Ghana operates mainly at the national level and the district or local level.",
      ),
      QuizQuestion(
        question:
            "22. Political conflicts in Ghana can best be minimized through        (BECE 2017 Q36)",
        options: [
          "Tolerating opposing views",
          "Adopting a common language",
          "Banning private newspapers",
          "Voting for a very strong President"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Tolerance of opposing views promotes peaceful dialogue, mutual respect, and the settlement of political disagreements without violence.",
      ),
      QuizQuestion(
        question:
            "23. Which of the following factors promote political stability in a country?        (BECE 2017 Q37)",
        options: [
          "Food security",
          "Rule of law",
          "Free education",
          "Rigid constitution"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The rule of law promotes political stability by ensuring fairness, accountability, and equal application of the law.",
      ),
      QuizQuestion(
        question:
            "24. Which of the following mostly influences the type of facility provided by District Assemblies?        (BECE 2020 Q13)",
        options: [
          "The Central Government",
          "The needs of the people",
          "The general needs of the nation",
          "Desire to generate revenue"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "District Assemblies provide facilities according to the specific needs and priorities of people within their local communities.",
      ),
      QuizQuestion(
        question:
            "25. Ghana can improve upon her political stability by        (BECE 2020 Q18)",
        options: [
          "Organizing public education on drug abuse",
          "Educating the youth against sex trade",
          "Organizing free and credible election",
          "Promoting the use of locally manufactured goods"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Free and credible elections promote public confidence, peaceful transfer of power, and political stability.",
      ),
      QuizQuestion(
        question:
            "26. The major problem of District Assemblies in Ghana is their inability to        (BECE 2020 Q40)",
        options: [
          "Generate more funds for development",
          "Educate their people on government policies",
          "Absorb all the available skilled labour in their community",
          "Reduce their expenditure in relation to revenue"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Many District Assemblies struggle to generate sufficient revenue to undertake development projects and provide public services.",
      ),
      QuizQuestion(
        question:
            "27. Political conflicts in Ghana can best be minimized through        (BECE 2021 Q12)",
        options: [
          "Tolerating opposing views",
          "Adopting a common language",
          "Banning private newspaper",
          "Voting for a strong President"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Tolerating opposing views encourages peaceful political participation and reduces hostility between individuals and political groups.",
      ),
      QuizQuestion(
        question:
            "28. Which of the following factors cannot promote political stability in Ghana?        (BECE 2021 Q36)",
        options: [
          "Dictatorship in administration",
          "Freedom of speech",
          "Multiparty democracy",
          "Open government"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Dictatorship suppresses participation and rights and can create fear, conflict, and political instability.",
      ),
      QuizQuestion(
        question:
            "29. District Assemblies of Ghana construct the following projects except        (BECE 2021 Q39)",
        options: ["School buildings", "Feeder roads", "Trunk roads", "Clinics"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "District Assemblies may construct schools, clinics, and feeder roads, but trunk roads are mainly handled by the central government.",
      ),
      QuizQuestion(
        question:
            "30. The local government system is meant to        (BECE 2023 Q11)",
        options: [
          "Provide resources for all",
          "Elect leaders",
          "Support the traditional justice system",
          "Bring government closer to the people"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Local government brings decision-making and development administration closer to people in their communities.",
      ),
      QuizQuestion(
        question:
            "31. The best approach to help resolve the difference between political parties during general election is        (BECE 2024 Q12)",
        options: [
          "Allowing the formation of more political parties",
          "Encouraging traditional leaders to play partisan politics",
          "Strengthening the judiciary",
          "Encouraging youth participation in national politics"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "A strong and independent judiciary can resolve electoral disputes fairly according to the Constitution and electoral laws.",
      ),
      QuizQuestion(
        question:
            "32. Every Ghanaian citizen is expected to demonstrate commitment to democratic values. Which of the following actions best demonstrates the above expectations?        (BECE 2024 Q27)",
        options: [
          "Voting in national elections",
          "Volunteering for community service",
          "Participating in peaceful protests",
          "Criticizing the government on social media"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Voting in national elections is a direct exercise of democratic participation and allows citizens to choose their leaders.",
      ),
      QuizQuestion(
        question:
            "33. The main function of the executive organ of government is        (BECE 2025 Q10)",
        options: [
          "Approval of budget",
          "Implementation of policies",
          "Interpretation of the law",
          "Law making and arbitration"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The executive organ is responsible for implementing government policies, programmes, and laws.",
      ),
      QuizQuestion(
        question:
            "34. Which of the following would you advise against by way of reducing dependence on foreign financial support?        (BECE 2025 Q30)",
        options: [
          "Developing the human resources",
          "Patronizing Ghanaian products",
          "Adding value to our primary products",
          "Borrowing from the international markets"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Borrowing from international markets increases dependence on foreign financial support rather than reducing it.",
      ),
      QuizQuestion(
        question:
            "35. Apart from law making, Ghana legislature also        (BECE 2025 Q34)",
        options: [
          "Ensures accountability of the Executive to the people",
          "Formulates and implements policies for development",
          "Protects powerful entities in the state",
          "Assents bills to become laws"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Parliament holds the Executive accountable through debates, questions, investigations, approval processes, and oversight of public expenditure.",
      ),
      QuizQuestion(
        question:
            "36. To ensure the survival of private enterprises, the government of Ghana must support        (BECE 2025 Q37)",
        options: [
          "Advertising products and providing tax exemptions",
          "Controlling and providing vital services and strict control",
          "Payment of their tax obligation and other commitment",
          "Providing efficient management"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Government supports private enterprises by providing essential services and an effective regulatory system that enables businesses to operate successfully.",
      ),
      QuizQuestion(
        question:
            "37. The primary aim of elections in Ghana is to        (BECE 2025 Q39)",
        options: [
          "Allow the powerful to govern without restraint",
          "Protect the rights of children and mothers only",
          "Provide tax reliefs to groups of people with common interests",
          "Change governments peacefully and orderly"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Elections allow citizens to choose leaders and make it possible for governments to change peacefully and in an orderly manner.",
      ),
    ],
  ),

  "JHS 3 - Financial and Investment Issues": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Pension benefits of Ghanaian workers are managed by the        (BECE 2014 Q25)",
        options: [
          "Bank of Ghana",
          "Ghana Commercial Bank",
          "Social Security and National Insurance Trust",
          "State Insurance Company"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The Social Security and National Insurance Trust (SSNIT) manages pension contributions and pays pension benefits to qualified Ghanaian workers.",
      ),
      QuizQuestion(
        question:
            "2. Workers in Ghana are required by law to contribute towards their future upkeep through        (BECE 2012 Q33)",
        options: [
          "Company shares",
          "Treasury bills",
          "Government bonds",
          "Social security schemes"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Workers contribute to social security schemes so that they can receive financial support after retirement or when they can no longer work.",
      ),
      QuizQuestion(
        question:
            "3. What role does Social Security and National Insurance Trust (SSNIT) play in the life of pensioners?        (BECE 2025 Q19)",
        options: [
          "Payment of social benefits and all health needs",
          "Provision of a source of income after retirement",
          "Promotion of independence in old age",
          "Promotion of reliance on government welfare programme"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "SSNIT provides pensioners with a regular source of income after retirement to support their upkeep.",
      ),
      QuizQuestion(
        question:
            "4. People join social security pension schemes in order to        (BECE 2024 Q39)",
        options: [
          "Ensure retirement income",
          "Maintain standard of living in the cities",
          "Supplement income for relations in the village",
          "Raise money to satisfy political ambitions"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "People join social security pension schemes to receive income after retirement and maintain their basic needs.",
      ),
    ],
  ),

  "JHS 3 - Science and Technology": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following scenarios explains the main purpose of the internet?        (BECE 2024 Q29)",
        options: [
          "Connecting electronic devices and making lives more convenient",
          "Developing new medicine kits",
          "Scientists going to space and other planets",
          "Robots building several vehicles at a time"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The internet connects electronic devices and allows people to communicate, share information, and access online services more conveniently.",
      ),
      QuizQuestion(
        question:
            "2. A farmer is preparing to plant crops next week. Why is it important for the farmer to check the weather forecast? To        (BECE 2024 Q21)",
        options: [
          "Prepare for a storm",
          "Determine the ideal time for planting",
          "Predict the best time for irrigation",
          "Plan a harvest festival"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Checking the weather forecast helps the farmer determine whether conditions such as rainfall and temperature will be suitable for planting.",
      ),
    ],
  ),

  "JHS 3 - The Republics": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following military rulers of Ghana implemented the Economic Recovery Programme (ERP)?        (BECE 2024 Q1)",
        options: [
          "Frederick K. Akuffo",
          "Ignatius K. Acheampong",
          "Joseph A. Ankrah",
          "Jerry J. Rawlings"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The Economic Recovery Programme was implemented under the military government of Flt. Lt. Jerry John Rawlings to improve Ghana's economy.",
      ),
      QuizQuestion(
        question:
            "2. Two political events occurred in Ghana in 1960. One of the events was a presidential election. Which of the following political developments happened after the presidential election in 1960?        (BECE 2024 Q30)",
        options: [
          "Ghana became a colony again",
          "Ghana became a republic",
          "Ghana was divided into a northern and southern territory",
          "Ghana remained a monarch"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "After the 1960 presidential election, Ghana became a republic on 1st July 1960, with Dr. Kwame Nkrumah as the first President.",
      ),
      QuizQuestion(
        question:
            "3. In which Republic was Dr. Hilla Limann President of Ghana?        (BECE 2002 Q16)",
        options: ["First", "Second", "Third", "Fourth"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Dr. Hilla Limann served as President of Ghana during the Third Republic.",
      ),
      QuizQuestion(
        question:
            "4. The Committee for the Defence of the Revolution (C.D.R.) in Ghana was introduced by        (BECE 1992 Q37)",
        options: [
          "Dr. Kwame Nkrumah",
          "Dr. K. A. Busia",
          "Mr. Victor Owusu",
          "Flt. Lt. J. J. Rawlings"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The Committees for the Defence of the Revolution were introduced under the leadership of Flt. Lt. Jerry John Rawlings.",
      ),
      QuizQuestion(
        question:
            "5. Ghana was ushered into the Fourth Republican government in        (BECE 2025 Q27)",
        options: ["1981", "1966", "1979", "1992"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The 1992 Constitution established Ghana's Fourth Republic, although the first government under it assumed office in January 1993.",
      ),
      QuizQuestion(
        question:
            "6. Ghana became a republic within the Commonwealth of Nations in        (BECE 1999 Q9)",
        options: ["1948", "1954", "1957", "1960"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Ghana became a republic within the Commonwealth of Nations on 1st July 1960.",
      ),
      QuizQuestion(
        question:
            "7. Who was the President of the Third Republic of Ghana?        (BECE 1992 Q20)",
        options: [
          "Dr. K. Abrefa Busia",
          "Dr. L. B. Danquah",
          "Mr. Victor Owusu",
          "Dr. Hilla Limann"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Dr. Hilla Limann was the President of Ghana during the Third Republic from 1979 to 1981.",
      ),
      QuizQuestion(
        question:
            "8. Which one of the following took place after the 27th April, 1960 referendum?        (BECE 2024 Q17)",
        options: [
          "Ghana became a democratic state",
          "Kwame Nkrumah was inaugurated as Prime Minister",
          "Queen Elizabeth II was inaugurated as Prime Minister",
          "The first political party was formed"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The referendum approved a republican Constitution, helping Ghana become a republic governed under a democratic constitutional system.",
      ),
    ],
  ),

  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "Religious & Moral Education JHS1 s1 ss1 - God, His Creation and Attributes": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. When the last tree dies, the last man dies. This statement refers to the need to\n(BECE 2022 Q4)",
          options: [
            "Encourage farming",
            "Irrigate forest vegetation",
            "Manage the environment well",
            "Stop making furniture out of wood"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Proper environmental management ensures the survival of humans and other living things."
      ),
      QuizQuestion(
          question: "2. According to the Ewe myth on creation, God could not create more human beings because\n(BECE 2021 Q17)",
          options: [
            "Clay was scarce",
            "He was very tired",
            "Man was disobedient",
            "People were too many on the earth"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "According to the Ewe creation myth, God stopped creating humans because He became very tired."
      ),
      QuizQuestion(
          question: "3. Drought can easily be caused when there is\n(BECE 2022 Q3)",
          options: [
            "Surface mining",
            "Sand weaning",
            "Deforestation",
            "Quarrying"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Deforestation reduces rainfall and contributes to drought."
      ),
      QuizQuestion(
          question: "4. Traditional worshippers believe that the world was created by\n(BECE 2023 Q28)",
          options: [
            "Lesser gods",
            "Angels",
            "Ancestors",
            "Supreme Being"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Traditional African Religion teaches that the Supreme Being created the world."
      ),
      QuizQuestion(
          question: "5. Which of the following items is not a basic need for man's survival?\n(BECE 2023 Q34)",
          options: [
            "Medicine",
            "Food",
            "Air",
            "Water"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Food, water and air are basic survival needs, while medicine is important but not a basic need."
      ),
      QuizQuestion(
          question: "6. Washing dirty clothes in streams causes\n(BECE 2022 Q5)",
          options: [
            "Water pollution",
            "Water shortage",
            "Survival of fishes",
            "Death of water gods"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Detergents and dirt pollute water bodies."
      ),
      QuizQuestion(
          question: "7. As a result of God's ability to do all things, He is referred to\n(BECE 2022 Q15)",
          options: [
            "Omnipresent",
            "Omnipotent",
            "Omniscient",
            "Omnivorous"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Omnipotent means all-powerful."
      ),
      QuizQuestion(
          question: "8. In Islam, the Omnipotence of Allah describes His\n(BECE 2023 Q37)",
          options: [
            "Justice",
            "Power",
            "Patience",
            "Wisdom"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Omnipotence refers to Allah's unlimited power."
      ),
      QuizQuestion(
          question: "9. Referring to God as the Alpha and Omega means that God is\n(BECE 2020 Q6)",
          options: [
            "Present everywhere",
            "The beginning and the end",
            "The provider of all needs",
            "The ultimate reality"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Alpha and Omega signifies that God is eternal—the beginning and the end."
      ),
      QuizQuestion(
          question: "10. Which of these creation of God provides security and protection for man?\n(BECE 2021 Q14)",
          options: [
            "Goat",
            "Dog",
            "Cock",
            "Parrot"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Dogs are commonly used for security and protection."
      ),
      QuizQuestion(
          question: "11. According to Islamic creation story, Allah created Adam followed by\n(BECE 2022 Q1)",
          options: [
            "Khadija",
            "Aisha",
            "Hawa",
            "Mariam"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Allah created Hawa (Eve) after Adam."
      ),
      QuizQuestion(
          question: "12. Human is considered as the most important creation in the Bible because he was\n(BECE 2022 Q2)",
          options: [
            "Created in the image of God",
            "The last to be created",
            "God's assistant in creation",
            "The first to be created"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Humans were uniquely created in God's image."
      ),
      QuizQuestion(
          question: "13. According to Christian teaching, God created man and woman on the\n(BECE 2013 Q1)",
          options: [
            "Third day",
            "Fifth day",
            "Sixth day",
            "Fourth day"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Human beings were created on the sixth day."
      ),
      QuizQuestion(
          question: "14. According to the Bible, lonely places where there is silence promote\n(BECE 2020 Q31)",
          options: [
            "General layout of things",
            "Development of better relationship between them and God",
            "Beginning of eternity",
            "Hidden things that can be seen by everyone"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Quiet places encourage prayer and fellowship with God."
      ),
      QuizQuestion(
          question: "15. The revelation of the whole Quran took\n(BECE 2000 Q7)",
          options: [
            "22 years",
            "24 years",
            "23 years",
            "20 years"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The Holy Quran was revealed over a period of 23 years."
      ),
      QuizQuestion(
          question: "16. Christians, Muslims and Traditional worshippers believe that the world was created by\n(BECE 1999 Q2)",
          options: [
            "An angel",
            "A holy spirit",
            "God",
            "A godly person"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "All three religions believe that God is the Creator."
      ),
      QuizQuestion(
          question: "17. The snake as an animal was created by God to\n(BECE 2004 Q10)",
          options: [
            "Give man meat",
            "Kill man",
            "Lead man to sin",
            "Tempt man"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "In the Bible, the serpent tempted Eve to disobey God."
      ),
      QuizQuestion(
          question: "18. God commanded the earth to produce plants on the\n(BECE 2005 Q1)",
          options: [
            "Second day",
            "Third day",
            "Fourth day",
            "Fifth day"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Plants were created on the third day."
      ),
      QuizQuestion(
          question: "19. One way of helping to protect the environment from degradation is to\n(BECE 2000 Q2)",
          options: [
            "Encourage small-scale mining",
            "Cover the earth's surface with sand",
            "Plant more trees",
            "Burn refuse openly"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Tree planting helps conserve the environment."
      ),
      QuizQuestion(
          question: "20. Which of the following attributes of God is not manifested in the creation story?\n(BECE 2004 Q1)",
          options: [
            "All knowing",
            "Ever forgiving",
            "All powerful",
            "Ever present"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "God's forgiveness is not demonstrated in the creation account."
      ),
      QuizQuestion(
          question: "21. God revealed Himself in the Garden of Eden to\n(BECE 2007 Q1)",
          options: [
            "Moses",
            "Abraham",
            "Eve",
            "Adam"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "According to Genesis, God spoke directly with Adam in the Garden of Eden."
      ),

      QuizQuestion(
          question: "22. God is Omnipotent. This means that God is\n(BECE 2001 Q1)",
          options: [
            "All powerful",
            "Knows everything",
            "Is everywhere",
            "Is very gracious"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Omnipotent means having unlimited power."
      ),

      QuizQuestion(
          question: "23. God blessed and made the Sabbath holy because it was the day\n(BECE 2001 Q9)",
          options: [
            "Israel defeated their enemies",
            "For settling all disputes",
            "The Israelites left Egypt",
            "God rested from creation"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "God rested on the seventh day after completing creation."
      ),

      QuizQuestion(
          question: "24. On the fifth day of creation, God commanded\n(BECE 2002 Q1)",
          options: [
            "The sky to appear to separate the water",
            "Water and air to be filled with many kinds of living creatures",
            "Water to come together in one place so that the land would appear",
            "The water under the firmament to separate from that above it"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "On the fifth day, God created birds and sea creatures."
      ),

      QuizQuestion(
          question: "25. The Omniscience of God portrays Him as\n(BECE 2006 Q2)",
          options: [
            "All powerful",
            "Ever forgiving",
            "Very gracious",
            "All knowing"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Omniscience means possessing complete knowledge."
      ),

      QuizQuestion(
          question: "26. Which of the following behaviours pollutes our environment?\n(BECE 2006 Q23)",
          options: [
            "Cutting down trees",
            "Killing birds and animals",
            "Throwing rubbish around",
            "Clearing the land for building"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Improper disposal of waste pollutes the environment."
      ),

      QuizQuestion(
          question: "27. Which of the following attributes of God shows that He has the whole world under His view?\n(BECE 2017 Q8)",
          options: [
            "Omnipotent",
            "Creator",
            "Omnipresent",
            "Omniscient"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "God's omniscience means He knows everything happening everywhere."
      ),

      QuizQuestion(
          question: "28. According to the Holy Bible, what was created on the second day?\n(BECE 2006 Q1)",
          options: [
            "Heavens or sky",
            "Smaller animals",
            "Plants and trees",
            "Greater light"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "God created the sky (firmament) on the second day."
      ),

      QuizQuestion(
          question: "29. According to the Bible, the first thing God created was\n(BECE 2018 Q3)",
          options: [
            "Sickness",
            "Light",
            "Plants",
            "Darkness"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "God said, 'Let there be light,' on the first day."
      ),

      QuizQuestion(
          question: "30. Cain's violent act against Abel shows\n(BECE 2018 Q2)",
          options: [
            "Greed",
            "Jealousy",
            "Selfishness",
            "Misunderstanding"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Cain killed Abel because he was jealous of God's acceptance of Abel's offering."
      ),

      QuizQuestion(
          question: "31. God's omniscience means that He\n(BECE 2018 Q1)",
          options: [
            "Loves His children",
            "Protects His creatures",
            "Knows whatever happens",
            "Forgives us our sins"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "God's omniscience means He knows everything."
      ),

      QuizQuestion(
          question: "32. By creating the world and everything in an orderly way, God wanted to show that He is\n(BECE 2009 Q3)",
          options: [
            "In a hurried way",
            "Orderly",
            "In a difficult way",
            "Orderly"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The creation account shows God's orderliness and purpose."
      ),

      QuizQuestion(
          question: "33. In the creation story, God ordered Adam to\n(BECE 2005 Q2)",
          options: [
            "Subdue and fill the earth",
            "Take good care of Eve",
            "Worship Him regularly",
            "Eat all the fruit in the Garden"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "God commanded Adam to be fruitful, multiply, and have dominion over the earth."
      ),

      QuizQuestion(
          question: "34. The Akans call God Ananse Kokroko because He is\n(BECE 2011 Q1)",
          options: [
            "Everlasting",
            "Dependable",
            "Omnipotent",
            "Forgiving"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Ananse Kokroko emphasizes God's unmatched power."
      ),

      QuizQuestion(
          question: "35. The Omnipresence of God means He is\n(BECE 2009 Q1)",
          options: [
            "All powerful",
            "All knowing",
            "Ever present",
            "Always alive"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Omnipresence means God is present everywhere."
      ),

      QuizQuestion(
          question: "36. Which of the following practices destroys our vegetation?\n(BECE 2013 Q2)",
          options: [
            "Cutting down trees randomly",
            "Killing animals for food",
            "Constructing drains",
            "Killing disease vectors"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Indiscriminate tree felling destroys vegetation."
      ),

      QuizQuestion(
          question: "37. By creating the environment, God wants us to\n(BECE 2009 Q8)",
          options: [
            "Make a mighty ocean",
            "Control all things",
            "Find Himself and others",
            "Name all creation"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Adam was given the responsibility of naming God's creation."
      ),

      QuizQuestion(
          question: "38. The belief that God sees the secret deeds of all and punishes those who do evil implies that He is\n(BECE 2011 Q1)",
          options: [
            "Sovereign",
            "Omnipresent",
            "Omniscient",
            "Omnipotent"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Only an all-knowing God can see every hidden deed."
      ),

      QuizQuestion(
          question: "39. Adam described Eve as woman because she\n(BECE 2011 Q3)",
          options: [
            "Was made out of his rib",
            "Was the mother of all living",
            "Allowed the serpent to deceive her",
            "Was made a helper fit for him"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Adam called her Woman because she was taken out of man."
      ),

      QuizQuestion(
          question: "40. One of the ways of protecting God's creation is by\n(BECE 2011 Q15)",
          options: [
            "Constructing buildings and roads",
            "Polluting air and water bodies",
            "Planting more trees and other plants",
            "Killing snakes and other dangerous animals"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Tree planting helps preserve God's creation."
      ),
      QuizQuestion(
          question: "41. In Christianity, the sky, seas, animals and other living things came into being through\n(BECE 2012 Q1)",
          options: [
            "God's command",
            "Natural orders",
            "The lesser gods",
            "Earth gods"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Christian teaching states that creation came into existence through God's command."
      ),

      QuizQuestion(
          question: "42. According to Akan belief, the order of creation is\n(BECE 2012 Q4)",
          options: [
            "Earth, rivers, plants and sky",
            "Rivers, plants, earth and sky",
            "Sky, earth, rivers and plants",
            "Plants, rivers, sky and earth"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "According to Akan belief, God created the sky, earth, rivers and plants in that order."
      ),

      QuizQuestion(
          question: "43. One way by which humankind pollutes the air in the city is by\n(BECE 2012 Q10)",
          options: [
            "The use of insecticides",
            "The use of detergents",
            "Smoke from motor vehicles",
            "Smoke from the burning of wood"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Exhaust fumes from motor vehicles contribute significantly to air pollution in cities."
      ),

      QuizQuestion(
          question: "44. The power of God is seen in His\n(BECE 2017 Q4)",
          options: [
            "Omniscience",
            "Omnipotence",
            "Omnipresence",
            "Sovereignty"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Omnipotence refers to God's unlimited power."
      ),

      QuizQuestion(
          question: "45. According to the Bible, God commanded the earth to produce plants on the\n(BECE 2018 Q1)",
          options: [
            "First day",
            "Third day",
            "Fifth day",
            "Sixth day"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "God commanded the earth to produce plants on the third day of creation."
      ),

      QuizQuestion(
          question: "46. Which of the following options is not a reason for which we must care for God's creation?\n(BECE 2018 Q1)",
          options: [
            "It makes us righteous people",
            "To show respect for God's gift of nature",
            "To preserve it for future generations",
            "We are stewards of God's creation"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "Caring for creation shows stewardship and respect and preserves nature, but it does not automatically make a person righteous."
      ),

      QuizQuestion(
          question: "47. Traditional worshippers believe that the world was created by\n(BECE 2017 Q21)",
          options: [
            "An angel",
            "A holy spirit",
            "God",
            "An ancestor"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Traditional worshippers believe that the Supreme Being, or God, created the world."
      ),

      QuizQuestion(
          question: "48. Which of the following attributes of God shows that He rules the world?\n(BECE 2019 Q1)",
          options: [
            "All-powerful",
            "Creator",
            "Omnipresence",
            "Omniscient"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "God's unlimited power enables Him to rule over the whole world."
      ),

      QuizQuestion(
          question: "49. Plants were created by God mainly to\n(BECE 2019 Q2)",
          options: [
            "Provide oxygen to man",
            "Allow fresh air into rooms",
            "Provide decoration to homes",
            "Serve as means of transportation"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Plants release oxygen, which humans and animals need for respiration."
      ),

      QuizQuestion(
          question: "50. Muslims describe Allah as Al-Rahman because He is\n(BECE 2019 Q3)",
          options: [
            "All-knowing",
            "Just",
            "Merciful",
            "The restorer"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Al-Rahman means the Most Merciful or the Most Compassionate."
      ),

      QuizQuestion(
          question: "51. The attribute Alpha and Omega reveals that God is\n(BECE 2019 Q4)",
          options: [
            "Everywhere at all times",
            "Gracious and merciful",
            "Holy and immortal",
            "The beginning and the end"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Alpha and Omega means that God is the beginning and the end."
      ),

      QuizQuestion(
          question: "52. Abraham built an altar for the Lord at the Oak of Moreh because\n(BECE 2019 Q5)",
          options: [
            "God asked him to do so",
            "God had appeared to him there",
            "He wanted to worship God there",
            "It was a Canaanite worship centre"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Abraham built an altar at the Oak of Moreh because God appeared to him there."
      ),

      QuizQuestion(
          question: "53. The Omniscience of God portrays Him as\n(BECE 2012 Q1)",
          options: [
            "All-powerful",
            "All-knowing",
            "Ever-present",
            "Ever-living"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Omniscience means having complete and unlimited knowledge."
      ),

      QuizQuestion(
          question: "54. The attributes of God refer to His\n(BECE 2013 Q6)",
          options: [
            "Names and titles",
            "Words and actions",
            "Relationship with creation",
            "Relationship with people"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "The attributes of God are the names and titles that describe His nature and qualities."
      ),

      QuizQuestion(
          question: "55. According to Christian teachings, God created man on the\n(BECE 2011 Q4)",
          options: [
            "First day",
            "Second day",
            "Fifth day",
            "Sixth day"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "According to the Bible, human beings were created on the sixth day."
      ),

      QuizQuestion(
          question: "56. God created the two great lights in the heavens in order to\n(BECE 2014 Q1)",
          options: [
            "Show His mercy",
            "Separate night from day",
            "Give life to the earth",
            "Provide heat to the earth"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The sun and moon were created to govern and distinguish day from night."
      ),

      QuizQuestion(
          question: "57. God created water bodies to provide humankind with\n(BECE 2014 Q3)",
          options: [
            "Air",
            "Water",
            "Plants",
            "Salt"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Water bodies provide water for human use and survival."
      ),

      QuizQuestion(
          question: "58. In the Islamic creation story, the creation of man is found in the\n(BECE 2013 Q10)",
          options: [
            "Hadith",
            "Hijrah",
            "Holy Quran",
            "Tawrah"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The Islamic account of the creation of humankind is recorded in the Holy Quran."
      ),

      QuizQuestion(
          question: "59. God created plants to provide\n(BECE 2013 Q21)",
          options: [
            "Air and plants to man",
            "Medicine and beauty",
            "Shelter and clothing",
            "Water and beauty to the environment"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Plants provide medicinal materials and add beauty to the environment."
      ),

      QuizQuestion(
          question: "60. Which of the following is provided by plants for humans?\n(BECE 2013 Q24)",
          options: [
            "Food",
            "Fuel",
            "Medicine",
            "Salt"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Plants provide food for humans, while salt is not obtained from plants."
      ),

      QuizQuestion(
          question: "61. According to the Bible, God created woman to\n(BECE 2015 Q1)",
          options: [
            "Control the family",
            "Feed all mankind",
            "Be a faithful worshipper",
            "Keep man company"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "God created woman as a suitable companion and helper for man."
      ),

      QuizQuestion(
          question: "62. One of the reasons for which God made the sea is to\n(BECE 2015 Q4)",
          options: [
            "Provide food",
            "Support transportation",
            "Provide water for domestic use",
            "Serve as a home for aquatic animals"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "The sea serves as a natural habitat for fish and other aquatic creatures."
      ),

      QuizQuestion(
          question: "63. Creation according to Islamic tradition means\n(BECE 2015 Q3)",
          options: [
            "Command",
            "Instruction",
            "Prediction",
            "Prophecy"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "Islamic tradition teaches that Allah brings creation into existence through His command."
      ),

      QuizQuestion(
          question: "64. Which of the following is a cause of bad environmental conditions?\n(BECE 2015 Q11)",
          options: [
            "Afforestation",
            "Deforestation",
            "Soil erosion",
            "Global warming"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Deforestation destroys vegetation and contributes to poor environmental conditions."
      ),

      QuizQuestion(
          question: "65. One of the reasons why the sea is salty is to\n(BECE 2015 Q13)",
          options: [
            "Prevent it from drying up",
            "Make it beautiful",
            "Preserve it from getting spoiled",
            "Enable heavy ships to float on it"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "The salt content of seawater helps limit spoilage and the growth of certain harmful organisms."
      ),

      QuizQuestion(
          question: "66. The attribute Al-Khaliq means the\n(BECE 2017 Q2)",
          options: [
            "Great",
            "Sovereign",
            "Creator",
            "Merciful"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Al-Khaliq is an Arabic name of Allah meaning the Creator."
      ),
    ],
  ),
  "Behaviours Considered as Good Manners": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Which of these is considered a good manner in Ghana?",
          options: [
            "Interrupting elders when they speak",
            "Greeting elders before speaking to them",
            "Refusing to eat offered food",
            "Speaking loudly in public places"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Greeting elders first is a sign of deep respect in Ghanaian culture."),
      QuizQuestion(
          question: "2. 'Decency' in behaviour means:",
          options: [
            "Dressing to attract attention",
            "Acting appropriately and respectfully in all situations",
            "Speaking as loudly as possible",
            "Ignoring cultural values"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Decency involves proper, respectful conduct appropriate to context."),
      QuizQuestion(
          question:
              "3. Which religious teaching emphasises treating others as you want to be treated?",
          options: [
            "The Golden Rule",
            "The Apostles' Creed",
            "The Five Pillars",
            "The Ten Commandments"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "The Golden Rule is found across major religions and promotes mutual respect."),
      QuizQuestion(
          question: "4. 'Chastity' in moral teaching refers to:",
          options: [
            "Fasting for long periods",
            "Abstaining from sexual immorality and maintaining purity",
            "Giving money to the poor",
            "Attending religious services"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Chastity involves sexual morality and purity as taught in many religions."),
      QuizQuestion(
          question:
              "5. Which body language shows disrespect to an elder in Ghanaian culture?",
          options: [
            "Standing up when they enter",
            "Responding to a greeting",
            "Looking away or refusing eye contact when being corrected",
            "Greeting them with both hands"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Avoiding eye contact during communication is often culturally disrespectful."),
      QuizQuestion(
          question: "6. The importance of good manners in society includes:",
          options: [
            "Creating conflict and misunderstanding",
            "Promoting peaceful coexistence and social harmony",
            "Making people feel superior",
            "Restricting freedom of expression"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Good manners create an environment of mutual respect and peaceful living."),
      QuizQuestion(
          question: "7. Which of these is an example of decency in dressing?",
          options: [
            "Wearing very revealing clothes to a funeral",
            "Dressing appropriately for each occasion",
            "Wearing only expensive branded clothing",
            "Copying every fashion trend"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Decent dressing means choosing attire appropriate to the occasion and setting."),
      QuizQuestion(
          question:
              "8. According to religious teaching, why should believers practice good manners?",
          options: [
            "To show off to others",
            "Because religious texts and leaders emphasise moral conduct",
            "To be popular in school",
            "To avoid punishment from society"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Religious scriptures and leaders teach that moral behaviour pleases God and benefits society."),
      QuizQuestion(
          question: "9. Peer pressure can NEGATIVELY affect good manners by:",
          options: [
            "Encouraging regular prayer",
            "Pushing individuals toward bad behaviour to fit in",
            "Promoting academic excellence",
            "Teaching respect for elders"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Negative peer pressure can lead individuals to abandon moral values to gain acceptance."),
      QuizQuestion(
          question:
              "10. Which practical skill helps a person RESIST pressure to behave badly?",
          options: [
            "Following every trend",
            "Saying 'No' confidently and walking away",
            "Keeping silent always",
            "Arguing back aggressively"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "Confidently refusing and removing yourself from harmful situations is a key defensive skill."),
    ],
  ),

  // ─── JHS 2 / JHS 3: ENGLISH ────────────────────────────────────────────────
  "Mapping Skills (Concept of Maps)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following shows the relationship between distance on paper and actual distance on the ground?",
        options: ["Longitude", "Key", "Scale", "Plan"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A scale shows the relationship between a distance measured on a map and the corresponding actual distance on the ground.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following is not an imaginary line drawn on maps?",
        options: ["Axis", "Equator", "A latitude", "Longitude"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The Equator, latitudes and longitudes are imaginary lines shown on maps, but the Earth's axis is an imaginary line through the Earth rather than a line drawn on maps.",
      ),
      QuizQuestion(
        question:
            "3. When the scale of a map is expressed in the form of a ratio, it is known as:",
        options: [
          "Statement scale",
          "Linear scale",
          "Open divided scale",
          "Representative fraction"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A scale written as a ratio, such as 1:50,000, is called a representative fraction.",
      ),
      QuizQuestion(
        question:
            "4. When the needle of a compass is at rest, it points to the:",
        options: ["Centre", "South", "East", "North"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The magnetic needle of a compass settles in a north-south direction, with its marked end pointing north.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following is a cardinal point of the compass?",
        options: ["North-East", "South-West", "East", "South-East"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The four cardinal points are North, South, East and West.",
      ),
      QuizQuestion(
        question:
            "6. The ratio between measurement on a map and the actual corresponding distance on the ground is:",
        options: ["A longitude", "A scale", "A latitude", "An isotherm"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A map scale expresses the relationship between map distance and actual ground distance.",
      ),
      QuizQuestion(
        question:
            "7. The three main ways of expressing scales are linear, representative fraction and:",
        options: ["Kilometres", "Longitude", "Latitude", "Statement"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The three main forms of map scale are statement scale, linear scale and representative fraction.",
      ),
      QuizQuestion(
        question:
            "8. Which of the following imaginary lines on a map helps to determine time?",
        options: [
          "The Arctic Circle",
          "The Antarctic Circle",
          "The Equator",
          "The Greenwich Meridian"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "The Greenwich Meridian is the starting point for calculating world time and time zones.",
      ),
      QuizQuestion(
        question:
            "9. The colour used for showing rivers and lakes on topographical maps is:",
        options: ["Red", "Blue", "Brown", "Green"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Blue is conventionally used to represent water features such as rivers, lakes and seas on maps.",
      ),
      QuizQuestion(
        question:
            "10. When the scale of a map is expressed as 1:50,000, it is known as:",
        options: [
          "Statement scale",
          "Representative fraction scale",
          "Linear scale",
          "Vertical scale"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A numerical ratio such as 1:50,000 is a representative fraction scale.",
      ),
      QuizQuestion(
        question: "11. On maps, the sea is normally shown with the colour:",
        options: ["Green", "Yellow", "White", "Blue"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The sea and other water bodies are normally represented with the colour blue on maps.",
      ),
      QuizQuestion(
        question:
            "12. The location of an object measured in degrees is known as:",
        options: ["Cardinal point", "Bearing", "Landmark", "Survey beacon"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A bearing gives the direction of one place from another in degrees, measured clockwise from north.",
      ),
      QuizQuestion(
        question: "13. 1 cm to 1 km expressed as a representative fraction is:",
        options: ["1:100", "1:1,000", "1:10,000", "1:100,000"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "One kilometre equals 100,000 centimetres, so 1 cm to 1 km is written as 1:100,000.",
      ),
      QuizQuestion(
        question:
            "14. If the scale of a map is 1:10,000 and the distance on the map is 20 cm, then the actual distance on the ground is:",
        options: ["20 km", "0.2 km", "2 km", "20,000 km"],
        correctIndex: 2,
        difficulty: "Hard",
        explanation:
            "At a scale of 1:10,000, 20 cm represents 200,000 cm, which is equal to 2 kilometres.",
      ),
      QuizQuestion(
        question: "15. A scale of a map expressed as a ratio is known as:",
        options: [
          "Linear scale",
          "Simple fraction",
          "Representative fraction",
          "Statement scale"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A representative fraction expresses a map scale as a ratio, such as 1:10,000.",
      ),
      QuizQuestion(
        question:
            "16. The ratio between distance measured on a map and the actual distance on the ground is a:",
        options: ["Scale", "Sketch", "Statement", "Layout"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A scale compares the distance on a map with the actual corresponding distance on the ground.",
      ),
      QuizQuestion(
        question: "17. Landmarks are important features used in finding:",
        options: ["Cardinal points", "Compass points", "Direction", "Layout"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Landmarks are easily recognized features that help people identify places and find directions.",
      ),
      QuizQuestion(
        question: "18. The four cardinal points are:",
        options: [
          "East, South-West, North, West",
          "North, South, North-East, South-West",
          "North, South, East, West",
          "West, South-East, North-West, South"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The four main cardinal points are North, South, East and West.",
      ),
      QuizQuestion(
        question:
            "19. The ratio between distance measured on a map and the actual distance on the ground is:",
        options: ["A sketch", "A statement", "A layout", "A scale"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A map scale represents the relationship between map distance and actual ground distance.",
      ),
      QuizQuestion(
        question:
            "20. Which of the following is used to represent landmarks on maps?",
        options: [
          "Conventional signs",
          "Histogram",
          "Mathematical symbols",
          "Plain sketches"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Conventional signs are standard symbols used to represent landmarks and other features on maps.",
      ),
      QuizQuestion(
        question: "21. Conventional signs enable map users to identify:",
        options: ["Planets", "Rock profiles", "Cardinal points", "Landmarks"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Conventional signs help map users identify landmarks such as schools, roads, hospitals and rivers.",
      ),
      QuizQuestion(
        question: "22. The four cardinal points are:",
        options: [
          "N, E, SW, NE",
          "N, S, NE, SW",
          "N, E, W, S",
          "NW, SE, NE, SW"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The abbreviations for the four cardinal points are N, S, E and W.",
      ),
      QuizQuestion(
        question:
            "23. A representation of the Earth's surface not drawn to scale is known as a:",
        options: ["Map", "Plan", "Sketch", "Globe"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A sketch is a simple drawing of an area that is not necessarily drawn according to an exact scale.",
      ),
      QuizQuestion(
        question: "24. Which of the following is a sketch? A town drawn:",
        options: [
          "With arrangement of houses",
          "Without the arrangement of houses",
          "With reference to actual size on the ground",
          "Without reference to actual size on the ground"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "A sketch shows the main features of an area without maintaining their exact sizes or distances on the ground.",
      ),
      QuizQuestion(
        question:
            "25. Which of the following is not a feature of a sketched map?",
        options: ["Title", "Key", "Scale", "Landmark"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A sketch map is not drawn to an exact scale, although it may have a title, key and landmarks.",
      ),
      QuizQuestion(
        question:
            "26. The statement scale 1 cm to 5 km can be converted to a representative fraction to read:",
        options: ["1:50", "1:5,000", "1:50,000", "1:500,000"],
        correctIndex: 3,
        difficulty: "Hard",
        explanation:
            "Five kilometres equals 500,000 centimetres, so 1 cm to 5 km is written as 1:500,000.",
      ),
      QuizQuestion(
        question:
            "27. Which of the following is associated with a scale of a map?",
        options: ["Linear", "Balanced", "Tilted", "Compass"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A linear scale is one of the main ways of expressing the scale of a map.",
      ),
      QuizQuestion(
        question: "28. A scale presented in a line form is known as:",
        options: [
          "Map scale",
          "Statement scale",
          "Representative scale",
          "Linear scale"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A linear scale uses a divided line or bar to show the relationship between map distance and ground distance.",
      ),
      QuizQuestion(
        question: "29. Contours on a map indicate what phenomenon?",
        options: [
          "Elevation changes",
          "Temperature changes",
          "Pressure changes",
          "Changes in rainfall"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Contour lines join places of equal height and therefore show changes in elevation and the shape of the land.",
      ),
      QuizQuestion(
        question: "30. Why is it useful to provide a legend on a map?",
        options: [
          "Display the title",
          "Show the compass direction",
          "Explain the symbols",
          "Indicate the scale"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A map legend or key explains the meanings of the symbols and colours used on the map.",
      ),
    ],
  ),

  "USING APPROPRIATE REGISTER (INFORMAL VS. FORMAL)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. When writing a letter to the Metropolitan Director of Education, which register is required?",
          options: [
            "Slang",
            "Informal register",
            "Formal register",
            "Colloquial register"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Official correspondence requires formal language structure."),
      QuizQuestion(
          question:
              "2. Which of the following sentences uses a formal register?",
          options: [
            "I wanna request some help.",
            "I am writing to request your assistance.",
            "Can you help me out real quick?",
            "Please hit me back soon."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "'I am writing to request your assistance.' uses proper formal structure."),
    ],
  ),

  "REPORTED SPEECH": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Convert to reported speech: 'I am visiting Kumasi today.'",
          options: [
            "He said that he was visiting Kumasi that day.",
            "He said that I am visiting Kumasi today.",
            "He told me he is visiting Kumasi today.",
            "He said that he went to Kumasi today."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "'am' changes to 'was', 'today' changes to 'that day'."),
      QuizQuestion(
          question: "2. In reported speech, 'these' is transformed into:",
          options: ["Them", "Those", "This", "Their"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Demonstrative 'these' shifts to 'those' in reported speech."),
    ],
  ),

  "QUESTION TAGS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Provide the correct question tag: 'Ama went to the market, ______?'",
          options: ["did she?", "didn't she?", "wasn't she?", "does she?"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "A positive sentence in past simple takes a negative past tag: 'didn't she?'."),
      QuizQuestion(
          question: "2. Complete: 'We have not finished the exam, ______?'",
          options: ["haven't we?", "have we?", "did we?", "had we?"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "A negative sentence takes a positive tag: 'have we?'."),
    ],
  ),

  "MASTERING REGISTER AND OPEN QUESTIONS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Which of the following is an open-ended question?",
          options: [
            "Do you live in Accra?",
            "Is it raining outside?",
            "What are your views on environmental protection?",
            "Are you in JHS 3?"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Open-ended questions require detailed expression of thoughts, not simple yes/no answers."),
      QuizQuestion(
          question:
              "2. Open-ended questions are highly useful in conversation because they:",
          options: [
            "Restrict the response length",
            "Provoke short one-word answers",
            "Encourage sharing of details and elaboration",
            "End the conversation quickly"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "They invite elaboration and keep the conversation going."),
    ],
  ),

  "THE ART OF ARGUMENT AND DEBATING": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. In a formal debate, the speaker who supports the motion is called the:",
          options: [
            "Opponent",
            "Proposer / Affirmative",
            "Moderator",
            "Timekeeper"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The proposer supports (affirms) the motion under discussion."),
      QuizQuestion(
          question:
              "2. Which of these is a key element of a convincing argument in a debate?",
          options: [
            "Shouting loudly at the opponent",
            "Using sound evidence and logical explanations",
            "Using personal insults",
            "Speaking as fast as possible"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Strong debates rely on factual evidence and logic."),
    ],
  ),

  "CONDITIONAL SENTENCES (TYPE 3)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Which of the following shows the correct structure of a Type 3 conditional?",
          options: [
            "If + present, will + verb",
            "If + past perfect, would have + past participle",
            "If + past simple, would + verb",
            "If + future, will + verb"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Type 3 conditionals express unreal past actions: If + had + V3, would have + V3."),
      QuizQuestion(
          question:
              "2. Complete: 'If I had studied harder, I ______ the test.'",
          options: ["will pass", "would pass", "would have passed", "passed"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Type 3 conditional requires 'would have passed' in the main clause."),
    ],
  ),

  "DEFINING AND NON-DEFINING RELATIVE CLAUSES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Which sentence contains a non-defining relative clause (needs commas)?",
          options: [
            "The boy who won the race is my friend.",
            "My father, who is a doctor, works in Kumasi.",
            "The book that I read was interesting.",
            "This is the town where I was born."
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "Non-defining relative clauses provide extra, non-essential details and are placed between commas."),
      QuizQuestion(
          question:
              "2. In defining relative clauses, which pronoun is commonly used for things?",
          options: ["Who", "Whom", "Which / That", "Whose"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "'Which' or 'That' is used to define objects or animals."),
    ],
  ),

  "ADVERBIAL PHRASES AND THEIR FUNCTIONS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Identify the adverbial phrase of time in: 'We will meet after the English lesson.'",
          options: [
            "We will",
            "meet",
            "after the English lesson",
            "English lesson"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "'after the English lesson' answers 'when', indicating time."),
      QuizQuestion(
          question:
              "2. In 'She sang with great joy,' key function of 'with great joy' is to show:",
          options: ["Time", "Place", "Manner", "Frequency"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "It answers 'how' she sang, indicating manner."),
    ],
  ),

  // ─── JHS 2 / JHS 3: SCIENCE ────────────────────────────────────────────────
  "Types of mixtures and their characteristics": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. A mixture in which the components are uniform throughout is called:",
          options: ["Suspension", "Heterogeneous", "Homogeneous", "Colloid"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Homogeneous mixtures have a uniform composition throughout (e.g. sugar in water)."),
      QuizQuestion(
          question: "2. Which of the following is a heterogeneous mixture?",
          options: [
            "Salt dissolved in water",
            "Orange juice with pulp",
            "Air",
            "Brass"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The pulp does not dissolve and remains distinct, forming a heterogeneous mixture."),
    ],
  ),

  "SEPARATING MIXTURES (PHYSICAL PROCESSES)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. Which method is most appropriate for separating sand from water?",
          options: ["Evaporation", "Filtration", "Distillation", "Sublimation"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Filtration uses a porous barrier to separate insoluble solids from liquids."),
      QuizQuestion(
          question:
              "2. Distillation is used to separate mixtures based on differences in:",
          options: [
            "Solubility",
            "Boiling points",
            "Particle sizes",
            "Density"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Distillation relies on differences in boiling points to vaporize and condense liquids."),
    ],
  ),

  "ATOMIC STRUCTURE AND SUB-ATOMIC PARTICLES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Which sub-atomic particle has a negative charge?",
          options: ["Proton", "Neutron", "Electron", "Nucleus"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Electrons carry a unit negative charge and orbit the nucleus."),
      QuizQuestion(
          question:
              "2. Protons and neutrons are found in which part of the atom?",
          options: [
            "Electron cloud",
            "Nucleus",
            "Valence shell",
            "Outer orbit"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The nucleus at the center of the atom contains protons and neutrons (nucleons)."),
    ],
  ),

  "THE PERIODIC TABLE AND ELECTRON CONFIGURATION": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. What is the atomic number of Sodium (Na)?",
          options: ["10", "11", "12", "20"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Sodium has atomic number 11 on the periodic table."),
      QuizQuestion(
          question:
              "2. The electron configuration of an atom with 8 electrons (Oxygen) is:",
          options: ["2, 8", "2, 6", "2, 4, 2", "8"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The first shell holds up to 2 electrons, and the second holds the remaining 6 (2, 6)."),
    ],
  ),

  // ─── JHS 2 / JHS 3: MATH ───────────────────────────────────────────────────
  "FROM BILLIONS TO STANDARD FORM": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Express 450,000 in standard form.",
          options: ["4.5 × 10^5", "45 × 10^4", "4.5 × 10^-5", "0.45 × 10^6"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "450,000 = 4.5 × 10^5 as the decimal moves 5 places left."),
      QuizQuestion(
          question: "2. Convert 3.2 × 10^-3 to ordinary notation.",
          options: ["32,000", "0.032", "0.0032", "0.00032"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "10^-3 shifts the decimal 3 places to the left: 0.0032."),
    ],
  ),

  "The Complete Guide to Number Operations": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Solve: -15 + (-7) - (-12)",
          options: ["-34", "-10", "-3", "10"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "-15 - 7 + 12 = -22 + 12 = -10."),
      QuizQuestion(
          question: "2. Evaluate: 24 ÷ (6 - 2) × 3 using BODMAS.",
          options: ["2", "18", "3", "12"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Bracket first: 6-2=4. Division: 24÷4=6. Multiplication: 6×3=18."),
    ],
  ),
};
