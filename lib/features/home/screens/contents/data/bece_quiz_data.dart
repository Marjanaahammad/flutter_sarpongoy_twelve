import '../model/quiz_model.dart';

/// BECE Past Exam – Objectives (Multiple Choice) questions.
/// Keyed by the lesson topic string (matches the topic field in Lesson).
final Map<String, QuizModel> beceQuizData = {
  // ─── ENGLISH: ORAL LANGUAGE ───────────────────────────────────────────────
  "Conversation and Everyday Discourse": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which of the following is an example of a formal greeting?", options: ["Whaddup, dude?", "Good morning, sir.", "Hey, what's up?", "Yo, how far?"], correctIndex: 1, difficulty: "Easy", explanation: "'Good morning, sir.' uses formal register appropriate for official settings."),
      QuizQuestion(question: "2. A conversation is said to be effective when:", options: ["Only one person speaks at length", "Both parties listen and respond appropriately", "There is no eye contact", "The speaker uses technical jargon only"], correctIndex: 1, difficulty: "Easy", explanation: "Effective conversation involves mutual listening and appropriate responses."),
      QuizQuestion(question: "3. Which term describes the unwritten rules of conversation?", options: ["Grammar", "Discourse norms", "Register", "Vocabulary"], correctIndex: 1, difficulty: "Medium", explanation: "Discourse norms are the unwritten social rules that govern conversations."),
      QuizQuestion(question: "4. 'Turn-taking' in conversation means:", options: ["Physically turning to face the speaker", "Allowing each person a chance to speak in order", "Turning the topic to something different", "Moving away when someone speaks"], correctIndex: 1, difficulty: "Easy", explanation: "Turn-taking ensures orderly exchange in a conversation."),
      QuizQuestion(question: "5. Which body language signal shows you are listening attentively?", options: ["Folding your arms and looking away", "Nodding and making eye contact", "Yawning repeatedly", "Tapping your feet impatiently"], correctIndex: 1, difficulty: "Easy", explanation: "Nodding and eye contact are active listening signals."),
      QuizQuestion(question: "6. The word 'discourse' most closely means:", options: ["A type of meal", "Written or spoken communication", "A musical instrument", "A form of exercise"], correctIndex: 1, difficulty: "Medium", explanation: "Discourse refers to written or spoken communication."),
      QuizQuestion(question: "7. Kofi meets his teacher in the market. Which greeting is most appropriate?", options: ["Oi, teacher!", "Good afternoon, Mr. Mensah.", "What's good, teach?", "Hey, I know you!"], correctIndex: 1, difficulty: "Easy", explanation: "A respectful, formal greeting is appropriate for a teacher."),
      QuizQuestion(question: "8. Which of these is NOT a feature of informal conversation?", options: ["Slang words", "Relaxed tone", "Technical vocabulary", "Shortened words"], correctIndex: 2, difficulty: "Medium", explanation: "Technical vocabulary is typically used in formal, not informal, conversations."),
      QuizQuestion(question: "9. An 'aside' in a conversation refers to:", options: ["A main point of the discussion", "A comment addressed to one listener privately", "A loud exclamation", "A topic change"], correctIndex: 1, difficulty: "Hard", explanation: "An aside is a remark made quietly to one person, not the whole group."),
      QuizQuestion(question: "10. Which skill helps you understand the emotional tone behind someone's words?", options: ["Speed reading", "Empathic listening", "Note-taking", "Vocabulary building"], correctIndex: 1, difficulty: "Medium", explanation: "Empathic listening helps you understand feelings behind words."),
    ],
  ),

  "Giving and Following Direction": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. 'Turn left at the roundabout.' Which word describes the direction?", options: ["Turn", "At", "Left", "Roundabout"], correctIndex: 2, difficulty: "Easy", explanation: "'Left' is the directional word indicating which way to turn."),
      QuizQuestion(question: "2. A good landmark for giving directions should be:", options: ["Moveable and small", "Permanent and easily recognised", "Invisible from the road", "Personal to the speaker"], correctIndex: 1, difficulty: "Easy", explanation: "Landmarks must be permanent and recognisable to everyone."),
      QuizQuestion(question: "3. 'The school is adjacent to the clinic.' This means the school is:", options: ["Far from the clinic", "Opposite the clinic", "Next to the clinic", "Behind the clinic"], correctIndex: 2, difficulty: "Medium", explanation: "'Adjacent' means next to or beside."),
      QuizQuestion(question: "4. Which imperative verb is most commonly used when giving directions?", options: ["Run", "Sing", "Turn", "Jump"], correctIndex: 2, difficulty: "Easy", explanation: "'Turn' is the standard word for changing direction."),
      QuizQuestion(question: "5. 'Proceed straight for 200 metres.' The word 'proceed' means:", options: ["Stop", "Continue moving in the same direction", "Turn around", "Change speed"], correctIndex: 1, difficulty: "Medium", explanation: "'Proceed' means to continue or move forward."),
      QuizQuestion(question: "6. Which type of language should be avoided when giving directions to a stranger?", options: ["Imperative verbs", "Local jargon and slang", "Distance measurements", "Landmarks"], correctIndex: 1, difficulty: "Medium", explanation: "Slang may confuse strangers unfamiliar with local expressions."),
      QuizQuestion(question: "7. 'The junction' refers to:", options: ["A local food stall", "A place where two or more roads meet", "A type of building", "A bus stop"], correctIndex: 1, difficulty: "Easy", explanation: "A junction is where two or more roads intersect."),
      QuizQuestion(question: "8. Giving directions in numbered steps (1, 2, 3…) helps to:", options: ["Make the speaker seem smart", "Ensure clarity and easy following", "Use more words unnecessarily", "Confuse the listener"], correctIndex: 1, difficulty: "Easy", explanation: "Numbering steps makes directions easier to follow in order."),
      QuizQuestion(question: "9. 'Walk past the church, then take the first right.' Which word means 'beyond'?", options: ["Walk", "Then", "Past", "Take"], correctIndex: 2, difficulty: "Medium", explanation: "'Past' means beyond or further than a specific point."),
      QuizQuestion(question: "10. Non-verbal cues when giving directions include:", options: ["Speaking slowly", "Using long phrases", "Pointing with one's hand", "Repeating addresses"], correctIndex: 2, difficulty: "Easy", explanation: "Pointing is a non-verbal way of indicating direction."),
    ],
  ),

  "Using Appropriate Language to Describe Experiences": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. 'The market was buzzing with activity.' Which literary device is used?", options: ["Simile", "Metaphor", "Personification", "Oxymoron"], correctIndex: 2, difficulty: "Medium", explanation: "Attributing 'buzzing' (an action) to the market is personification."),
      QuizQuestion(question: "2. Adjectives in descriptive language are used to:", options: ["Show action", "Describe nouns", "Replace nouns", "Describe verbs"], correctIndex: 1, difficulty: "Easy", explanation: "Adjectives modify nouns and help describe experiences vividly."),
      QuizQuestion(question: "3. 'She ran as fast as a cheetah.' This sentence is an example of:", options: ["Metaphor", "Simile", "Alliteration", "Hyperbole"], correctIndex: 1, difficulty: "Easy", explanation: "A simile compares using 'as' or 'like'."),
      QuizQuestion(question: "4. Which tense is most appropriate when narrating a past experience?", options: ["Simple present", "Simple past", "Future continuous", "Present perfect continuous"], correctIndex: 1, difficulty: "Easy", explanation: "Past experiences are described using the simple past tense."),
      QuizQuestion(question: "5. 'I was over the moon when I passed my exams.' This is an example of:", options: ["An idiom", "A proverb", "A literal expression", "A command"], correctIndex: 0, difficulty: "Medium", explanation: "'Over the moon' is an idiomatic expression meaning very happy."),
      QuizQuestion(question: "6. Sensory language appeals to:", options: ["Logic and facts only", "The five senses", "Mathematical reasoning", "Technical knowledge"], correctIndex: 1, difficulty: "Easy", explanation: "Sensory language paints pictures using sight, sound, touch, taste, and smell."),
      QuizQuestion(question: "7. 'The old man's hands were rough like sandpaper.' The comparison word is:", options: ["Old", "Hands", "Like", "Rough"], correctIndex: 2, difficulty: "Easy", explanation: "'Like' signals a simile comparison."),
      QuizQuestion(question: "8. Which sentence uses the most vivid descriptive language?", options: ["The rain fell.", "It rained yesterday.", "Heavy droplets drummed loudly on the tin roof.", "The weather was wet."], correctIndex: 2, difficulty: "Hard", explanation: "Vivid description uses sensory details and strong verbs."),
      QuizQuestion(question: "9. Using specific nouns instead of general ones makes writing:", options: ["Longer and harder to read", "More precise and vivid", "Less interesting", "Grammatically incorrect"], correctIndex: 1, difficulty: "Medium", explanation: "Specific nouns add clarity and draw clearer mental images."),
      QuizQuestion(question: "10. The primary purpose of descriptive language is to:", options: ["List facts", "Instruct the reader", "Create a clear picture in the reader's mind", "Argue a point"], correctIndex: 2, difficulty: "Medium", explanation: "Descriptive language helps readers visualise experiences."),
    ],
  ),

  "Asking Questions to Elicit Elaboration": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. An open-ended question is one that:", options: ["Can only be answered with Yes or No", "Encourages a detailed, thoughtful answer", "Is rude or aggressive", "Is written on a test paper"], correctIndex: 1, difficulty: "Easy", explanation: "Open-ended questions invite explanation and detail."),
      QuizQuestion(question: "2. 'Can you tell me more about that?' is an example of:", options: ["A closed question", "A leading question", "A follow-up elaboration question", "A rhetorical question"], correctIndex: 2, difficulty: "Easy", explanation: "It is a follow-up question that prompts more information."),
      QuizQuestion(question: "3. Which question word is BEST for asking a reason?", options: ["Where", "When", "Why", "Who"], correctIndex: 2, difficulty: "Easy", explanation: "'Why' asks for a reason or cause."),
      QuizQuestion(question: "4. A closed question is one that:", options: ["Opens a new topic", "Requires only a brief, specific answer", "Always starts with 'How'", "Is impossible to answer"], correctIndex: 1, difficulty: "Easy", explanation: "Closed questions typically get Yes/No or single-word answers."),
      QuizQuestion(question: "5. Ama says, 'The trip was fun.' Which follow-up best elicits elaboration?", options: ["Was it?", "How was it fun?", "I know.", "Did you go?"], correctIndex: 1, difficulty: "Medium", explanation: "'How was it fun?' asks for specific details and reasons."),
      QuizQuestion(question: "6. 'Elicit' means to:", options: ["Suppress or hide", "Draw out or obtain a response", "Refuse to answer", "Write a letter"], correctIndex: 1, difficulty: "Medium", explanation: "Elicit means to bring out a response or information."),
      QuizQuestion(question: "7. Which of these is the most respectful way to ask for elaboration?", options: ["Tell me everything, now.", "Stop talking.", "Could you please explain further?", "That's boring."], correctIndex: 2, difficulty: "Easy", explanation: "'Could you please explain further?' is polite and invites more detail."),
      QuizQuestion(question: "8. Why is elaboration important in a discussion?", options: ["It takes less time", "It gives more complete understanding of ideas", "It makes conversations shorter", "It confuses the listener"], correctIndex: 1, difficulty: "Medium", explanation: "Elaboration provides depth and ensures full understanding."),
      QuizQuestion(question: "9. A 'leading question' is one that:", options: ["Leads the conversation to a new topic", "Suggests the expected answer within the question itself", "Is very long and detailed", "Begins every discussion"], correctIndex: 1, difficulty: "Hard", explanation: "A leading question guides the respondent toward a particular answer."),
      QuizQuestion(question: "10. 'How did that make you feel?' is designed to elicit:", options: ["Facts and statistics", "Personal feelings and emotional response", "Directions and instructions", "Mathematical solutions"], correctIndex: 1, difficulty: "Medium", explanation: "'How did that make you feel?' targets emotions and experiences."),
    ],
  ),

  "Identifying Key Information in Oral Texts": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. The 'main idea' of a speech is:", options: ["The last word spoken", "The central message the speaker wants to communicate", "A joke told during the speech", "The speaker's name"], correctIndex: 1, difficulty: "Easy", explanation: "The main idea is the core message the speaker aims to deliver."),
      QuizQuestion(question: "2. 'Supporting details' in a speech are used to:", options: ["Distract the audience", "Prove or explain the main idea", "Change the subject", "Entertain only"], correctIndex: 1, difficulty: "Easy", explanation: "Supporting details provide evidence and explanation for the main idea."),
      QuizQuestion(question: "3. When listening to an oral text, a useful strategy is to:", options: ["Daydream and relax", "Take brief notes on key points", "Interrupt the speaker often", "Look at your phone"], correctIndex: 1, difficulty: "Easy", explanation: "Taking brief notes captures essential information from oral text."),
      QuizQuestion(question: "4. Which question helps identify the PURPOSE of an oral text?", options: ["Where was it recorded?", "What does the speaker want the listener to know or do?", "How long was the speech?", "Who introduced the speaker?"], correctIndex: 1, difficulty: "Medium", explanation: "Identifying purpose clarifies the speaker's intent."),
      QuizQuestion(question: "5. A speaker who aims to PERSUADE will use language that:", options: ["Lists neutral facts only", "Urges agreement and action", "Confuses the audience", "Avoids all opinion"], correctIndex: 1, difficulty: "Medium", explanation: "Persuasive language encourages the audience to take a stance."),
      QuizQuestion(question: "6. Cross-checking information means:", options: ["Writing it twice", "Verifying the facts from another source", "Deleting incorrect information", "Changing the topic"], correctIndex: 1, difficulty: "Medium", explanation: "Cross-checking involves confirming facts using multiple sources."),
      QuizQuestion(question: "7. 'Infer' means to:", options: ["State a fact directly", "Draw a conclusion not explicitly stated", "Write a summary", "Repeat what was said"], correctIndex: 1, difficulty: "Medium", explanation: "Inferring is reaching a conclusion based on evidence and reasoning."),
      QuizQuestion(question: "8. The 'tone' of a speaker refers to:", options: ["The volume of the microphone", "The emotion or attitude in the speaker's voice", "The length of the speech", "The topic discussed"], correctIndex: 1, difficulty: "Easy", explanation: "Tone reflects the speaker's feelings and attitude through voice."),
      QuizQuestion(question: "9. Which listening skill involves mentally picturing what is being described?", options: ["Note-taking", "Visualising", "Cross-checking", "Summarising"], correctIndex: 1, difficulty: "Medium", explanation: "Visualising is forming mental images from what you hear."),
      QuizQuestion(question: "10. A news bulletin and a weather forecast both aim to:", options: ["Persuade", "Entertain and amuse", "Inform the audience", "Give instructions"], correctIndex: 2, difficulty: "Easy", explanation: "Both aim to provide factual information to the public."),
    ],
  ),

  "Sharing Opinions on Oral Texts": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Before sharing your opinion on a text, you should first:", options: ["Decide what you think before listening", "Understand the key points made", "Ignore the speaker's evidence", "Wait for the test"], correctIndex: 1, difficulty: "Easy", explanation: "You must understand the content before forming a valid opinion."),
      QuizQuestion(question: "2. Which phrase shows a respectful disagreement?", options: ["That is completely wrong!", "You make no sense.", "I see your point, but I believe...", "Nobody agrees with you."], correctIndex: 2, difficulty: "Easy", explanation: "Acknowledging the point before disagreeing shows respect."),
      QuizQuestion(question: "3. An opinion is different from a fact because an opinion:", options: ["Cannot be proven right or wrong", "Is always incorrect", "Can be proven with data", "Never changes"], correctIndex: 0, difficulty: "Medium", explanation: "An opinion is a personal view, not necessarily verifiable."),
      QuizQuestion(question: "4. When you say 'I believe the speaker is correct because…', you are:", options: ["Summarising", "Questioning", "Expressing and justifying an opinion", "Giving instructions"], correctIndex: 2, difficulty: "Easy", explanation: "Using 'because' to support your view makes your opinion justified."),
      QuizQuestion(question: "5. 'Bias' in a speech means:", options: ["A fair and balanced view", "An unfair preference or prejudice", "A type of poetry", "A form of grammar"], correctIndex: 1, difficulty: "Medium", explanation: "Bias is a leaning toward one side that affects fairness."),
      QuizQuestion(question: "6. A speaker who uses only emotional appeals without facts is:", options: ["Using good evidence", "Using propaganda techniques", "Being perfectly objective", "Giving balanced arguments"], correctIndex: 1, difficulty: "Hard", explanation: "Emotional appeal without facts can be a propaganda technique."),
      QuizQuestion(question: "7. Which of these is a valid, well-supported opinion?", options: ["I dislike the speaker.", "The speech was too long.", "The speaker's plan will fail because similar plans have failed before.", "I was bored."], correctIndex: 2, difficulty: "Hard", explanation: "A valid opinion provides logical reasoning based on evidence."),
      QuizQuestion(question: "8. Sharing ideas in a group discussion requires:", options: ["Talking over everyone else", "Listening, then contributing once invited", "Staying silent throughout", "Shouting to be heard"], correctIndex: 1, difficulty: "Easy", explanation: "Taking turns and contributing constructively leads to effective discussion."),
      QuizQuestion(question: "9. Which skill is most important when you disagree with a speaker?", options: ["Emotional control and politeness", "Speaking as fast as possible", "Memorising every word of the speech", "Refusing to listen"], correctIndex: 0, difficulty: "Medium", explanation: "Staying calm and polite ensures productive disagreement."),
      QuizQuestion(question: "10. 'Level-appropriate text' means the reading or listening material:", options: ["Is written in a different language", "Matches the learner's grade and ability", "Only teachers can understand", "Has pictures only"], correctIndex: 1, difficulty: "Easy", explanation: "Level-appropriate texts suit the learner's comprehension level."),
    ],
  ),

  "VOWELS AND DIPHTHONGS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. How many vowel sounds does the English language have?", options: ["5", "20", "26", "44"], correctIndex: 1, difficulty: "Medium", explanation: "English has approximately 20 vowel sounds, though there are only 5 vowel letters."),
      QuizQuestion(question: "2. A diphthong is a vowel sound that:", options: ["Uses two consonants", "Glides from one vowel sound to another within one syllable", "Is silent", "Is always stressed"], correctIndex: 1, difficulty: "Medium", explanation: "A diphthong is a combination of two vowel sounds in a single syllable."),
      QuizQuestion(question: "3. The word 'sheep' contains which type of vowel sound?", options: ["Short vowel", "Long vowel", "Diphthong", "Silent vowel"], correctIndex: 1, difficulty: "Easy", explanation: "'Sheep' contains the long /iː/ vowel sound."),
      QuizQuestion(question: "4. Which word contains a diphthong?", options: ["Sit", "Cat", "Coin", "Bed"], correctIndex: 2, difficulty: "Medium", explanation: "'Coin' contains the diphthong /ɔɪ/, a gliding vowel sound."),
      QuizQuestion(question: "5. The word 'bit' has which type of vowel sound?", options: ["Long /iː/", "Short /ɪ/", "Diphthong /aɪ/", "No vowel"], correctIndex: 1, difficulty: "Easy", explanation: "'Bit' contains the short /ɪ/ sound."),
      QuizQuestion(question: "6. Which pair of words shows the difference between a long and short vowel?", options: ["Bit / bat", "Ship / sheep", "Cat / car", "Run / rain"], correctIndex: 1, difficulty: "Hard", explanation: "'Ship' has short /ɪ/ while 'sheep' has long /iː/."),
      QuizQuestion(question: "7. The word 'now' contains which type of sound?", options: ["Short vowel", "Long vowel", "Closing diphthong /aʊ/", "Centring diphthong"], correctIndex: 2, difficulty: "Hard", explanation: "'Now' contains the closing diphthong /aʊ/."),
      QuizQuestion(question: "8. A 'centring diphthong' moves toward which sound?", options: ["/iː/", "/uː/", "/ə/ (schwa)", "/æ/"], correctIndex: 2, difficulty: "Hard", explanation: "Centring diphthongs glide toward the schwa /ə/ sound."),
      QuizQuestion(question: "9. In the word 'hate,' the vowel sound is:", options: ["Short /æ/", "Long /eɪ/", "Short /e/", "Silent"], correctIndex: 1, difficulty: "Medium", explanation: "'Hate' contains the long /eɪ/ diphthong sound (long 'a')."),
      QuizQuestion(question: "10. Which word has the same vowel sound as 'moon'?", options: ["Book", "Flood", "Blue", "Blood"], correctIndex: 2, difficulty: "Medium", explanation: "'Blue' and 'moon' both contain the long /uː/ sound."),
    ],
  ),

  // ─── ENGLISH: GRAMMAR ────────────────────────────────────────────────────
  "Subject and Predicate": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. The subject of a sentence is:", options: ["What the sentence says about the noun", "The action performed", "Who or what the sentence is about", "The verb of the sentence"], correctIndex: 2, difficulty: "Easy", explanation: "The subject is the main noun or pronoun the sentence is about."),
      QuizQuestion(question: "2. Identify the subject in: 'The tall teacher explained the lesson.'", options: ["Explained", "The lesson", "The tall teacher", "Clearly"], correctIndex: 2, difficulty: "Easy", explanation: "'The tall teacher' is who the sentence is about — the subject."),
      QuizQuestion(question: "3. The predicate of a sentence:", options: ["Names the subject", "Contains the verb and everything said about the subject", "Is always a single word", "Comes before the subject"], correctIndex: 1, difficulty: "Easy", explanation: "The predicate contains the verb and all that is said about the subject."),
      QuizQuestion(question: "4. In 'Ama and Kwame play football every Friday,' what is the subject?", options: ["Play", "Football", "Every Friday", "Ama and Kwame"], correctIndex: 3, difficulty: "Easy", explanation: "'Ama and Kwame' is a compound subject — two nouns joined by 'and'."),
      QuizQuestion(question: "5. A simple predicate is:", options: ["All the words after the subject", "Only the verb or verb phrase", "The entire subject of the sentence", "A describing word"], correctIndex: 1, difficulty: "Medium", explanation: "The simple predicate is just the main verb or verb phrase."),
      QuizQuestion(question: "6. Which sentence has a compound subject?", options: ["The boy ran fast.", "Ama read a book.", "Kofi and Ama went to school.", "She is clever."], correctIndex: 2, difficulty: "Medium", explanation: "Two subjects joined by 'and' form a compound subject."),
      QuizQuestion(question: "7. 'The farmers in the north grow maize.' What is the complete subject?", options: ["The farmers", "The farmers in the north", "Grow maize", "In the north"], correctIndex: 1, difficulty: "Medium", explanation: "The complete subject includes the noun and all its modifiers."),
      QuizQuestion(question: "8. 'Ran quickly down the street.' This is:", options: ["A complete sentence", "A sentence with only a predicate (fragment)", "A question", "A command"], correctIndex: 1, difficulty: "Hard", explanation: "It has no subject — it is a sentence fragment (predicate only)."),
      QuizQuestion(question: "9. In an interrogative sentence, the subject:", options: ["Is always at the beginning", "Often comes after the auxiliary verb", "Is never present", "Replaces the verb"], correctIndex: 1, difficulty: "Hard", explanation: "In questions, the subject usually follows the auxiliary (e.g., 'Is **she** going?')."),
      QuizQuestion(question: "10. 'Every student in the class passed.' The predicate is:", options: ["Every student", "In the class", "Student in the class", "Passed"], correctIndex: 3, difficulty: "Medium", explanation: "'Passed' is the simple predicate (main verb) of the sentence."),
    ],
  ),

  "Active and Passive Voice": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. In an active voice sentence, the subject:", options: ["Receives the action", "Performs the action", "Is always omitted", "Comes after the verb"], correctIndex: 1, difficulty: "Easy", explanation: "In active voice, the subject does the action."),
      QuizQuestion(question: "2. Which sentence is in the passive voice?", options: ["The girl kicked the ball.", "The ball was kicked by the girl.", "She answered the question.", "He loves football."], correctIndex: 1, difficulty: "Easy", explanation: "The ball (object) becomes the subject in passive voice."),
      QuizQuestion(question: "3. The passive voice is formed using:", options: ["A verb + infinitive", "A form of 'be' + past participle", "A modal verb alone", "The present participle"], correctIndex: 1, difficulty: "Medium", explanation: "Passive constructions use 'be' (is/was/were) + past participle."),
      QuizQuestion(question: "4. Change to passive voice: 'The teacher marked the papers.'", options: ["The papers is marked by the teacher.", "The papers marked by the teacher.", "The papers were marked by the teacher.", "The teacher were marking the papers."], correctIndex: 2, difficulty: "Medium", explanation: "Passive: The papers (subject) + were marked (past passive) + by the teacher."),
      QuizQuestion(question: "5. When is passive voice used?", options: ["When the doer is known and important", "When the action is more important than who performed it", "When simpler grammar is needed", "Only in spoken English"], correctIndex: 1, difficulty: "Medium", explanation: "Passive voice emphasises the action or the object, not the doer."),
      QuizQuestion(question: "6. 'The bridge was built in 1956.' Who built the bridge?", options: ["Unknown or unimportant", "The government", "A famous engineer", "The bridge itself"], correctIndex: 0, difficulty: "Medium", explanation: "The agent is omitted because it is unknown or unimportant."),
      QuizQuestion(question: "7. Convert to active voice: 'The cake was eaten by the children.'", options: ["The cake ate the children.", "The children ate the cake.", "Eaten by the children was the cake.", "The children were eating cake."], correctIndex: 1, difficulty: "Easy", explanation: "Active: Children (subject) + ate (verb) + the cake (object)."),
      QuizQuestion(question: "8. Which verb form is used in the passive with 'is'?", options: ["Base form", "Past participle", "Present participle", "Infinitive"], correctIndex: 1, difficulty: "Medium", explanation: "'Is + past participle' forms the present simple passive."),
      QuizQuestion(question: "9. 'The news was announced on the radio.' What tense is this passive?", options: ["Present passive", "Past passive", "Future passive", "Present perfect passive"], correctIndex: 1, difficulty: "Hard", explanation: "'was announced' is the past simple passive."),
      QuizQuestion(question: "10. In formal writing, which voice is preferred?", options: ["Active voice only", "Passive voice is often preferred", "Neither voice is used", "Imperative voice"], correctIndex: 1, difficulty: "Hard", explanation: "Passive voice is common in formal, academic, and scientific writing."),
    ],
  ),

  "Reported Speech (Direct and Indirect)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Direct speech uses:", options: ["Reported forms of verbs", "Quotation marks to show exact words", "No punctuation", "Only past tense verbs"], correctIndex: 1, difficulty: "Easy", explanation: "Direct speech records exact words and uses quotation marks."),
      QuizQuestion(question: "2. Convert to reported speech: She said, 'I am happy.'", options: ["She said she was happy.", "She said I am happy.", "She says she is happy.", "She told she was happy."], correctIndex: 0, difficulty: "Easy", explanation: "'Am' shifts to 'was' in reported speech (backshifting)."),
      QuizQuestion(question: "3. When reporting speech, 'will' becomes:", options: ["Shall", "Would", "Can", "Must"], correctIndex: 1, difficulty: "Medium", explanation: "'Will' shifts to 'would' when converting to reported speech."),
      QuizQuestion(question: "4. 'He said, \"I can drive.\"' In reported speech, this becomes:", options: ["He said he could drive.", "He said he can drive.", "He told he could drive.", "He says he could drive."], correctIndex: 0, difficulty: "Medium", explanation: "'Can' shifts to 'could' in reported speech."),
      QuizQuestion(question: "5. Convert: 'She asked, \"Are you coming?\"'", options: ["She asked if I was coming.", "She asked am I coming.", "She asked whether I am coming.", "She asked that I come."], correctIndex: 0, difficulty: "Medium", explanation: "Questions shift to 'if/whether + subject + past verb' in reported speech."),
      QuizQuestion(question: "6. The pronoun 'I' in reported speech usually changes to:", options: ["He / She (depending on the speaker)", "They", "I (no change)", "We"], correctIndex: 0, difficulty: "Easy", explanation: "First-person pronouns change to third-person in reported speech."),
      QuizQuestion(question: "7. 'Today' in direct speech becomes ______ in reported speech.", options: ["Yesterday", "That day", "Now", "Tomorrow"], correctIndex: 1, difficulty: "Medium", explanation: "'Today' shifts to 'that day' in reported speech."),
      QuizQuestion(question: "8. 'He ordered me, \"Sit down!\"' In reported speech:", options: ["He ordered me to sit down.", "He ordered me sat down.", "He told me sit down.", "He said to me that sit down."], correctIndex: 0, difficulty: "Medium", explanation: "Commands use 'ordered/told + object + to + infinitive' in reported speech."),
      QuizQuestion(question: "9. Which tense shift occurs in reported speech?", options: ["No change", "All verbs move one tense back (backshifting)", "All verbs become present tense", "Only future verbs change"], correctIndex: 1, difficulty: "Hard", explanation: "Backshifting moves verbs one tense into the past in reported speech."),
      QuizQuestion(question: "10. 'This' changes to ______ and 'here' changes to ______ in reported speech.", options: ["That / There", "These / Those", "That / Now", "Here / There"], correctIndex: 0, difficulty: "Hard", explanation: "Demonstratives and place words shift in reported speech: this→that, here→there."),
    ],
  ),

  "Mastering Conditional Sentences (Type 1)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. A Type 1 (First) Conditional sentence expresses:", options: ["An unreal past situation", "A real and possible future condition", "An impossible situation", "A past habit"], correctIndex: 1, difficulty: "Easy", explanation: "Type 1 conditionals talk about likely or possible future events."),
      QuizQuestion(question: "2. The correct structure of a Type 1 conditional is:", options: ["If + past simple, would + verb", "If + present simple, will + verb", "If + past perfect, would have + verb", "If + present perfect, shall + verb"], correctIndex: 1, difficulty: "Easy", explanation: "Type 1: If + present simple, will + base verb."),
      QuizQuestion(question: "3. Which sentence is a correct Type 1 conditional?", options: ["If it rained, I would go out.", "If she studies, she will pass.", "If I had money, I bought a car.", "If he were here, he would help."], correctIndex: 1, difficulty: "Easy", explanation: "Present simple in the 'if' clause and 'will' in the main clause."),
      QuizQuestion(question: "4. 'Unless you study, you ______ fail.' Fill in the blank.", options: ["Will", "Would", "Could have", "Had"], correctIndex: 0, difficulty: "Medium", explanation: "'Unless' means 'if not,' so the Type 1 rule still applies."),
      QuizQuestion(question: "5. The 'if' clause in a conditional sentence:", options: ["Always comes first", "Must come second", "Can come before or after the main clause", "Is optional"], correctIndex: 2, difficulty: "Medium", explanation: "The 'if' clause can appear before or after the main clause."),
      QuizQuestion(question: "6. 'If you heat ice, it melts.' What type of conditional is this?", options: ["Type 1", "Type 2", "Zero conditional", "Type 3"], correctIndex: 2, difficulty: "Hard", explanation: "Zero conditional expresses universal truths and scientific facts."),
      QuizQuestion(question: "7. What is the negative form of: 'If she passes, she will celebrate.'?", options: ["If she won't pass, she won't celebrate.", "If she doesn't pass, she won't celebrate.", "If she didn't pass, she would not celebrate.", "If she not pass, she will not celebrate."], correctIndex: 1, difficulty: "Medium", explanation: "The negative of present simple in 'if' clause is 'doesn't/don't'."),
      QuizQuestion(question: "8. 'If she studies hard, ______ pass her BECE.' Select the correct option.", options: ["She will", "She would", "She has", "She had"], correctIndex: 0, difficulty: "Easy", explanation: "'Will' is used in the result clause of a Type 1 conditional."),
      QuizQuestion(question: "9. Which modal can replace 'will' in a Type 1 conditional?", options: ["Would (without change in meaning)", "Might (to show possibility)", "Had (to show past)", "Were (to show formality)"], correctIndex: 1, difficulty: "Hard", explanation: "'Might' can replace 'will' to show possibility rather than certainty."),
      QuizQuestion(question: "10. 'If it rains tomorrow, the match ______.' Best completion:", options: ["Was cancelled", "Will be cancelled", "Would be cancelled", "Had been cancelled"], correctIndex: 1, difficulty: "Medium", explanation: "Type 1: future action uses 'will + base/passive form'."),
    ],
  ),

  // ─── SCIENCE: DIVERSITY OF MATTER ──────────────────────────────────────
  "Classification of Materials": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Materials are classified based on:", options: ["Their colour only", "Their properties such as hardness, conductivity and flexibility", "Their price in the market", "How old they are"], correctIndex: 1, difficulty: "Easy", explanation: "Classification is based on physical and chemical properties."),
      QuizQuestion(question: "2. Which of these is a conductor of electricity?", options: ["Wood", "Rubber", "Copper", "Glass"], correctIndex: 2, difficulty: "Easy", explanation: "Copper is a metal and an excellent conductor of electricity."),
      QuizQuestion(question: "3. A material that does NOT allow electricity to pass through is called:", options: ["A conductor", "A semiconductor", "An insulator", "A reactor"], correctIndex: 2, difficulty: "Easy", explanation: "Insulators do not allow the flow of electric current."),
      QuizQuestion(question: "4. Which property describes how easily a material can be scratched?", options: ["Density", "Hardness", "Malleability", "Conductivity"], correctIndex: 1, difficulty: "Medium", explanation: "Hardness measures a material's resistance to scratching."),
      QuizQuestion(question: "5. Metals are generally:", options: ["Dull and brittle", "Good conductors and shiny", "Insulators and soft", "Light and transparent"], correctIndex: 1, difficulty: "Easy", explanation: "Metals are typically shiny, strong, and good conductors."),
      QuizQuestion(question: "6. Which material is both strong and flexible, making it useful in construction?", options: ["Glass", "Steel", "Chalk", "Wax"], correctIndex: 1, difficulty: "Medium", explanation: "Steel combines strength with some flexibility, ideal for buildings and bridges."),
      QuizQuestion(question: "7. 'Malleability' means a material can be:", options: ["Dissolved easily", "Hammered or rolled into thin sheets", "Heated to high temperatures", "Stretched into wires"], correctIndex: 1, difficulty: "Medium", explanation: "A malleable material can be shaped by hammering or pressing."),
      QuizQuestion(question: "8. Which classification describes wood?", options: ["Metal", "Ceramic", "Natural material", "Synthetic polymer"], correctIndex: 2, difficulty: "Easy", explanation: "Wood is a naturally occurring material derived from trees."),
      QuizQuestion(question: "9. Plastics are classified as:", options: ["Metals", "Natural materials", "Synthetic (man-made) materials", "Ceramics"], correctIndex: 2, difficulty: "Medium", explanation: "Plastics are synthetic polymers manufactured through chemical processes."),
      QuizQuestion(question: "10. Which property would you test to find out if a liquid boils easily?", options: ["Hardness", "Malleability", "Boiling point", "Magnetic strength"], correctIndex: 2, difficulty: "Medium", explanation: "The boiling point tells you at what temperature a liquid becomes a gas."),
    ],
  ),

  "Human Growth Stages": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. What is the correct order of human growth stages?", options: ["Adolescence, Infancy, Childhood, Adulthood", "Infancy, Childhood, Adolescence, Adulthood", "Childhood, Infancy, Adulthood, Adolescence", "Adulthood, Childhood, Infancy, Adolescence"], correctIndex: 1, difficulty: "Easy", explanation: "Humans develop: Infancy → Childhood → Adolescence → Adulthood."),
      QuizQuestion(question: "2. Which gland controls most physical changes during puberty?", options: ["Pancreas", "Pituitary gland", "Liver", "Kidney"], correctIndex: 1, difficulty: "Medium", explanation: "The pituitary gland releases growth hormones that drive puberty."),
      QuizQuestion(question: "3. Adolescence is characterised by:", options: ["Rapid physical and emotional development", "Very slow growth", "Complete development of the body", "Only mental changes"], correctIndex: 0, difficulty: "Easy", explanation: "Adolescence involves rapid physical, emotional, and social changes."),
      QuizQuestion(question: "4. 'Puberty' describes:", options: ["The ageing process", "The period when a child's body develops into an adult body", "A disease of the bones", "The process of learning to walk"], correctIndex: 1, difficulty: "Easy", explanation: "Puberty is the biological transition from childhood to adulthood."),
      QuizQuestion(question: "5. Which of these is a PRIMARY sex characteristic in males?", options: ["Deepening voice", "Growth of facial hair", "Production of sperm", "Widening of hips"], correctIndex: 2, difficulty: "Hard", explanation: "Primary sex characteristics are directly related to reproduction."),
      QuizQuestion(question: "6. During old age, the human body:", options: ["Grows rapidly", "Experiences a gradual decline in physical functions", "Stops producing hormones completely", "Becomes stronger"], correctIndex: 1, difficulty: "Easy", explanation: "Ageing involves gradual reduction in physical and cognitive functions."),
      QuizQuestion(question: "7. Which nutrient is most important for growth and tissue repair?", options: ["Carbohydrates", "Fats", "Proteins", "Vitamins"], correctIndex: 2, difficulty: "Medium", explanation: "Proteins are the building blocks for growth and tissue repair."),
      QuizQuestion(question: "8. The period between birth and 2 years of age is called:", options: ["Adolescence", "Childhood", "Infancy", "Adulthood"], correctIndex: 2, difficulty: "Easy", explanation: "Infancy refers to the earliest stage of human development."),
      QuizQuestion(question: "9. Emotional changes during adolescence include:", options: ["Loss of all emotions", "Increased self-awareness and mood swings", "Complete emotional stability", "Lack of interest in peers"], correctIndex: 1, difficulty: "Medium", explanation: "Adolescents experience heightened emotions and identity development."),
      QuizQuestion(question: "10. Which practice promotes healthy growth during childhood?", options: ["Skipping meals", "Regular exercise and balanced nutrition", "Staying indoors always", "Avoiding sleep"], correctIndex: 1, difficulty: "Easy", explanation: "Exercise and proper nutrition are essential for healthy development."),
    ],
  ),

  // ─── MATH ──────────────────────────────────────────────────────────────
  "Number and Numeration Systems": QuizModel(
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
          explanation: "356.07 = 3.5607 × 10²."
      ),

      QuizQuestion(
          question: "2. Which of the following numbers is the prime number greater than 23?           (BECE 2004 Q6)",
          options: [
            "17",
            "24",
            "25",
            "29"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "29 is the only prime number greater than 23."
      ),

      QuizQuestion(
          question: "3. Write 4687.02 in standard form.          (BECE 1991 Q5)",
          options: [
            "46.8702 × 10³",
            "46.8702 × 10⁴",
            "4.68702 × 10⁵",
            "4.68702 × 10³"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "4687.02 = 4.68702 × 10³."
      ),

      QuizQuestion(
          question: "4. Correct 0.02751 to three decimal places.          (BECE 2011 Q40)",
          options: [
            "0.027",
            "0.028",
            "0.03",
            "0.28"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Rounded to three decimal places, 0.02751 = 0.028."
      ),

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
          explanation: "1342 = 1.342 × 10³."
      ),

      QuizQuestion(
          question: "6. Express 2345 in standard form.           (BECE 2001 Q18)",
          options: [
            "2.345 × 10³",
            "2.345 × 10²",
            "2.345 × 10⁴",
            "2.345 × 10"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "2345 = 2.345 × 10³."
      ),

      QuizQuestion(
          question: "7. Write GH₵35,632.00 correct to the nearest thousand cedis.           (BECE 1994 Q25)",
          options: [
            "GH₵40,000.00",
            "GH₵36,000.00",
            "GH₵35,600.00",
            "GH₵35,000.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "35,632 rounded to the nearest thousand is 36,000."
      ),

      QuizQuestion(
          question: "8. Write 83000 in standard form.           (BECE 2003 Q18)",
          options: [
            "8.3 × 10⁴",
            "8.3 × 10⁻³",
            "8.3 × 10³",
            "8.3 × 10⁵"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "83000 = 8.3 × 10⁴."
      ),

      QuizQuestion(
          question: "9. Which of the following is not a prime number?           (BECE 1994 Q5)",
          options: [
            "3",
            "5",
            "7",
            "9"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "9 = 3 × 3, so it is not a prime number."
      ),

      QuizQuestion(
          question: "10. Express 2474.5 in standard form.           (BECE 2002A Q4)",
          options: [
            "2.4745 × 10²",
            "2.4745 × 10³",
            "2.4745 × 10⁻²",
            "2.4745 × 10⁻³"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "2474.5 = 2.4745 × 10³."
      ),

      QuizQuestion(
          question: "11. Write 78910 correct to the nearest thousand.           (BECE 2004 Q8)",
          options: [
            "70,000",
            "78,000",
            "79,000",
            "80,000"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "78,910 rounded to the nearest thousand is 79,000."
      ),

      QuizQuestion(
          question: "12. Express 962 in standard form.           (BECE 2006 Q16)",
          options: [
            "96.2 × 10",
            "9.62 × 10²",
            "0.962 × 10³",
            "0.0962 × 10⁴"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "962 = 9.62 × 10²."
      ),

      QuizQuestion(
          question: "13. Round 8921465 to the nearest hundred.           (BECE 2008 Q3)",
          options: [
            "8921000",
            "8921400",
            "8921460",
            "8921500"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "8,921,465 rounded to the nearest hundred is 8,921,500."
      ),

      QuizQuestion(
          question: "14. Write the number 34.1 in standard form.           (BECE 2008 Q36)",
          options: [
            "3.41 × 10²",
            "3.41 × 10¹",
            "3.41 × 10⁰",
            "3.41 × 10"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "34.1 = 3.41 × 10¹."
      ),

      QuizQuestion(
          question: "15. Which of the following is an even prime number?           (BECE 2023 Q7)",
          options: [
            "1",
            "8",
            "4",
            "2"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "2 is the only even prime number."
      ),

      QuizQuestion(
          question: "16. Write 2340000 in standard form.           (BECE 2009 Q2)",
          options: [
            "2.34 × 10⁻⁶",
            "2.34 × 10⁵",
            "2.34 × 10⁶",
            "2.34 × 10⁻⁵"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "2,340,000 = 2.34 × 10⁶."
      ),

      QuizQuestion(
          question: "17. Express 4037 in standard form.           (BECE 2010 Q36)",
          options: [
            "4.037 × 10⁴",
            "4.037 × 10⁻³",
            "4.037 × 10³",
            "4.037 × 10⁻⁴"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "4037 = 4.037 × 10³."
      ),

      QuizQuestion(
          question: "18. Write 3560 in standard form.           (BECE 2011 Q39)",
          options: [
            "3.56 × 10⁴",
            "3.56 × 10⁻³",
            "3.56 × 10³",
            "3.56 × 10⁻⁴"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "3560 = 3.56 × 10³."
      ),

      QuizQuestion(
          question: "19. Which of the following numbers is an integer?           (BECE 2012 Q2)",
          options: [
            "-5/4",
            "-2/3",
            "0.5",
            "-1"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "-1 is an integer."
      ),

      QuizQuestion(
          question: "20. Which of the following is arranged in ascending order?           (BECE 2016 Q9)",
          options: [
            "-10, -7, 4.2, 9",
            "-10, 9, -7, 4.2",
            "-4, -7, 10, 2.9",
            "2, 4, -7, 9, 10"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "-10 < -7 < 4.2 < 9."
      ),

      QuizQuestion(
          question: "21. Express 134.78 correct to the nearest tenth.           (BECE 2021 Q8)",
          options: [
            "130.0",
            "134.7",
            "134.8",
            "135.0"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "134.78 rounded to one decimal place is 134.8."
      ),

      QuizQuestion(
          question: "22. Express 625.13 in standard form.           (BECE 2015 Q16)",
          options: [
            "6.2513 × 10⁻²",
            "6.2513 × 10⁻⁴",
            "6.2513 × 10²",
            "6.2513 × 10⁴"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "625.13 = 6.2513 × 10²."
      ),

      QuizQuestion(
          question: "23. Which of the following is the largest set?           (BECE 2016 Q6)",
          options: [
            "{Composites}",
            "{Integers}",
            "{Natural numbers}",
            "{Whole numbers}"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The set of integers contains whole numbers, natural numbers and their negative counterparts."
      ),

      QuizQuestion(
          question: "24. Correct 48,947.2547 to the nearest hundred.           (BECE 2016 Q6)",
          options: [
            "490",
            "48,900",
            "48,950",
            "49,000"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "48,947.2547 rounded to the nearest hundred is 49,000."
      ),

      QuizQuestion(
          question: "25. Arrange the following integers from the least to the highest: 4, 9, -10, 7 and 2.           (BECE 2018 Q1)",
          options: [
            "-10, -7, 4.2, 9",
            "-64, -25, 4, 17",
            "-64, -25, 17, 4",
            "17, 4, -25, -64"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Ascending order is -10, 2, 4, 7, 9. (The options are copied exactly as shown in the image.)"
      ),

      QuizQuestion(
          question: "26. Which of the following is not an integer?           (BECE 2022 Q11)",
          options: [
            "1",
            "-5",
            "0.5",
            "0"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "0.5 is not an integer."
      ),

      QuizQuestion(
          question: "27. Which of the following numbers is the largest?           (BECE 2019 Q3)",
          options: [
            "-70",
            "-50",
            "-3",
            "-2"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "-2 is the largest among the given negative numbers."
      ),

      QuizQuestion(
          question: "28. Find the largest value of these numbers: -1, 0, -6, -3.           (BECE 2023 Q2)",
          options: [
            "0", "-1", "3", "-6"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "0 is the largest value."
      ),
    ],
  ),
  "Number Operations": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Find the highest (greatest) common factor of 63 and 81.          (BECE 2001 Q4)",
          options: [
            "3",
            "7",
            "9",
            "21"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "63 = 3² × 7 and 81 = 3⁴, so the HCF is 3² = 9."
      ),

      QuizQuestion(
          question: "2. Express 24 as a product of prime factors.          (BECE 1999 Q3)",
          options: [
            "2² × 3",
            "2 × 3",
            "2³ × 3",
            "2² × 3²"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "24 = 2³ × 3."
      ),

      QuizQuestion(
          question: "3. What is the H.C.F of 48, 30 and 18?          (BECE 1995 Q3)",
          options: [
            "2",
            "3",
            "5",
            "6"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The HCF of 48, 30 and 18 is 6."
      ),

      QuizQuestion(
          question: "4. A basket contains 450 oranges. If each orange costs ₵15.00, find the total cost of the oranges.          (BECE 1993 Q27)",
          options: [
            "₵30.00",
            "₵435.00",
            "₵465.00",
            "₵6,750.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "450 × 15 = ₵6,750.00."
      ),

      QuizQuestion(
          question: "5. A watchman was paid basic wage of ₵250.00 a day. If he worked everyday in the month, calculate his basic wage for February, 1988.          (BECE 1990 Q27)",
          options: [
            "₵6,250.00",
            "₵7,200.00",
            "₵7,250.00",
            "₵7,500.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "1988 was a leap year, so February had 29 days. 29 × 250 = ₵7,250.00."
      ),

      QuizQuestion(
          question: "6. If 26039 oranges are shared equally among 13 women, how many oranges does each woman receive?          (BECE 1990 Q6)",
          options: [
            "23",
            "203",
            "230",
            "2003"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "26039 ÷ 13 = 2003."
      ),

      QuizQuestion(
          question: "7. What is the equivalent of 2² × 6² in terms of indices?          (BECE 1998 Q4)",
          options: [
            "5",
            "7",
            "10",
            "35"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "2² × 6² = (2 × 6)² = 12² = 144. (The provided options appear incorrect in the source.)"
      ),

      QuizQuestion(
          question: "8. Find the L.C.M. of 18, 42 and 90.          (BECE 1997 Q9)",
          options: [
            "2 × 3²",
            "2 × 3 × 7",
            "2 × 3² × 5",
            "2 × 3² × 5 × 7"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "LCM = 2 × 3² × 5 × 7 = 630."
      ),

      QuizQuestion(
          question: "9. Simplify 11 - (11 - 4) + 13.          (BECE 2000 Q3)",
          options: [
            "9",
            "17",
            "9",
            "17"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "11 − (11 − 4) + 13 = 11 − 7 + 13 = 17."
      ),

      QuizQuestion(
          question: "10. Find the least whole number which must be added to 207 to make it divisible by 17.          (BECE 1992 Q6)",
          options: [
            "0",
            "3",
            "13",
            "14"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "207 ÷ 17 leaves remainder 3. Add 14 to get 221, which is divisible by 17."
      ),
      QuizQuestion(
          question: "11. Find the Greatest Common Factor (HCF) of 18, 36 and 120.          (BECE 2009 Q26)",
          options: [
            "6",
            "12",
            "18",
            "24"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The HCF of 18, 36 and 120 is 6."
      ),
      QuizQuestion(
          question: "12. 200 bottles of equal capacity hold 350 litres of water. How much water does each bottle hold?          (BECE 1996 Q37)",
          options: [
            "1.750 litres",
            "175 litres",
            "17.5 litres",
            "1.75 litres"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "350 ÷ 200 = 1.75 litres."
      ),

      QuizQuestion(
          question: "13. Find the least common multiple of 7, 14 and 18.          (BECE 1990 Q23)",
          options: [
            "71418",
            "1764",
            "252",
            "126"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "LCM = 2 × 3² × 7 = 252."
      ),

      QuizQuestion(
          question: "14. A pencil sells at ₵180.00 and an eraser sells at ₵120.00. How much will you pay if you buy three pencils and four erasers?          (BECE 2000 Q11)",
          options: [
            "₵1,200.00",
            "₵1,080.00",
            "₵1,020.00",
            "₵1,280.00"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "3 × 180 + 4 × 120 = 540 + 480 = ₵1,020.00. (The correct value is ₵1,020.00, but the provided answer key/options appear inconsistent.)"
      ),

      QuizQuestion(
          question: "15. What is the value of 4 + x⁰?          (BECE 2009 Q17)",
          options: [
            "3",
            "4",
            "5",
            "6"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Since x⁰ = 1 (for x ≠ 0), 4 + 1 = 5."
      ),

      QuizQuestion(
          question: "16. A ribbon is 4 m long. How many pieces each 30 cm long can be cut from the ribbon?          (BECE 1999 Q8)",
          options: [
            "7.3",
            "11.3",
            "12.0",
            "13.3"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "4 m = 400 cm. 400 ÷ 30 = 13 remainder 10, so 13 full pieces can be cut. (The provided options appear incorrect.)"
      ),

      QuizQuestion(
          question: "17. Find one-hundredth of 1.0756.          (BECE 1991 Q24)",
          options: [
            "107.56",
            "10.756",
            "0.1756",
            "0.010756"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "One-hundredth means divide by 100: 1.0756 ÷ 100 = 0.010756."
      ),

      QuizQuestion(
          question: "18. Find the G.C.F (H.C.F) of 2³ × 3² and 2² × 3⁴.          (BECE 1991 Q9)",
          options: [
            "8",
            "9",
            "72",
            "648"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Take the smallest powers: 2² × 3² = 4 × 9 = 36. (The correct answer is 36, but it is not among the provided options.)"
      ),

      QuizQuestion(
          question: "19. If Y = 595 and Z = 7071, find the sum of Y and Z.          (BECE 1999 Q6)",
          options: [
            "6466",
            "7566",
            "7666",
            "12,021"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "595 + 7071 = 7666."
      ),

      QuizQuestion(
          question: "20. What is the H.C.F of 18, 42 and 90?          (BECE 1997 Q10)",
          options: [
            "21",
            "18",
            "9",
            "6"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The HCF of 18, 42 and 90 is 6."
      ),
      QuizQuestion(
          question: "21. Express 350 as a product of prime factors.          (BECE 2006 Q15)",
          options: [
            "2 × 5 × 7",
            "2 × 5² × 7",
            "2² × 5 × 7²",
            "2² × 5 × 7"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "350 = 2 × 175 = 2 × 5² × 7."
      ),

      QuizQuestion(
          question: "22. Simplify: -15 - (-20) + (-10).          (BECE 2022 Q13)",
          options: [
            "-45",
            "-25",
            "-5",
            "5"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "-15 - (-20) + (-10) = -15 + 20 - 10 = -5."
      ),

      QuizQuestion(
          question: "23. Find the least common multiple (LCM) of 4, 6 and 10.          (BECE 2004 Q24)",
          options: [
            "10",
            "24",
            "30",
            "60"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "4 = 2², 6 = 2 × 3 and 10 = 2 × 5. Therefore, the LCM is 2² × 3 × 5 = 60."
      ),

      QuizQuestion(
          question: "24. Kofi bought four pencils at ₵200.00 each and five pens at ₵350.00 each. How much did he pay altogether?          (BECE 2002 Q11)",
          options: [
            "₵2,400.00",
            "₵2,450.00",
            "₵2,550.00",
            "₵2,650.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The pencils cost 4 × ₵200.00 = ₵800.00 and the pens cost 5 × ₵350.00 = ₵1,750.00. Altogether, he paid ₵2,550.00."
      ),

      QuizQuestion(
          question: "25. Find the product of 17 and 121.          (BECE 2003 Q9)",
          options: [
            "968",
            "1,751",
            "2,057",
            "8,591"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "17 × 121 = 2,057."
      ),

      QuizQuestion(
          question: "26. 135 pencils were to be packed into boxes. Each box could take 12 pencils. Find the number of boxes that were fully packed.          (BECE 2002 Q8)",
          options: [
            "10 boxes",
            "11 boxes",
            "12 boxes",
            "13 boxes"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "135 ÷ 12 = 11 remainder 3. Therefore, 11 boxes were fully packed."
      ),

      QuizQuestion(
          question: "27. Find the highest common factor of 48, 60 and 96.          (BECE 2004 Q15)",
          options: [
            "12",
            "24",
            "36",
            "48"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The greatest number that divides 48, 60 and 96 exactly is 12."
      ),

      QuizQuestion(
          question: "28. Express 72 as a product of prime factors.          (BECE 2003 Q5)",
          options: [
            "2³ × 3²",
            "2² × 3³",
            "2² × 3²",
            "2³ × 3"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "72 = 8 × 9 = 2³ × 3²."
      ),

      QuizQuestion(
          question: "29. Find the sum of all the even numbers between 70 and 80.          (BECE 2001 Q7)",
          options: [
            "200",
            "223",
            "280",
            "300"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The even numbers strictly between 70 and 80 are 72, 74, 76 and 78. Their sum is 72 + 74 + 76 + 78 = 300."
      ),

      QuizQuestion(
          question: "30. Find the least common multiple (L.C.M) of the numbers 10, 15 and 25.          (BECE 2002 Q11)",
          options: [
            "30",
            "60",
            "120",
            "150"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "10 = 2 × 5, 15 = 3 × 5 and 25 = 5². Therefore, the LCM is 2 × 3 × 5² = 150."
      ),

      QuizQuestion(
          question: "31. In sharing 95 oranges with Dede, Fofo kept 45 of them and shared the rest equally with Dede. How many oranges did Dede get?          (BECE 2005 Q16)",
          options: [
            "20",
            "25",
            "40",
            "55"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "After Fofo kept 45 oranges, 95 - 45 = 50 remained. Sharing the 50 equally between Fofo and Dede gives Dede 50 ÷ 2 = 25 oranges."
      ),

      QuizQuestion(
          question: "32. Which of the following is equivalent to 2² × 6³?          (BECE 2004 Q29)",
          options: [
            "2⁶ × 3³",
            "2⁵ × 3³",
            "2⁴ × 3",
            "2³ × 3³"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Since 6³ = (2 × 3)³ = 2³ × 3³, then 2² × 6³ = 2² × 2³ × 3³ = 2⁵ × 3³."
      ),

      QuizQuestion(
          question: "33. Araba owes ₵550,000.00 at a bank. She goes to pay ₵150,000.00. How much does Araba owe the bank now?          (BECE 2003 Q10)",
          options: [
            "₵700,000.00",
            "₵600,000.00",
            "₵500,000.00",
            "₵400,000.00"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "₵550,000.00 - ₵150,000.00 = ₵400,000.00."
      ),

      QuizQuestion(
          question: "34. Simplify -35 - (-15) + (-30).          (BECE 2004 Q7)",
          options: [
            "17",
            "-50",
            "50",
            "30"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "-35 - (-15) + (-30) = -35 + 15 - 30 = -50."
      ),
    ],
  ),
  "Fractions, Decimals and Percentages": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: r"1. Simplify 2 × (3\frac{1}{2} + 1\frac{1}{2}).          (BECE 1992 Q7)",
          options: [
            "2",
            r"4\frac{1}{2}",
            r"6\frac{1}{2}",
            "9"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "3½ + 1½ = 5, and 2 × 5 = 10. The intended BECE answer in the options corresponds to 9 (as shown in the source, though the expression appears misprinted)."
      ),

      QuizQuestion(
          question: r"2. Express \frac{3}{8} as a percentage.          (BECE 1992 Q16)",
          options: [
            "0.375%",
            r"12\frac{1}{2}%",
            "25%",
            r"37\frac{1}{2}%"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "3/8 = 0.375 = 37.5% = 37½%."
      ),

      QuizQuestion(
          question: r"3. Arrange the fractions \frac{2}{3}, \frac{3}{4}, \frac{3}{5} in ascending order.          (BECE 1993 Q7)",
          options: [
            r"\frac{2}{3}, \frac{3}{4}, \frac{3}{5}",
            r"\frac{3}{4}, \frac{3}{5}, \frac{2}{3}",
            r"\frac{3}{5}, \frac{2}{3}, \frac{3}{4}",
            r"\frac{3}{5}, \frac{3}{4}, \frac{2}{3}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "3/5 = 0.6, 2/3 ≈ 0.667, 3/4 = 0.75."
      ),

      QuizQuestion(
          question: "4. A tank contains 250 litres of water. If 196 litres is used, what percentage of the original quantity is left?          (BECE 1990 Q28)",
          options: [
            "61.6%",
            "60.5%",
            "59.0%",
            "54.2%"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "250 − 196 = 54 litres. (54 ÷ 250) × 100 = 21.6%. The options in the source appear inconsistent."
      ),

      QuizQuestion(
          question: r"5. Which of the following inequalities is/are true? I. \frac{5}{6} > \frac{3}{4} II. \frac{1}{3} < \frac{3}{5} III. \frac{3}{8} > \frac{1}{2}          (BECE 1993 Q11)",
          options: [
            "I only",
            "II only",
            "III only",
            "I and II only"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "I and II are true, while III is false."
      ),

      QuizQuestion(
          question: "6. In an examination 60% of the candidates passed. The number who passed was 240. How many failed?          (BECE 1990 Q11)",
          options: [
            "140",
            "160",
            "360",
            "400"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Total = 240 ÷ 0.6 = 400. Failed = 400 − 240 = 160."
      ),

      QuizQuestion(
          question: "7. Express 25 as a percentage of 75.          (BECE 1994 Q18)",
          options: [
            "300%",
            "100%",
            "50%",
            "33.3%"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "(25 ÷ 75) × 100 = 33⅓%."
      ),

      QuizQuestion(
          question: "8. If 22% of the length of a rope is 55 cm, find the full length of the rope.          (BECE 1991 Q39)",
          options: [
            "12.1 cm",
            "25 cm",
            "121 cm",
            "250 cm"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Length = 55 ÷ 0.22 = 250 cm."
      ),

      QuizQuestion(
          question: r"9. Find 2\frac{1}{2}% of ₵2,000.00.          (BECE 1993 Q5)",
          options: [
            "₵40.00",
            "₵50.00",
            "₵100.00",
            "₵800.00"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "2.5% = 0.025. 0.025 × 2000 = ₵50.00."
      ),

      QuizQuestion(
          question: "10. In a school, 80 pupils wrote an examination and 64 passed. What is the percentage who passed?          (BECE 1995 Q12)",
          options: [
            "80%",
            "16%",
            "20%",
            "64%"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "(64 ÷ 80) × 100 = 80%."
      ),

      QuizQuestion(
          question: r"11. Arrange the following fractions in ascending order: \frac{1}{2}, \frac{2}{5}, \frac{1}{3}.          (BECE 1993 Q9)",
          options: [
            r"\frac{1}{2}, \frac{2}{5}, \frac{1}{3}",
            r"\frac{1}{3}, \frac{2}{5}, \frac{1}{2}",
            r"\frac{2}{5}, \frac{1}{3}, \frac{1}{2}",
            r"\frac{1}{3}, \frac{1}{2}, \frac{2}{5}"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "1/3 ≈ 0.333, 2/5 = 0.4, 1/2 = 0.5."
      ),

      QuizQuestion(
          question: r"12. Simplify: \frac{1}{6} − \frac{2}{3} + \frac{1}{4}.          (BECE 1996 Q9)",
          options: [
            r"\frac{17}{30}",
            r"\frac{1}{12}",
            r"\frac{-7}{30}",
            r"\frac{-7}{12}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "LCM = 12. 2/12 − 8/12 + 3/12 = −3/12 = −1/4. (The source options appear inconsistent.)"
      ),

      QuizQuestion(
          question: "13. What is 16% of ₵500,000.00?          (BECE 1996 Q31)",
          options: [
            "₵80.00",
            "₵8,000.00",
            "₵80,000.00",
            "₵420,000.00"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "0.16 × 500,000 = ₵80,000.00."
      ),

      QuizQuestion(
          question: "14. Express 30 cm as a percentage of 2 m.          (BECE 1997 Q5)",
          options: [
            "0.15%",
            "1.5%",
            "6.7%",
            "15%"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "2 m = 200 cm. (30 ÷ 200) × 100 = 15%."
      ),

      QuizQuestion(
          question: r"15. Arrange the following decimals in descending order: \frac{9}{16}, \frac{5}{8}, 0.62.          (BECE 1997 Q8)",
          options: [
            r"\frac{9}{16}, \frac{5}{8}, 0.62",
            r"0.62, \frac{5}{8}, \frac{9}{16}",
            r"\frac{5}{8}, 0.62, \frac{9}{16}",
            r"\frac{9}{16}, 0.62, \frac{5}{8}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "5/8 = 0.625, 0.62 = 0.62, 9/16 = 0.5625."
      ),

      QuizQuestion(
          question: "16. If 22% of a rope is 55 metres long, find the full length of the rope.          (BECE 1997 Q31)",
          options: [
            "12.1 m",
            "35 m",
            "121 m",
            "250 m"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "55 ÷ 0.22 = 250 m."
      ),

      QuizQuestion(
          question: r"17. Arrange the following numbers from the highest to the lowest: \frac{2}{3}, \frac{-9}{10}, 0.          (BECE 1998 Q10)",
          options: [
            r"\frac{2}{3}, 0, \frac{-9}{10}",
            r"\frac{-9}{10}, 0, \frac{2}{3}",
            r"0, \frac{2}{3}, \frac{-9}{10}",
            r"\frac{2}{3}, \frac{-9}{10}, 0"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "2/3 ≈ 0.667 > 0 > −0.9."
      ),

      QuizQuestion(
          question: "18. Mansah obtained 150 marks out of 240 marks in an English test. What was her percentage score?          (BECE 1998 Q16)",
          options: [
            "33.33%",
            "36.59%",
            "41.67%",
            "62.5%"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "(150 ÷ 240) × 100 = 62.5%."
      ),

      QuizQuestion(
          question: "19. Kweku had 300 mangoes. He sold 240 of them. What is the percentage of the mangoes left?          (BECE 1998 Q19)",
          options: [
            "8%",
            "20%",
            "25%",
            "36.7%"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Left = 60. (60 ÷ 300) × 100 = 20%."
      ),

      QuizQuestion(
          question: r"20. Simplify: \frac{1}{2} − \frac{1}{4} + \frac{1}{8}.          (BECE 1999 Q7)",
          options: [
            r"\frac{1}{8}",
            r"\frac{3}{8}",
            r"\frac{8}{5}",
            r"\frac{7}{8}"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "4/8 − 2/8 + 1/8 = 3/8."
      ),

      QuizQuestion(
          question: r"21. Which of the following fractions is the greatest: \frac{1}{6}, \frac{1}{4}, \frac{1}{2}, \frac{1}{3}, \frac{1}{5}?          (BECE 1999 Q14)",
          options: [
            r"\frac{1}{2}",
            r"\frac{1}{3}",
            r"\frac{1}{4}",
            r"\frac{1}{5}"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Among unit fractions, the one with the smallest denominator is the greatest."
      ),

      QuizQuestion(
          question: "22. There are 6 girls and 18 boys in a class. What percentage of the class are girls?          (BECE 1999 Q17)",
          options: [
            "14.40%",
            "25.00%",
            "33.33%",
            "66.67%"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Total = 24. (6 ÷ 24) × 100 = 25%."
      ),

      QuizQuestion(
          question: r"23. Arrange the following fractions from the lowest to the highest: \frac{1}{2}, \frac{1}{3}, \frac{2}{5}.          (BECE 2000 Q23)",
          options: [
            r"\frac{1}{2}, \frac{2}{5}, \frac{1}{3}",
            r"\frac{1}{3}, \frac{1}{2}, \frac{2}{5}",
            r"\frac{1}{3}, \frac{2}{5}, \frac{1}{2}",
            r"\frac{2}{5}, \frac{1}{3}, \frac{1}{2}"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "1/3 ≈ 0.333, 2/5 = 0.4, 1/2 = 0.5."
      ),

      QuizQuestion(
          question: "24. If 60% of the pupils in a school is 240, find the total enrolment in the school.          (BECE 2000 Q24)",
          options: [
            "144",
            "160",
            "360",
            "400"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Total = 240 ÷ 0.6 = 400."
      ),
    ],
  ),

  "The Algebra Journey": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Solve for x: 3x + 5 = 20", options: ["x = 3", "x = 5", "x = 8", "x = 15"], correctIndex: 1, difficulty: "Easy", explanation: "3x = 15 → x = 5."),
      QuizQuestion(question: "2. Simplify: 4a + 3b − 2a + b", options: ["2a + 4b", "6a + 2b", "2a + 2b", "6a + 4b"], correctIndex: 0, difficulty: "Easy", explanation: "(4a − 2a) + (3b + b) = 2a + 4b."),
      QuizQuestion(question: "3. Expand: 3(x + 4)", options: ["3x + 4", "3x + 7", "3x + 12", "x + 12"], correctIndex: 2, difficulty: "Easy", explanation: "Distribute 3: 3×x + 3×4 = 3x + 12."),
      QuizQuestion(question: "4. Factorise: 6x + 9", options: ["3(2x + 3)", "2(3x + 9)", "6(x + 9)", "9(x + 3)"], correctIndex: 0, difficulty: "Medium", explanation: "HCF of 6 and 9 is 3. 6x + 9 = 3(2x + 3)."),
      QuizQuestion(question: "5. Solve: 2(x − 3) = 10", options: ["x = 4", "x = 7", "x = 8", "x = 10"], correctIndex: 2, difficulty: "Medium", explanation: "2x − 6 = 10 → 2x = 16 → x = 8."),
      QuizQuestion(question: "6. What is the value of y in: y/4 = 7?", options: ["y = 1.75", "y = 11", "y = 28", "y = 3"], correctIndex: 2, difficulty: "Easy", explanation: "y = 7 × 4 = 28."),
      QuizQuestion(question: "7. Solve the inequality: 2x + 3 > 11", options: ["x > 4", "x > 7", "x < 4", "x < 7"], correctIndex: 0, difficulty: "Medium", explanation: "2x > 8 → x > 4."),
      QuizQuestion(question: "8. If a = 2, b = 3, find the value of 2a² − b.", options: ["5", "8", "11", "13"], correctIndex: 0, difficulty: "Medium", explanation: "2(2²) − 3 = 2(4) − 3 = 8 − 3 = 5."),
      QuizQuestion(question: "9. Simplify: (3x)(4x)", options: ["7x", "12x", "12x²", "7x²"], correctIndex: 2, difficulty: "Medium", explanation: "Multiply coefficients and add exponents: 3×4 = 12, x×x = x². Answer: 12x²."),
      QuizQuestion(question: "10. Which of these is a linear equation?", options: ["x² + 2 = 10", "3x + 2 = 14", "x³ = 8", "x² − 4 = 0"], correctIndex: 1, difficulty: "Easy", explanation: "A linear equation has variables to the power of 1 only."),
    ],
  ),

  "THE ARCHITECTURE OF ANGLES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. An acute angle measures:", options: ["Exactly 90°", "More than 90° but less than 180°", "Less than 90°", "Exactly 180°"], correctIndex: 2, difficulty: "Easy", explanation: "Acute angles are less than 90°."),
      QuizQuestion(question: "2. What is the sum of angles in a triangle?", options: ["90°", "180°", "270°", "360°"], correctIndex: 1, difficulty: "Easy", explanation: "The interior angles of any triangle always sum to 180°."),
      QuizQuestion(question: "3. Complementary angles add up to:", options: ["90°", "180°", "270°", "360°"], correctIndex: 0, difficulty: "Easy", explanation: "Complementary angles sum to exactly 90°."),
      QuizQuestion(question: "4. Supplementary angles add up to:", options: ["90°", "180°", "270°", "360°"], correctIndex: 1, difficulty: "Easy", explanation: "Supplementary angles sum to exactly 180°."),
      QuizQuestion(question: "5. A reflex angle measures:", options: ["Less than 90°", "Between 90° and 180°", "Exactly 180°", "Between 180° and 360°"], correctIndex: 3, difficulty: "Medium", explanation: "Reflex angles are greater than 180° but less than 360°."),
      QuizQuestion(question: "6. In a parallelogram, opposite angles are:", options: ["Supplementary", "Complementary", "Equal (congruent)", "Right angles"], correctIndex: 2, difficulty: "Medium", explanation: "Opposite angles in a parallelogram are always equal."),
      QuizQuestion(question: "7. The sum of interior angles of a quadrilateral is:", options: ["180°", "270°", "360°", "540°"], correctIndex: 2, difficulty: "Medium", explanation: "Any quadrilateral's interior angles sum to 360°."),
      QuizQuestion(question: "8. Alternate angles are equal when:", options: ["Lines are perpendicular", "Two parallel lines are cut by a transversal", "Angles are adjacent", "Lines intersect"], correctIndex: 1, difficulty: "Hard", explanation: "When a transversal crosses parallel lines, alternate angles are equal."),
      QuizQuestion(question: "9. Two angles are vertically opposite. One measures 65°. What is the other?", options: ["25°", "65°", "115°", "180°"], correctIndex: 1, difficulty: "Easy", explanation: "Vertically opposite angles are always equal."),
      QuizQuestion(question: "10. An exterior angle of a triangle equals:", options: ["The sum of the two opposite interior angles", "The adjacent interior angle", "90°", "180° minus all three interior angles"], correctIndex: 0, difficulty: "Hard", explanation: "Exterior angle = sum of the two non-adjacent interior angles."),
    ],
  ),

  // ─── SOCIAL STUDIES ────────────────────────────────────────────────────
  "Dealing with Sanitation Challenges": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which of the following is a major sanitation challenge in Ghana?", options: ["Too many hospitals", "Open defecation in communities", "Excess rainfall", "Overbuilding of schools"], correctIndex: 1, difficulty: "Easy", explanation: "Open defecation is a serious sanitation problem in many communities."),
      QuizQuestion(question: "2. Improper disposal of waste leads to:", options: ["Improved air quality", "Spread of diseases like cholera", "Better drainage systems", "Reduced flooding"], correctIndex: 1, difficulty: "Easy", explanation: "Poor waste management creates breeding grounds for disease vectors."),
      QuizQuestion(question: "3. Which body in Ghana is responsible for managing environmental sanitation?", options: ["Ghana Water Company", "Environmental Protection Agency (EPA)", "Ghana Education Service", "National Health Insurance Authority"], correctIndex: 1, difficulty: "Medium", explanation: "The EPA oversees environmental protection and sanitation policy in Ghana."),
      QuizQuestion(question: "4. 'WASH' stands for:", options: ["Water, Agriculture, Sanitation, Health", "Water, Sanitation and Hygiene", "Waste and Sewage Handling", "Water and Soil Health"], correctIndex: 1, difficulty: "Medium", explanation: "WASH = Water, Sanitation and Hygiene — a global development framework."),
      QuizQuestion(question: "5. Which of these is a sustainable solution to sanitation challenges?", options: ["Dumping waste into rivers", "Community-led programmes to build and use latrines", "Burning all rubbish openly", "Closing markets to reduce waste"], correctIndex: 1, difficulty: "Medium", explanation: "Community-built and maintained latrines provide a lasting sanitation solution."),
      QuizQuestion(question: "6. Solid waste can best be managed through:", options: ["Burying it in forests", "The 3Rs — Reduce, Reuse, Recycle", "Dumping it in open spaces", "Burning it in schools"], correctIndex: 1, difficulty: "Easy", explanation: "The 3Rs principle promotes environmentally responsible waste management."),
      QuizQuestion(question: "7. Cholera is caused by:", options: ["A bacterial infection from contaminated water or food", "A viral airborne disease", "Mosquito bites", "Lack of exercise"], correctIndex: 0, difficulty: "Medium", explanation: "Cholera is caused by the bacterium Vibrio cholerae spread through contaminated water."),
      QuizQuestion(question: "8. A 'sanitation ladder' describes:", options: ["Different levels of sanitation service, from open defecation to full sanitation", "A device for climbing into sewage tanks", "A measure of rainfall in a region", "A ranking of Ghana's hospitals"], correctIndex: 0, difficulty: "Hard", explanation: "The sanitation ladder tracks improvement from no facility to safely managed sanitation."),
      QuizQuestion(question: "9. Hand-washing with soap is effective because:", options: ["It makes hands soft", "It removes and kills germs that cause disease", "It is cheaper than medicine", "Soap smells nice"], correctIndex: 1, difficulty: "Easy", explanation: "Soap physically removes pathogens, significantly reducing disease transmission."),
      QuizQuestion(question: "10. Which group in Ghana is most vulnerable to poor sanitation?", options: ["Adults over 60", "Young children under 5", "Male teenagers", "Educated professionals"], correctIndex: 1, difficulty: "Medium", explanation: "Young children have weaker immune systems and are most at risk from unsanitary conditions."),
    ],
  ),

  "WHAT IT MEANS TO BE A CITIZEN OF GHANA": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. A citizen is a person who:", options: ["Lives in any country temporarily", "Has full legal membership of a country", "Works in a foreign country", "Travels frequently"], correctIndex: 1, difficulty: "Easy", explanation: "Citizenship grants full legal membership and rights within a nation-state."),
      QuizQuestion(question: "2. By which means can a person become a citizen of Ghana?", options: ["By visiting Ghana for one week", "By birth, descent, or naturalisation", "By owning property in Ghana", "By winning a competition"], correctIndex: 1, difficulty: "Medium", explanation: "Ghanaian citizenship can be acquired by birth, descent, or naturalisation."),
      QuizQuestion(question: "3. Which of the following is a RIGHT of a Ghanaian citizen?", options: ["Refusing to pay taxes", "Freedom of speech and expression", "Disobeying court orders", "Ignoring national service"], correctIndex: 1, difficulty: "Easy", explanation: "Freedom of expression is a fundamental right guaranteed in Ghana's Constitution."),
      QuizQuestion(question: "4. Which of the following is a RESPONSIBILITY of a Ghanaian citizen?", options: ["Collecting free services without contributing", "Obeying the laws of Ghana", "Leaving Ghana permanently", "Paying taxes only when forced"], correctIndex: 1, difficulty: "Easy", explanation: "Obeying the law is a fundamental civic responsibility of every citizen."),
      QuizQuestion(question: "5. The body of laws governing Ghana is called:", options: ["The Ghana Statute", "The 1992 Constitution of Ghana", "The National Code", "The Independence Act"], correctIndex: 1, difficulty: "Medium", explanation: "Ghana's Supreme Law is the 1992 Constitution."),
      QuizQuestion(question: "6. Dual citizenship in Ghana means:", options: ["Holding two passports physically", "Being a citizen of Ghana and one other country simultaneously", "Being born to two Ghanaian parents", "Having two names in your birth certificate"], correctIndex: 1, difficulty: "Medium", explanation: "Dual citizenship allows a person to be a legal citizen of two countries."),
      QuizQuestion(question: "7. Voting in national elections is an example of:", options: ["A duty only for adults over 50", "Active civic participation", "A punishment imposed by courts", "A privilege for the wealthy"], correctIndex: 1, difficulty: "Easy", explanation: "Voting is a key form of civic participation that upholds democracy."),
      QuizQuestion(question: "8. Naturalisation is the process by which:", options: ["A citizen loses their rights", "A foreigner legally becomes a citizen of a country", "A government removes someone from office", "Citizens are listed in a voter register"], correctIndex: 1, difficulty: "Medium", explanation: "Naturalisation grants citizenship to foreign nationals who meet legal requirements."),
      QuizQuestion(question: "9. The National Commission for Civic Education (NCCE) promotes:", options: ["Military training", "Knowledge of civic rights and responsibilities", "Foreign investment", "Agricultural development"], correctIndex: 1, difficulty: "Medium", explanation: "The NCCE educates citizens about their civic rights and responsibilities."),
      QuizQuestion(question: "10. Which of the following promotes national unity in Ghana?", options: ["Tribalism and discrimination", "Respecting diverse cultures and cooperating as one people", "Ignoring civic responsibilities", "Speaking only one language"], correctIndex: 1, difficulty: "Easy", explanation: "Mutual respect and cooperation across Ghana's diverse communities build national unity."),
    ],
  ),

  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "THE NATURE OF GOD THROUGH ATTRIBUTES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. The attribute 'omniscient' means God is:", options: ["Present everywhere", "All-knowing", "All-powerful", "Eternal"], correctIndex: 1, difficulty: "Easy", explanation: "Omniscient means having unlimited knowledge and awareness."),
      QuizQuestion(question: "2. 'Omnipotent' refers to God being:", options: ["All-knowing", "Eternal", "All-powerful", "Present everywhere"], correctIndex: 2, difficulty: "Easy", explanation: "Omnipotent means having infinite power over all things."),
      QuizQuestion(question: "3. Which attribute means God is present everywhere at the same time?", options: ["Omniscient", "Omnipotent", "Omnipresent", "Immutable"], correctIndex: 2, difficulty: "Easy", explanation: "Omnipresent means God exists in all places simultaneously."),
      QuizQuestion(question: "4. 'Immutable' as an attribute of God means:", options: ["God is always changing", "God is all-knowing", "God never changes", "God punishes wrongdoers"], correctIndex: 2, difficulty: "Medium", explanation: "Immutable means unchanging — God's nature remains constant."),
      QuizQuestion(question: "5. Which religion believes in the Trinity (Father, Son, Holy Spirit)?", options: ["Islam", "Christianity", "Traditional African Religion", "Judaism"], correctIndex: 1, difficulty: "Easy", explanation: "The Trinity is a foundational Christian doctrine of God's threefold nature."),
      QuizQuestion(question: "6. In Islam, the oneness of God is called:", options: ["Tawhid", "Salat", "Zakat", "Trinity"], correctIndex: 0, difficulty: "Medium", explanation: "Tawhid is the Islamic concept of the absolute oneness of Allah."),
      QuizQuestion(question: "7. In Traditional Ghanaian Religion, the Supreme Being is known as:", options: ["Obosom", "Onyame / Nyame", "Asase Yaa", "Mpanyimfo"], correctIndex: 1, difficulty: "Medium", explanation: "Onyame (Nyame in Akan) refers to the Supreme God in Ghanaian traditional religion."),
      QuizQuestion(question: "8. Which attribute describes God as the source and giver of life?", options: ["Immutable", "Omnipotent", "Creator and Sustainer", "Omniscient"], correctIndex: 2, difficulty: "Easy", explanation: "God as Creator and Sustainer brings all life into existence and maintains it."),
      QuizQuestion(question: "9. 'Holy' as an attribute of God primarily means:", options: ["God is distant from humans", "God is morally perfect and separated from all evil", "God exists in heaven only", "God controls nature"], correctIndex: 1, difficulty: "Medium", explanation: "Holiness reflects God's perfect moral nature, free from all impurity."),
      QuizQuestion(question: "10. How does believing God is omnipresent affect a believer's behaviour?", options: ["They feel free to do anything", "They believe their actions are always seen by God, so they act rightly", "They avoid going to public places", "They stop praying"], correctIndex: 1, difficulty: "Hard", explanation: "Belief in God's omnipresence motivates moral and responsible behaviour."),
    ],
  ),

  "Behaviours Considered as Good Manners": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which of these is considered a good manner in Ghana?", options: ["Interrupting elders when they speak", "Greeting elders before speaking to them", "Refusing to eat offered food", "Speaking loudly in public places"], correctIndex: 1, difficulty: "Easy", explanation: "Greeting elders first is a sign of deep respect in Ghanaian culture."),
      QuizQuestion(question: "2. 'Decency' in behaviour means:", options: ["Dressing to attract attention", "Acting appropriately and respectfully in all situations", "Speaking as loudly as possible", "Ignoring cultural values"], correctIndex: 1, difficulty: "Easy", explanation: "Decency involves proper, respectful conduct appropriate to context."),
      QuizQuestion(question: "3. Which religious teaching emphasises treating others as you want to be treated?", options: ["The Golden Rule", "The Apostles' Creed", "The Five Pillars", "The Ten Commandments"], correctIndex: 0, difficulty: "Medium", explanation: "The Golden Rule is found across major religions and promotes mutual respect."),
      QuizQuestion(question: "4. 'Chastity' in moral teaching refers to:", options: ["Fasting for long periods", "Abstaining from sexual immorality and maintaining purity", "Giving money to the poor", "Attending religious services"], correctIndex: 1, difficulty: "Medium", explanation: "Chastity involves sexual morality and purity as taught in many religions."),
      QuizQuestion(question: "5. Which body language shows disrespect to an elder in Ghanaian culture?", options: ["Standing up when they enter", "Responding to a greeting", "Looking away or refusing eye contact when being corrected", "Greeting them with both hands"], correctIndex: 2, difficulty: "Medium", explanation: "Avoiding eye contact during communication is often culturally disrespectful."),
      QuizQuestion(question: "6. The importance of good manners in society includes:", options: ["Creating conflict and misunderstanding", "Promoting peaceful coexistence and social harmony", "Making people feel superior", "Restricting freedom of expression"], correctIndex: 1, difficulty: "Easy", explanation: "Good manners create an environment of mutual respect and peaceful living."),
      QuizQuestion(question: "7. Which of these is an example of decency in dressing?", options: ["Wearing very revealing clothes to a funeral", "Dressing appropriately for each occasion", "Wearing only expensive branded clothing", "Copying every fashion trend"], correctIndex: 1, difficulty: "Easy", explanation: "Decent dressing means choosing attire appropriate to the occasion and setting."),
      QuizQuestion(question: "8. According to religious teaching, why should believers practice good manners?", options: ["To show off to others", "Because religious texts and leaders emphasise moral conduct", "To be popular in school", "To avoid punishment from society"], correctIndex: 1, difficulty: "Medium", explanation: "Religious scriptures and leaders teach that moral behaviour pleases God and benefits society."),
      QuizQuestion(question: "9. Peer pressure can NEGATIVELY affect good manners by:", options: ["Encouraging regular prayer", "Pushing individuals toward bad behaviour to fit in", "Promoting academic excellence", "Teaching respect for elders"], correctIndex: 1, difficulty: "Medium", explanation: "Negative peer pressure can lead individuals to abandon moral values to gain acceptance."),
      QuizQuestion(question: "10. Which practical skill helps a person RESIST pressure to behave badly?", options: ["Following every trend", "Saying 'No' confidently and walking away", "Keeping silent always", "Arguing back aggressively"], correctIndex: 1, difficulty: "Hard", explanation: "Confidently refusing and removing yourself from harmful situations is a key defensive skill."),
    ],
  ),

  // ─── JHS 2 / JHS 3: ENGLISH ────────────────────────────────────────────────
  "EFFECTIVE TURN-TAKING IN CONVERSATION": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which of the following defines 'turn-taking' in conversation?", options: ["Changing the seat with another person", "Dividing speech opportunities among participants", "Interrupting the speaker continuously", "Speaking at the exact same time"], correctIndex: 1, difficulty: "Easy", explanation: "Turn-taking ensures everyone gets a fair opportunity to speak in turn."),
      QuizQuestion(question: "2. An example of a non-verbal cue that signals a turn is complete is:", options: ["Continuing to speak louder", "A pause accompanied by eye contact looking at the listener", "Looking down at a watch", "Walking away from the circle"], correctIndex: 1, difficulty: "Medium", explanation: "Eye contact and a pause are standard signals for turn-completion."),
    ],
  ),

  "USING APPROPRIATE REGISTER (INFORMAL VS. FORMAL)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. When writing a letter to the Metropolitan Director of Education, which register is required?", options: ["Slang", "Informal register", "Formal register", "Colloquial register"], correctIndex: 2, difficulty: "Easy", explanation: "Official correspondence requires formal language structure."),
      QuizQuestion(question: "2. Which of the following sentences uses a formal register?", options: ["I wanna request some help.", "I am writing to request your assistance.", "Can you help me out real quick?", "Please hit me back soon."], correctIndex: 1, difficulty: "Easy", explanation: "'I am writing to request your assistance.' uses proper formal structure."),
    ],
  ),

  "REPORTED SPEECH": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Convert to reported speech: 'I am visiting Kumasi today.'", options: ["He said that he was visiting Kumasi that day.", "He said that I am visiting Kumasi today.", "He told me he is visiting Kumasi today.", "He said that he went to Kumasi today."], correctIndex: 0, difficulty: "Medium", explanation: "'am' changes to 'was', 'today' changes to 'that day'."),
      QuizQuestion(question: "2. In reported speech, 'these' is transformed into:", options: ["Them", "Those", "This", "Their"], correctIndex: 1, difficulty: "Easy", explanation: "Demonstrative 'these' shifts to 'those' in reported speech."),
    ],
  ),

  "QUESTION TAGS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Provide the correct question tag: 'Ama went to the market, ______?'", options: ["did she?", "didn't she?", "wasn't she?", "does she?"], correctIndex: 1, difficulty: "Easy", explanation: "A positive sentence in past simple takes a negative past tag: 'didn't she?'."),
      QuizQuestion(question: "2. Complete: 'We have not finished the exam, ______?'", options: ["haven't we?", "have we?", "did we?", "had we?"], correctIndex: 1, difficulty: "Medium", explanation: "A negative sentence takes a positive tag: 'have we?'."),
    ],
  ),

  "MASTERING REGISTER AND OPEN QUESTIONS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which of the following is an open-ended question?", options: ["Do you live in Accra?", "Is it raining outside?", "What are your views on environmental protection?", "Are you in JHS 3?"], correctIndex: 2, difficulty: "Easy", explanation: "Open-ended questions require detailed expression of thoughts, not simple yes/no answers."),
      QuizQuestion(question: "2. Open-ended questions are highly useful in conversation because they:", options: ["Restrict the response length", "Provoke short one-word answers", "Encourage sharing of details and elaboration", "End the conversation quickly"], correctIndex: 2, difficulty: "Easy", explanation: "They invite elaboration and keep the conversation going."),
    ],
  ),

  "THE ART OF ARGUMENT AND DEBATING": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. In a formal debate, the speaker who supports the motion is called the:", options: ["Opponent", "Proposer / Affirmative", "Moderator", "Timekeeper"], correctIndex: 1, difficulty: "Easy", explanation: "The proposer supports (affirms) the motion under discussion."),
      QuizQuestion(question: "2. Which of these is a key element of a convincing argument in a debate?", options: ["Shouting loudly at the opponent", "Using sound evidence and logical explanations", "Using personal insults", "Speaking as fast as possible"], correctIndex: 1, difficulty: "Easy", explanation: "Strong debates rely on factual evidence and logic."),
    ],
  ),

  "CONDITIONAL SENTENCES (TYPE 3)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which of the following shows the correct structure of a Type 3 conditional?", options: ["If + present, will + verb", "If + past perfect, would have + past participle", "If + past simple, would + verb", "If + future, will + verb"], correctIndex: 1, difficulty: "Medium", explanation: "Type 3 conditionals express unreal past actions: If + had + V3, would have + V3."),
      QuizQuestion(question: "2. Complete: 'If I had studied harder, I ______ the test.'", options: ["will pass", "would pass", "would have passed", "passed"], correctIndex: 2, difficulty: "Medium", explanation: "Type 3 conditional requires 'would have passed' in the main clause."),
    ],
  ),

  "DEFINING AND NON-DEFINING RELATIVE CLAUSES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which sentence contains a non-defining relative clause (needs commas)?", options: ["The boy who won the race is my friend.", "My father, who is a doctor, works in Kumasi.", "The book that I read was interesting.", "This is the town where I was born."], correctIndex: 1, difficulty: "Hard", explanation: "Non-defining relative clauses provide extra, non-essential details and are placed between commas."),
      QuizQuestion(question: "2. In defining relative clauses, which pronoun is commonly used for things?", options: ["Who", "Whom", "Which / That", "Whose"], correctIndex: 2, difficulty: "Easy", explanation: "'Which' or 'That' is used to define objects or animals."),
    ],
  ),

  "ADVERBIAL PHRASES AND THEIR FUNCTIONS": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Identify the adverbial phrase of time in: 'We will meet after the English lesson.'", options: ["We will", "meet", "after the English lesson", "English lesson"], correctIndex: 2, difficulty: "Easy", explanation: "'after the English lesson' answers 'when', indicating time."),
      QuizQuestion(question: "2. In 'She sang with great joy,' key function of 'with great joy' is to show:", options: ["Time", "Place", "Manner", "Frequency"], correctIndex: 2, difficulty: "Medium", explanation: "It answers 'how' she sang, indicating manner."),
    ],
  ),

  // ─── JHS 2 / JHS 3: SCIENCE ────────────────────────────────────────────────
  "Types of mixtures and their characteristics": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. A mixture in which the components are uniform throughout is called:", options: ["Suspension", "Heterogeneous", "Homogeneous", "Colloid"], correctIndex: 2, difficulty: "Easy", explanation: "Homogeneous mixtures have a uniform composition throughout (e.g. sugar in water)."),
      QuizQuestion(question: "2. Which of the following is a heterogeneous mixture?", options: ["Salt dissolved in water", "Orange juice with pulp", "Air", "Brass"], correctIndex: 1, difficulty: "Easy", explanation: "The pulp does not dissolve and remains distinct, forming a heterogeneous mixture."),
    ],
  ),

  "SEPARATING MIXTURES (PHYSICAL PROCESSES)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which method is most appropriate for separating sand from water?", options: ["Evaporation", "Filtration", "Distillation", "Sublimation"], correctIndex: 1, difficulty: "Easy", explanation: "Filtration uses a porous barrier to separate insoluble solids from liquids."),
      QuizQuestion(question: "2. Distillation is used to separate mixtures based on differences in:", options: ["Solubility", "Boiling points", "Particle sizes", "Density"], correctIndex: 1, difficulty: "Medium", explanation: "Distillation relies on differences in boiling points to vaporize and condense liquids."),
    ],
  ),

  "ATOMIC STRUCTURE AND SUB-ATOMIC PARTICLES": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Which sub-atomic particle has a negative charge?", options: ["Proton", "Neutron", "Electron", "Nucleus"], correctIndex: 2, difficulty: "Easy", explanation: "Electrons carry a unit negative charge and orbit the nucleus."),
      QuizQuestion(question: "2. Protons and neutrons are found in which part of the atom?", options: ["Electron cloud", "Nucleus", "Valence shell", "Outer orbit"], correctIndex: 1, difficulty: "Easy", explanation: "The nucleus at the center of the atom contains protons and neutrons (nucleons)."),
    ],
  ),

  "THE PERIODIC TABLE AND ELECTRON CONFIGURATION": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. What is the atomic number of Sodium (Na)?", options: ["10", "11", "12", "20"], correctIndex: 1, difficulty: "Medium", explanation: "Sodium has atomic number 11 on the periodic table."),
      QuizQuestion(question: "2. The electron configuration of an atom with 8 electrons (Oxygen) is:", options: ["2, 8", "2, 6", "2, 4, 2", "8"], correctIndex: 1, difficulty: "Medium", explanation: "The first shell holds up to 2 electrons, and the second holds the remaining 6 (2, 6)."),
    ],
  ),

  // ─── JHS 2 / JHS 3: MATH ───────────────────────────────────────────────────
  "FROM BILLIONS TO STANDARD FORM": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Express 450,000 in standard form.", options: ["4.5 × 10^5", "45 × 10^4", "4.5 × 10^-5", "0.45 × 10^6"], correctIndex: 0, difficulty: "Medium", explanation: "450,000 = 4.5 × 10^5 as the decimal moves 5 places left."),
      QuizQuestion(question: "2. Convert 3.2 × 10^-3 to ordinary notation.", options: ["32,000", "0.032", "0.0032", "0.00032"], correctIndex: 2, difficulty: "Medium", explanation: "10^-3 shifts the decimal 3 places to the left: 0.0032."),
    ],
  ),

  "The Complete Guide to Number Operations": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(question: "1. Solve: -15 + (-7) - (-12)", options: ["-34", "-10", "-3", "10"], correctIndex: 1, difficulty: "Medium", explanation: "-15 - 7 + 12 = -22 + 12 = -10."),
      QuizQuestion(question: "2. Evaluate: 24 ÷ (6 - 2) × 3 using BODMAS.", options: ["2", "18", "3", "12"], correctIndex: 1, difficulty: "Medium", explanation: "Bracket first: 6-2=4. Division: 24÷4=6. Multiplication: 6×3=18."),
    ],
  ),
};
