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

  "VOWELS AND DIPHTHONGS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. How many vowel sounds does the English language have?",
          options: ["5", "20", "26", "44"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "English has approximately 20 vowel sounds, though there are only 5 vowel letters."),
      QuizQuestion(
          question: "2. A diphthong is a vowel sound that:",
          options: [
            "Uses two consonants",
            "Glides from one vowel sound to another within one syllable",
            "Is silent",
            "Is always stressed"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "A diphthong is a combination of two vowel sounds in a single syllable."),
      QuizQuestion(
          question: "3. The word 'sheep' contains which type of vowel sound?",
          options: ["Short vowel", "Long vowel", "Diphthong", "Silent vowel"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "'Sheep' contains the long /iː/ vowel sound."),
      QuizQuestion(
          question: "4. Which word contains a diphthong?",
          options: ["Sit", "Cat", "Coin", "Bed"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "'Coin' contains the diphthong /ɔɪ/, a gliding vowel sound."),
      QuizQuestion(
          question: "5. The word 'bit' has which type of vowel sound?",
          options: ["Long /iː/", "Short /ɪ/", "Diphthong /aɪ/", "No vowel"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "'Bit' contains the short /ɪ/ sound."),
      QuizQuestion(
          question:
              "6. Which pair of words shows the difference between a long and short vowel?",
          options: ["Bit / bat", "Ship / sheep", "Cat / car", "Run / rain"],
          correctIndex: 1,
          difficulty: "Hard",
          explanation: "'Ship' has short /ɪ/ while 'sheep' has long /iː/."),
      QuizQuestion(
          question: "7. The word 'now' contains which type of sound?",
          options: [
            "Short vowel",
            "Long vowel",
            "Closing diphthong /aʊ/",
            "Centring diphthong"
          ],
          correctIndex: 2,
          difficulty: "Hard",
          explanation: "'Now' contains the closing diphthong /aʊ/."),
      QuizQuestion(
          question: "8. A 'centring diphthong' moves toward which sound?",
          options: ["/iː/", "/uː/", "/ə/ (schwa)", "/æ/"],
          correctIndex: 2,
          difficulty: "Hard",
          explanation: "Centring diphthongs glide toward the schwa /ə/ sound."),
      QuizQuestion(
          question: "9. In the word 'hate,' the vowel sound is:",
          options: ["Short /æ/", "Long /eɪ/", "Short /e/", "Silent"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "'Hate' contains the long /eɪ/ diphthong sound (long 'a')."),
      QuizQuestion(
          question: "10. Which word has the same vowel sound as 'moon'?",
          options: ["Book", "Flood", "Blue", "Blood"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "'Blue' and 'moon' both contain the long /uː/ sound."),
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
  "JHS 1 - Number and Numeration Systems": QuizModel(
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
  "JHS 1 - Number Operations": QuizModel(
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
  "JHS 1 - Fractions, Decimals and Percentages": QuizModel(
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
  "JHS1 - Number: Ratios and Proportion": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Kofi and Ama shared an amount of money in the ratio 3 : 2 respectively. If Kofi had ₵60,000.00, how much was shared?          (BECE 2001 Q20)",
          options: [
            "₵36,000.00",
            "₵40,000.00",
            "₵90,000.00",
            "₵100,000.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Kofi's 3 parts equal ₵60,000.00, so one part is ₵20,000.00. The total is 5 × ₵20,000.00 = ₵100,000.00."
      ),

      QuizQuestion(
          question: "2. Kwame, Atsu and Kojo shared a profit of ₵50,000.00 in the ratio 1 : 4 : 3 respectively. How much did Atsu get?          (BECE 1994 Q14)",
          options: [
            "₵62,500.00",
            "₵125,000.00",
            "₵187,500.00",
            "₵25,000.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The total number of parts is 1 + 4 + 3 = 8. Atsu's share is 4/8 × ₵50,000.00 = ₵25,000.00."
      ),

      QuizQuestion(
          question: "3. If 50 oranges cost ₵2,500.00, how many oranges can be bought for ₵15,000.00?          (BECE 1997 Q37)",
          options: [
            "3",
            "30",
            "60",
            "300"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "₵15,000.00 is 6 times ₵2,500.00, so the number of oranges is 6 × 50 = 300."
      ),

      QuizQuestion(
          question: "4. If 21 : 2x = 7 : 10, find the value of x.          (BECE 1990 Q9)",
          options: [
            "3",
            "2¼",
            "15",
            "30"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "21/(2x) = 7/10. Cross-multiplying gives 210 = 14x, so x = 15."
      ),

      QuizQuestion(
          question: "5. A trader sold 90 oranges at 3 for ₵50.00. How much did she get from selling all the oranges?          (BECE 1998 Q12)",
          options: [
            "₵1,500.00",
            "₵4,500.00",
            "₵6,000.00",
            "₵15,000.00"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "90 oranges make 90 ÷ 3 = 30 groups. The total amount is 30 × ₵50.00 = ₵1,500.00."
      ),

      QuizQuestion(
          question: "6. A woman bought 210 oranges for ₵650.00. She sold all of them at 3 for ₵20.00. How much profit did she make?          (BECE 1996 Q28)",
          options: [
            "₵350.00",
            "₵450.00",
            "₵750.00",
            "₵650.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "210 oranges make 70 groups of 3. Her sales were 70 × ₵20.00 = ₵1,400.00. Profit = ₵1,400.00 - ₵650.00 = ₵750.00."
      ),

      QuizQuestion(
          question: "7. Kojo, Ebo and Ama shared ₵14,000.00 among themselves. Kojo had twice as much as Ebo and Ebo also had twice as much as Ama. How much did Ebo get?          (BECE 1996 Q7)",
          options: [
            "₵8,000.00",
            "₵6,000.00",
            "₵4,000.00",
            "₵3,000.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Let Ama's share be 1 part. Ebo has 2 parts and Kojo has 4 parts, giving 7 parts altogether. Ebo's share is 2/7 × ₵14,000.00 = ₵4,000.00."
      ),

      QuizQuestion(
          question: "8. The ratio of boys to girls in a school is 9 : 11. If there are 400 pupils in the school, how many boys are there?          (BECE 1996 Q29)",
          options: [
            "80",
            "120",
            "180",
            "220"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The total number of parts is 9 + 11 = 20. The number of boys is 9/20 × 400 = 180."
      ),

      QuizQuestion(
          question: "9. Adwoa and Ama shared an amount of ₵6,000.00 in the ratio 3 : 2. Find Adwoa's share.          (BECE 1997 Q32)",
          options: [
            "₵2,000.00",
            "₵2,400.00",
            "₵3,000.00",
            "₵3,600.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The total number of parts is 3 + 2 = 5. Adwoa's share is 3/5 × ₵6,000.00 = ₵3,600.00."
      ),

      QuizQuestion(
          question: "10. Adjoa and Ama share ₵600.00 between them in the ratio 3 : 2. Find Adjoa's share.          (BECE 1991 Q21)",
          options: [
            "₵200.00",
            "₵240.00",
            "₵300.00",
            "₵360.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The total number of parts is 3 + 2 = 5. Adjoa's share is 3/5 × ₵600.00 = ₵360.00."
      ),
      QuizQuestion(
          question: "11. An amount of money is shared between Kofi and Ama in the ratio 3 : 5. If Ama received ₵4,650.00, what is Kofi's share?          (BECE 1992 Q10)",
          options: [
            "₵930.00",
            "₵1,550.00",
            "₵1,743.75",
            "₵2,790.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Ama's 5 parts equal ₵4,650.00, so one part is ₵930.00. Kofi's share is 3 × ₵930.00 = ₵2,790.00."
      ),

      QuizQuestion(
          question: "12. The sum of the ages of a man and his wife is 81 years. The ratio of their ages is 5 : 4. Find the age of the younger person.          (BECE 1999 Q15)",
          options: [
            "30 years",
            "36 years",
            "45 years",
            "51 years"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The total number of parts is 5 + 4 = 9. The younger person's age is 4/9 × 81 = 36 years."
      ),

      QuizQuestion(
          question: "13. A man has three children whose ages are 9 years, 12 years and 24 years. Find the ratio of their ages.          (BECE 1993 Q9)",
          options: [
            "1 : 2 : 3",
            "1 : 2 : 4",
            "2 : 3 : 6",
            "3 : 4 : 8"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The HCF of 9, 12 and 24 is 3. Dividing each age by 3 gives 3 : 4 : 8."
      ),

      QuizQuestion(
          question: "14. The heights of two boys are in the ratio 4 : 5. The shorter boy is 80 cm. What is the height of the taller boy?          (BECE 1995 Q31)",
          options: [
            "100 cm",
            "150 cm",
            "164 cm",
            "180 cm"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The shorter boy's 4 parts equal 80 cm, so one part is 20 cm. The taller boy's height is 5 × 20 cm = 100 cm."
      ),

      QuizQuestion(
          question: "15. If 1 : x is equivalent to 6¼ : 25, find x.          (BECE 1992 Q35)",
          options: [
            "4",
            "6.25",
            "24",
            "100"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Since 6¼ = 6.25, 1/x = 6.25/25 = 1/4. Therefore, x = 4."
      ),

      QuizQuestion(
          question: "16. Express the ratio of 64 cm to 48 cm in simplest form.          (BECE 1991 Q29)",
          options: [
            "3 : 4",
            "4 : 3",
            "16 : 12",
            "12 : 16"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Divide both terms of 64 : 48 by their HCF, 16. This gives 4 : 3."
      ),

      QuizQuestion(
          question: "17. The ratio 9 : x is equivalent to 36 : 20. What is the value of x?          (BECE 2000 Q19)",
          options: [
            "4",
            "5",
            "6",
            "8"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "9/x = 36/20. Cross-multiplying gives 180 = 36x, so x = 5."
      ),

      QuizQuestion(
          question: "18. Three people share an amount of ₵910,800.00 in the ratio 2 : 3 : 4. What will be the highest share?          (BECE 2006 Q13)",
          options: [
            "₵202,400.00",
            "₵303,600.00",
            "₵404,800.00",
            "₵455,400.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The total number of parts is 2 + 3 + 4 = 9. The highest share is 4/9 × ₵910,800.00 = ₵404,800.00."
      ),

      QuizQuestion(
          question: "19. The ratio of mangoes to oranges in a basket is 3 : 2. If there are 36 mangoes, how many oranges are in the basket?          (BECE 2011 Q5)",
          options: [
            "90",
            "60",
            "24",
            "12"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The 3 parts representing mangoes equal 36, so one part is 12. The number of oranges is 2 × 12 = 24."
      ),

      QuizQuestion(
          question: "20. Given that 1 : 3 = x : 21, find the value of x.          (BECE 2009 Q27)",
          options: [
            "4",
            "5",
            "7",
            "63"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "1/3 = x/21. Cross-multiplying gives 3x = 21, so x = 7."
      ),
      QuizQuestion(
          question: "21. A typist charges ₵2,000.00 for the first 5 sheets typed and ₵600.00 for any additional sheet. How much will Barbara pay, if she presents 20 sheets for typing?          (BECE 2002A Q15)",
          options: [
            "₵8,000.00",
            "₵11,000.00",
            "₵12,000.00",
            "₵19,000.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The first 5 sheets cost ₵2,000.00. The remaining 15 sheets cost 15 × ₵600.00 = ₵9,000.00. Total cost = ₵11,000.00."
      ),

      QuizQuestion(
          question: "22. Kwame and Ama shared an amount of money in the ratio 5 : 4 respectively. If Kwame had GH₵9.00, how much did they share?          (BECE 2011 Q28)",
          options: [
            "GH₵16.20",
            "GH₵36.00",
            "GH₵45.00",
            "GH₵81.00"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Kwame's 5 parts equal GH₵9.00, so one part is GH₵1.80. The total amount is 9 × GH₵1.80 = GH₵16.20."
      ),

      QuizQuestion(
          question: "23. If 6 : 8 = r : 48, find the value of r.          (BECE 2019 Q19)",
          options: [
            "36",
            "34",
            "14",
            "12"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "6/8 = r/48. Cross-multiplying gives 8r = 288, so r = 36."
      ),

      QuizQuestion(
          question: "24. A man divided his 360 cattle among his three sons in the ratio 7 : 6 : 5. How many cattle did the one who had the smallest share receive?          (BECE 2002B Q30)",
          options: [
            "100",
            "120",
            "140",
            "160"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The total number of parts is 7 + 6 + 5 = 18. The smallest share is 5/18 × 360 = 100 cattle."
      ),

      QuizQuestion(
          question: "25. Yakubu, Seidu and Amina shared an amount of money in the ratio 3 : 4 : 5. Find how much was shared, if Amina received ₵40,000.00.          (BECE 2002A Q17)",
          options: [
            "₵72,000.00",
            "₵80,000.00",
            "₵96,000.00",
            "₵120,000.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Amina's 5 parts equal ₵40,000.00, so one part is ₵8,000.00. The total amount is 12 × ₵8,000.00 = ₵96,000.00."
      ),

      QuizQuestion(
          question: "26. There are 15 females in a debating club. If the ratio of females to males is 3 : 2, how many members are in the club?          (BECE 2020 Q31)",
          options: [
            "6",
            "10",
            "22",
            "25"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The 3 parts representing females equal 15, so one part is 5. The total number of parts is 5, giving 5 × 5 = 25 members."
      ),

      QuizQuestion(
          question: "27. The number of boys in a school is 120. If the ratio of boys to girls is 5 : 7, find the total number of students in the school.          (BECE 2006 Q4)",
          options: [
            "240",
            "288",
            "600",
            "840"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The 5 parts representing boys equal 120, so one part is 24. The total number of students is 12 × 24 = 288."
      ),

      QuizQuestion(
          question: "28. Kojo can buy 15 shirts at GH₵4.00 each. If the price is increased to GH₵5.00, how many shirts can he buy?          (BECE 2014 Q15)",
          options: [
            "12",
            "15",
            "19",
            "20"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Kojo has 15 × GH₵4.00 = GH₵60.00. At GH₵5.00 per shirt, he can buy 60 ÷ 5 = 12 shirts."
      ),

      QuizQuestion(
          question: "29. Araba and Ama share 20 oranges in such a way that Ama receives 12 oranges. Find the ratio of Araba's share to that of Ama.          (BECE 2023 Q19)",
          options: [
            "3 : 2",
            "2 : 3",
            "2 : 5",
            "3 : 5"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Araba receives 20 - 12 = 8 oranges. The ratio 8 : 12 simplifies to 2 : 3."
      ),

      QuizQuestion(
          question: "30. Ama is 9 years older than Kwame. If Kwame is 18 years old, find the ratio of the age of Kwame to that of Ama.          (BECE 2010 Q40)",
          options: [
            "3 : 2",
            "1 : 3",
            "2 : 3",
            "2 : 1"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Ama is 18 + 9 = 27 years old. The ratio of Kwame's age to Ama's age is 18 : 27 = 2 : 3."
      ),
      QuizQuestion(
          question: "31. Vera is 11 years old and her brother is 9 years old. They shared 60 oranges in the ratio of their ages. How many more oranges does Vera get?          (BECE 2020 Q11)",
          options: [
            "6",
            "27",
            "34",
            "39"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The ratio is 11 : 9, making 20 parts altogether. Vera gets 33 oranges and her brother gets 27 oranges, so Vera gets 6 more."
      ),

      QuizQuestion(
          question: "32. If y : 28 = 5 : 7, find y.          (BECE 2002B Q13)",
          options: [
            "5",
            "20",
            "31.2",
            "37.5"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "y/28 = 5/7. Therefore, y = 28 × 5/7 = 20."
      ),

      QuizQuestion(
          question: "33. A boy sold some oranges at three for ₵500.00. If his total sales was ₵100,000.00, how many oranges did he sell?          (BECE 2006 Q10)",
          options: [
            "300",
            "400",
            "500",
            "600"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "₵100,000.00 contains 100,000 ÷ 500 = 200 groups of 3 oranges. Therefore, he sold 200 × 3 = 600 oranges."
      ),

      QuizQuestion(
          question: "34. Kofi, Kojo and Ama shared GH₵480,000.00 in the ratio 3 : 5 : 4. How much did Ama receive?          (BECE 2014 Q23)",
          options: [
            "GH₵160,000.00",
            "GH₵200,000.00",
            "GH₵218,181.81",
            "GH₵342,859.14"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The total number of parts is 3 + 5 + 4 = 12. Ama's share is 4/12 × GH₵480,000.00 = GH₵160,000.00."
      ),

      QuizQuestion(
          question: "35. Charles and Helen started a business with an amount of GH₵7,000.00. If their contributions were in the ratio 4 : 3 respectively, find Helen's contribution.          (BECE 2025 Q40)",
          options: [
            "GH₵2,500.00",
            "GH₵3,000.00",
            "GH₵4,000.00",
            "GH₵5,000.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The total number of parts is 4 + 3 = 7. Helen's contribution is 3/7 × GH₵7,000.00 = GH₵3,000.00."
      ),

      QuizQuestion(
          question: "36. The ratio of farmers to children in a village is 13 : 11. If there were 312 farmers in the village, how many children were there?          (BECE 2022 Q27)",
          options: [
            "48",
            "143",
            "169",
            "264"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The 13 parts representing farmers equal 312, so one part is 24. The number of children is 11 × 24 = 264."
      ),

      QuizQuestion(
          question: "37. If a : 27 = 6 : 18, find a.          (BECE 2007 Q27)",
          options: [
            "4",
            "9",
            "51",
            "81"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "a/27 = 6/18 = 1/3. Therefore, a = 27 ÷ 3 = 9."
      ),

      QuizQuestion(
          question: "38. The ratio 8 : 12 is equivalent to y : 9. What is the value of y?          (BECE 2008 Q7)",
          options: [
            "4",
            "5",
            "6",
            "7"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "8/12 = y/9. Since 8/12 = 2/3, y = 2/3 × 9 = 6."
      ),

      QuizQuestion(
          question: "39. Kofi and Ama shared an amount of GH₵3,000.00 in the ratio 2 : 3. Find the amount received by Kofi.          (BECE 2021 Q3)",
          options: [
            "GH₵1,000.00",
            "GH₵1,200.00",
            "GH₵1,500.00",
            "GH₵1,800.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The total number of parts is 2 + 3 = 5. Kofi's share is 2/5 × GH₵3,000.00 = GH₵1,200.00."
      ),

      QuizQuestion(
          question: "40. Esi and Kwasi are 12 and 8 years old respectively. They share 60 mangoes in the ratio of their ages. How many mangoes does Esi get?          (BECE 2010 Q12)",
          options: [
            "42",
            "40",
            "36",
            "18"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The ratio 12 : 8 simplifies to 3 : 2. Esi gets 3/5 × 60 = 36 mangoes."
      ),
      QuizQuestion(
          question: "41. A trader sold 90 oranges at 3 for GH₵0.75. How much did she get from selling all the oranges?          (BECE 2019 Q28)",
          options: [
            "GH₵22.50",
            "GH₵67.50",
            "GH₵75.00",
            "GH₵225.50"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "90 oranges make 90 ÷ 3 = 30 groups. The total amount is 30 × GH₵0.75 = GH₵22.50."
      ),

      QuizQuestion(
          question: "42. Cement and sand were mixed in the ratio 2 : 5. How many kilograms of cement were contained in the 35 kg of the mixture?          (BECE 2023 Q23)",
          options: [
            "7 kg",
            "88 kg",
            "14 kg",
            "10 kg"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The total number of parts is 2 + 5 = 7. The amount of cement is 2/7 × 35 kg = 10 kg."
      ),

      QuizQuestion(
          question: "43. The ratio of the ages of two sisters is 4 : 3. The older sister is 3 years older than the younger one. How old is the younger sister?          (BECE 2004 Q32)",
          options: [
            "9 years",
            "12 years",
            "15 years",
            "18 years"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The difference between 4 parts and 3 parts is 1 part, which represents 3 years. The younger sister is 3 × 3 = 9 years old."
      ),

      QuizQuestion(
          question: "44. A man shared an amount of money between his two children, Esi and Ato in the ratio 2 : 3 respectively. If Ato received GH₵45.00, what was the total amount shared?          (BECE 2013 Q38)",
          options: [
            "GH₵18.00",
            "GH₵27.50",
            "GH₵75.00",
            "GH₵112.50"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Ato's 3 parts equal GH₵45.00, so one part is GH₵15.00. The total amount is 5 × GH₵15.00 = GH₵75.00."
      ),

      QuizQuestion(
          question: "45. Jojo and Fiifi shared an amount of money in the ratio 3 : 4 respectively. If Fiifi had ₵140,000.00, how much was shared?          (BECE 2007 Q19)",
          options: [
            "₵200,000.00",
            "₵220,000.00",
            "₵245,000.00",
            "₵280,000.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Fiifi's 4 parts equal ₵140,000.00, so one part is ₵35,000.00. The total amount is 7 × ₵35,000.00 = ₵245,000.00."
      ),

      QuizQuestion(
          question: "46. If 21 : 2x = 7 : 12, find the value of x.          (BECE 2017 Q2)",
          options: [
            "10",
            "12",
            "15",
            "18"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "21/(2x) = 7/12. Cross-multiplying gives 252 = 14x, so x = 18."
      ),

      QuizQuestion(
          question: "47. An amount of ₵5,400.00 is shared among three sisters in the ratio of their ages. Their ages are 10 years, 6 years and 2 years. Find the share of the youngest sister.          (BECE 2007 Q29)",
          options: [
            "₵300.00",
            "₵600.00",
            "₵1,200.00",
            "₵1,800.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The total of their ages is 10 + 6 + 2 = 18. The youngest sister's share is 2/18 × ₵5,400.00 = ₵600.00."
      ),

      QuizQuestion(
          question: "48. Express 15 : 12 in the form 1 : n.          (BECE 2022 Q30)",
          options: [
            "1 : 0.8",
            "1 : 1.2",
            "1 : 15",
            "1 : 12"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Divide both terms of 15 : 12 by 15. This gives 1 : 12/15 = 1 : 0.8."
      ),
      QuizQuestion(
          question: "49. Eight copies of a book cost GH₵16.00. Find the cost of 5 copies.          (BECE 2011 Q20)",
          options: [
            "GH₵2.00",
            "GH₵3.20",
            "GH₵5.00",
            "GH₵10.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "One copy costs GH₵16.00 ÷ 8 = GH₵2.00. Therefore, 5 copies cost 5 × GH₵2.00 = GH₵10.00."
      ),

      QuizQuestion(
          question: "50. The number of girls in a mixed school is 420. If the ratio of boys to girls in the school is 3 : 2, how many students are in the school?          (BECE 2018 Q12)",
          options: [
            "1050",
            "1470",
            "1630",
            "1680"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The 2 parts representing girls equal 420, so one part is 210. The total number of students is 5 × 210 = 1,050."
      ),
      QuizQuestion(
          question: "51. If 180 oranges were shared among Kwame and Ama in the ratio 7 : 5 respectively, how many oranges did Ama receive?          (BECE 2013 Q28)",
          options: [
            "45",
            "60",
            "75",
            "90"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The total number of parts is 7 + 5 = 12. Ama's share is 5/12 × 180 = 75 oranges."
      ),
      QuizQuestion(
          question: "52. Eric and Ebo are to share an amount of ₵800,000.00 in the ratio 5 : 3 respectively. What will be Ebo's share?          (BECE 2005 Q27)",
          options: [
            "₵30,000.00",
            "₵50,000.00",
            "₵300,000.00",
            "₵500,000.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The total number of parts is 5 + 3 = 8. Ebo's share is 3/8 × ₵800,000.00 = ₵300,000.00."
      ),
      QuizQuestion(
          question: "53. Zalia and Amina shared an amount of money in the ratio 2 : 5. If Amina had GH₵150.00 more than Zalia, how much did they share?          (BECE 2024 Q20)",
          options: [
            "GH₵100.00",
            "GH₵350.00",
            "GH₵250.00",
            "GH₵450.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The difference between 5 parts and 2 parts is 3 parts. If 3 parts equal GH₵150.00, then one part is GH₵50.00. The total amount shared is 7 × GH₵50.00 = GH₵350.00."
      ),
    ],
  ),
  "JHS1 - Patterns and Relations": QuizModel(
    audioPath: '',
    questions: [

      QuizQuestion(
          question: "1. If x → 3x - 4, what is the image of -2?          (BECE 2000 Q16)",
          options: [
            "-10",
            "-2",
            "-1",
            "2"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Substitute x = -2 into 3x - 4: 3(-2) - 4 = -6 - 4 = -10."
      ),

      QuizQuestion(
          question: "2. Find the next term in the sequence: 3, 6, 12, 24, …          (BECE 2006 Q14)",
          options: [
            "27",
            "30",
            "36",
            "48"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Each term is multiplied by 2. Therefore, the next term is 24 × 2 = 48."
      ),

      QuizQuestion(
          question: "3. State the rule for the mapping: x: 1, 2, 3, 4, 5 and y: 3, 5, 7, 9, …          (BECE 1991 Q25)",
          options: [
            "x → 2x - 1",
            "x → 2x - 1",
            "x → 2x + 1",
            "x → 20(x - 1)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "For each input x, the output is obtained using y = 2x + 1. For example, when x = 1, y = 2(1) + 1 = 3."
      ),

      QuizQuestion(
          question: "4. Find the missing numbers in the set {5, 10, 15, 25, …, …, 40}.          (BECE 2001 Q33)",
          options: [
            "20 and 30",
            "30 and 35",
            "20, 35 and 40",
            "20, 30 and 35"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The numbers are multiples of 5 from 5 to 40. The missing numbers are 20, 30 and 35."
      ),

      QuizQuestion(
          question: "5. State the rule for the following mapping: x: 0, 1, 2, 3, 4 and y: 1, 4, 9, 16, …          (BECE 2004 Q17)",
          options: [
            "x → x + 1",
            "x → x²",
            "x → 2x + 1",
            "x → (x + 1)²"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Each output is the square of one more than the input: y = (x + 1)². For example, when x = 2, y = 3² = 9."
      ),

      QuizQuestion(
          question: "6. A mapping is defined by n → 2n - 3. What is the image of -2 under the mapping?          (BECE 2001 Q24)",
          options: [
            "-1",
            "-5",
            "-7",
            "7"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Substitute n = -2 into 2n - 3: 2(-2) - 3 = -4 - 3 = -7."
      ),

      QuizQuestion(
          question: "7. What is the rule for the mapping: x: 1, 2, 3, 4 and y: 2, 4, 8, 16?          (BECE 1994 Q36)",
          options: [
            "y → 2x",
            "y → x²",
            "y → 2ˣ",
            "y → x + 2"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The outputs are powers of 2: 2¹ = 2, 2² = 4, 2³ = 8 and 2⁴ = 16. Therefore, y = 2ˣ."
      ),

      QuizQuestion(
          question: r"8. What is the image of -4 under the mapping x → \frac{1}{2}x - 2?          (BECE 1995 Q10)",
          options: [
            "-2",
            "-4",
            "-6",
            "-8"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute x = -4: ½(-4) - 2 = -2 - 2 = -4."
      ),

      QuizQuestion(
          question: "9. Find the missing number in the sequence: 11, 17, 23, 29, …, 41, 47, 53.          (BECE 2012 Q13)",
          options: [
            "32",
            "35",
            "37",
            "38"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The sequence increases by 6 each time. Therefore, the missing number is 29 + 6 = 35."
      ),

      QuizQuestion(
          question: "10. Find the rule for the mapping: x: 1, 2, 3, 4, 5 and y: 5, 9, 13, 17, 21.          (BECE 2020 Q26)",
          options: [
            "x → 3x + 2",
            "x → 5x - 3",
            "x → x² + 1",
            "x → 4x + 1"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Each output is obtained using y = 4x + 1. For example, when x = 3, y = 4(3) + 1 = 13."
      ),
      QuizQuestion(
          question: "11. If (x, y) → (x, 2y), find the image of (2½, -½) under the same mapping.          (BECE 1995 Q24)",
          options: [
            "(2½, -2)",
            "(2½, -1)",
            "(2, -2)",
            "(2, -1)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The x-coordinate remains unchanged, while the y-coordinate is multiplied by 2. Thus, (2½, -½) → (2½, -1)."
      ),

      QuizQuestion(
          question: "12. Given the sequence {1, 3, 7, 15, 31, …}, the rule is 2ˣ - 1. What is the 7th term?          (Based on page 69, Q31 text context)",
          options: [
            "64",
            "127",
            "128",
            "255"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The 7th term is 2⁷ - 1 = 128 - 1 = 127."
      ),

      QuizQuestion(
          question: "13. Find the value of x, if 1 → 1 → 3.14, 2 → 2 → 6.28, 3 → 4 → 12.56 and y → 10 → 50.24.          (BECE 1990 Q33)",
          options: [
            "9.42",
            "12",
            "18",
            "25.12"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "The final mapping multiplies the middle value by 3.14. Therefore, 10 × 3.14 = 31.4, but the given result 50.24 corresponds to 16 × 3.14. The source appears inconsistent; among the options, 25.12 is the likely intended answer."
      ),

      QuizQuestion(
          question: "14. Find the next term in the sequence: 2, 5, 9, 14, 20, …          (BECE 2002 Q6)",
          options: [
            "25",
            "26",
            "27",
            "35"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The differences are 3, 4, 5 and 6. The next difference is 7, so the next term is 20 + 7 = 27."
      ),

      QuizQuestion(
          question: "15. State the rule for the following mapping: x: 1, 2, 3, 4, 5 and y: 3, 1, -1, -3, -5.          (BECE 2019 Q13)",
          options: [
            "y = 2x + 2",
            "y = -2x + 2",
            "y = 4x",
            "y = -2x + 5"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The outputs decrease by 2. Using x = 1 gives y = -2(1) + 5 = 3, so the rule is y = -2x + 5."
      ),

      QuizQuestion(
          question: "16. State the rule of the following mapping: x: 1, 2, 3, 4, … and y: 1, 4, 9, 16, …          (BECE 2001 Q3)",
          options: [
            "x → x",
            "x → 2x",
            "x → x²",
            "x → x + 2"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Each output is the square of the input: 1² = 1, 2² = 4, 3² = 9 and 4² = 16."
      ),

      QuizQuestion(
          question: "17. What is the fifth term in the sequence 1/3, 2/5, 7/15, …?          (BECE 2002B Q5)",
          options: [
            "4/9",
            "5/11",
            "6/13",
            "3/5"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The intended pattern gives fractions with numerators increasing by 1 and denominators increasing by 2, leading to the fifth term 5/11. The source sequence appears to contain a transcription inconsistency at the third term."
      ),

      QuizQuestion(
          question: "18. Use the mapping x: 1, 2, 3, 4, 5 and y: -4, -2, 0, 2, m. What is the rule for the mapping?          (BECE 2003 Q27)",
          options: [
            "x → 2x - 3",
            "x → x - 5",
            "x → 2(x - 2)",
            "x → 2x - 3"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "For x = 1, 2(1 - 2) = -2, not -4, so the listed options appear inconsistent. The actual rule from the table is y = 2x - 6."
      ),

      QuizQuestion(
          question: "19. Find the value of m in the mapping x: 1, 2, 3, 4, 5 and y: -4, -2, 0, 2, m.          (BECE 2003 Q28)",
          options: [
            "4",
            "4",
            "6",
            "8"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The outputs increase by 2 each time: -4, -2, 0, 2, 4. Therefore, m = 4."
      ),

      QuizQuestion(
          question: "20. What is the image of 2 in the mapping y → 2x + 5?          (BECE 2004 Q12)",
          options: [
            "7",
            "9",
            "12",
            "20"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute x = 2 into 2x + 5: 2(2) + 5 = 9."
      ),QuizQuestion(
          question: "21. Find the next term in the sequence 1, 3, 7, 15, 31, …          (BECE 2005 Q11)",
          options: [
            "35",
            "39",
            "47",
            "63"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Each term is obtained by multiplying the previous term by 2 and adding 1. Therefore, 31 × 2 + 1 = 63."
      ),

      QuizQuestion(
          question: "22. What is the rule for the following mapping: x: 0, 1, 2, 3, 4 and y: 5, 9, 13, 17, 21?          (BECE 2005 Q19)",
          options: [
            "y = x + 5",
            "y = 4x + 5",
            "y = 5x + 4",
            "y = 6x + 1"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The outputs increase by 4 for every increase of 1 in x. Since y = 5 when x = 0, the rule is y = 4x + 5."
      ),

      QuizQuestion(
          question: "23. Find the rule for the mapping: 1, 2, 3, 4, 5, …, n → 10, 21, 32, 43, 54, …          (BECE 2006 Q35)",
          options: [
            "n → 10n",
            "n → 10n + 1",
            "n → 11n - 1",
            "n → 7n + 3"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Substituting n = 1 into 11n - 1 gives 10, and n = 2 gives 21. Therefore, the rule is n → 11n - 1."
      ),

      QuizQuestion(
          question: "24. Find the image of -3 under the mapping x → 2(x + 3).          (BECE 2008 Q13)",
          options: [
            "0",
            "2",
            "6",
            "12"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Substitute x = -3: 2(-3 + 3) = 2(0) = 0."
      ),

      QuizQuestion(
          question: r"25. State the rule for the mapping: x: 0, 1, 2, 3, 4 and y: 0, \frac{1}{4}, \frac{1}{2}, \frac{3}{4}, 1.          (BECE 2009 Q15)",
          options: [
            r"x → \frac{x}{4}",
            r"x → \frac{x}{2}",
            r"x → \frac{3x}{4}",
            r"x → \frac{1}{x²}"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Each output is obtained by dividing the input by 4. For example, when x = 3, y = 3/4."
      ),

      QuizQuestion(
          question: "26. Find the rule of the mapping: 1, 2, 3, 4, 5, …, x → 7, 11, 15, 19, 23, …, y.          (BECE 2010 Q5)",
          options: [
            "x → 4x - 3",
            "x → 3 - 4x",
            "x → 4x + 3",
            "x → 4x + 5"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The outputs increase by 4. Since 4(1) + 3 = 7, the rule is y = 4x + 3."
      ),

      QuizQuestion(
          question: "27. State the rule for the mapping: x: 1, 2, 3, 4 and y: 15, 30, 45, 60.          (BECE 2011 Q14)",
          options: [
            "x → 15x",
            "x → 15 + x",
            "x → x/15",
            "x → 10 + 5x"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Each output is 15 times the input. Therefore, the rule is x → 15x."
      ),

      QuizQuestion(
          question: "28. Find the image of 3 under the mapping x → 10 - 2x.          (BECE 2012 Q12)",
          options: [
            "4",
            "5",
            "8",
            "16"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Substitute x = 3: 10 - 2(3) = 10 - 6 = 4."
      ),

      QuizQuestion(
          question: "29. Find the rule of the mapping: 1, 2, 3, 4, 5, x → 5, 8, 11, 14, 17, y.          (BECE 2013 Q10)",
          options: [
            "x + 2",
            "x + 4",
            "2x + 3",
            "3x + 2"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The outputs increase by 3. Since 3(1) + 2 = 5, the rule is y = 3x + 2."
      ),

      QuizQuestion(
          question: "30. Find the value of x when y = 37 in the mapping y = 5x + 2.          (BECE 2021 Q16)",
          options: [
            "6",
            "7",
            "8",
            "9"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute y = 37: 37 = 5x + 2. Therefore, 5x = 35 and x = 7."
      ),
      QuizQuestion(
          question: "31. What is the missing number in the sequence: -5, -2, 1, …, 7?          (BECE 2025 Q39)",
          options: [
            "2",
            "3",
            "4",
            "5"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The sequence increases by 3 each time: -5, -2, 1, 4, 7. Therefore, the missing number is 4."
      ),

      QuizQuestion(
          question: "32. Find the rule for the mapping: 1, 2, 3, 4, …, t → 9, 20, 31, 42, …          (BECE 2025 Q20)",
          options: [
            "t → 10t - 1",
            "t → 8t + 1",
            "t → 11t - 2",
            "t → 7t + 2"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The outputs increase by 11. Since 11(1) - 2 = 9, the rule is t → 11t - 2."
      ),
    ],
  ),
  "ALGEBRAIC EXPRESSIONS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: r"1. Simplify: (35x^5y^3 \div 7xy^2\).          (BECE 2014 Q9)",
          options: [
            r"(5x^4y)",
            r"\(5x^4y^5\)",
            r"\(5x^6y\)",
            r"\(5x^6y^5\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Divide the coefficients and subtract the indices of like bases: \(35 \div 7 = 5\), \(x^5 \div x = x^{5-1} = x^4\), and \(y^3 \div y^2 = y^{3-2} = y\). Therefore, the answer is \(5x^4y\)."
      ),

      QuizQuestion(
          question: r"2. If \(x = 2\), find the value of \(q\) in the equation \(3x - 4 = x + q\).          (BECE 1992 Q17)",
          options: [
            r"\(-7\)",
            r"\(13\)",
            r"\(12\)",
            r"\(25\)"
          ],
          correctIndex: -1,
          difficulty: "Easy",
          explanation: r"Substitute \(x = 2\): \(3(2) - 4 = 2 + q\). This gives \(2 = 2 + q\), so \(q = 0\). The correct answer is not included in the supplied options."
      ),

      QuizQuestion(
          question: r"3. Simplify: \(6a^2 \times 4a^2b^2\).          (BECE 2002B Q22)",
          options: [
            r"\(10a^4b^2\)",
            r"\(24a^2b^2\)",
            r"\(24a^4b^2\)",
            r"\(24a^2b^4\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Multiply the coefficients and add the indices of \(a\): \(6 \times 4 = 24\) and \(a^2 \times a^2 = a^4\). Therefore, the answer is \(24a^4b^2\)."
      ),

      QuizQuestion(
          question: r"4. If \(a * b = 2a - b\), find \(3 * 2\).          (BECE 2002A Q20)",
          options: [
            r"\(1\)",
            r"\(4\)",
            r"\(5\)",
            r"\(6\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Using \(a * b = 2a - b\), \(3 * 2 = 2(3) - 2 = 6 - 2 = 4\)."
      ),

      QuizQuestion(
          question: r"5. In the relation \(v = u + at\), find \(v\) when \(u = 6\), \(a = 10\), and \(t = 2\).          (BECE 1991 Q14)",
          options: [
            r"\(18\)",
            r"\(26\)",
            r"\(32\)",
            r"\(48\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Substitute the given values: \(v = 6 + 10(2) = 6 + 20 = 26\)."
      ),

      QuizQuestion(
          question: r"6. If \(q = ut + \frac{1}{2}ft\), find \(q\) when \(u = 20\), \(t = 10\), and \(f = 15\).          (BECE 1990 Q21)",
          options: [
            r"\(350\)",
            r"\(275\)",
            r"\(237.5\)",
            r"\(55\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Substitute the values: \(q = 20(10) + \frac{1}{2}(15)(10) = 200 + 75 = 275\)."
      ),

      QuizQuestion(
          question: r"7. Find the value of \(p^2 - 6p + 9\) when \(p = -2\).          (BECE 1992 Q14)",
          options: [
            r"\(-7\)",
            r"\(13\)",
            r"\(12\)",
            r"\(25\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Substitute \(p = -2\): \((-2)^2 - 6(-2) + 9 = 4 + 12 + 9 = 25\)."
      ),

      QuizQuestion(
          question: r"8. The sum of two numbers is \(240\). If one of them is \(y\), find the other number.          (BECE 1997 Q22)",
          options: [
            r"\(120y\)",
            r"\(240 + y\)",
            r"\(240 - y\)",
            r"\(240y\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"If the other number is subtracted from the total, it is \(240 - y\)."
      ),

      QuizQuestion(
          question: r"9. Ama is \(N\) years old now. How old will she be in \(10\) years?          (BECE 2000 Q40)",
          options: [
            r"\((N - 10)\text{ years}\)",
            r"\((N + 10)\text{ years}\)",
            r"\((10 - N)\text{ years}\)",
            r"\(N10\text{ years}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"After \(10\) years, \(10\) is added to Ama's present age. Therefore, she will be \((N + 10)\) years old."
      ),

      QuizQuestion(
          question: r"10. Simplify: \(2ab^2 \times 3a^2b\).          (BECE 1991 Q13)",
          options: [
            r"\(5a^3b^3\)",
            r"\(5a^2b^2\)",
            r"\(6a^3b^3\)",
            r"\(6a^2b^2\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Multiply the coefficients and add the indices of like bases: \(2 \times 3 = 6\), \(a \times a^2 = a^3\), and \(b^2 \times b = b^3\). Therefore, the answer is \(6a^3b^3\)."
      ),

      QuizQuestion(
          question: r"11. If \(a * b = 2a - b\), evaluate \(4 * 3\).          (BECE 2000 Q17)",
          options: [
            r"\(1\)",
            r"\(2\)",
            r"\(4\)",
            r"\(5\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Using \(a * b = 2a - b\), \(4 * 3 = 2(4) - 3 = 8 - 3 = 5\)."
      ),

      QuizQuestion(
          question: r"12. Find the difference between the values of \((2d)^2\) and \(2d^2\), when \(d = 3\).          (BECE 1995 Q30)",
          options: [
            r"\(16\)",
            r"\(18\)",
            r"\(24\)",
            r"\(28\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"When \(d = 3\), \((2d)^2 = (6)^2 = 36\), while \(2d^2 = 2(3^2) = 18\). Their difference is \(36 - 18 = 18\)."
      ),

      QuizQuestion(
          question: r"13. Simplify: \(4p + 6p^2 - 2p + 2p^2\).          (BECE 2001 Q25)",
          options: [
            r"\(2p + 8p^2\)",
            r"\(6p + 8p^2\)",
            r"\(2p - 8p^2\)",
            r"\(6p - 8p^2\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Collect like terms: \(4p - 2p = 2p\) and \(6p^2 + 2p^2 = 8p^2\). Therefore, the simplified expression is \(2p + 8p^2\)."
      ),

      QuizQuestion(
          question: r"14. Three baskets contain \(95\) oranges, \(x\) oranges, and \(2x\) oranges. How many oranges are in the three baskets?          (BECE 2002B Q21)",
          options: [
            r"\(96x\)",
            r"\(95 + 3x\)",
            r"\(95 + 2x^2\)",
            r"\(98x\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Add the numbers of oranges: \(95 + x + 2x = 95 + 3x\)."
      ),

      QuizQuestion(
          question: r"15. Simplify: \((2ab^2)(3a^{-3}b)\).          (BECE 1997 Q21)",
          options: [
            r"\(5a^3b^3\)",
            r"\(6a^{-2}b^3\)",
            r"\(5a^2b^3\)",
            r"\(6a^2b^3\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Multiply the coefficients and add the indices of like bases: \(2 \times 3 = 6\), \(a^1 \times a^{-3} = a^{1-3} = a^{-2}\), and \(b^2 \times b = b^3\). Therefore, the answer is \(6a^{-2}b^3\)."
      ),

      QuizQuestion(
          question: r"16. If \(y = k + ax^2\), find \(y\) when \(k = \frac{14}{5}\), \(a = \frac{4}{5}\), and \(x = 2\).          (BECE 2000 Q26)",
          options: [
            r"\(1\)",
            r"\(2\)",
            r"\(4\)",
            r"\(5\)"
          ],
          correctIndex: -1,
          difficulty: "Easy",
          explanation: r"Substitute the values: \(y = \frac{14}{5} + \frac{4}{5}(2^2) = \frac{14}{5} + \frac{16}{5} = \frac{30}{5} = 6\). The correct answer is not included in the supplied options."
      ),
    ],
  ),
  "Algebraic Expressions": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: r"1. When a certain number is subtracted from \(10\) and the result is multiplied by \(2\), the final result is \(4\). Find the number.          (BECE 1991 Q37)",
          options: [
            r"\(8\)",
            r"\(12\)",
            r"\(16\)",
            r"\(24\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Let the number be \(x\). Then \(2(10 - x) = 4\). Dividing by \(2\) gives \(10 - x = 2\), so \(x = 8\)."
      ),

      QuizQuestion(
          question: r"2. Solve for \(x\) if \(2x + 5 = 3x - 7\).          (BECE 1994 Q26)",
          options: [
            r"\(12\)",
            r"\(2\frac{2}{5}\)",
            r"\(-\frac{2}{5}\)",
            r"\(-2\frac{2}{5}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Subtract \(2x\) from both sides: \(5 = x - 7\). Adding \(7\) gives \(x = 12\)."
      ),

      QuizQuestion(
          question: r"3. If \(\frac{3}{15}\) is equivalent to \(\frac{45}{a}\), find \(a\).          (BECE 1990 Q22)",
          options: [
            r"\(225\)",
            r"\(150\)",
            r"\(252\)",
            r"\(126\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Since \(\frac{3}{15} = \frac{45}{a}\), cross-multiply to get \(3a = 15 \times 45\). Therefore, \(a = \frac{675}{3} = 225\)."
      ),

      QuizQuestion(
          question: r"4. Five times a number is four more than the number. Find the number.          (BECE 1993 Q26)",
          options: [
            r"\(\frac{3}{2}\)",
            r"\(1\)",
            r"\(\frac{2}{3}\)",
            r"\(\frac{1}{2}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Let the number be \(x\). Then \(5x = x + 4\). Therefore, \(4x = 4\), so \(x = 1\)."
      ),

      QuizQuestion(
          question: r"5. Mark is \(30\) years old. Yaw is half as old as Mark. Paul is \(10\) years older than Yaw. How old is Paul?          (BECE 1994 Q3)",
          options: [
            r"\(30\text{ years}\)",
            r"\(25\text{ years}\)",
            r"\(20\text{ years}\)",
            r"\(15\text{ years}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Yaw is half of \(30\), so he is \(15\) years old. Paul is \(10\) years older, so Paul is \(15 + 10 = 25\) years old."
      ),

      QuizQuestion(
          question: r"6. If \(\frac{1}{3}\) of a number is added to \(\frac{1}{5}\) of the same number, the result is \(8\). Find the number.          (BECE 1992 Q34)",
          options: [
            r"\(3\)",
            r"\(5\)",
            r"\(15\)",
            r"\(30\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Let the number be \(x\). Then \(\frac{x}{3} + \frac{x}{5} = 8\). Thus, \(\frac{5x + 3x}{15} = 8\), so \(\frac{8x}{15} = 8\). Therefore, \(x = 15\)."
      ),

      QuizQuestion(
          question: r"7. Solve for \(h\) in the equation \(15 - 2h = 6\).          (BECE 1998 Q21)",
          options: [
            r"\(-10.5\)",
            r"\(-9.0\)",
            r"\(-4.5\)",
            r"\(4.5\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Subtract \(15\) from both sides: \(-2h = -9\). Dividing by \(-2\) gives \(h = 4.5\)."
      ),

      QuizQuestion(
          question: r"8. Find \(x\), if \(\frac{1}{x} + \frac{1}{3} = 1\).          (BECE 1993 Q31)",
          options: [
            r"\(\frac{2}{3}\)",
            r"\(-\frac{2}{3}\)",
            r"\(\frac{3}{2}\)",
            r"\(\frac{3}{4}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"\(\frac{1}{x} = 1 - \frac{1}{3} = \frac{2}{3}\). Taking reciprocals gives \(x = \frac{3}{2}\)."
      ),

      QuizQuestion(
          question: r"9. If \(\frac{1}{x} = 1\frac{1}{2}\), find \(x\).          (BECE 1994 Q11)",
          options: [
            r"\(3\)",
            r"\(\frac{1}{2}\)",
            r"\(\frac{4}{3}\)",
            r"\(\frac{2}{3}\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Convert \(1\frac{1}{2}\) to an improper fraction: \(1\frac{1}{2} = \frac{3}{2}\). Thus, \(\frac{1}{x} = \frac{3}{2}\), so \(x = \frac{2}{3}\)."
      ),

      QuizQuestion(
          question: r"10. Solve the equation \(13x - 2(3x + 4) = 22\).          (BECE 2000 Q3)",
          options: [
            r"\(5\)",
            r"\(4\)",
            r"\(\frac{30}{7}\)",
            r"\(\frac{26}{7}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Expand and simplify: \(13x - 6x - 8 = 22\). Thus, \(7x = 30\), so \(x = \frac{30}{7}\)."
      ),
      QuizQuestion(
          question: r"11. If \(4(m + 4) = 18\), find the value of \(m\).          (BECE 1999 Q29)",
          options: [
            r"\(\frac{1}{2}\)",
            r"\(\frac{3}{2}\)",
            r"\(\frac{5}{2}\)",
            r"\(\frac{3}{25}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Divide both sides by \(4\): \(m + 4 = \frac{18}{4} = \frac{9}{2}\). Therefore, \(m = \frac{9}{2} - 4 = \frac{1}{2}\)."
      ),

      QuizQuestion(
          question: r"12. If \(13x - 12 = 5x + 60\), find \(x\).          (BECE 1995 Q33)",
          options: [
            r"\(-9\)",
            r"\(-6\)",
            r"\(9\)",
            r"\(6\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Subtract \(5x\) from both sides: \(8x - 12 = 60\). Add \(12\): \(8x = 72\). Therefore, \(x = 9\)."
      ),

      QuizQuestion(
          question: r"13. The product of \(2x\) and \(3\) is \(138\). Find \(x\).          (BECE 1996 Q33)",
          options: [
            r"\(23\)",
            r"\(33\)",
            r"\(68\)",
            r"\(69\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"\((2x)(3) = 138\). Thus, \(6x = 138\), so \(x = 23\)."
      ),

      QuizQuestion(
          question: r"14. Solve for \(y\) in the equation \(\frac{1}{3}y + \frac{1}{5}y = 8\).          (BECE 2002A Q27)",
          options: [
            r"\(15\)",
            r"\(30\)",
            r"\(45\)",
            r"\(60\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"\(\frac{1}{3}y + \frac{1}{5}y = \frac{8}{15}y = 8\). Hence, \(y = 15\)."
      ),

      QuizQuestion(
          question: r"15. Kofi is \(2\) years older than Ama. If the sum of their ages is \(16\), find Ama's age.          (BECE 2002B Q25)",
          options: [
            r"\(7\text{ years}\)",
            r"\(9\text{ years}\)",
            r"\(14\text{ years}\)",
            r"\(18\text{ years}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Let Ama's age be \(x\). Then Kofi's age is \(x + 2\). Thus, \(x + (x + 2) = 16\), so \(2x = 14\) and \(x = 7\)."
      ),

      QuizQuestion(
          question: r"16. Solve the equation: \(2x - 3(x - 1) = 6\).          (BECE 2009 Q12)",
          options: [
            r"\(3\)",
            r"\(-3\)",
            r"\(-7\)",
            r"\(-9\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Expand the bracket: \(2x - 3x + 3 = 6\). Therefore, \(-x = 3\), so \(x = -3\)."
      ),

      QuizQuestion(
          question: r"17. Find the value of \(x\) in the equation \(\frac{x}{4} = 2\).          (BECE 2002B Q39)",
          options: [
            r"\(2\)",
            r"\(4\)",
            r"\(6\)",
            r"\(8\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Multiply both sides by \(4\): \(x = 8\)."
      ),

      QuizQuestion(
          question: r"18. Solve for \(x\) in the equation \(15 - 2x = 6\).          (BECE 2004 Q21)",
          options: [
            r"\(-10.5\)",
            r"\(-4.5\)",
            r"\(4.5\)",
            r"\(10.5\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Subtract \(15\) from both sides: \(-2x = -9\). Divide by \(-2\): \(x = 4.5\)."
      ),

      QuizQuestion(
          question: r"19. If \(3t - 2(t + 12) = 11\), find the value of \(t\).          (BECE 2003 Q7)",
          options: [
            r"\(-35\)",
            r"\(-13\)",
            r"\(13\)",
            r"\(35\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Expand the bracket: \(3t - 2t - 24 = 11\). Thus, \(t = 35\)."
      ),

      QuizQuestion(
          question: r"20. If \(6n + 4 = 16\), find the value of \(n\).          (BECE 2005 Q10)",
          options: [
            r"\(2\)",
            r"\(3\)",
            r"\(5\)",
            r"\(6\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Subtract \(4\) from both sides: \(6n = 12\). Divide by \(6\): \(n = 2\)."
      ),
      QuizQuestion(
          question: r"21. The difference between two numbers is \(168\). If the smaller number is \(113\), find the other number.          (BECE 2008 Q39)",
          options: [
            r"\(223\)",
            r"\(271\)",
            r"\(281\)",
            r"\(291\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"The larger number is \(113 + 168 = 281\)."
      ),

      QuizQuestion(
          question: r"22. Solve the equation \(\frac{x + 2}{3} + 2x = 10\).          (BECE 2006 Q18)",
          options: [
            r"\(3\)",
            r"\(4\)",
            r"\(5\)",
            r"\(6\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Multiply through by \(3\): \(x + 2 + 6x = 30\). Thus, \(7x = 28\), so \(x = 4\)."
      ),

      QuizQuestion(
          question: r"23. If \(8x - 3(2x - 4) = 4\), find the value of \(x\).          (BECE 2007 Q15)",
          options: [
            r"\(-8\)",
            r"\(-4\)",
            r"\(4\)",
            r"\(8\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Expand the bracket: \(8x - 6x + 12 = 4\). Therefore, \(2x = -8\), so \(x = -4\)."
      ),

      QuizQuestion(
          question: r"24. Solve \(\frac{4k}{9} = 12\).          (BECE 2008 Q33)",
          options: [
            r"\(23\)",
            r"\(25\)",
            r"\(27\)",
            r"\(29\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Multiply both sides by \(9\): \(4k = 108\). Divide by \(4\): \(k = 27\)."
      ),

      QuizQuestion(
          question: r"25. If \(x + 5 = -7\), find the value of \(\frac{x}{6}\).          (BECE 2009 Q20)",
          options: [
            r"\(-5\frac{5}{6}\)",
            r"\(-2\)",
            r"\(-\frac{1}{3}\)",
            r"\(2\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"From \(x + 5 = -7\), we get \(x = -12\). Therefore, \(\frac{x}{6} = \frac{-12}{6} = -2\)."
      ),

      QuizQuestion(
          question: r"26. The sum of \(5\) and \(x\) divided by \(4\) is equal to \(3.25\). Find the value of \(x\).          (BECE 2010 Q4)",
          options: [
            r"\(8\)",
            r"\(7\)",
            r"\(2\frac{1}{4}\)",
            r"\(-3\frac{4}{13}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Interpret the statement as \(\frac{x + 5}{4} = 3.25\). Multiplying by \(4\) gives \(x + 5 = 13\), so \(x = 8\)."
      ),

      QuizQuestion(
          question: r"27. Find the value of \(x\), if \(\frac{x}{4} + 1 = 5\).          (BECE 2010 Q20)",
          options: [
            r"\(24\)",
            r"\(20\)",
            r"\(19\)",
            r"\(16\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Subtract \(1\): \(\frac{x}{4} = 4\). Multiply by \(4\): \(x = 16\)."
      ),

      QuizQuestion(
          question: r"28. If \(2x = 5(x - 2) + 7\), find the value of \(x\).          (BECE 2012 Q14)",
          options: [
            r"\(-5\frac{2}{3}\)",
            r"\(-1\)",
            r"\(1\)",
            r"\(5\frac{2}{3}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Expand: \(2x = 5x - 10 + 7 = 5x - 3\). Thus, \(-3x = -3\), so \(x = 1\). (The supplied answer key/options appear inconsistent.)"
      ),

      QuizQuestion(
          question: r"29. If \(1 - 2 = m\), find \(m\).          (BECE 2013 Q11)",
          options: [
            r"\(3\)",
            r"\(-1\)",
            r"\(1\)",
            r"\(3\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Simply evaluate \(1 - 2 = -1\). Therefore, \(m = -1\)."
      ),

      QuizQuestion(
          question: r"30. Solve \(3 + 3y = 1 - 13y\).          (BECE 2015 Q23)",
          options: [
            r"\(-6\)",
            r"\(-2\)",
            r"\(2\)",
            r"\(6\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Bring like terms together: \(3y + 13y = 1 - 3\). Thus, \(16y = -2\), so \(y = -\frac{1}{8}\). The correct answer is not among the supplied options."
      ),QuizQuestion(
          question: r"31. When a number is doubled and the result is decreased by \(9\), the answer is \(19\). Find the number.          (BECE 2016 Q22)",
          options: [
            r"\(5\)",
            r"\(7\)",
            r"\(14\)",
            r"\(16\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Let the number be \(x\). Then \(2x - 9 = 19\). So \(2x = 28\) and \(x = 14\)."
      ),

      QuizQuestion(
          question: r"32. Given that \(\frac{1}{2p} = \frac{1}{8}\), find the value of \(p\).          (BECE 2017 Q3)",
          options: [
            r"\(4\)",
            r"\(3\)",
            r"\(2\)",
            r"\(1\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Since \(\frac{1}{2p} = \frac{1}{8}\), it follows that \(2p = 8\). Therefore, \(p = 4\)."
      ),

      QuizQuestion(
          question: r"33. Solve \(2 + \frac{x}{3} = 1 - 2x\).          (BECE 2017 Q8)",
          options: [
            r"\(-1\frac{2}{7}\)",
            r"\(-\frac{3}{7}\)",
            r"\(\frac{3}{7}\)",
            r"\(1\frac{2}{7}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Multiply through by \(3\): \(6 + x = 3 - 6x\). Thus, \(7x = -3\), so \(x = -\frac{3}{7}\)."
      ),

      QuizQuestion(
          question: r"34. At a meeting attended by \(23\) people, the females were \(7\) more than the males. How many males were there?          (BECE 2017 Q14)",
          options: [
            r"\(8\)",
            r"\(15\)",
            r"\(16\)",
            r"\(30\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Let the number of males be \(m\). Then females are \(m + 7\). So \(m + (m + 7) = 23\), giving \(2m = 16\) and \(m = 8\)."
      ),

      QuizQuestion(
          question: r"35. If \(4 - x = 3(4x + 5)\), find the value of \(x\).          (BECE 2018 Q37)",
          options: [
            r"\(\frac{11}{13}\)",
            r"\(1\frac{6}{13}\)",
            r"\(-1\frac{6}{13}\)",
            r"\(-\frac{11}{13}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Expand: \(4 - x = 12x + 15\). Thus, \(-13x = 11\), so \(x = -\frac{11}{13} = -\frac{11}{13}\). The mixed-number option \(-1\frac{6}{13}\) in the source is inconsistent."
      ),

      QuizQuestion(
          question: r"36. Solve the equation \(10 - \frac{x + 3}{2} = 8\).          (BECE 2019 Q7)",
          options: [
            r"\(-9\)",
            r"\(-3\)",
            r"\(1\)",
            r"\(15\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"\(\frac{x + 3}{2} = 2\). Therefore, \(x + 3 = 4\), so \(x = 1\)."
      ),

      QuizQuestion(
          question: r"37. When twelve is subtracted from three times a certain number and the result is divided by four, the answer is eighteen. Find the number.          (BECE 2019 Q25)",
          options: [
            r"\(84\)",
            r"\(40\)",
            r"\(28\)",
            r"\(20\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Let the number be \(x\). Then \(\frac{3x - 12}{4} = 18\). Hence, \(3x - 12 = 72\), so \(3x = 84\) and \(x = 28\)."
      ),

      QuizQuestion(
          question: r"38. In a class of \(23\) students, the girls were \(7\) more than the boys. How many boys were there in the class?          (BECE 2019 Q34)",
          options: [
            r"\(8\)",
            r"\(15\)",
            r"\(16\)",
            r"\(30\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Let the number of boys be \(b\). Then girls are \(b + 7\). Thus, \(b + (b + 7) = 23\), so \(2b = 16\) and \(b = 8\)."
      ),

      QuizQuestion(
          question: r"39. If \(\frac{w}{3} = 3(w - 1) - 1\), find the value of \(w\).          (BECE 2020 Q16)",
          options: [
            r"\(\frac{3}{2}\)",
            r"\(\frac{5}{4}\)",
            r"\(\frac{3}{5}\)",
            r"\(\frac{1}{2}\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"\(\frac{w}{3} = 3w - 4\). Multiplying through by \(3\): \(w = 9w - 12\). Thus, \(8w = 12\), so \(w = \frac{3}{2}\)."
      ),

      QuizQuestion(
          question: r"40. If \(2x - 1 = 5\), find the value of \(x\).          (BECE 2021 Q34)",
          options: [
            r"\(3\)",
            r"\(4\)",
            r"\(5\)",
            r"\(6\)"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: r"Add \(1\) to both sides: \(2x = 6\). Therefore, \(x = 3\)."
      ),

      QuizQuestion(
          question: r"41. If \(\frac{n}{100} = 10.5\), find the value of \(n\).          (BECE 2022 Q23)",
          options: [
            r"\(0.0105\)",
            r"\(0.105\)",
            r"\(105\)",
            r"\(1050\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Multiply both sides by \(100\): \(n = 10.5 \times 100 = 1050\)."
      ),

      QuizQuestion(
          question: r"42. A certain number is subtracted from \(12\) and the result is multiplied by \(3\). If the answer is \(21\), find the number.          (BECE 2022 Q37)",
          options: [
            r"\(4\)",
            r"\(5\)",
            r"\(6\)",
            r"\(8\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Let the number be \(x\). Then \(3(12 - x) = 21\). So \(12 - x = 7\), giving \(x = 5\)."
      ),

      QuizQuestion(
          question: r"43. If \(2n - 5 = \frac{1}{2}n\), find the value of \(n\).          (BECE 2023 Q15)",
          options: [
            r"\(\frac{1}{3}\)",
            r"\(2\frac{1}{2}\)",
            r"\(3\frac{1}{3}\)",
            r"\(\frac{1}{2}\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"Multiply both sides by \(2\): \(4n - 10 = n\). Thus, \(3n = 10\), so \(n = \frac{10}{3} = 3\frac{1}{3}\)."
      ),

      QuizQuestion(
          question: r"44. A story book contains \(50\) pages. If a student reads \(10\) pages per hour, find the relationship between the number of unread pages (\(N\)) and time (\(t\)).          (BECE 2024 Q29)",
          options: [
            r"\(N = 10t + 50\)",
            r"\(N = 10t - 50\)",
            r"\(N = -10t + 50\)",
            r"\(N = -\frac{1}{10}t + 50\)"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: r"The number of unread pages decreases by \(10\) every hour. Hence, \(N = 50 - 10t = -10t + 50\)."
      ),

      QuizQuestion(
          question: r"45. Solve: \(4x - 2(x + 5) = -10\).          (BECE 2025 Q10)",
          options: [
            r"\(x = -10\)",
            r"\(x = 0\)",
            r"\(x = \frac{1}{2}\)",
            r"\(x = 2\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Expand: \(4x - 2x - 10 = -10\). Thus, \(2x = 0\), so \(x = 0\)."
      ),

      QuizQuestion(
          question: r"46. Ama is three times as old as Kofi. The sum of their ages is \(40\). How old is Ama?          (BECE 2025 Q12)",
          options: [
            r"\(10\text{ years}\)",
            r"\(30\text{ years}\)",
            r"\(37\text{ years}\)",
            r"\(43\text{ years}\)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: r"Let Kofi's age be \(k\). Then Ama's age is \(3k\). Since \(k + 3k = 40\), we get \(4k = 40\), so \(k = 10\). Therefore, Ama is \(30\) years old."
      ),

      QuizQuestion(
          question: r"47. Given that \(0.03 \times y = 2.4\), find the value of \(y\).          (BECE 2025 Q22)",
          options: [
            r"\(0.08\)",
            r"\(0.8\)",
            r"\(8.0\)",
            r"\(80.0\)"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: r"Divide both sides by \(0.03\): \(y = \frac{2.4}{0.03} = 80\)."
      ),
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
  "Environmental Issues": QuizModel(
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
  "Mapping Skills": QuizModel(
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
  "Understanding Our Natural World": QuizModel(
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
  "Adolescent Reproductive Health": QuizModel(
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

  "Socialization": QuizModel(
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

  "Self-Identity": QuizModel(
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

  "Citizenship and Human Rights": QuizModel(
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

  "Human Resource Development": QuizModel(
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

  "Financial and Investment Issues": QuizModel(
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

  "Independent Ghana": QuizModel(
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
  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "THE NATURE OF GOD THROUGH ATTRIBUTES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. The attribute 'omniscient' means God is:",
          options: [
            "Present everywhere",
            "All-knowing",
            "All-powerful",
            "Eternal"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Omniscient means having unlimited knowledge and awareness."),
      QuizQuestion(
          question: "2. 'Omnipotent' refers to God being:",
          options: [
            "All-knowing",
            "Eternal",
            "All-powerful",
            "Present everywhere"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Omnipotent means having infinite power over all things."),
      QuizQuestion(
          question:
              "3. Which attribute means God is present everywhere at the same time?",
          options: ["Omniscient", "Omnipotent", "Omnipresent", "Immutable"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Omnipresent means God exists in all places simultaneously."),
      QuizQuestion(
          question: "4. 'Immutable' as an attribute of God means:",
          options: [
            "God is always changing",
            "God is all-knowing",
            "God never changes",
            "God punishes wrongdoers"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "Immutable means unchanging — God's nature remains constant."),
      QuizQuestion(
          question:
              "5. Which religion believes in the Trinity (Father, Son, Holy Spirit)?",
          options: [
            "Islam",
            "Christianity",
            "Traditional African Religion",
            "Judaism"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The Trinity is a foundational Christian doctrine of God's threefold nature."),
      QuizQuestion(
          question: "6. In Islam, the oneness of God is called:",
          options: ["Tawhid", "Salat", "Zakat", "Trinity"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "Tawhid is the Islamic concept of the absolute oneness of Allah."),
      QuizQuestion(
          question:
              "7. In Traditional Ghanaian Religion, the Supreme Being is known as:",
          options: ["Obosom", "Onyame / Nyame", "Asase Yaa", "Mpanyimfo"],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Onyame (Nyame in Akan) refers to the Supreme God in Ghanaian traditional religion."),
      QuizQuestion(
          question:
              "8. Which attribute describes God as the source and giver of life?",
          options: [
            "Immutable",
            "Omnipotent",
            "Creator and Sustainer",
            "Omniscient"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "God as Creator and Sustainer brings all life into existence and maintains it."),
      QuizQuestion(
          question: "9. 'Holy' as an attribute of God primarily means:",
          options: [
            "God is distant from humans",
            "God is morally perfect and separated from all evil",
            "God exists in heaven only",
            "God controls nature"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Holiness reflects God's perfect moral nature, free from all impurity."),
      QuizQuestion(
          question:
              "10. How does believing God is omnipresent affect a believer's behaviour?",
          options: [
            "They feel free to do anything",
            "They believe their actions are always seen by God, so they act rightly",
            "They avoid going to public places",
            "They stop praying"
          ],
          correctIndex: 1,
          difficulty: "Hard",
          explanation:
              "Belief in God's omnipresence motivates moral and responsible behaviour."),
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
