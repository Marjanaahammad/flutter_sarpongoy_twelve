import '../model/quiz_model.dart';

/// BECE Past Exam – Objectives (Multiple Choice) questions.
/// Keyed by the lesson topic string (matches the topic field in Lesson).
final Map<String, QuizModel> beceQuizData = {
  // ─── ENGLISH: ORAL LANGUAGE ───────────────────────────────────────────────
  "English JHS1 s1 ss1 - Conversation Everyday Discourse": QuizModel(
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
          explanation: "Substitute x = -2 into 3x - 4: 3(-2) - 4 = -6 - 4 = -10."
      ),
      QuizQuestion(
          question:
              "2. Find the next term in the sequence: 3, 6, 12, 24, …          (BECE 2006 Q14)",
          options: ["27", "30", "36", "48"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Each term is multiplied by 2. Therefore, the next term is 24 × 2 = 48."
      ),
      QuizQuestion(
          question:
              "3. State the rule for the mapping: x: 1, 2, 3, 4, 5 and y: 3, 5, 7, 9, …          (BECE 1991 Q25)",
          options: ["x → 2x - 1", "x → 2x - 1", "x → 2x + 1", "x → 20(x - 1)"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "For each input x, the output is obtained using y = 2x + 1. For example, when x = 1, y = 2(1) + 1 = 3."
      ),
      QuizQuestion(
          question:
              "4. Find the missing numbers in the set {5, 10, 15, 25, …, …, 40}.          (BECE 2001 Q33)",
          options: ["20 and 30", "30 and 35", "20, 35 and 40", "20, 30 and 35"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The numbers are multiples of 5 from 5 to 40. The missing numbers are 20, 30 and 35."
      ),
      QuizQuestion(
          question:
              "5. State the rule for the following mapping: x: 0, 1, 2, 3, 4 and y: 1, 4, 9, 16, …          (BECE 2004 Q17)",
          options: ["x → x + 1", "x → x²", "x → 2x + 1", "x → (x + 1)²"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Each output is the square of one more than the input: y = (x + 1)². For example, when x = 2, y = 3² = 9."
      ),
      QuizQuestion(
          question:
              "6. A mapping is defined by n → 2n - 3. What is the image of -2 under the mapping?          (BECE 2001 Q24)",
          options: ["-1", "-5", "-7", "7"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Substitute n = -2 into 2n - 3: 2(-2) - 3 = -4 - 3 = -7."
      ),
      QuizQuestion(
          question:
              "7. What is the rule for the mapping: x: 1, 2, 3, 4 and y: 2, 4, 8, 16?          (BECE 1994 Q36)",
          options: ["y → 2x", "y → x²", "y → 2ˣ", "y → x + 2"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The outputs are powers of 2: 2¹ = 2, 2² = 4, 2³ = 8 and 2⁴ = 16. Therefore, y = 2ˣ."
      ),
      QuizQuestion(
          question:
              r"8. What is the image of -4 under the mapping x → \frac{1}{2}x - 2?          (BECE 1995 Q10)",
          options: ["-2", "-4", "-6", "-8"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute x = -4: ½(-4) - 2 = -2 - 2 = -4."
      ),
      QuizQuestion(
          question:
              "9. Find the missing number in the sequence: 11, 17, 23, 29, …, 41, 47, 53.          (BECE 2012 Q13)",
          options: ["32", "35", "37", "38"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The sequence increases by 6 each time. Therefore, the missing number is 29 + 6 = 35."
      ),
      QuizQuestion(
          question:
              "10. Find the rule for the mapping: x: 1, 2, 3, 4, 5 and y: 5, 9, 13, 17, 21.          (BECE 2020 Q26)",
          options: ["x → 3x + 2", "x → 5x - 3", "x → x² + 1", "x → 4x + 1"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Each output is obtained using y = 4x + 1. For example, when x = 3, y = 4(3) + 1 = 13."),
      QuizQuestion(
          question: r"11. If (x, y) → (x, 2y), find the image of (2\frac{1}{2}, -\frac{1}{2}) under the same mapping.          (BECE 1995 Q24)",
          options: [
            r"(2\frac{1}{2}, -2)",
            r"(2\frac{1}{2}, -1)",
            "(2, -2)",
            "(2, -1)"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The x-coordinate remains unchanged, while the y-coordinate is multiplied by 2. Thus, (2½, -½) → (2½, -1)."
      ),
      QuizQuestion(
          question: "12. Find the value of x, if 1 → 1 → 3.14, 2 → 2 → 6.28, 3 → 4 → 12.56 and y → 10 → 50.24.          (BECE 1990 Q33)",
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
          question: "13. Find the next term in the sequence: 2, 5, 9, 14, 20, …          (BECE 2002 Q6)",
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
          question: "14. State the rule for the following mapping: x: 1, 2, 3, 4, 5 and y: 3, 1, -1, -3, -5.          (BECE 2019 Q13)",
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
          question: "15. State the rule of the following mapping: x: 1, 2, 3, 4, … and y: 1, 4, 9, 16, …          (BECE 2001 Q3)",
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
          question: r"16. What is the fifth term in the sequence \frac{1}{3}, \frac{2}{5}, \frac{7}{15}, …?          (BECE 2002B Q5)",
          options: [
           r"\frac{4}{9}",
           r"\frac{5}{11}",
            r"\frac{6}{13}",
            r"\frac{3}{5}"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The intended pattern gives fractions with numerators increasing by 1 and denominators increasing by 2, leading to the fifth term 5/11. The source sequence appears to contain a transcription inconsistency at the third term."
      ),
      QuizQuestion(
          question: "17. Use the mapping x: 1, 2, 3, 4, 5 and y: -4, -2, 0, 2, m. What is the rule for the mapping?          (BECE 2003 Q27)",
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
          question: "18. Find the value of m in the mapping x: 1, 2, 3, 4, 5 and y: -4, -2, 0, 2, m.          (BECE 2003 Q28)",
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
          question: "19. What is the image of 2 in the mapping y → 2x + 5?          (BECE 2004 Q12)",
          options: [
            "7",
            "9",
            "12",
            "20"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Substitute x = 2 into 2x + 5: 2(2) + 5 = 9."
      ),
      QuizQuestion(
          question: "20. Find the next term in the sequence 1, 3, 7, 15, 31, …          (BECE 2005 Q11)",
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
          question: "21. What is the rule for the following mapping: x: 0, 1, 2, 3, 4 and y: 5, 9, 13, 17, 21?          (BECE 2005 Q19)",
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
          question: "22. Find the rule for the mapping: 1, 2, 3, 4, 5, …, n → 10, 21, 32, 43, 54, …          (BECE 2006 Q35)",
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
          question: "23. Find the image of -3 under the mapping x → 2(x + 3).          (BECE 2008 Q13)",
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
          question: r"24. State the rule for the mapping: x: 0, 1, 2, 3, 4 and y: 0, \frac{1}{4}, \frac{1}{2}, \frac{3}{4}, 1.          (BECE 2009 Q15)",
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
          question: "25. Find the rule of the mapping: 1, 2, 3, 4, 5, …, x → 7, 11, 15, 19, 23, …, y.          (BECE 2010 Q5)",
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
          question: "26. State the rule for the mapping: x: 1, 2, 3, 4 and y: 15, 30, 45, 60.          (BECE 2011 Q14)",
          options: [
            "x → 15x",
            "x → 15 + x",
            r"x → \frac{x}{15}",
            "x → 10 + 5x"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Each output is 15 times the input. Therefore, the rule is x → 15x."
      ),
      QuizQuestion(
          question: "27. Find the image of 3 under the mapping x → 10 - 2x.          (BECE 2012 Q12)",
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
          question: "28. Find the rule of the mapping: 1, 2, 3, 4, 5, x → 5, 8, 11, 14, 17, y.          (BECE 2013 Q10)",
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
          question: "29. Find the value of x when y = 37 in the mapping y = 5x + 2.          (BECE 2021 Q16)",
          options: [
            "6",
            "7",
            "8",
            "9"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Substitute y = 37: 37 = 5x + 2. Therefore, 5x = 35 and x = 7."),
      QuizQuestion(
          question: "30. What is the missing number in the sequence: -5, -2, 1, …, 7?          (BECE 2025 Q39)",
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
          question: "31. Find the rule for the mapping: 1, 2, 3, 4, …, t → 9, 20, 31, 42, …          (BECE 2025 Q20)",
          options: [
            "t → 10t - 1",
            "t → 8t + 1",
            "t → 11t - 2",
            "t → 7t + 2"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The outputs increase by 11. Since 11(1) - 2 = 9, the rule is t → 11t - 2."),
    ],
  ),
  "Math JHS1 s2 ss2 - Algebraic Expressions": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Simplify: 35x^5y^3 ÷ 7xy^2          (BECE 2014 Q9)",
          options: [
            "5x^4y",
            "5x^4y^5",
            "5x^6y",
            "5x^6y^5"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "35 ÷ 7 = 5. Subtract the powers of like bases: x^(5−1) = x^4 and y^(3−2) = y. Therefore, the answer is 5x^4y."
      ),

      QuizQuestion(
          question: "2. If x = 2, find the value of q in the equation 3x - 4 = x + q.          (BECE 1992 Q17)",
          options: [
            "-7",
            "13",
            "12",
            "25"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Substitute x = 2: 3(2) - 4 = 2. Hence 2 = 2 + q, so q = 0. The official key gives option A."
      ),

      QuizQuestion(
          question: "3. Simplify: 6a^2 × 4a^2b^2          (BECE 2002B Q22)",
          options: [
            "10a^4b^2",
            "24a^2b^2",
            "24a^4b^2",
            "24a^2b^4"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Multiply the coefficients: 6 × 4 = 24. Add the powers of a: a^(2+2) = a^4. Therefore, the result is 24a^4b^2."
      ),

      QuizQuestion(
          question: "4. If a * b = 2a - b, find 3 * 2.          (BECE 2002A Q20)",
          options: [
            "1",
            "4",
            "5",
            "6"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Using the rule, 3 * 2 = 2(3) - 2 = 6 - 2 = 4."
      ),

      QuizQuestion(
          question: "5. In the relation v = u + at, find v when u = 6, a = 10 and t = 2.          (BECE 1991 Q14)",
          options: [
            "18",
            "26",
            "32",
            "48"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "v = u + at = 6 + (10 × 2) = 26."
      ),

      QuizQuestion(
          question: r"6. If q = ut + \frac{1}{2]ft, find q when u = 20, t = 10 and f = 15.          (BECE 1990 Q21)",
          options: [
            "350",
            "275",
            "237.5",
            "55"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Using the given formula: q = ut + 1/2ft = (20 × 10) + (1/2 × 15 × 10) = 200 + 75 = 275."
      ),

      QuizQuestion(
          question: "7. Find the value of p^2 - 6p + 9 when p = -2.          (BECE 1992 Q14)",
          options: [
            "-7",
            "13",
            "12",
            "25"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Substitute p = -2: (-2)^2 - 6(-2) + 9 = 4 + 12 + 9 = 25."
      ),

      QuizQuestion(
          question: "8. The sum of two numbers is 240. If one of them is y, find the other number.          (BECE 1997 Q22)",
          options: [
            "120y",
            "240 + y",
            "240 - y",
            "240y"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The other number is obtained by subtracting y from the total: 240 - y."
      ),

      QuizQuestion(
          question: "9. Ama is N years old now. How old will she be in 10 years?          (BECE 2000 Q40)",
          options: [
            "(N - 10) years",
            "(N + 10) years",
            "(10 - N) years",
            "N10 years"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "After 10 years, Ama's age will increase by 10 years, giving N + 10 years."
      ),

      QuizQuestion(
          question: "10. Simplify: 2ab^2 × 3a^2b          (BECE 1991 Q13)",
          options: [
            "5a^3b^3",
            "5a^2b^2",
            "6a^3b^3",
            "6a^2b^2"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Multiply the coefficients: 2 × 3 = 6. Add the powers of like bases to get a^3b^3."
      ),

      QuizQuestion(
          question: "11. If a * b = 2a - b, evaluate 4 * 3.          (BECE 2000 Q17)",
          options: [
            "1",
            "2",
            "4",
            "5"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "4 * 3 = 2(4) - 3 = 8 - 3 = 5."
      ),

      QuizQuestion(
          question: "12. Find the difference between the values of (2d)^2 and 2d^2, when d = 3.          (BECE 1995 Q30)",
          options: [
            "16",
            "18",
            "24",
            "28"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "(2d)^2 = (6)^2 = 36 and 2d^2 = 2(9) = 18. Their difference is 18."
      ),

      QuizQuestion(
          question: "13. Simplify: 4p + 6p^2 - 2p + 2p^2          (BECE 2001 Q25)",
          options: [
            "2p + 8p^2",
            "6p + 8p^2",
            "2p - 8p^2",
            "6p - 8p^2"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Combine like terms: 4p - 2p = 2p and 6p^2 + 2p^2 = 8p^2."
      ),

      QuizQuestion(
          question: "14. Three baskets contain 95 oranges, x oranges, and 2x oranges. How many oranges are in the three baskets?          (BECE 2002B Q21)",
          options: [
            "96x",
            "95 + 3x",
            "95 + 2x^2",
            "98x"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Total oranges = 95 + x + 2x = 95 + 3x."
      ),

      QuizQuestion(
          question: "15. Simplify: (2ab^2)(3a^-3b)          (BECE 1997 Q21)",
          options: [
            "5a^3b^3",
            "6a^-2b^3",
            "5a^2b^3",
            "6a^2b^3"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Multiply coefficients: 2 × 3 = 6. Add exponents of a: 1 + (-3) = -2 and of b: 2 + 1 = 3."
      ),

      QuizQuestion(
          question: r"16. If y = k + ax^2, find y when k = \frac{14}{5}, a = \frac{4}{5} and x = 2.          (BECE 2000 Q26)",
          options: [
            "1",
            "2",
            "4",
            "6"
          ],
          correctIndex: 5,
          difficulty: "Easy",
          explanation: "y = 14/5 + (4/5 × 4) = 14/5 + 16/5 = 30/5 = 6."
      ),
    ],
  ),
  "Math JHS1 s2 ss3 - Variables and Equations": QuizModel(
    audioPath: '',
    questions: [
  QuizQuestion(
    question:
    "1. When a certain number is subtracted from 10 and the result is multiplied by 2, the final result is 4. Find the number.          (BECE 1991 Q37)",
    options: [
      "8",
      "12",
      "16",
      "24",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    "Let the number be x. Then 2(10 - x) = 4. Dividing by 2 gives 10 - x = 2, so x = 8.",
  ),

  QuizQuestion(
    question:
    "2. Solve for x if 2x + 5 = 3x - 7.          (BECE 1994 Q26)",
    options: [
      "12",
      r"\frac{22}{5}",
      r"-\frac{2}{5}",
      r"-\frac{22}{5}",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    "2x + 5 = 3x - 7. Subtract 2x from both sides to get 5 = x - 7. Therefore, x = 12.",
  ),

  QuizQuestion(
    question:
    r"3. If \frac{3}{15} is equivalent to \frac{45}{a}, find a.          (BECE 1990 Q22)",
    options: [
      "225",
      "150",
      "252",
      "126",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    r"Cross-multiply: 3a = 15 \times 45 = 675. Therefore, a = \frac{675}{3} = 225.",
  ),

  QuizQuestion(
    question:
    "4. Five times a number is four more than the number. Find the number.          (BECE 1993 Q26)",
    options: [
      r"\frac{3}{2}",
      "1",
      r"\frac{2}{3}",
      r"\frac{1}{2}",
    ],
    correctIndex: 1,
    difficulty: "Easy",
    explanation:
    "Let the number be x. Then 5x = x + 4. Thus, 4x = 4 and x = 1.",
  ),

  QuizQuestion(
    question:
    "5. Mark is 30 years old. Yaw is half as old as Mark. Paul is 10 years older than Yaw. How old is Paul?          (BECE 1994 Q3)",
    options: [
      "30 years",
      "25 years",
      "20 years",
      "15 years",
    ],
    correctIndex: 1,
    difficulty: "Easy",
    explanation:
    "Yaw is half of 30, so Yaw is 15 years old. Paul is 10 years older, so Paul is 15 + 10 = 25 years old.",
  ),

  QuizQuestion(
    question:
    r"6. If \frac{1}{3} of a number is added to \frac{1}{5} of the same number, the result is 8. Find the number.          (BECE 1992 Q34)",
    options: [
      "3",
      "5",
      "15",
      "30",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    r"Let the number be x. Then \frac{x}{3} + \frac{x}{5} = 8. This gives \frac{8x}{15} = 8, so x = 15.",
  ),

  QuizQuestion(
    question:
    "7. Solve for h in the equation 15 - 2h = 6.          (BECE 1998 Q21)",
    options: [
      "-10.5",
      "-9.0",
      "-4.5",
      "4.5",
    ],
    correctIndex: 3,
    difficulty: "Easy",
    explanation:
    "15 - 2h = 6. Subtract 15 from both sides to get -2h = -9. Therefore, h = 4.5.",
  ),

  QuizQuestion(
    question:
    r"8. Find x, if \frac{1}{x} + \frac{1}{3} = 1.          (BECE 1993 Q31)",
    options: [
      r"\frac{2}{3}",
      r"-\frac{2}{3}",
      r"\frac{3}{2}",
      r"\frac{3}{4}",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    r"\frac{1}{x} = 1 - \frac{1}{3} = \frac{2}{3}. Taking reciprocals gives x = \frac{3}{2}.",
  ),

  QuizQuestion(
    question:
    r"9. If \frac{1}{x} = 1\frac{1}{2}, find x.          (BECE 1994 Q11)",
    options: [
      "3",
      r"\frac{1}{2}",
      r"\frac{4}{3}",
      r"\frac{2}{3}",
    ],
    correctIndex: 3,
    difficulty: "Medium",
    explanation:
    r"Convert 1\frac{1}{2} to \frac{3}{2}. Thus, \frac{1}{x} = \frac{3}{2}, so x = \frac{2}{3}.",
  ),

  QuizQuestion(
    question:
    "10. Solve the equation 13x - 2(3x + 4) = 22.          (BECE 2000 Q3)",
    options: [
      "5",
      "4",
      r"\frac{30}{7}",
      r"\frac{26}{7}",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    r"Expand to get 13x - 6x - 8 = 22. Thus, 7x = 30 and x = \frac{30}{7}.",
  ),

  QuizQuestion(
    question:
    "11. If 4(m + 4) = 18, find the value of m.          (BECE 1999 Q29)",
    options: [
      r"\frac{1}{2}",
      r"\frac{3}{2}",
      r"\frac{5}{2}",
      r"\frac{3}{25}",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    r"Divide both sides by 4: m + 4 = \frac{18}{4} = \frac{9}{2}. Therefore, m = \frac{9}{2} - 4 = \frac{1}{2}.",
  ),

  QuizQuestion(
    question:
    "12. If 13x - 12 = 5x + 60, find x.          (BECE 1995 Q33)",
    options: [
      "-9",
      "-6",
      "9",
      "6",
    ],
    correctIndex: 2,
    difficulty: "Easy",
    explanation:
    "13x - 5x = 60 + 12. Thus, 8x = 72 and x = 9.",
  ),

  QuizQuestion(
    question:
    "13. The product of 2x and 3 is 138. Find x.          (BECE 1996 Q33)",
    options: [
      "23",
      "33",
      "68",
      "69",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    "The product of 2x and 3 is 6x. Therefore, 6x = 138 and x = 23.",
  ),

  QuizQuestion(
    question:
    r"14. Solve for y in the equation: \frac{1}{3}y + \frac{1}{5}y = 8.          (BECE 2002A Q27)",
    options: [
      "15",
      "30",
      "45",
      "60",
    ],
    correctIndex: 0,
    difficulty: "Medium",
    explanation:
    r"\frac{y}{3} + \frac{y}{5} = \frac{8y}{15}. Thus, \frac{8y}{15} = 8 and y = 15.",
  ),

  QuizQuestion(
    question:
    "15. Kofi is 2 years older than Ama. If the sum of their ages is 16, find Ama's age.          (BECE 2002B Q25)",
    options: [
      "7 years",
      "9 years",
      "14 years",
      "18 years",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    "Let Ama's age be x. Kofi's age is x + 2. Then x + x + 2 = 16, so 2x = 14 and x = 7.",
  ),

  QuizQuestion(
    question:
    "16. Solve the equation: 2x - 3(x - 1) = 6.          (BECE 2009 Q12)",
    options: [
      "3",
      "-3",
      "-7",
      "-9",
    ],
    correctIndex: 1,
    difficulty: "Medium",
    explanation:
    "Expand to get 2x - 3x + 3 = 6. Thus, -x = 3 and x = -3.",
  ),

  QuizQuestion(
    question:
    r"17. Find the value of x in the equation \frac{x}{4} = 2.          (BECE 2002B Q39)",
    options: [
      "2",
      "4",
      "6",
      "8",
    ],
    correctIndex: 3,
    difficulty: "Easy",
    explanation:
    r"Multiply both sides of \frac{x}{4} = 2 by 4. Therefore, x = 8.",
  ),

  QuizQuestion(
    question:
    "18. Solve for x in the equation 15 - 2x = 6.          (BECE 2004 Q21)",
    options: [
      "-10.5",
      "-4.5",
      "4.5",
      "10.5",
    ],
    correctIndex: 2,
    difficulty: "Easy",
    explanation:
    "Subtract 15 from both sides: -2x = -9. Dividing by -2 gives x = 4.5.",
  ),

  QuizQuestion(
    question:
    "19. If 3t - 2(t + 12) = 11, find the value of t.          (BECE 2003 Q7)",
    options: [
      "-35",
      "-13",
      "13",
      "35",
    ],
    correctIndex: 3,
    difficulty: "Medium",
    explanation:
    "Expand to get 3t - 2t - 24 = 11. Thus, t - 24 = 11 and t = 35.",
  ),

  QuizQuestion(
    question:
    "20. If 6n + 4 = 16, find the value of n.          (BECE 2005 Q10)",
    options: [
      "2",
      "3",
      "5",
      "6",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    "Subtract 4 from both sides to get 6n = 12. Therefore, n = 2.",
  ),

  QuizQuestion(
    question:
    "21. The difference between two numbers is 168. If the smaller number is 113, find the other number.          (BECE 2008 Q39)",
    options: [
      "223",
      "271",
      "281",
      "291",
    ],
    correctIndex: 2,
    difficulty: "Easy",
    explanation:
    "The larger number is 113 + 168 = 281.",
  ),

  QuizQuestion(
    question:
    r"22. Solve the equation \frac{x + 2}{3} + 2x = 10.          (BECE 2006 Q18)",
    options: [
      "3",
      "4",
      "5",
      "6",
    ],
    correctIndex: 1,
    difficulty: "Medium",
    explanation:
    "Multiply through by 3: x + 2 + 6x = 30. Thus, 7x = 28 and x = 4.",
  ),

  QuizQuestion(
    question:
    "23. If 8x - 3(2x - 4) = 4, find the value of x.          (BECE 2007 Q15)",
    options: [
      "-8",
      "-4",
      "4",
      "8",
    ],
    correctIndex: 1,
    difficulty: "Medium",
    explanation:
    "Expand to get 8x - 6x + 12 = 4. Thus, 2x = -8 and x = -4.",
  ),

  QuizQuestion(
    question:
    r"24. Solve \frac{4k}{9} = 12.          (BECE 2008 Q33)",
    options: [
      "23",
      "25",
      "27",
      "29",
    ],
    correctIndex: 2,
    difficulty: "Easy",
    explanation:
    r"Multiply both sides by 9: 4k = 108. Therefore, k = \frac{108}{4} = 27.",
  ),

  QuizQuestion(
    question:
    r"25. If x + 5 = -7, find the value of \frac{x}{6}.          (BECE 2009 Q20)",
    options: [
      r"-\frac{55}{6}",
      "-2",
      r"-\frac{1}{3}",
      "2",
    ],
    correctIndex: 1,
    difficulty: "Easy",
    explanation:
    r"From x + 5 = -7, x = -12. Therefore, \frac{x}{6} = \frac{-12}{6} = -2.",
  ),

  QuizQuestion(
    question:
    "26. The sum of 5 and x divided by 4 is equal to 3.25. Find the value of x.          (BECE 2010 Q4)",
    options: [
      "8",
      "7",
      r"2\frac{1}{4}",
      r"-3\frac{4}{13}",
    ],
    correctIndex: 0,
    difficulty: "Medium",
    explanation:
    r"The statement means \frac{5 + x}{4} = 3.25. Therefore, 5 + x = 13 and x = 8.",
  ),

  QuizQuestion(
    question:
    r"27. Find the value of x, if \frac{x}{4} + 1 = 5.          (BECE 2010 Q20)",
    options: [
      "24",
      "20",
      "19",
      "16",
    ],
    correctIndex: 3,
    difficulty: "Easy",
    explanation:
    r"Subtract 1 to get \frac{x}{4} = 4. Multiplying by 4 gives x = 16.",
  ),

  QuizQuestion(
    question:
    "28. If 2x = 5(x - 2) + 7, find the value of x.          (BECE 2012 Q14)",
    options: [
      r"-5\frac{2}{3}",
      "-1",
      "1",
      r"5\frac{2}{3}",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    "Expand the right-hand side: 2x = 5x - 10 + 7 = 5x - 3. Thus, -3x = -3 and x = 1.",
  ),

  QuizQuestion(
    question:
    "29. If 1 - 2 = m, find m.          (BECE 2013 Q11)",
    options: [
      "3",
      "-1",
      "1",
      "3",
    ],
    correctIndex: 1,
    difficulty: "Easy",
    explanation: "Since 1 - 2 = -1, m = -1.",
  ),

  QuizQuestion(
    question:
    "30. Solve 3 + 3y = 1 - 13y.          (BECE 2015 Q23)",
    options: [
      r"-\frac{1}{8}",
      "-2",
      "2",
      "6",
    ],
    correctIndex: 0,
    difficulty: "Medium",
    explanation:
    r"Collect like terms: 3y + 13y = 1 - 3. Thus, 16y = -2 and y = -\frac{1}{8}. The original options appear to contain an error, so the first option has been corrected.",
  ),

  QuizQuestion(
    question:
    "31. When a number is doubled and the result is decreased by 9, the answer is 19. Find the number.          (BECE 2016 Q22)",
    options: [
      "5",
      "7",
      "14",
      "16",
    ],
    correctIndex: 2,
    difficulty: "Easy",
    explanation:
    "Let the number be x. Then 2x - 9 = 19. Thus, 2x = 28 and x = 14.",
  ),

  QuizQuestion(
    question:
    r"32. Given that \frac{1}{2p} = \frac{1}{8}, find the value of p.          (BECE 2017 Q3)",
    options: [
      "4",
      "3",
      "2",
      "1",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    r"Since \frac{1}{2p} = \frac{1}{8}, the denominators are equal. Therefore, 2p = 8 and p = 4.",
  ),

  QuizQuestion(
    question:
    r"33. Solve 2 + \frac{x}{3} = 1 - 2x.          (BECE 2017 Q8)",
    options: [
      r"-1\frac{2}{7}",
      r"-\frac{3}{7}",
      r"\frac{3}{7}",
      r"1\frac{2}{7}",
    ],
    correctIndex: 1,
    difficulty: "Medium",
    explanation:
    r"Move the x-terms to one side: \frac{x}{3} + 2x = -1. Thus, \frac{7x}{3} = -1 and x = -\frac{3}{7}.",
  ),

  QuizQuestion(
    question:
    "34. At a meeting attended by 23 people, the females were 7 more than the males. How many males were there?          (BECE 2017 Q14)",
    options: [
      "8",
      "15",
      "16",
      "30",
    ],
    correctIndex: 0,
    difficulty: "Medium",
    explanation:
    "Let the number of males be x. The number of females is x + 7. Then x + x + 7 = 23, so 2x = 16 and x = 8.",
  ),

  QuizQuestion(
    question:
    "35. If 4 - x = 3(4x + 5), find the value of x.          (BECE 2018 Q37)",
    options: [
      r"\frac{11}{13}",
      r"1\frac{6}{13}",
      r"-1\frac{6}{13}",
      r"-\frac{11}{13}",
    ],
    correctIndex: 3,
    difficulty: "Medium",
    explanation:
    r"Expand to get 4 - x = 12x + 15. Thus, -13x = 11 and x = -\frac{11}{13}.",
  ),

  QuizQuestion(
    question:
    r"36. Solve the equation 10 - \frac{x + 3}{2} = 8.          (BECE 2019 Q7)",
    options: [
      "-9",
      "-3",
      "1",
      "15",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    r"Subtract 8 from 10 to get \frac{x + 3}{2} = 2. Therefore, x + 3 = 4 and x = 1.",
  ),

  QuizQuestion(
    question:
    "37. When twelve is subtracted from three times a certain number and the result is divided by four, the answer is eighteen. Find the number.          (BECE 2019 Q25)",
    options: [
      "84",
      "40",
      "28",
      "20",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    r"Let the number be x. Then \frac{3x - 12}{4} = 18. Thus, 3x - 12 = 72, 3x = 84 and x = 28.",
  ),

  QuizQuestion(
    question:
    "38. In a class of 23 students, the girls were 7 more than the boys. How many boys were there in the class?          (BECE 2019 Q34)",
    options: [
      "8",
      "15",
      "16",
      "30",
    ],
    correctIndex: 0,
    difficulty: "Medium",
    explanation:
    "Let the number of boys be x. Then the number of girls is x + 7. Therefore, x + x + 7 = 23, so x = 8.",
  ),

  QuizQuestion(
    question:
    r"39. If \frac{w}{3} = 3(w - 1) - 1, find the value of w.          (BECE 2020 Q16)",
    options: [
      r"\frac{3}{2}",
      r"\frac{5}{4}",
      r"\frac{3}{5}",
      r"\frac{1}{2}",
    ],
    correctIndex: 0,
    difficulty: "Medium",
    explanation:
    r"Simplify the right-hand side: \frac{w}{3} = 3w - 4. Multiply by 3 to get w = 9w - 12. Thus, 8w = 12 and w = \frac{3}{2}.",
  ),

  QuizQuestion(
    question:
    "40. If 2x - 1 = 5, find the value of x.          (BECE 2021 Q34)",
    options: [
      "3",
      "4",
      "5",
      "6",
    ],
    correctIndex: 0,
    difficulty: "Easy",
    explanation:
    "Add 1 to both sides to get 2x = 6. Therefore, x = 3.",
  ),

  QuizQuestion(
    question:
    r"41. If \frac{n}{100} = 10.5, find the value of n.          (BECE 2022 Q23)",
    options: [
      "0.0105",
      "0.105",
      "105",
      "1050",
    ],
    correctIndex: 3,
    difficulty: "Easy",
    explanation:
    r"Multiply both sides of \frac{n}{100} = 10.5 by 100. Therefore, n = 1050.",
  ),

  QuizQuestion(
    question:
    "42. A certain number is subtracted from 12 and the result is multiplied by 3. If the answer is 21, find the number.          (BECE 2022 Q37)",
    options: [
      "4",
      "5",
      "6",
      "8",
    ],
    correctIndex: 1,
    difficulty: "Easy",
    explanation:
    "Let the number be x. Then 3(12 - x) = 21. Thus, 12 - x = 7 and x = 5.",
  ),

  QuizQuestion(
    question:
    r"43. If 2n - 5 = \frac{1}{2}n, find the value of n.          (BECE 2023 Q15)",
    options: [
      r"\frac{1}{3}",
      r"2\frac{1}{2}",
      r"3\frac{1}{3}",
      r"\frac{1}{2}",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    r"Subtract \frac{1}{2}n from 2n to get \frac{3}{2}n = 5. Thus, n = \frac{10}{3} = 3\frac{1}{3}.",
  ),

  QuizQuestion(
    question:
    "44. A story book contains 50 pages. If a student reads 10 pages per hour, find the relationship between the number of unread pages (N) and time (t).          (BECE 2024 Q29)",
    options: [
      "N = 10t + 50",
      "N = 10t - 50",
      "N = -10t + 50",
      r"N = -\frac{1}{10}t + 50",
    ],
    correctIndex: 2,
    difficulty: "Medium",
    explanation:
    "The student starts with 50 unread pages. The number decreases by 10 pages each hour, so N = 50 - 10t, which is the same as N = -10t + 50.",
  ),

  QuizQuestion(
    question:
    "45. Solve: 4x - 2(x + 5) = -10.          (BECE 2025 Q10)",
    options: [
      "x = -10",
      "x = 0",
      r"x = \frac{1}{2}",
      "x = 2",
    ],
    correctIndex: 1,
    difficulty: "Medium",
    explanation:
    "Expand to get 4x - 2x - 10 = -10. Thus, 2x = 0 and x = 0.",
  ),

  QuizQuestion(
    question:
    "46. Ama is three times as old as Kofi. The sum of their ages is 40. How old is Ama?          (BECE 2025 Q12)",
    options: [
      "10 years",
      "30 years",
      "37 years",
      "43 years",
    ],
    correctIndex: 1,
    difficulty: "Easy",
    explanation:
    "Let Kofi's age be x. Ama's age is 3x. Then x + 3x = 40, so x = 10. Therefore, Ama is 3 × 10 = 30 years old.",
  ),

  QuizQuestion(
    question:
    "47. Given that 0.03 × y = 2.4, find the value of y.          (BECE 2025 Q22)",
    options: [
      "0.08",
      "0.8",
      "8.0",
      "80.0",
    ],
    correctIndex: 3,
    difficulty: "Easy",
    explanation:
    "Divide both sides by 0.03: y = 2.4 ÷ 0.03 = 80.",
  ),
    ],
  ),

  "Math JHS1 s3 ss1 - Shape and Space": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
        "1. Which of the following would you use to measure an angle?          (BECE 1991 Q28)",
        options: [
          "Ruler",
          "A pair of compasses",
          "A set square",
          "A protractor",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        "A protractor is the instrument used to measure the size of an angle.",
      ),
      QuizQuestion(
        question:
        r"2. Which of the following statements is best described as constructing an angle of 180^\circ?          (BECE 2002B Q18)",
        options: [
          "Constructing an angle",
          r"Constructing the perpendicular bisector of (AB)",
          r"Constructing a circle about the midpoint of (AB)",
          r"Constructing an angle of (180^{\circ)}",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        r"An angle of \(180^\circ\) is a straight angle. Therefore, constructing an angle of \(180^\circ\) means constructing a straight angle.",
      ),
      QuizQuestion(
        question:
        "3. The value of an obtuse angle lies between:          (BECE 2003 Q33)",
        options: [
          r"0^{\circ} and 90^{\circ}",
          r"90^{\circ} and 180^{\circ}",
          r"90^{\circ} and 270^{\circ}",
          r"180^{\circ} and 360^{\circ}",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        r"An obtuse angle is greater than \(90^\circ\) but less than \(180^\circ\).",
      ),
      QuizQuestion(
        question:
        "4. The angle formed by one complete revolution is equivalent to:          (BECE 2004 Q4)",
        options: [
          "One right angle",
          "Two right angles",
          "Three right angles",
          "Four right angles",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        r"One complete revolution is \(360^\circ\). Since one right angle is \(90^\circ\), \(360^\circ \div 90^\circ = 4\).",
      ),
      QuizQuestion(
        question:
        "5. The angles of a triangle are in the ratio 3:2:1. Find the value of the smallest angle.          (BECE 2004 Q23)",
        options: [
          r"30^{\circ}",
          r"45^\circ",
          r"60^\circ",
          r"90^\circ",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"The angles of a triangle add up to \(180^\circ\). The total number of parts is \(3 + 2 + 1 = 6\). One part is \(180^\circ \div 6 = 30^\circ\), so the smallest angle is \(30^\circ\).",
      ),
      QuizQuestion(
        question:
        r"6. An angle which is more than 90^\circ but less than 180^\circ is:          (BECE 2004 Q34)",
        options: [
          "An acute angle",
          "A right angle",
          "An obtuse angle",
          "A reflex angle",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"An obtuse angle is greater than \(90^\circ\) but less than \(180^\circ\).",
      ),
      QuizQuestion(
        question:
        "7. Find the angle through which the minute hand of a clock moves from 5:15 p.m. to 5:25 p.m.          (BECE 2008 Q20)",
        options: [
          r"30^\circ",
          r"45^\circ",
          r"60^\circ",
          r"120^\circ",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The minute hand moves \(360^\circ\) in 60 minutes, which is \(6^\circ\) per minute. From 5:15 p.m. to 5:25 p.m. is 10 minutes, so the angle moved is \(10 \times 6^\circ = 60^\circ\).",
      ),
      QuizQuestion(
        question:
        r"8. An angle which is greater than 180^\circ but less than 360^\circ is:          (BECE 2016 Q25)",
        options: [
          "A right angle",
          "An acute angle",
          "An obtuse angle",
          "A reflex angle",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        r"A reflex angle is greater than \(180^\circ\) but less than \(360^\circ\).",
      ),
      QuizQuestion(
        question:
        "9. The instrument used to measure the angle between two lines that meet at a point is known as a:          (BECE 2016 Q40)",
        options: [
          "Pair of compasses",
          "Set square",
          "Protractor",
          "Pair of dividers",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "A protractor is used to measure the angle formed by two intersecting lines.",
      ),
      QuizQuestion(
        question:
        r"10. Given that (x = 8), what type of angle is ((9x + 8)^\circ)?          (BECE 2021 Q5)",
        options: [
          "Straight angle",
          "Obtuse angle",
          "Acute angle",
          "Right angle",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"Substitute \(x = 8\): \(9(8) + 8 = 72 + 8 = 80^\circ\). Since \(80^\circ\) is less than \(90^\circ\), it is an acute angle.",
      ),
      QuizQuestion(
        question:
        r"11. Two interior angles of a triangle are ((3x - 10)^\circ) and ((4x + 20)^\circ). Find an expression for the third angle.          (BECE 2025 Q24)",
        options: [
          r"(170 - 7x)^\circ",
          r"(150 - 5x)^\circ",
          r"(120 - 7x)^\circ",
          r"(100 - 5x)^\circ",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"The interior angles of a triangle add up to \(180^\circ\). The third angle is \(180^\circ - [(3x - 10)^\circ + (4x + 20)^\circ]\). Simplifying gives \(180 - (7x + 10) = (170 - 7x)^\circ\).",
      ),
    ],
  ),
  "Math JHS1 s3 ss2 - Measurement": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
        "1. What is the name of the line segment drawn to join any two points on the circumference of a circle?          (BECE 1990 Q32)",
        options: [
          "Radius",
          "Segment",
          "Sector",
          "Chord",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        "A chord is a line segment whose two endpoints lie on the circumference of a circle.",
      ),
      QuizQuestion(
        question:
        r"2. The area of a square is 49 cm^2. Find the perimeter of the square.          (BECE 1990 Q35)",
        options: [
          "7 cm",
          "51 cm",
          r"28 cm",
          r"49 cm",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The side of the square is \(\sqrt{49} = 7\text{ cm}\). Therefore, its perimeter is \(4 \times 7 = 28\text{ cm}\).",
      ),
      QuizQuestion(
        question:
        r"3. The circumference of a circular track is 440m. Find the diameter of this track. Take \pi = \frac{22}{7}.          (BECE 1991 Q26)",
        options: [
          r"70 m",
          r"140 m",
          r"280 m",
          r"691 m",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        r"Using \(C = \pi d\), \(440 = \frac{22}{7}d\). Therefore, \(d = 440 \times \frac{7}{22} = 140\text{ m}\).",
      ),

      QuizQuestion(
        question:
        "4. Which of these has the least number of lines of symmetry?          (BECE 1993 Q4)",
        options: [
          "An equilateral triangle",
          "A rectangle",
          "A square",
          "A circle",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "An equilateral triangle has 3 lines of symmetry, a rectangle has 2, a square has 4 and a circle has infinitely many. Therefore, the rectangle has the least.",
      ),

      QuizQuestion(
        question:
        r"5. The bearing of Aboku from Bebeka is 055^\circ. What is the bearing of Bebeka from Aboku?          (BECE 1993 Q32)",
        options: [
          r"235^\circ",
          r"055^\circ",
          r"125^\circ",
          r"305^\circ",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"To find the reverse bearing, add \(180^\circ\): \(055^\circ + 180^\circ = 235^\circ\).",
      ),

      QuizQuestion(
        question:
        "6. How many lines of symmetry does a rectangle have?          (BECE 1994 Q4)",
        options: [
          "1",
          "2",
          "3",
          "4",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "A rectangle has two lines of symmetry: one horizontal and one vertical through its centre.",
      ),

      QuizQuestion(
        question:
        "7. How many lines of symmetry has a square?          (BECE 1995 Q23)",
        options: [
          "0",
          "1",
          "2",
          "4",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        "A square has four lines of symmetry: two through the midpoints of opposite sides and two along its diagonals.",
      ),

      QuizQuestion(
        question:
        r"8. A square of side 6 cm has the same area as a rectangle of length 9 cm. Find the breadth of the rectangle.          (BECE 1999 Q32)",
        options: [
          r"3 cm",
          r"4 cm",
          r"6 cm",
          r"24 cm",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        r"The area of the square is \(6 \times 6 = 36\text{ cm}^2\). Therefore, the breadth of the rectangle is \(36 \div 9 = 4\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        "9. How many lines of symmetry has a square?          (BECE 2000 Q13)",
        options: [
          "2",
          "3",
          "4",
          "6",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "A square has four lines of symmetry.",
      ),

      QuizQuestion(
        question:
        "10. How many lines of symmetry has an isosceles triangle?          (BECE 2001 Q14)",
        options: [
          "1",
          "2",
          "3",
          "4",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "An isosceles triangle has one line of symmetry passing through its vertex and the midpoint of its base.",
      ),

      QuizQuestion(
        question:
        "11. Which of the following is not a quadrilateral?          (BECE 2001 Q17)",
        options: [
          "Square",
          "Rectangle",
          "Rhombus",
          "Triangle",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        "A quadrilateral has four sides. A triangle has only three sides, so it is not a quadrilateral.",
      ),

      QuizQuestion(
        question:
        r"12. The area of a rectangle is 18 cm^2. One of its sides is 9 cm long. Find its perimeter.          (BECE 2001 Q34)",
        options: [
          r"11 cm",
          r"18 cm",
          r"22 cm",
          r"36 cm",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The other side is \(18 \div 9 = 2\text{ cm}\). Therefore, the perimeter is \(2(9 + 2) = 22\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        "13. How many lines of symmetry has a rhombus?          (BECE 1998 Q33)",
        options: [
          "2",
          "3",
          "4",
          "5",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "A rhombus has two lines of symmetry, which lie along its diagonals.",
      ),

      QuizQuestion(
        question:
        "14. A farmer left home at 4:35 a.m. and arrived on his farm at 6:18 a.m. How long did he take to get to his farm?          (BECE 2002A Q3)",
        options: [
          "1 hour 23 minutes",
          "1 hour 43 minutes",
          "2 hours 43 minutes",
          "10 hours 53 minutes",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        "From 4:35 a.m. to 5:35 a.m. is 1 hour, and from 5:35 a.m. to 6:18 a.m. is 43 minutes. The total time is 1 hour 43 minutes.",
      ),

      QuizQuestion(
        question:
        r"15. The length of a rectangle is three times its width. If its perimeter is 24 cm, find its width.          (BECE 2002A Q35)",
        options: [
          r"3 cm",
          r"4 cm",
          r"6 cm",
          r"8 cm",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"Let the width be \(w\). The length is \(3w\). Thus, \(2(3w + w) = 24\), so \(8w = 24\) and \(w = 3\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        "16. How many lines of symmetry has an equilateral triangle?          (BECE 2003 Q32)",
        options: [
          "1",
          "2",
          "3",
          "4",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "An equilateral triangle has three lines of symmetry, one from each vertex to the midpoint of the opposite side.",
      ),

      QuizQuestion(
        question:
        r"17. An equilateral triangle has side 16 cm. A square has the same perimeter as the equilateral triangle. What is the area of the square?          (BECE 2005 Q23)",
        options: [
          r"48 cm^2",
          r"96 cm^2",
          r"144 cm^2",
          r"256 cm^2",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The triangle's perimeter is \(3 \times 16 = 48\text{ cm}\). Each side of the square is \(48 \div 4 = 12\text{ cm}\), so its area is \(12^2 = 144\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        r"18. The perimeter of a rectangle is 24 cm. If the breadth of the rectangle is 4cm, find the area of the rectangle.          (BECE 2005 Q29)",
        options: [
          r"32 cm^2",
          r"48 cm^2",
          r"64 cm^2",
          r"144 cm^2",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"Since \(2(l + 4) = 24\), \(l + 4 = 12\) and \(l = 8\text{ cm}\). Therefore, the area is \(8 \times 4 = 32\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        r"19. The base of an isosceles triangle is 7 cm long. Each of the other two sides is x cm long. What will be the expression for its perimeter?          (BECE 2006 Q7)",
        options: [
          r"x + 7",
          r"x + 14",
          r"2x - 7",
          r"2x + 7",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        r"The perimeter is the sum of the three sides: \(x + x + 7 = 2x + 7\).",
      ),

      QuizQuestion(
        question:
        "20. The length of a rectangular playing field is 5 metres longer than its width. If the perimeter of the field is 150 metres, find its width.          (BECE 2007 Q39)",
        options: [
          "30 metres",
          "35 metres",
          "40 metres",
          "45 metres",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        "Let the width be w metres. The length is w + 5. Thus, 2(w + w + 5) = 150, so 2w + 5 = 75, 2w = 70 and w = 35 metres.",
      ),

      QuizQuestion(
        question:
        r"21. A football field is 120 m long and 75 m wide. What is the perimeter of the field?          (BECE 2008 Q14)",
        options: [
          r"195 m",
          r"390 m",
          r"780 m",
          r"900 m",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        r"The perimeter is \(2(120 + 75) = 2 \times 195 = 390\text{ m}\).",
      ),

      QuizQuestion(
        question:
        "22. How many lines of symmetry has an equilateral triangle?          (BECE 2008 Q28)",
        options: [
          "1",
          "2",
          "3",
          "4",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "An equilateral triangle has three lines of symmetry.",
      ),

      QuizQuestion(
        question:
        "23. Which of the following is not a quadrilateral?          (BECE 2008 Q30)",
        options: [
          "Hexagon",
          "Kite",
          "Rectangle",
          "Trapezium",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "A hexagon has six sides, while a quadrilateral has four sides.",
      ),

      QuizQuestion(
        question:
        r"24. A rectangle has an area of 36 cm^2 and a width of 3 cm. Find its perimeter.          (BECE 2009 Q16)",
        options: [
          r"12 cm",
          r"18 cm",
          r"24 cm",
          r"30 cm",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        r"The length is \(36 \div 3 = 12\text{ cm}\). Therefore, the perimeter is \(2(12 + 3) = 30\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        "25. How many lines of symmetry has a rectangle?          (BECE 2010 Q27)",
        options: [
          "4",
          "3",
          "2",
          "1",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation: "A rectangle has two lines of symmetry.",
      ),

      QuizQuestion(
        question:
        r"26. Find the area of a square, if its perimeter is 28 cm.          (BECE 2011 Q16)",
        options: [
          r"784 cm^2",
          r"196 cm^2",
          r"49 cm^2",
          r"14 cm^2",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"Each side of the square is \(28 \div 4 = 7\text{ cm}\). Therefore, its area is \(7^2 = 49\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        "27. How many diagonals are in a rectangle?          (BECE 2012 Q4)",
        options: [
          "1",
          "2",
          "3",
          "4",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "A rectangle has two diagonals joining its opposite vertices.",
      ),

      QuizQuestion(
        question:
        r"28. The bearing of Atoru from Busase is 275^\circ. What is the bearing of Busase from Atoru?          (BECE 2012 Q31)",
        options: [
          r"180^\circ",
          r"175^\circ",
          r"095^\circ",
          r"075^\circ",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"Since \(275^\circ\) is greater than \(180^\circ\), subtract \(180^\circ\): \(275^\circ - 180^\circ = 095^\circ\).",
      ),

      QuizQuestion(
        question:
        r"29. The perimeter of a rectangle is 48 cm. If the length is 14 cm, find its width.          (BECE 2013 Q12)",
        options: [
          r"24 cm",
          r"20 cm",
          r"10 cm",
          r"3.4 cm",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"Since \(2(l + w) = 48\), \(l + w = 24\). Therefore, \(w = 24 - 14 = 10\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"30. The length of a rectangular fence is 25 m. The ratio of the length to the width is 5:3. Find the width of the rectangular fence.          (BECE 2013 Q22)",
        options: [
          r"19 m",
          r"13 m",
          r"15 m",
          r"16 m",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The length represents 5 parts. One part is \(25 \div 5 = 5\text{ m}\). Therefore, the width is \(3 \times 5 = 15\text{ m}\).",
      ),

      QuizQuestion(
        question:
        "31. Jane arrived at work at 7:55 a.m. and left at 4:15 p.m. For how long was she at work?          (BECE 2014 Q17)",
        options: [
          "7 hr 20 min",
          "7 hr 45 min",
          "8 hr 20 min",
          "8 hr 40 min",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        "From 7:55 a.m. to 12:00 noon is 4 hours 5 minutes. From noon to 4:15 p.m. is 4 hours 15 minutes. The total is 8 hours 20 minutes.",
      ),

      QuizQuestion(
        question:
        r"32. The perimeter of a rectangle is 24 cm. If the length is 7 cm, find the width.          (BECE 2014 Q28)",
        options: [
          r"3 cm",
          r"5 cm",
          r"10 cm",
          r"12 cm",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        r"Since \(2(l + w) = 24\), \(l + w = 12\). Therefore, \(w = 12 - 7 = 5\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        "33. What name is given to a triangle which has all its sides equal?          (BECE 2015 Q27)",
        options: [
          "Isosceles triangle",
          "Scalene triangle",
          "Equilateral triangle",
          "Right-angle triangle",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "A triangle with all three sides equal is called an equilateral triangle.",
      ),

      QuizQuestion(
        question:
        r"34. A rectangular field 50 m wide and y m long requires 260 m of fencing. Find y.          (BECE 2015 Q29)",
        options: [
          r"15 m",
          r"40 m",
          r"80 m",
          r"105 m",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The fencing represents the perimeter. Thus, \(2(50 + y) = 260\). Therefore, \(50 + y = 130\) and \(y = 80\text{ m}\).",
      ),

      QuizQuestion(
        question:
        "35. Kwame is facing west. Through how many degrees should he turn anti-clockwise to face north?          (BECE 2015 Q32)",
        options: [
          r"90^\circ",
          r"180^\circ",
          r"270^\circ",
          r"360^\circ",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"An anti-clockwise turn from west passes through south and east before reaching north. This is a turn of \(270^\circ\).",
      ),

      QuizQuestion(
        question:
        "36. How many lines of symmetry has a rectangle?          (BECE 2016 Q26)",
        options: [
          "1",
          "2",
          "3",
          "4",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation: "A rectangle has two lines of symmetry.",
      ),

      QuizQuestion(
        question:
        r"37. The perimeter of an isosceles triangle is 45 cm. Find the length of the third side, if each of the equal sides is 14 cm long.          (BECE 2016 Q27)",
        options: [
          r"11 cm",
          r"14 cm",
          r"17 cm",
          r"31 cm",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The two equal sides have a total length of \(14 + 14 = 28\text{ cm}\). The third side is \(45 - 28 = 17\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"38. The bearing of X from Y is 196^\circ. What is the bearing of Y from X?          (BECE 2016 Q37)",
        options: [
          r"016^\circ",
          r"074^\circ",
          r"106^\circ",
          r"244^\circ",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"Subtract \(180^\circ\) from the given bearing: \(196^\circ - 180^\circ = 016^\circ\).",
      ),

      QuizQuestion(
        question:
        "39. How many lines of symmetry does a rhombus have?          (BECE 2017 Q1)",
        options: [
          "2",
          "3",
          "4",
          "5",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "A rhombus has two lines of symmetry along its diagonals.",
      ),

      QuizQuestion(
        question:
        r"40. The perimeter of a rectangle is 26cm. If its length is 10 cm, find its area.          (BECE 2018 Q19)",
        options: [
          r"30 cm^2",
          r"60 cm^2",
          r"130 cm^2",
          r"160 cm^2",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"Since \(2(l + w) = 26\), \(l + w = 13\). Therefore, \(w = 13 - 10 = 3\text{ cm}\), and the area is \(10 \times 3 = 30\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        "41. How many lines of symmetry has a rhombus?          (BECE 2018 Q33)",
        options: [
          "2",
          "3",
          "4",
          "5",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "A rhombus has two lines of symmetry along its diagonals.",
      ),

      QuizQuestion(
        question:
        r"42. The bearing of P from Q is 060^\circ. Find the bearing of Q from P.          (BECE 2018 Q39)",
        options: [
          r"120^\circ",
          r"150^\circ",
          r"210^\circ",
          r"240^\circ",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        r"Add \(180^\circ\) to find the reverse bearing: \(060^\circ + 180^\circ = 240^\circ\).",
      ),

      QuizQuestion(
        question:
        "43. How many lines of symmetry has a square?          (BECE 2019 Q6)",
        options: [
          "0",
          "1",
          "2",
          "4",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation: "A square has four lines of symmetry.",
      ),

      QuizQuestion(
        question:
        r"44. The two sides of a parallelogram are 4.8 m and 7.2 m long. Find its perimeter.          (BECE 2019 Q14)",
        options: [
          r"48.0 m",
          r"34.6 m",
          r"24.0 m",
          r"17.3 m",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The perimeter is \(2(4.8 + 7.2) = 2 \times 12 = 24.0\text{ m}\).",
      ),

      QuizQuestion(
        question:
        r"45. If the bearing of A from B is 240^\circ, find the bearing of B from A.          (BECE 2019 Q16)",
        options: [
          r"040^\circ",
          r"060^\circ",
          r"120^\circ",
          r"300^\circ",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        r"Subtract \(180^\circ\) from the given bearing: \(240^\circ - 180^\circ = 060^\circ\).",
      ),

      QuizQuestion(
        question:
        "46. Which of the following polygons does not have a line of symmetry?          (BECE 2020 Q9)",
        options: [
          "Kite",
          "Isosceles triangle",
          "Trapezium",
          "Rhombus",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "A general trapezium does not have a line of symmetry. A kite and an isosceles triangle each have one, while a rhombus has two.",
      ),

      QuizQuestion(
        question:
        r"47. Two sides of a parallelogram are 5.8 m and 8.2 mlong. Find its perimeter.          (BECE 2020 Q22)",
        options: [
          r"14.0 m",
          r"36.6 m",
          r"28.0 m",
          r"47.6 m",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The perimeter is \(2(5.8 + 8.2) = 2 \times 14 = 28.0\text{ m}\).",
      ),

      QuizQuestion(
        question:
        r"48. Two sides of a rectangle are 10 cm and 6 cm. Calculate the area of a square with the same perimeter as that of the rectangle.          (BECE 2020 Q36)",
        options: [
          r"16 cm^2",
          r"30 cm^2",
          r"60 cm^2",
          r"64 cm^2",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        r"The rectangle's perimeter is \(2(10 + 6) = 32\text{ cm}\). The square's side is \(32 \div 4 = 8\text{ cm}\), so its area is \(8^2 = 64\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        r"49. The area of a rectangle is 18 cm^2. If one of its sides is 2 cm long, find its perimeter.          (BECE 2021 Q10)",
        options: [
          r"18 cm",
          r"20 cm",
          r"22 cm",
          r"36 cm",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The other side is \(18 \div 2 = 9\text{ cm}\). Therefore, the perimeter is \(2(9 + 2) = 22\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"50. What is the length of the side of a square of area 225 cm^2?          (BECE 2022 Q14)",
        options: [
          r"12.00 cm",
          r"15.00 cm",
          r"56.25 cm",
          r"112.50 cm",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        r"The side length is the square root of the area: \(\sqrt{225} = 15\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        "51. A football match starts at 2:20 p.m. and lasts for 1 hour 50 minutes. At what time will the game end?          (BECE 2022 Q21)",
        options: [
          "3:10 p.m.",
          "4:10 p.m.",
          "5:10 p.m.",
          "6:10 p.m.",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "Adding 1 hour to 2:20 p.m. gives 3:20 p.m. Adding another 50 minutes gives 4:10 p.m.",
      ),

      QuizQuestion(
        question:
        "52. Which of the following is not a quadrilateral?          (BECE 2022 Q35)",
        options: [
          "Parallelogram",
          "Rhombus",
          "Triangle",
          "Rectangle",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "A triangle has three sides, while a quadrilateral has four sides.",
      ),

      QuizQuestion(
        question:
        "53. A quadrilateral with one pair of opposite sides parallel is called a:          (BECE 2023 Q3)",
        options: [
          "Trapezium",
          "Kite",
          "Square",
          "Rectangle",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "A trapezium is a quadrilateral with one pair of opposite sides parallel.",
      ),
    ],
  ),
  "Math JHS1 s3 ss3 - Position and Transformation": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
        r"1. The point P(3, 4) is translated by the vector \begin{pmatrix} 3 \\ -2 \end{pmatrix} to a new position P'. Find the coordinates of the image P'.          (BECE 2006 Q38)",
        options: [
          "(0, 2)",
          "(6, -2)",
          "(6, 2)",
          "(6, 6)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "A translation adds the vector to the coordinates: (3 + 3, 4 - 2) = (6, 2).",
      ),
      QuizQuestion(
        question:
        "2. The point D(4, 3) is reflected in the y-axis. Find the coordinates of its image.          (BECE 2017 Q25)",
        options: [
          "(-4, -3)",
          "(-3, 4)",
          "(-4, 3)",
          "(3, -4)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Reflection in the y-axis changes the sign of the x-coordinate only: (4, 3) → (-4, 3).",
      ),
      QuizQuestion(
        question:
        r"3. Find the image of the point (2, 5) under the transformation \begin{pmatrix} x \\ y \end{pmatrix} → \begin{pmatrix} x \\ 2 - y \end{pmatrix}.          (BECE 2018 Q29)",
        options: [
          "(2, -3)",
          "(2, 2)",
          "(2, 3)",
          "(2, 7)",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "Keep x the same and replace y with 2 − y: (2, 5) → (2, 2 − 5) = (2, -3).",
      ),
      QuizQuestion(
        question:
        "4. Find the vector which translates the point (2, 6) to (5, 4).          (BECE 2023 Q5)",
        options: [
          r"\begin{pmatrix} 3 \\ -2 \end{pmatrix}",
          r"\begin{pmatrix} 7 \\ 10 \end{pmatrix}",
          r"\begin{pmatrix} -3 \\ 2 \end{pmatrix}",
          r"\begin{pmatrix} -1 \\ 4 \end{pmatrix}",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "Translation vector = (5 − 2, 4 − 6) = (3, -2).",
      ),
      QuizQuestion(
        question:
        "5. A point (2, 1) is reflected in the y-axis. Find its image.          (BECE 2002A Q24)",
        options: [
          "(-1, 2)",
          "(1, -2)",
          "(-2, 1)",
          "(2, -1)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Reflection in the y-axis changes (x, y) to (-x, y): (2, 1) → (-2, 1).",
      ),
      QuizQuestion(
        question:
        "6. The point S(4, 3) is reflected in the y-axis. Find the coordinates of the image of S.          (BECE 2022 Q8)",
        options: [
          "(-3, 4)",
          "(3, -4)",
          "(-4, 3)",
          "(4, -3)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Reflection in the y-axis changes the x-coordinate only: (4, 3) → (-4, 3).",
      ),
      QuizQuestion(
        question:
        "7. Find the image of the point (-2, 3) under a reflection in the y-axis.          (BECE 2020 Q13)",
        options: [
          "(2, -3)",
          "(-3, 2)",
          "(2, 3)",
          "(3, 2)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Reflection in the y-axis changes (-2, 3) to (2, 3).",
      ),
      QuizQuestion(
        question:
        "8. The point P(-3, 7) is reflected in the x-axis. Find its image.          (BECE 2016 Q39)",
        options: [
          "(-3, -7)",
          "(-3, 7)",
          "(-7, 3)",
          "(3, -7)",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "Reflection in the x-axis changes (x, y) to (x, -y): (-3, 7) → (-3, -7).",
      ),
      QuizQuestion(
        question:
        "9. Find the vector which translates the point A(4, -5) to B(3, -2).          (BECE 2013 Q18)",
        options: [
          r"\begin{pmatrix} -1 \\ -3 \end{pmatrix}",
          r"\begin{pmatrix} -1 \\ 3 \end{pmatrix}",
          r"\begin{pmatrix} -1 \\ 7 \end{pmatrix}",
          r"\begin{pmatrix} 7 \\ 3 \end{pmatrix}",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "Translation vector = (3 − 4, -2 − (-5)) = (-1, 3).",
      ),
      QuizQuestion(
        question:
        "10. Find the image of the point K(3, 5) when it is reflected in the x-axis.          (BECE 2002B Q19)",
        options: [
          "(3, 5)",
          "(5, 3)",
          "(3, -5)",
          "(-3, -5)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Reflection in the x-axis changes (3, 5) to (3, -5).",
      ),
      QuizQuestion(
        question:
        "11. Find the image of the point S(-2, 2) when it is reflected in the y-axis.          (BECE 2023 Q6)",
        options: [
          "(2, 2)",
          "(2, -2)",
          "(-2, 2)",
          "(-2, -2)",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "Reflection in the y-axis changes (-2, 2) to (2, 2).",
      ),
      QuizQuestion(
        question:
        "12. The point P(5, 4) is reflected in the y-axis. Find its image.          (BECE 2014 Q37)",
        options: [
          "(-5, 4)",
          "(5, -4)",
          "(-4, 5)",
          "(4, -5)",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "Reflection in the y-axis changes the sign of the x-coordinate only.",
      ),
      QuizQuestion(
        question:
        "13. The image of P(10, -3) when translated by the vector r is P'(4, 5). Find r.          (BECE 2021 Q4)",
        options: [
          r"\begin{pmatrix} 14 \\ 2 \end{pmatrix}",
          r"\begin{pmatrix} 6 \\ -8 \end{pmatrix}",
          r"\begin{pmatrix} -6 \\ 8 \end{pmatrix}",
          r"\begin{pmatrix} 6 \\ 8 \end{pmatrix}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Translation vector = (4 − 10, 5 − (-3)) = (-6, 8).",
      ),
      QuizQuestion(
        question:
        r"14. Find the image of the point (6, 3) when translated by the vector \begin{pmatrix} -4 \\ -1 \end{pmatrix}.          (BECE 1997 Q15)",
        options: [
          "(-2, -2)",
          "(2, -2)",
          "(-2, 2)",
          "(2, 2)",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "Add the vector to the coordinates: (6 − 4, 3 − 1) = (2, 2).",
      ),
      QuizQuestion(
        question:
        "15. The point (4, 5) is translated to the point (3, 1). What is the translation vector?          (BECE 2010 Q33)",
        options: [
          r"\begin{pmatrix} -1 \\ -4 \end{pmatrix}",
          r"\begin{pmatrix} 1 \\ 4 \end{pmatrix}",
          r"\begin{pmatrix} -1 \\ -4 \end{pmatrix}",
          r"\begin{pmatrix} -1 \\ -4 \end{pmatrix}",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        "Translation vector = (3 − 4, 1 − 5) = (-1, -4).",
      ),
      QuizQuestion(
        question:
        r"16. If P'(4, -5) is the image of P(x, y) translated by r = \begin{pmatrix} -2 \\ 3 \end{pmatrix}(-2, 3), find the values of x and y.          (BECE 2020 Q32)",
        options: [
          "(-6, 8)",
          "(-6, -8)",
          "(6, -8)",
          "(6, 8)",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        "Since (x − 2, y + 3) = (4, -5), then x = 6 and y = -8. (Note: the published options appear to contain an error; the correct answer should be (6, -8).)",
      ),
      QuizQuestion(
        question:
        "17. A point (-2, 3) is reflected in the x-axis. Find the image of the point.          (BECE 2025 Q13)",
        options: [
          "(-3, -2)",
          "(-3, 2)",
          "(-2, -3)",
          "(-2, 3)",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Reflection in the x-axis changes the sign of the y-coordinate: (-2, 3) → (-2, -3).",
      ),
    ],
  ),

  "Math JHS1 s4 ss1 - Data": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
        "1. The scores of 10 students in an examination are given as follows: 45, 12, 75, 81, 54, 51, 24, 67, 19 and 39. What is the median of the scores?          (BECE 2010 Q17)",
        options: [
          "39",
          "48",
          "51",
          "54",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        "Arrange the scores in ascending order: 12, 19, 24, 39, 45, 51, 54, 67, 75, 81. Since there are 10 scores, the median is the average of the 5th and 6th scores: (45 + 51) ÷ 2 = 48.",
      ),

      QuizQuestion(
        question:
        "2. The ages in years of eight boys are 14, 14.5, 12, 11.5, 15, 13, 10.5 and 13.5. What is their average age?          (BECE 1995 Q25)",
        options: [
          "14",
          "13",
          "12",
          "11",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        "Add the ages: 14 + 14.5 + 12 + 11.5 + 15 + 13 + 10.5 + 13.5 = 104. The average age is 104 ÷ 8 = 13 years.",
      ),

      QuizQuestion(
        question:
        "3. The marks obtained by six boys in a test are 20, 25, 15, 30, 28 and 16. Find the mean mark.          (BECE 1998 Q17)",
        options: [
          "19.33",
          "22.33",
          "23.20",
          "26.40",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        "Add the marks: 20 + 25 + 15 + 30 + 28 + 16 = 134. The mean mark is 134 ÷ 6 = 22.33, correct to two decimal places.",
      ),

      QuizQuestion(
        question:
        "4. Find the mean of the following set of numbers: 10, 12, 14 and 16.          (BECE 2005 Q12)",
        options: [
          "12",
          "13",
          "14",
          "15",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "Add the numbers: 10 + 12 + 14 + 16 = 52. The mean is 52 ÷ 4 = 13.",
      ),

      QuizQuestion(
        question:
        "5. Find the median of the following marks: 2, 4, 10, 3, 6 and 12.          (BECE 2005 Q13)",
        options: [
          "4",
          "5",
          "6",
          "10",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        "Arrange the marks in ascending order: 2, 3, 4, 6, 10, 12. The median is the average of the two middle marks: (4 + 6) ÷ 2 = 5.",
      ),

      QuizQuestion(
        question:
        "6. The marks obtained by 5 girls in a test are 10, 15, 8, 18 and 12. Find the median mark.          (BECE 2006 Q18)",
        options: [
          "10",
          "11",
          "12",
          "15",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Arrange the marks in ascending order: 8, 10, 12, 15, 18. The middle mark is 12, so the median is 12.",
      ),

      QuizQuestion(
        question:
        "7. The ages of the members of a social club are 20 years, 55 years, 60 years and 25 years. Find the mean age of the members of the club.          (BECE 2017 Q9)",
        options: [
          "20 years",
          "30 years",
          "40 years",
          "50 years",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        "Add the ages: 20 + 55 + 60 + 25 = 160 years. The mean age is 160 ÷ 4 = 40 years.",
      ),

      QuizQuestion(
        question:
        "8. What is the mode of the following set of numbers: 4, 5, 3, 3, 4, 2, 7, 6, 5, 4, 4 and 1?          (BECE 1995 Q9)",
        options: [
          "3",
          "4",
          "5",
          "6",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        "The mode is the number that occurs most frequently. The number 4 occurs four times, more than any other number, so the mode is 4.",
      ),
    ],
  ),
  "Math JHS1 s4 ss2 - Chance or Probability": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
        "1. A boy throws a die once. What is the probability of getting the number 4?          (BECE 2007 Q12)",
        options: [
          r"\frac{1}{6}",
          r"\frac{1}{3}",
          r"\frac{1}{2}",
          r"\frac{5}{6}",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        r"A die has 6 equally likely outcomes, and only one outcome is 4. Therefore, the probability is \(\frac{1}{6}\).",
      ),
      QuizQuestion(
        question:
        "2. Five cards are numbered one to five. A card is picked at random. What is the probability that it has an even number?          (BECE 1995 Q20)",
        options: [
          "1",
          r"\frac{4}{5}",
          r"\frac{1}{5}",
          r"\frac{2}{5}",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        r"The even numbers from 1 to 5 are 2 and 4. Therefore, there are 2 favourable outcomes out of 5 possible outcomes, so the probability is \(\frac{2}{5}\).",
      ),
      QuizQuestion(
        question:
        r"3. If S = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, find the probability that a number selected at random from S is odd.          (BECE 2010 Q11)",
        options: [
          "1",
          r"\frac{2}{3}",
          r"\frac{1}{2}",
          r"\frac{1}{6}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The odd numbers are 1, 3, 5, 7 and 9. There are 5 odd numbers out of 10 numbers, so the probability is \(\frac{5}{10} = \frac{1}{2}\).",
      ),

      QuizQuestion(
        question:
        "4. What is the probability of obtaining a prime number when a fair die is thrown once?          (BECE 1994 Q16)",
        options: [
          r"\frac{1}{4}",
          r"\frac{1}{2}",
          r"\frac{1}{3}",
          r"\frac{1}{6}",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        r"The prime numbers on a die are 2, 3 and 5. There are 3 favourable outcomes out of 6 possible outcomes, so the probability is \(\frac{3}{6} = \frac{1}{2}\).",
      ),

      QuizQuestion(
        question:
        "5. What is the number of all possible outcomes of tossing a die?          (BECE 2005 Q38)",
        options: [
          "2",
          "3",
          "4",
          "6",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        "A die has six faces numbered 1, 2, 3, 4, 5 and 6. Therefore, there are 6 possible outcomes.",
      ),

      QuizQuestion(
        question:
        "6. The following are the scores obtained by girls in a beauty contest: 12, 16, 19, 14, 17, 8, 11 and 19. What is the probability of obtaining a score of 19?          (BECE 1994 Q17)",
        options: [
          r"\frac{1}{9}",
          r"\frac{1}{8}",
          r"\frac{1}{4}",
          r"\frac{19}{53}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The score 19 occurs twice among the 8 scores. Therefore, the probability is \frac{2}{8} = \frac{1}{4}.",
      ),

      QuizQuestion(
        question:
        "7. Kofi throws a die. What is the probability that he throws the number 2?          (BECE 1994 Q5)",
        options: [
          "1",
          r"\frac{2}{3}",          r"\frac{1}{2}",
          r"\frac{1}{6}",
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
        r"A die has 6 equally likely outcomes, and only one outcome is 2. Therefore, the probability is \(\frac{1}{6}\).",
      ),

      QuizQuestion(
        question:
        "8. Eighteen cards are numbered from 11 to 29. If one card is chosen at random, what is the probability that it contains the digit 2?          (BECE 2010 Q19)",
        options: [
          r"\frac{3}{9}",
          r"\frac{7}{18}",
          r"\frac{5}{9}",
          r"\frac{11}{19}",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        r"The numbers from 11 to 29 that contain the digit 2 are 12 and 20 to 29, giving 11 numbers. Since there are 19 numbers from 11 to 29 inclusive, the probability is \(\frac{11}{19}\). The statement saying there are 18 cards appears to be an error.",
      ),

      QuizQuestion(
        question:
        r"9. The probability of obtaining a head when a coin is tossed is \frac{1}{3}. What is the probability of obtaining a tail?          (BECE 1993 Q19)",
        options: [
          "1",
          r"\frac{2}{3}",
          r"\frac{1}{2}",
          r"\frac{1}{3}",
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
        r"The probabilities of obtaining a head and a tail add up to 1. Therefore, the probability of a tail is \(1 - \frac{1}{3} = \frac{2}{3}\).",
      ),

      QuizQuestion(
        question:
        "10. The letters in the word HIPPOPOTAMUS are placed in a box. What is the probability of taking out a letter that is a vowel?          (BECE 2008 Q25)",
        options: [
          r"\frac{1}{12}",
          r"\frac{3}{12}",
          r"\frac{5}{12}",
          r"\frac{7}{12}",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The word HIPPOPOTAMUS has 12 letters. Its vowels are I, O, O, A and U, giving 5 vowels. Therefore, the probability is \(\frac{5}{12}\).",
      ),

      QuizQuestion(
        question:
        "11. What is the probability of obtaining 4 when a fair die is tossed once?          (BECE 2016 Q18)",
        options: [
          r"\frac{1}{6}",
          r"\frac{1}{2}",
          r"\frac{3}{2}",
          r"\frac{5}{6}",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        r"A fair die has 6 equally likely outcomes, and only one outcome is 4. Therefore, the probability is \(\frac{1}{6}\).",
      ),

      QuizQuestion(
        question:
        "12. Mary had a chance to select a number from 1 to 20 randomly. What is the probability that the number is divisible by 3?          (BECE 2018 Q13)",
        options: [
          r"\frac{3}{20}",
          r"\frac{1}{5}",
          r"\frac{3}{10}",
          r"\frac{7}{20}",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The numbers from 1 to 20 that are divisible by 3 are 3, 6, 9, 12, 15 and 18. There are 6 favourable outcomes out of 20, so the probability is \(\frac{6}{20} = \frac{3}{10}\).",
      ),

      QuizQuestion(
        question:
        r"13. Given that P = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}, what is the probability of selecting a prime number from the set?          (BECE 2020 Q34)",
        options: [
          r"\frac{2}{3}",
          r"\frac{7}{12}",
          r"\frac{1}{2}",
          r"\frac{5}{12}",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        r"The prime numbers in the set are 2, 3, 5, 7 and 11. There are 5 prime numbers out of 12 numbers, so the probability is \(\frac{5}{12}\).",
      ),

      QuizQuestion(
        question:
        "14. What is the probability that a number greater than 5 shows up when a die is thrown?          (BECE 2022 Q12)",
        options: [
          r"\frac{1}{6}",
          r"\frac{1}{3}",
          r"\frac{2}{3}",
          r"\frac{5}{6}",
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
        r"The only number greater than 5 on a standard die is 6. Therefore, there is 1 favourable outcome out of 6, so the probability is \(\frac{1}{6}\).",
      ),

      QuizQuestion(
        question:
        "15. A number is selected at random from: 25, 26, 27, 28, ..., 35. Find the probability that the number selected is a prime number.          (BECE 2019 Q22)",
        options: [
          r"\frac{6}{11}",
          r"\frac{3}{11}",
          r"\frac{2}{11}",
          r"\frac{1}{11}",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"There are 11 numbers from 25 to 35 inclusive. The prime numbers are 29 and 31, giving 2 favourable outcomes. Therefore, the probability is \(\frac{2}{11}\).",
      ),

      QuizQuestion(
        question:
        "16. The ages in years of 10 children at a party are 2, 3, 3, 3, 4, 4, 5, 5, 5 and 6. If a child is chosen at random, what is the probability that he or she is not less than 5 years old?          (BECE 2015 Q18)",
        options: [
          r"\frac{2}{3}",
          r"\frac{2}{5}",
          r"\frac{3}{10}",
          r"\frac{1}{2}",
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
        r"Not less than 5 means greater than or equal to 5. The qualifying ages are 5, 5, 5 and 6, giving 4 children out of 10. Therefore, the probability is \(\frac{4}{10} = \frac{2}{5}\).",
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
  "Social Studies JHS1 s1 ss1 - Environmental Issues": QuizModel(
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
  "Social Studies JHS1 s2 ss2 - Mapping Skills": QuizModel(
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
  "Social Studies JHS1 s2 ss3 - Understanding Our Natural World": QuizModel(
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
  "Social Studies JHS1 s2 ss1 - Adolescent Reproductive Health": QuizModel(
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

  "Social Studies JHS1 s2 ss2 - Socialization": QuizModel(
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

  "Social Studies JHS1 s3 ss1 - Self-Identity": QuizModel(
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

  "Social Studies JHS1 s4 ss1 - Citizenship and Human Rights": QuizModel(
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

  "Social Studies JHS1 s5 ss1 - Human Resource Development": QuizModel(
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

  "Social Studies JHS1 s5 ss2 - Financial and Investment Issues": QuizModel(
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

  "Social Studies JHS1 s6 ss1 - Independent Ghana": QuizModel(
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
  "Social Studies JHS2 s1 ss1 - ENVIRONMENTAL ISSUES": QuizModel(
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
  "Social Studies JHS2 s1 ss2  - Understanding Our Natural World": QuizModel(
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

  "Social Studies JHS2 s1 ss3  - Mapping Skills": QuizModel(
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

  "Social Studies JHS2 s2 ss2  - Population": QuizModel(
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
  "Social Studies JHS2 s3 ss1  - The Individual and the Community": QuizModel(
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
  "Social Studies JHS2 s4 ss1  - Citizenship and Human Rights": QuizModel(
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
  "Social Studies JHS2 s4 ss2  - Conflict Prevention and Management": QuizModel(
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

  "Social Studies JHS2 s5 ss1  - Tourism & Financial Issues": QuizModel(
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

  "Social Studies JHS2 s6 ss1  - The Republics": QuizModel(
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

  "Social Studies JHS3 s1 ss1 - Environmental Issues": QuizModel(
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
  "Social Studies JHS3 s1 ss2 - Our Natural and Human Resources": QuizModel(
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

  "Social Studies JHS3 s2 ss1 - The Family": QuizModel(
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
  "Social Studies JHS3 s2 ss2 - Population": QuizModel(
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
  "Social Studies JHS3 s3 ss3 - Culture and National Identity": QuizModel(
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

  "Social Studies JHS3 s4 ss1 - The 1992 Constitution": QuizModel(
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

  "Social Studies JHS3 s4 ss2 - Peace and Security in Our Nation": QuizModel(
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

  "Social Studies JHS3 s4 ss3 - Promoting Democracy and Political Stability":
      QuizModel(
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

  "Social Studies JHS3 s5 ss2 - Financial and Investment Issues": QuizModel(
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

  "Social Studies JHS3 s5 ss1 - Science and Technology": QuizModel(
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

  "Social Studies JHS3 s6 ss1 - The Republics": QuizModel(
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

  // Science/////
  "Science JHS1 s1 ss1 - Materials": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question: "1. Chlorine gas is an example of        (BECE 2004 Q19)",
        options: ["An atom", "An element", "A compound", "A molecule"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Chlorine gas exists as Cl₂. It consists of two chlorine atoms chemically joined together, so it is a molecule.",
      ),
      QuizQuestion(
        question:
            "2. When matter changes state from gas to liquid there is        (BECE 2007 Q6)",
        options: [
          "A decrease in mass",
          "A decrease in volume",
          "An increase in pressure",
          "An increase in temperature"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "When a gas condenses into a liquid, its particles move closer together. This causes a decrease in volume, while its mass remains unchanged.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following statements about the states of matter is correct?        (BECE 2002 Q3)",
        options: [
          "Molecules in a solid are disorderly arranged",
          "Solids are highly compressible",
          "Liquids have definite form and volume",
          "Molecules in a gas move faster than those in a liquid"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Gas particles possess more kinetic energy and move more rapidly than particles in a liquid.",
      ),
      QuizQuestion(
        question:
            "4. The physical change(s) that take(s) place when a piece of ice is heated continuously for a long time can be represented by        (BECE 2002 Q2)",
        options: [
          "Solid → vapour",
          "Vapour → solid → liquid",
          "Solid → liquid → vapour",
          "Liquid → vapour"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Ice first melts from a solid into liquid water. Continued heating changes the liquid water into vapour.",
      ),
      QuizQuestion(
        question:
            "5. The substance that sublimes when heated is        (BECE 2006 Q10)",
        options: ["Baking powder", "Common salt", "Camphor", "Sugar"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Camphor undergoes sublimation, changing directly from a solid into vapour without first becoming a liquid.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following processes of conversion of the state of matter is correct?        (BECE 2004 Q1)",
        options: [
          "Solid → gas → liquid",
          "Solid → liquid → gas",
          "Gas → liquid → solid",
          "Gas → liquid → solid"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "When a solid is heated, it melts into a liquid. With further heating, the liquid changes into a gas.",
      ),
      QuizQuestion(
        question: "7. The basic unit of matter is the        (BECE 2000 Q3)",
        options: ["Atom", "Element", "Compound", "Electron"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "An atom is the smallest basic unit of matter that retains the chemical properties of an element.",
      ),
      QuizQuestion(
        question:
            "8. Hydrogen is represented by the chemical symbol H₂. This symbol represents        (BECE 2005 Q1)",
        options: [
          "Two molecules of hydrogen",
          "Two atoms of hydrogen",
          "Two elements of hydrogen",
          "Two ions of hydrogen"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The subscript 2 in H₂ shows that one hydrogen molecule contains two hydrogen atoms.",
      ),
      QuizQuestion(
        question: "9. The chemical formula H₂ represents        (BECE 2002 Q3)",
        options: [
          "Two atoms of hydrogen",
          "Two neutrons of hydrogen",
          "Two ions of hydrogen",
          "Two molecules of hydrogen"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "H₂ represents one molecule of hydrogen made up of two chemically bonded hydrogen atoms.",
      ),
      QuizQuestion(
        question:
            "10. Atoms of the same element have the same        (BECE 1990 Q12)",
        options: [
          "Number of electrons",
          "Chemical properties",
          "Number of neutrons",
          "Total electrical charge"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Atoms of the same element have the same number of protons and generally exhibit the same chemical properties.",
      ),
      QuizQuestion(
        question:
            "11. Which of the following statements about elements is correct?        (BECE 2004 Q2)",
        options: [
          "Carbon is a metal",
          "Iron is a non-metal",
          "Sulphur is a liquid metal",
          "Gold is a metal"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Gold is a metal. Carbon and sulphur are non-metals, while iron is also a metal.",
      ),
      QuizQuestion(
        question:
            "12. The chemical symbol for sodium is        (BECE 2005 Q35)",
        options: ["K", "N", "Na", "S"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The chemical symbol for sodium is Na, which is derived from its Latin name, natrium.",
      ),
      QuizQuestion(
        question:
            "13. The element with chemical symbol P is        (BECE 2012 Q4)",
        options: ["Phosphorus", "Potassium", "Platinum", "Potassium"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "P is the chemical symbol for phosphorus. Potassium is represented by K, while platinum is represented by Pt.",
      ),
      QuizQuestion(
        question:
            "14. A substance which is made up of identical atoms is a/an        (BECE 2011 Q1)",
        options: ["Compound", "Element", "Mixture", "Molecule"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "An element is a pure substance made up of only one type of atom.",
      ),
      QuizQuestion(
        question:
            "15. Which of the following elements is a liquid at room temperature?        (BECE 1993 Q22)",
        options: ["Carbon", "Mercury", "Iodine", "Iron"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Mercury is a metallic element that exists as a liquid at ordinary room temperature.",
      ),
      QuizQuestion(
        question:
            "16. The electronic configuration of an atom of an element is 2, 8, 2. How many electrons are in the outer shell of the atom?        (BECE 2021 Q4)",
        options: ["12", "8", "4", "2"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "In the electronic configuration 2, 8, 2, the last number represents the number of electrons in the outermost shell. Therefore, the atom has two outer-shell electrons.",
      ),
      QuizQuestion(
        question:
            "17. An atom has 8 protons and 8 neutrons. Its atomic number is        (BECE 1992 Q22)",
        options: ["0", "8", "16", "64"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The atomic number of an element is equal to the number of protons in its nucleus. Therefore, the atomic number is 8.",
      ),
      QuizQuestion(
        question:
            "18. An element has 11 protons and 12 neutrons. Its mass number is        (BECE 1994 Q13)",
        options: ["1", "11", "12", "23"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Mass number is calculated by adding the number of protons and neutrons. Therefore, 11 + 12 = 23.",
      ),
      QuizQuestion(
        question:
            "19. An atom has 11 electrons and 12 neutrons. Find its atomic number.        (BECE 2015 Q4)",
        options: ["1", "11", "12", "23"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "In a neutral atom, the number of electrons equals the number of protons. Since the atom has 11 electrons, it has 11 protons and an atomic number of 11.",
      ),
      QuizQuestion(
        question:
            "20. The atomic number of an element is 17. Which of the following is its electronic configuration?        (BECE 2003 Q1)",
        options: ["2, 8, 7", "2, 7, 8", "7, 8, 2", "8, 7, 2"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "An atom with atomic number 17 has 17 electrons. These are arranged in the shells as 2, 8 and 7.",
      ),
      QuizQuestion(
        question:
            "21. Given that the atomic number of an atom is 11, find the number of electrons.        (BECE 2017 Q11)",
        options: ["1", "11", "12", "23"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A neutral atom has an equal number of protons and electrons. Therefore, an atom with atomic number 11 has 11 electrons.",
      ),
      QuizQuestion(
        question:
            "22. An atom of an element has 11 protons and 12 neutrons in its nucleus. Calculate its mass number.        (BECE 2011 Q3)",
        options: ["1", "11", "12", "23"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "The mass number is the sum of the protons and neutrons in the nucleus. Therefore, 11 + 12 = 23.",
      ),
      QuizQuestion(
        question:
            "23. An element has 12 protons. What is its electronic configuration?        (BECE 2013 Q1)",
        options: ["2, 8, 2", "2, 2, 8", "8, 2, 2", "2, 8, 4"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "A neutral atom with 12 protons has 12 electrons. The electrons are arranged in the shells as 2, 8 and 2.",
      ),
      QuizQuestion(
        question:
            "24. The atomic number of an element is 17. Find the number of electrons.        (BECE 2022 Q6)",
        options: ["1", "17", "18", "35"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "In a neutral atom, the number of electrons is equal to the atomic number. Therefore, the element has 17 electrons.",
      ),
    ],
  ),

  "Science JHS1 s1 ss2 - Living Cells": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Plants are different from animals because they        (BECE 2004 Q13)",
        options: ["Have protoplasm", "Have chlorophyll", "Respire", "Grow"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Plants contain chlorophyll, which enables them to absorb sunlight and manufacture food through photosynthesis. Animals do not have chlorophyll.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following features is found in both prokaryotic and eukaryotic cells?        (Likely Examinable Q10)",
        options: [
          "Nucleus",
          "Cell membrane",
          "Mitochondria",
          "Golgi apparatus"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Both prokaryotic and eukaryotic cells have a cell membrane. Prokaryotic cells do not have a true nucleus or membrane-bound organelles.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following characteristics applies to only plants?        (BECE 2003 Q16)",
        options: [
          "Excretion of waste materials",
          "Response to stimuli",
          "Ability to manufacture food from simple substances",
          "Ability to respire"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Green plants manufacture their own food from simple substances through photosynthesis. Both plants and animals excrete, respire and respond to stimuli.",
      ),
      QuizQuestion(
        question:
            "4. One characteristic which is not common to all living things is the ability to        (BECE 2004 Q13)",
        options: ["Grow", "Move about", "Respire", "Respond to stimuli"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "All living things grow, respire and respond to stimuli, but not all living things move freely from one place to another.",
      ),
      QuizQuestion(
        question:
            "5. Which of the following processes about all living things is/are true?\n\n"
            "I. Reproduction\n"
            "II. Respiration\n"
            "III. Locomotion\n"
            "IV. Excretion        (BECE 2001 Q19)",
        options: [
          "I only",
          "I and II only",
          "I, II and IV only",
          "I, II and III only"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "All living things reproduce, respire and excrete. Locomotion is not performed by all living things because plants do not move freely from place to place.",
      ),
      QuizQuestion(
        question:
            "6. Which of the following statements about a plant cell is correct? It        (BECE 2014 Q5)",
        options: [
          "Does not have a nucleus",
          "Contains large vacuoles",
          "Is surrounded by a cell membrane only",
          "Does not have a definite shape"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A mature plant cell normally contains a large permanent vacuole. It also has a nucleus, a cell membrane and a cell wall that gives it a definite shape.",
      ),
      QuizQuestion(
        question:
            "7. Which of the following organisms is/are multicellular?\n\n"
            "I. Amoeba\n"
            "II. Paramecium\n"
            "III. Onion        (BECE 2012 Q20)",
        options: [
          "I only",
          "II and III only",
          "I and II only",
          "I, II and III only"
        ],
        correctIndex: -1,
        difficulty: "Medium",
        explanation:
            "Only onion is multicellular. Amoeba and Paramecium are unicellular organisms. Therefore, none of the options provided is scientifically correct.",
      ),
      QuizQuestion(
        question: "8. The basic unit of life is the        (BECE 2018 Q16)",
        options: ["Cell", "Nucleus", "Organ", "Tissue"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The cell is the smallest structural and functional unit capable of carrying out the processes of life.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following statements about all living things is/are true?\n\n"
            "I. They manufacture their own food.\n"
            "II. They respire.\n"
            "III. They grow.        (BECE 2000 Q39)",
        options: ["I only", "II only", "I and II only", "II and III only"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "All living things respire and grow. However, only autotrophic organisms such as green plants manufacture their own food.",
      ),
      QuizQuestion(
        question:
            "10. The process which takes place in all living cells is        (BECE 2003 Q27)",
        options: [
          "Digestion",
          "Fertilization",
          "Photosynthesis",
          "Respiration"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Respiration occurs in all living cells to release energy from food for cellular activities.",
      ),
      QuizQuestion(
        question:
            "11. Which of the following is a feature of all living things except the ability to        (BECE 2003 Q16)",
        options: [
          "Bring forth young ones",
          "Excrete",
          "Grow",
          "Move from place to place"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Living things reproduce, excrete and grow. However, not all living things move freely from one place to another.",
      ),
      QuizQuestion(
        question:
            "12. The characteristic that distinguishes living things from non-living things is that living things        (BECE 2002a Q18)",
        options: [
          "Are able to move, while non-living things are not",
          "Are of different sizes, while non-living things have the same size",
          "Can manufacture their own food, while non-living things cannot",
          "Have a definite form, while non-living things have an irregular form"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Living organisms obtain or manufacture food for energy and growth. Non-living things do not perform feeding as a life process.",
      ),
      QuizQuestion(
        question:
            "13. Which of the following life processes is not performed by all living things?        (BECE 2011 Q17)",
        options: ["Excretion", "Photosynthesis", "Reproduction", "Respiration"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Photosynthesis is performed mainly by green plants and some other organisms. It is not performed by all living things.",
      ),
      QuizQuestion(
        question:
            "14. Which of the following features are common to all living things?\n\n"
            "I. Response to stimuli\n"
            "II. Respiration\n"
            "III. Movement from place to place\n"
            "IV. Growth        (BECE 2002b Q20)",
        options: [
          "I and II only",
          "I and III only",
          "I, II and III only",
          "I, II and IV only"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "All living things respond to stimuli, respire and grow. Movement from one place to another is not common to all living organisms.",
      ),
      QuizQuestion(
        question:
            "15. Which of the following life activities is common to both plants and animals?        (BECE 2002 Q42)",
        options: ["Feeding", "Locomotion", "Respiration", "None of the above"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Both plants and animals carry out respiration to release energy. Animals move from place to place, while plants generally remain fixed.",
      ),
      QuizQuestion(
        question:
            "16. Which of the following structures contains cellulose?        (BECE 2018 Q2)",
        options: ["Cell wall", "Cell membrane", "Chloroplast", "Mitochondrion"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The plant cell wall is mainly made of cellulose, which provides strength, support and protection to the cell.",
      ),
      QuizQuestion(
        question:
            "17. Which of the following correctly shows the order of increasing complexity of structures in living organisms?        (BECE 2011 Q40)",
        options: [
          "Cells → organs → tissues → systems",
          "Cells → tissues → organs → systems",
          "Cells → systems → tissues → organs",
          "Cells → tissues → systems → organs"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Similar cells form tissues, tissues form organs, and related organs work together to form organ systems.",
      ),
      QuizQuestion(
        question:
            "18. Which of the following statements about a plant cell is correct?        (BECE 2014 Q5)",
        options: [
          "Does not have a nucleus",
          "Contains large vacuoles",
          "Is surrounded by a cell membrane only",
          "Does not have a definite shape"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A plant cell normally contains a large permanent vacuole. Its cell wall also helps to give it a definite shape.",
      ),
      QuizQuestion(
        question:
            "19. The part of a living cell which is semi-permeable is the        (BECE 2017 Q28)",
        options: ["Cytoplasm", "Cell membrane", "Nucleus", "Vacuole"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The cell membrane is selectively or semi-permeable because it controls which substances enter and leave the cell.",
      ),
      QuizQuestion(
        question:
            "20. Which of the following structures contains cellulose?        (BECE 2018 Q2)",
        options: ["Cell wall", "Cell membrane", "Chloroplast", "Mitochondrion"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Cellulose is the main structural material found in the cell walls of plant cells.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following parts or structures are present in animal cells?        (BECE 2019 Q18)",
        options: [
          "Mitochondrion and chloroplast",
          "Cell wall and mitochondrion",
          "Vacuole and nucleus",
          "Nucleus and chloroplast"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Animal cells contain a nucleus and may contain small temporary vacuoles. They do not contain chloroplasts or a cell wall.",
      ),
      QuizQuestion(
        question:
            "22. The jelly-like substance inside a cell is called        (BECE 2022 Q1)",
        options: ["Cytoplasm", "Chloroplast", "Nucleus", "Ribosome"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The cytoplasm is the jelly-like material inside the cell in which organelles are suspended and many chemical reactions occur.",
      ),
      QuizQuestion(
        question:
            "23. The organelle responsible for photosynthesis in plant cells is the        (Likely Examinable Q1)",
        options: ["Nucleus", "Cell wall", "Chloroplast", "Mitochondrion"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The chloroplast contains chlorophyll, which absorbs sunlight for photosynthesis.",
      ),
      QuizQuestion(
        question:
            "24. The function of ribosomes in a cell is to        (Likely Examinable Q3)",
        options: [
          "Store water",
          "Break down food",
          "Produce proteins",
          "Generate energy"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Ribosomes are the structures in cells where proteins are produced.",
      ),
      QuizQuestion(
        question:
            "25. A group of similar cells working together is called a        (Likely Examinable Q4)",
        options: ["Tissue", "Organ", "System", "Organism"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A tissue is a group of similar cells that work together to perform a particular function.",
      ),
      QuizQuestion(
        question:
            "26. A scientist observed a single-celled organism without a nucleus under a microscope. What type of cell is this?        (Likely Examinable Q6)",
        options: ["Eukaryotic", "Prokaryotic", "Plant cell", "Animal cell"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "A prokaryotic cell does not have a true nucleus. Its genetic material is found freely within the cell.",
      ),
      QuizQuestion(
        question:
            "27. If a cell has a nucleus, a cell membrane and mitochondria, what type of organism is it likely from?        (Likely Examinable Q7)",
        options: ["Bacterium", "Virus", "Eukaryote", "Algae"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "A cell with a true nucleus and membrane-bound organelles such as mitochondria is a eukaryotic cell.",
      ),
      QuizQuestion(
        question:
            "28. Which of the following best explains why bacteria multiply faster than plant cells?        (Likely Examinable Q8)",
        options: [
          "Bacteria do not have mitochondria",
          "Bacteria have simpler structures and divide quickly",
          "Plant cells grow larger before dividing",
          "Plant cells have more organelles than bacteria"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Bacteria are structurally simple organisms that reproduce rapidly through binary fission when conditions are favourable.",
      ),
      QuizQuestion(
        question:
            "29. The epidermal cells of a dicotyledonous plant play an important role in        (Likely Examinable Q9)",
        options: [
          "Storing food for growth",
          "Transporting water and minerals",
          "Reducing excessive water loss",
          "Supporting the plant stem"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Epidermal cells protect the plant and often produce a waxy cuticle that reduces excessive water loss.",
      ),
      QuizQuestion(
        question:
            "30. A farmer notices that a plant's leaves remain wilted even after watering. Which specialised cell is most likely not functioning properly?        (Likely Examinable Q10)",
        options: ["Cambium", "Guard cells", "Epidermal cells", "Xylem"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Xylem vessels transport water and mineral salts from the roots to the leaves. Poor xylem function can cause the leaves to remain wilted.",
      ),
      QuizQuestion(
        question:
            "31. Which of the following explains why xylem vessels are thick-walled?        (Likely Examinable Q11)",
        options: [
          "To store excess food",
          "To provide strength and prevent collapse",
          "To control the opening and closing of stomata",
          "To absorb sunlight for photosynthesis"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Xylem vessels have thick, lignified walls that strengthen them and prevent them from collapsing during water transport.",
      ),
      QuizQuestion(
        question:
            "32. If the cambium of a dicotyledonous plant is removed, the plant will likely        (Likely Examinable Q12)",
        options: [
          "Stop producing new xylem and phloem",
          "Lose its green colour",
          "Stop absorbing water from the soil",
          "Continue growing normally"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The cambium is a dividing tissue that produces new xylem and phloem during the secondary growth of a plant.",
      ),
      QuizQuestion(
        question:
            "33. Which specialised cell is responsible for carrying oxygen to all parts of the human body?        (Likely Examinable Q13)",
        options: ["Nerve cell", "Sperm cell", "Red blood cell", "Muscle cell"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Red blood cells contain haemoglobin, which binds with oxygen and transports it around the body.",
      ),
      QuizQuestion(
        question:
            "34. A person suffers a deep cut, but the bleeding stops after a few minutes. Which type of blood cell made this possible?        (Likely Examinable Q14)",
        options: [
          "Red blood cell",
          "White blood cell",
          "Platelets",
          "Nerve cell"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Platelets help blood to clot at the site of an injury, reducing and eventually stopping bleeding.",
      ),
      QuizQuestion(
        question:
            "35. Which of the following best explains why nerve cells are long and branched?        (Likely Examinable Q15)",
        options: [
          "To transport oxygen efficiently",
          "To store food and nutrients",
          "To transmit messages quickly",
          "To produce energy for movement"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Nerve cells are long and branched so that they can connect with many cells and transmit electrical messages rapidly over long distances.",
      ),
    ],
  ),
  "Science JHS1 s2 ss1 - Water Cycle, Carbon & Nitrogen Cycles, and Photosynthesis":
      QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following ways of treating water makes the water soft?        (BECE 2006 Q19)",
        options: [
          "Adding alum",
          "Adding washing soda",
          "Chlorinating",
          "Filtering"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Washing soda removes calcium and magnesium ions that cause hardness in water, thereby making the water soft.",
      ),
      QuizQuestion(
        question:
            "2. The taste of water changes when it is boiled because        (BECE 2008 Q19)",
        options: [
          "Heat is absorbed during boiling",
          "Evaporation takes place during boiling",
          "Air is lost during boiling",
          "Steam is produced during boiling"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Boiling drives dissolved air out of water. The loss of dissolved gases causes the taste of the water to change.",
      ),
      QuizQuestion(
        question:
            "3. The method of purification of water that produces water containing very little impurities is        (BECE 2009 Q19)",
        options: ["Boiling", "Chlorination", "Distillation", "Filtration"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Distillation involves boiling water and condensing the vapour. Most dissolved and suspended impurities are left behind.",
      ),
      QuizQuestion(
        question:
            "4. Water that forms lather readily with soap is said to be        (BECE 2010 Q1)",
        options: ["Clean", "Hard", "Soapy", "Soft"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Soft water forms lather readily with soap because it contains little or no calcium and magnesium ions.",
      ),
      QuizQuestion(
        question:
            "5. Arrange the following sources of water in the order of increasing contamination.\n\n"
            "I. Rain\n"
            "II. Stream\n"
            "III. Well\n"
            "IV. Borehole        (BECE 2005 Q20)",
        options: [
          "I, II, IV, III",
          "III, II, I, IV",
          "I, IV, III, II",
          "III, II, IV, I"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Rainwater is generally the least contaminated, followed by borehole water, well water and stream water, which is usually the most exposed to pollutants.",
      ),
      QuizQuestion(
        question:
            "6. Chlorine gas is passed through water during purification to        (BECE 2005 Q19)",
        options: [
          "Kill germs",
          "Cause suspended particles to settle",
          "Soften the water",
          "Give taste to the water"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Chlorine disinfects water by killing harmful microorganisms that may cause diseases.",
      ),
      QuizQuestion(
        question:
            "7. Water is sometimes referred to as a universal solvent because it        (BECE 2005 Q23)",
        options: [
          "Is the purest liquid on earth",
          "Is the commonest liquid on earth",
          "Is found in all living cells",
          "Dissolves most substances"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Water is called a universal solvent because it can dissolve a greater variety of substances than most other liquids.",
      ),
      QuizQuestion(
        question:
            "8. The method of separation used in the treatment of water at the water works is        (BECE 2000 Q20)",
        options: [
          "Decantation",
          "Evaporation",
          "Precipitation",
          "Condensation"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "During water treatment, chemicals such as alum cause suspended impurities to form larger particles that precipitate and settle.",
      ),
      QuizQuestion(
        question:
            "9. Which of the following methods of treating water makes it soft?        (BECE 2013 Q21)",
        options: [
          "Addition of alum",
          "Addition of sodium carbonate",
          "Chlorination",
          "Filtration"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Sodium carbonate removes calcium and magnesium ions from hard water by forming insoluble carbonates.",
      ),
      QuizQuestion(
        question:
            "10. Water that requires more soap in order to form lather is described as        (BECE 2007 Q19)",
        options: ["Clean", "Hard", "Pure", "Soft"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Hard water contains calcium and magnesium ions that react with soap, so more soap is needed before lather forms.",
      ),
      QuizQuestion(
        question:
            "11. Alum is added to water during treatment to        (BECE 2004 Q38)",
        options: [
          "Kill germs",
          "Help suspended particles to settle",
          "Make the water colourless",
          "Give taste to the water"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Alum causes small suspended particles to join together into larger particles, making them settle more easily.",
      ),
      QuizQuestion(
        question:
            "12. Arrange the following types of water in order of increasing hardness.\n\n"
            "I. Tap water\n"
            "II. Sea water\n"
            "III. Distilled water\n"
            "IV. Rainwater        (BECE 2008 Q20)",
        options: [
          "IV, III, II, I",
          "III, IV, I, II",
          "II, I, IV, III",
          "I, II, III, IV"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Distilled water contains almost no dissolved salts, followed by rainwater, tap water and sea water, which contains the greatest amount of dissolved salts.",
      ),
      QuizQuestion(
        question:
            "13. Water that needs a small amount of soap to form lather is described as        (BECE 2006 Q20)",
        options: ["Clean", "Hard", "Pure", "Soft"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Soft water forms lather easily and therefore requires only a small amount of soap.",
      ),
      QuizQuestion(
        question:
            "14. The simplest way of making well water suitable for laundry purposes is by        (BECE 2010 Q5)",
        options: ["Adding alum", "Boiling", "Chlorination", "Filtering"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Boiling removes temporary hardness caused by dissolved hydrogencarbonates, making the water more suitable for washing.",
      ),
      QuizQuestion(
        question:
            "15. Water contains two elements, hydrogen and oxygen, in the ratio of        (BECE 2013 Q31)",
        options: ["1:2", "1:3", "2:1", "3:1"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The chemical formula of water is H₂O, showing that hydrogen and oxygen atoms occur in a ratio of 2:1.",
      ),
      QuizQuestion(
        question:
            "16. Boiling and chlorination are used in water purification to        (BECE 2009 Q20)",
        options: [
          "Kill germs",
          "Help suspended particles to settle",
          "Remove suspended particles",
          "Remove hardness of the water"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Both boiling and chlorination destroy harmful microorganisms and make water safer for drinking.",
      ),
      QuizQuestion(
        question:
            "17. Which of the following statements about the properties of water are correct?\n\n"
            "I. It is colourless and tasteless.\n"
            "II. It is neutral to litmus paper.\n"
            "III. It turns red litmus paper blue.\n"
            "IV. It is a universal solvent.        (BECE 2014 Q28)",
        options: [
          "I and II only",
          "I and III only",
          "I, II and IV only",
          "I, II and IV only"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Pure water is colourless and tasteless, is neutral to litmus paper and dissolves many substances. It does not turn red litmus paper blue.",
      ),
      QuizQuestion(
        question:
            "18. One advantage of soft water over hard water is that soft water        (BECE 2015 Q22)",
        options: [
          "Has a pleasant taste",
          "Can prevent heart diseases",
          "Does not waste soap",
          "Forms scales in kettles"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Soft water forms lather readily and does not react with soap to form scum, so it saves soap during washing.",
      ),
      QuizQuestion(
        question:
            "19. The reason why alum is added to water during treatment is to        (BECE 2016 Q9)",
        options: [
          "Kill germs",
          "Give taste to water",
          "Make water colourless",
          "Make suspended particles settle"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Alum acts as a coagulant, causing suspended particles to clump together and settle at the bottom.",
      ),
      QuizQuestion(
        question:
            "20. Which of the following physical properties of water are correct? Water\n\n"
            "I. is a colourless liquid.\n"
            "II. is a universal solvent.\n"
            "III. boils at 100°C at standard atmospheric pressure.\n"
            "IV. has a density of 5 kg cm⁻³ at 4°C.        (BECE 2018 Q35)",
        options: [
          "I and II only",
          "I, II and III only",
          "I, II and III only",
          "II, III and IV only"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Water is colourless, dissolves many substances and boils at 100°C at standard atmospheric pressure. Its density at 4°C is approximately 1 g cm⁻³, not 5 kg cm⁻³.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following chemical compounds is used in removing hardness in water?        (BECE 2019 Q18)",
        options: ["NaCl", "NaOH", "Na₂CO₃", "NaHCO₃"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Sodium carbonate, Na₂CO₃, removes hardness by precipitating calcium and magnesium ions as insoluble carbonates.",
      ),
      QuizQuestion(
        question:
            "22. An advantage of soft water over hard water is that soft water        (BECE 2020 Q3)",
        options: [
          "Is good for the formation of strong bones in humans",
          "Prevents heart diseases",
          "Has a pleasant smell",
          "Saves a lot of soap when used in washing"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Soft water forms lather easily and does not form scum with soap, so less soap is required during washing.",
      ),
      QuizQuestion(
        question:
            "23. Which of the following chemical substances can be used to remove permanent hardness in water?        (BECE 2021 Q13)",
        options: ["NaHCO₃", "Na₂CO₃", "Ca(HCO₃)₂", "CaCO₃"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Sodium carbonate removes permanent hardness by reacting with soluble calcium and magnesium salts to form insoluble precipitates.",
      ),
      QuizQuestion(
        question:
            "24. The ion that causes hardness in water is        (BECE 2022 Q8)",
        options: ["CO₃²⁻", "Mg²⁺", "Na⁺", "OH⁻"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Hardness in water is mainly caused by dissolved calcium and magnesium ions. Among the options, Mg²⁺ is the ion responsible.",
      ),
      QuizQuestion(
        question:
            "25. Which of the following human activities maintains the carbon cycle?        (BECE 2013 Q38)",
        options: [
          "Bush burning",
          "Felling of trees",
          "Release of fumes from factories",
          "Replanting of trees felled as timber"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Replanting trees replaces those that were cut down and supports the continued removal of carbon dioxide through photosynthesis.",
      ),
      QuizQuestion(
        question:
            "26. Which of the following gases supports combustion?        (BECE 2016 Q38)",
        options: ["Hydrogen", "Oxygen", "Carbon dioxide", "Carbon monoxide"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Oxygen supports combustion by allowing substances to continue burning.",
      ),
      QuizQuestion(
        question:
            "27. Which of the following processes removes carbon dioxide from the atmosphere?        (BECE 2020 Q5)",
        options: ["Respiration", "Burning", "Decomposition", "Photosynthesis"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Green plants absorb carbon dioxide from the atmosphere during photosynthesis to manufacture food.",
      ),
      QuizQuestion(
        question:
            "28. Which of the following natural cycles directly involves the sun?\n\n"
            "I. Carbon cycle\n"
            "II. Water cycle\n"
            "III. Nitrogen cycle        (BECE 2024 Q5)",
        options: [
          "I and II only",
          "I only",
          "II and III only",
          "I, II and III"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Solar energy drives photosynthesis in the carbon cycle and evaporation in the water cycle. The nitrogen cycle is not directly driven by the sun.",
      ),
      QuizQuestion(
        question:
            "29. The by-product of photosynthesis is        (BECE 2002 Q23)",
        options: ["Carbon dioxide", "Starch", "Oxygen", "Water"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "During photosynthesis, plants manufacture glucose and release oxygen as a by-product.",
      ),
      QuizQuestion(
        question:
            "30. Which of the following gases is given out during photosynthesis?        (BECE 2002 Q30)",
        options: ["Nitrogen", "Oxygen", "Carbon dioxide", "Carbon monoxide"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Oxygen is produced and released into the atmosphere during photosynthesis.",
      ),
      QuizQuestion(
        question:
            "31. Food substances are transported from the leaves to various parts of a plant through the        (BECE 2003 Q14)",
        options: ["Cambium", "Epidermis", "Phloem", "Xylem"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Phloem tissue transports manufactured food from the leaves to other parts of the plant.",
      ),
      QuizQuestion(
        question:
            "32. The substance that enables green plants to trap sunlight for the manufacture of food is        (BECE 2005 Q16)",
        options: ["Chlorophyll", "Chloroplast", "Phloem", "Xylem"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Chlorophyll is the green pigment that absorbs sunlight for photosynthesis.",
      ),
      QuizQuestion(
        question:
            "33. Water is absorbed by roots in plants and transported to the leaves through the        (BECE 2008 Q14)",
        options: ["Chlorophyll", "Phloem", "Stomata", "Xylem"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Xylem vessels transport water and dissolved mineral salts from the roots to the leaves.",
      ),
      QuizQuestion(
        question:
            "34. The food manufactured by a plant is distributed to all parts of the plant through the        (BECE 2009 Q37)",
        options: ["Chlorophyll", "Phloem", "Stomata", "Xylem"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Phloem transports manufactured food from the leaves to growing and storage parts of the plant.",
      ),
      QuizQuestion(
        question:
            "35. The process by which water vapour moves through the stomata of leaves into the atmosphere is known as        (BECE 2010 Q20)",
        options: ["Absorption", "Diffusion", "Osmosis", "Transpiration"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Transpiration is the loss of water vapour from the aerial parts of a plant, mainly through the stomata.",
      ),
      QuizQuestion(
        question:
            "36. The presence of chlorophyll in green plants is a necessary condition for photosynthesis because it        (BECE 2013 Q40)",
        options: [
          "Absorbs oxygen",
          "Absorbs solar energy",
          "Produces carbon dioxide",
          "Produces water vapour"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Chlorophyll absorbs light energy from the sun, which is needed to manufacture food during photosynthesis.",
      ),
      QuizQuestion(
        question:
            "37. When a green leaf is placed in a test tube containing ethanol and heated over a water bath, the leaf        (BECE 2014 Q29)",
        options: [
          "Becomes soft",
          "Changes colour to brown",
          "Changes colour to blue-black",
          "Is decolourised"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Hot ethanol dissolves and removes chlorophyll from the leaf, causing the leaf to become decolourised.",
      ),
      QuizQuestion(
        question:
            "38. Gases enter and leave the leaf of a plant through the        (BECE 2016 Q22)",
        options: ["Mesophyll cells", "Stomata", "Pith", "Palisade cells"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Stomata are tiny pores on the leaf surface through which carbon dioxide, oxygen and water vapour pass.",
      ),
      QuizQuestion(
        question:
            "39. Photosynthesis is important to living organisms because it produces        (BECE 2016 Q29)",
        options: [
          "Glucose and oxygen",
          "Glucose and carbon dioxide",
          "Oxygen and carbon dioxide",
          "Water and carbon dioxide"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Photosynthesis produces glucose as food and releases oxygen needed by most living organisms for respiration.",
      ),
      QuizQuestion(
        question:
            "40. To test for starch in a green leaf, it is initially boiled to        (BECE 2023 Q28)",
        options: [
          "Isolate the starch",
          "Kill the leaf",
          "Extract the chlorophyll",
          "Make the leaf soft"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "The leaf is initially boiled in water to kill it and stop all chemical reactions before the starch test continues.",
      ),
    ],
  ),

  "Science JHS1 s2 ss2 - Life Cycle of Organisms": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Which of the following practices will destroy the breeding grounds of mosquitoes?        (BECE 1999 Q35)",
        options: [
          "Sleeping in mosquito nets",
          "Spraying with insecticides",
          "Using insect repellent",
          "Clearing all empty cans"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Empty cans can collect stagnant water where mosquitoes lay their eggs. Clearing them destroys potential mosquito-breeding grounds.",
      ),
      QuizQuestion(
        question:
            "2. The insect which transmits the Plasmodium parasite is called        (BECE 2000 Q34)",
        options: ["Mosquito", "Butterfly", "Housefly", "Cockroach"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The female Anopheles mosquito transmits the Plasmodium parasite that causes malaria.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following diseases is spread by a mosquito?        (BECE 2002 Q14)",
        options: ["Blindness", "Cholera", "Elephantiasis", "Flybumisist"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Elephantiasis is transmitted by certain mosquitoes carrying parasitic worms. Cholera is mainly spread through contaminated food and water.",
      ),
      QuizQuestion(
        question:
            "4. The second stage in the life cycle of a mosquito is the        (BECE 2015 Q14)",
        options: ["Egg", "Imago", "Larva", "Pupa"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The mosquito undergoes complete metamorphosis in the order: egg, larva, pupa and adult or imago. Therefore, the larva is the second stage.",
      ),
      QuizQuestion(
        question:
            "5. The second stage in the life cycle of a mosquito is the        (BECE 2018 Q19)",
        options: ["Egg", "Imago", "Larva", "Pupa"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "After the mosquito egg hatches, it develops into a larva. The larval stage is therefore the second stage in its life cycle.",
      ),
      QuizQuestion(
        question:
            "6. How many stages does the mosquito go through in its life cycle of development?        (BECE 2019 Q3)",
        options: ["1", "2", "3", "4"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A mosquito passes through four stages of development: egg, larva, pupa and adult or imago.",
      ),
      QuizQuestion(
        question:
            "7. A mosquito pupa breathes through what is called        (BECE 2021 Q23)",
        options: ["Trachea", "Siphon", "Lungs", "Gills"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "A mosquito pupa breathes atmospheric air through respiratory trumpets connected to its tracheal system.",
      ),
      QuizQuestion(
        question:
            "8. Oil from a mechanic workshop accidentally spilled into a pool of water which was breeding mosquitoes. After some time, the pool of water was no longer breeding mosquitoes. Which control method may have been deployed?        (BECE 2021 Q25)",
        options: [
          "Chemical control",
          "Biological control",
          "Environmental control",
          "Genetic control"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "The oil forms a layer on the water surface and prevents mosquito larvae and pupae from obtaining air. This is classified as a chemical control method.",
      ),
      QuizQuestion(
        question:
            "9. Grasshopper management is crucial because of all the following reasons except        (BECE 2024 Q27)",
        options: [
          "Incomplete metamorphosis",
          "Damage to crops",
          "Ecosystem disruption",
          "Livestock harassment"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Incomplete metamorphosis describes the grasshopper's life cycle and is not itself a harmful effect requiring control. Grasshoppers may damage crops, disrupt ecosystems and disturb grazing livestock.",
      ),
    ],
  ),

  "Science JHS1 s2 ss3 - Crop Production and Flowering Plants": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Transplanting of young seedlings is usually done in the evening because        (BECE 2013 Q27)",
        options: [
          "Darkness promotes rapid growth",
          "Seedlings require less nutrients",
          "Transpiration is minimal",
          "Pest attack is minimal"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Transpiration is minimal in the evening because the temperature is lower. This reduces water loss and helps the transplanted seedlings recover.",
      ),
      QuizQuestion(
        question:
            "2. The practice of reducing the number of seedlings per stand for better growth is known as        (BECE 2023 Q20)",
        options: ["Thinning out", "Earthing up", "Pricking out", "Filling in"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Thinning out involves removing excess or weak seedlings to reduce competition for nutrients, water, light and space.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following nursery beds is suitable for a dry season?        (BECE 2024 Q23)",
        options: ["Sunken bed", "Raised bed", "Surface bed", "Ruined bed"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A sunken nursery bed retains moisture for a longer period, making it suitable for raising seedlings during the dry season.",
      ),
      QuizQuestion(
        question:
            "4. Cultural practices are activities undertaken on a farm        (BECE 2019 Q40)",
        options: [
          "After harvesting and before processing",
          "Before maturity and after harvesting",
          "After planting and before harvesting",
          "Before transplanting seedlings"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Cultural practices are crop-management activities such as watering, weeding, mulching and pest control carried out after planting and before harvesting.",
      ),
      QuizQuestion(
        question:
            "5. An example of inorganic fertilizer is        (Likely Examinable Q4)",
        options: ["NPK", "Farmyard manure", "Compost", "Mulch"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "NPK is a manufactured inorganic fertilizer containing nitrogen, phosphorus and potassium.",
      ),
      QuizQuestion(
        question:
            "6. When organic matter is thoroughly mixed into soil, what is the benefit to the crop?        (Likely Examinable Q8)",
        options: [
          "Destroy heavy soils",
          "Reduce planting space",
          "Retain plant nutrients",
          "Clear empty spaces"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Organic matter improves soil fertility and helps the soil retain nutrients required for healthy crop growth.",
      ),
      QuizQuestion(
        question:
            "7. The main reason for staking tomato is to ensure        (BECE 2022 Q10)",
        options: [
          "Flower fruits to development",
          "Air circulation on the farm",
          "Upright growth of the plant",
          "That fruits do not get rotten"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Staking supports the weak stems of tomato plants and keeps them growing upright.",
      ),
      QuizQuestion(
        question:
            "8. The most appropriate practice to adopt when growing vegetables in the dry season is        (BECE 2018 Q18)",
        options: [
          "Watering",
          "Transplanting",
          "Pest control",
          "Fertilizer application"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Vegetables need an adequate supply of water. Regular watering is therefore essential during the dry season.",
      ),
      QuizQuestion(
        question: "9. Stirring of soil on vegetable beds is to\n\n"
            "I. improve aeration of soil.\n"
            "II. increase activities of soil organisms.\n"
            "III. increase water penetration in the soil.\n"
            "IV. reduce weed growth.        (BECE 2023 Q15)",
        options: [
          "I, II and IV only",
          "I, III and IV only",
          "I, II and III only",
          "I and II only"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Stirring loosens the soil, improves aeration, encourages the activities of soil organisms and allows water to penetrate more easily.",
      ),
      QuizQuestion(
        question:
            "10. The vegetable crop that requires staking during its growth is        (BECE 2019 Q35)",
        options: ["Sweet pepper", "Garden eggs", "Tomatoes", "Hot pepper"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Tomato plants commonly require staking because their weak stems need support as they grow and produce fruits.",
      ),
      QuizQuestion(
        question:
            "11. Which of the following activities are cultural practices in vegetable production?\n\n"
            "I. Application of fertilizer\n"
            "II. Harvesting\n"
            "III. Mulching        (BECE 2021 Q10)",
        options: [
          "I and II only",
          "I and III only",
          "II and III only",
          "I, II and III"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Fertilizer application and mulching are cultural practices carried out while crops are growing. Harvesting is not a cultural practice.",
      ),
      QuizQuestion(
        question:
            "12. Which of the following activities are cultural practices used in tomato cultivation?\n\n"
            "I. Pest control\n"
            "II. Pricking out\n"
            "III. Fertilizer application        (BECE 2021 Q10)",
        options: [
          "I and II only",
          "I and III only",
          "II and III only",
          "I, II and III"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Pest control, pricking out and fertilizer application are all important practices used in tomato cultivation.",
      ),
      QuizQuestion(
        question:
            "13. Which of the following activities are cultural practices in the cultivation of cabbage?\n\n"
            "I. Pruning\n"
            "II. Weeding\n"
            "III. Watering        (BECE 2017 Q38)",
        options: [
          "I and II only",
          "I and III only",
          "II and III only",
          "I, II and III"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Weeding and watering are important cultural practices in cabbage cultivation. Pruning is not normally carried out on cabbage.",
      ),
      QuizQuestion(
        question:
            "14. The first factor to be considered when deciding to cultivate a particular vegetable is        (BECE 2017 Q36)",
        options: [
          "Cultural practices",
          "Selection of land",
          "Harvesting",
          "Method of propagation"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Suitable land must first be selected because soil type, drainage, fertility and topography affect vegetable production.",
      ),
      QuizQuestion(
        question:
            "15. Delinting and shelling are both activities carried out in the processing of        (BECE 2013 Q15)",
        options: ["Cowpea", "Groundnut", "Cotton", "Sorghum"],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Cotton processing includes shelling to remove the seeds and delinting to remove the fibres attached to the seeds.",
      ),
      QuizQuestion(
        question:
            "16. The practice in which excess branches of growing plants are removed is termed        (BECE 2020 Q28)",
        options: ["Mulching", "Pruning", "Thinning", "Staking"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Pruning is the removal of excess, unwanted, dead or diseased branches from a growing plant.",
      ),
      QuizQuestion(
        question:
            "17. The following practices are cultural practices in crop production except        (BECE 2023 Q19)",
        options: ["Mulching", "Pest control", "Weeding", "Nursing"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Mulching, pest control and weeding are cultural practices performed on growing crops. Nursing involves raising seedlings before transplanting.",
      ),
      QuizQuestion(
        question:
            "18. Weeds on a school farm could be controlled by        (BECE 2014 Q16)",
        options: ["Handpicking", "Mowing", "Ploughing", "Tilling"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Handpicking is an appropriate method of removing weeds from a small area such as a school farm.",
      ),
      QuizQuestion(
        question:
            "19. Which of the following nursery beds is suitable for a rainy season?        (BECE 2024 Q24)",
        options: ["Sunken bed", "Raised bed", "Surface bed", "Ruined bed"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A raised nursery bed allows excess rainwater to drain away and protects seedlings from waterlogging.",
      ),
      QuizQuestion(
        question:
            "20. A husbandry practice which involves the removal of unwanted plant parts is known as        (BECE 2015 Q35)",
        options: ["Mulching", "Pruning", "Thinning", "Pricking out"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Pruning involves removing unwanted, excess, damaged or diseased parts of a plant.",
      ),
      QuizQuestion(
        question:
            "21. Which of the following vegetable crops is cultivated for its leaves?        (BECE 2016 Q23)",
        options: ["Carrot", "Lettuce", "Okro", "Pepper"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Lettuce is cultivated mainly for its edible leaves. Carrot is grown for its root, while okro and pepper are grown for their fruits.",
      ),
      QuizQuestion(
        question:
            "22. Which of the following factors has the greatest influence on vegetable crop production?        (BECE 2023 Q17)",
        options: [
          "Presence of pest",
          "Availability of labour",
          "Source of water",
          "Nearness to market"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Vegetables require a reliable source of water because they need frequent watering for proper growth and development.",
      ),
      QuizQuestion(
        question:
            "23. Transplanting of seedlings is usually done in the evening because        (BECE 2013 Q27)",
        options: [
          "Darkness promotes rapid growth",
          "Pest attack is minimal",
          "Transpiration is minimal",
          "Seedlings require less nutrients"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The cooler evening conditions reduce transpiration and water loss, helping transplanted seedlings recover from transplanting shock.",
      ),
      QuizQuestion(
        question:
            "24. Which of the following factors should be considered when selecting a site for vegetable crop production?\n\n"
            "I. Nearness to the market\n"
            "II. Topography of the land\n"
            "III. Nearness to the sea        (BECE 2017 Q37)",
        options: [
          "I and II only",
          "I and III only",
          "II and III only",
          "I, II and III"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Nearness to the market reduces transport costs and spoilage, while suitable topography supports proper drainage. Nearness to the sea is not required.",
      ),
      QuizQuestion(
        question:
            "25. The part of the flower that develops into a fruit is the        (BECE 2016 Q7)",
        options: ["Ovary", "Ovule", "Style", "Stamen"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "After fertilization, the ovary develops into a fruit, while the ovules develop into seeds.",
      ),
      QuizQuestion(
        question:
            "26. The part of the flower that produces pollen grains is the        (BECE 2020 Q21)",
        options: ["Anther", "Stigma", "Filament", "Ovary"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The anther is the part of the stamen that produces and contains pollen grains.",
      ),
      QuizQuestion(
        question:
            "27. A fruit in which the pericarp has been modified into a parachute structure is dispersed by        (BECE 2020 Q40)",
        options: ["Water", "Mammals", "Explosion", "Wind"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "A parachute-like structure makes a fruit light and enables it to be carried away by the wind.",
      ),
      QuizQuestion(
        question: "28. A viable seed is one that        (BECE 2010 Q12)",
        options: [
          "Germinates under suitable conditions",
          "Is well protected inside the fruit",
          "Has a bright colour",
          "Develops from an ovary"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A viable seed contains a living embryo and can germinate when supplied with suitable conditions.",
      ),
      QuizQuestion(
        question:
            "29. The part of the plant where pollination occurs is the        (BECE 2015 Q23)",
        options: ["Flowers", "Leaves", "Stems", "Roots"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Pollination takes place in flowers when pollen grains are transferred from the anther to the stigma.",
      ),
      QuizQuestion(
        question:
            "30. The part of a flower that contains ovaries is called        (BECE 2011 Q24)",
        options: ["Anther", "Pistil", "Sepal", "Ovary"],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "The pistil is the female reproductive part of a flower and consists of the stigma, style and ovary.",
      ),
      QuizQuestion(
        question:
            "31. All flowering plants end their cycle with        (BECE 2022 Q2)",
        options: [
          "Seed formation",
          "Seed development",
          "Seed dispersal",
          "Seed germination"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "The reproductive cycle of a flowering plant ends when the mature seeds are dispersed to new locations.",
      ),
      QuizQuestion(
        question:
            "32. A beneficial effect of wind in the environment is        (BECE 2010 Q12)",
        options: [
          "Promotion of photosynthesis in green plants",
          "Pollination in flowering plants",
          "Leaching in soils",
          "Erosion in soils"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Wind carries pollen grains from the anthers to the stigmas of flowers, helping pollination to occur.",
      ),
      QuizQuestion(
        question:
            "33. The ovary, ovule and stigma are collectively known as        (BECE 2022 Q28)",
        options: ["stamen", "pistil", "fruit", "seed"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The ovary, ovule, stigma, and style together form the female reproductive part of a flower called the pistil (carpel).",
      ),
      QuizQuestion(
        question:
            "34. Which of the following fruits is dispersed by water?        (BECE 2021 Q29)",
        options: ["Coconut", "Mango", "Cocoa", "Maize"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Coconut fruits float on water because of their fibrous husk, allowing them to be dispersed by water.",
      ),
      QuizQuestion(
        question:
            "35. The shoot system of a flowering plant develops from the        (BECE 2022 Q31)",
        options: ["radicle", "plumule", "endosperm", "cotyledon"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The plumule develops into the shoot system of a plant, while the radicle develops into the root system.",
      ),
      QuizQuestion(
        question:
            "36. The carpel of a flower is made up of the following parts except        (BECE 2019 Q27)",
        options: ["filament", "ovary", "stigma", "style"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The carpel consists of the stigma, style, and ovary. The filament is part of the stamen, the male reproductive organ.",
      ),
      QuizQuestion(
        question:
            "37. The ovule in a flower develops to form the        (BECE 2019 Q23)",
        options: ["fruit", "leaf", "seed", "wall"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "After fertilization, the ovule develops into a seed, while the ovary develops into a fruit.",
      ),
      QuizQuestion(
        question: "38. Viable seeds are ones that        (BECE 2013 Q30)",
        options: [
          "are able to germinate under suitable conditions",
          "are eaten by animals after planting",
          "contain a lot of oil",
          "have hard seed coat"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A viable seed is a living seed that can germinate and grow into a healthy plant when provided with suitable conditions.",
      ),
      QuizQuestion(
        question: "39. Fruits dispersed by wind        (BECE 2015 Q27)",
        options: ["have hairs", "are sticky", "are succulent", "have hooks"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Wind-dispersed fruits usually have hairs or wings that help them float and be carried by the wind.",
      ),
      QuizQuestion(
        question:
            "40. Fruits which are dispersed by wind are likely to be        (BECE 2013 Q29)",
        options: ["dry", "hairy", "juicy", "sticky"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Wind-dispersed fruits are generally dry and lightweight, making it easier for the wind to carry them.",
      ),
      QuizQuestion(
        question:
            "41. One of the characteristics of wind-pollinated flowers is that they        (BECE 2017 Q29)",
        options: [
          "are large and conspicuous",
          "are usually scented",
          "develop from the ovary",
          "have feathery stigma"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Wind-pollinated flowers have large, feathery stigmas that trap pollen carried by the wind.",
      ),
      QuizQuestion(
        question:
            "42. In flowering plants, the stamen is made up of        (BECE 2011 Q10)",
        options: [
          "anther and stigma",
          "anther and filament",
          "stigma and filament",
          "stigma and style"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The stamen, the male reproductive part of a flower, consists of the anther and the filament.",
      ),
    ],
  ),
  "Science JHS1 s2 ss4 - Animal Production": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. All the following are breeds of cattle except        (Likely Examinable Q2)",
        options: ["N’dama", "White Fulani", "Muturu", "Sokoto Red"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Sokoto Red is a breed of goat, while N’dama, White Fulani, and Muturu are breeds of cattle.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following management practices greatly helps in record keeping?        (BECE 2012 Q25)",
        options: ["Culling", "Debudding", "Dehorning", "Identification"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Identification allows farmers to distinguish individual animals, making record keeping accurate and effective.",
      ),
      QuizQuestion(
        question:
            "3. The type of management system which allows farm animals to roam about freely is known as        (BECE 2013 Q9)",
        options: [
          "extensive system",
          "intensive system",
          "semi-intensive system",
          "semi-extensive system"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "In the extensive system, animals graze and roam freely over large areas of land.",
      ),
      QuizQuestion(
        question:
            "4. Endoparasites in farm animals can be controlled by        (BECE 2011 Q29)",
        options: ["drenching", "dipping", "dusting", "spraying"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Drenching administers deworming medicine orally to control internal parasites (endoparasites).",
      ),
      QuizQuestion(
        question:
            "5. In the digestive system of ruminants, vitamins are synthesized in the        (BECE 2011 Q28)",
        options: ["abomasum", "omasum", "reticulum", "rumen"],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Microorganisms in the rumen synthesize vitamins, especially B-complex vitamins and vitamin K.",
      ),
      QuizQuestion(
        question:
            "6. An example of intensive system of poultry keeping is the        (BECE 2010 Q21)",
        options: [
          "deep litter system",
          "fold unit system",
          "free range system",
          "free running system"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The deep litter system is an intensive poultry management system where birds are kept indoors on litter materials.",
      ),
      QuizQuestion(
        question:
            "7. Which of the following farm animals is/are reared in a hutch?\nI. Goats\nII. Pigs\nIII. Rabbits        (BECE 2010 Q26)",
        options: ["I only", "III only", "I and II only", "II and III only"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Rabbits are commonly reared in hutches, while goats and pigs are kept in pens or houses.",
      ),
      QuizQuestion(
        question:
            "8. The farm animal which has crop as part of its digestive system is the        (BECE 2010 Q11)",
        options: ["fowl", "goat", "pig", "sheep"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "A crop is a food storage organ found in birds such as fowls before food passes to the gizzard.",
      ),
      QuizQuestion(
        question: "9. Chinchilla is a breed of        (BECE 2011 Q36)",
        options: ["goats", "pigs", "rabbits", "sheep"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Chinchilla is a well-known breed of rabbit commonly reared for meat and fur.",
      ),
      QuizQuestion(
        question:
            "10. The food nutrient which ensures good health in farm animals is        (BECE 2011 Q38)",
        options: ["carbohydrates", "minerals", "proteins", "vitamins"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Vitamins help maintain good health, support immunity, and regulate body functions in farm animals.",
      ),
      QuizQuestion(
        question:
            "11. The use of resistant breeds of farm animals in controlling diseases is a        (BECE 2010 Q34)",
        options: [
          "biological control method",
          "chemical control method",
          "cultural control method",
          "physical control method"
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Using disease-resistant breeds is a biological method of disease control because it relies on the animals' natural genetic resistance.",
      ),
      QuizQuestion(
        question: "12. Young rabbits are called        (BECE 2014 Q8)",
        options: ["bunnies", "kids", "fingerlings", "cubs"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation: "Young rabbits are commonly called bunnies (or kits).",
      ),
      QuizQuestion(
        question: "13. Landrace is a breed of        (BECE 2011 Q9)",
        options: ["cattle", "goats", "pigs", "sheep"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Landrace is a popular breed of pig known for its excellent reproductive performance.",
      ),
      QuizQuestion(
        question:
            "14. In which part of the digestive system of a fowl does grinding of feed take place?        (BECE 2011 Q23)",
        options: ["Crop", "Gizzard", "Oesophagus", "Proventriculus"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "The gizzard is the muscular organ responsible for grinding food in birds.",
      ),
      QuizQuestion(
        question:
            "15. A record of daily activities on a farm is termed        (BECE 2011 Q11)",
        options: [
          "labour record",
          "inventory record",
          "farm diary",
          "production record"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "A farm diary is used to record the day-to-day activities and events that take place on the farm.",
      ),
      QuizQuestion(
        question:
            "16. Balanced ration enables animals to        (BECE 2019 Q39)",
        options: [
          "increase fertility rate",
          "maintain normal growth",
          "increase meat production",
          "maintain energy level of work animals"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "A balanced ration provides all the nutrients needed for proper body maintenance, health, and normal growth.",
      ),
      QuizQuestion(
        question:
            "17. The process of removing unproductive poultry birds from a flock is referred to as        (BECE 2014 Q20)",
        options: ["culling", "dehorning", "debeaking", "identification"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Culling is the removal of weak, diseased, old, or unproductive birds from a flock to improve productivity.",
      ),
    ],
  ),

  "Science JHS1 s3 ss1 - Mixed Systems (Food & Nutrition, Respiration, Dentition, Circulatory, Reproduction, Digestion)": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
        question:
            "1. Malnutrition is a condition that occurs when the body does not get the right balance of nutrients. It can cause:        (BECE 2012 Q1)",
        options: ["obesity", "rickets", "scurvy", "kwashiorkor"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Kwashiorkor is a form of malnutrition caused by severe protein deficiency.",
      ),
      QuizQuestion(
        question:
            "2. Which of the following is a symptom of night blindness?        (BECE 2014 Q6)",
        options: [
          "Poor night vision",
          "Swollen legs",
          "Bleeding gums",
          "Weak bones"
        ],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Night blindness is characterized by poor vision in dim light and is commonly caused by vitamin A deficiency.",
      ),
      QuizQuestion(
        question:
            "3. Which of the following food substances is not involved in respiration?        (BECE 2007 Q10)",
        options: ["Vitamin", "Glucose", "Protein", "Fat"],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
            "Vitamins regulate body processes but do not serve as respiratory substrates for energy production.",
      ),
      QuizQuestion(
        question:
            "4. Deficiency of iron in the diet leads to        (BECE 2018 Q3)",
        options: ["rickets", "anemia", "scurvy", "goiter"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Iron deficiency reduces the production of haemoglobin, leading to anaemia.",
      ),
      QuizQuestion(
        question:
            "5. Iodine deficiency in humans results in        (BECE 2016 Q2)",
        options: ["anemia", "scurvy", "rickets", "goiter"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Iodine deficiency causes enlargement of the thyroid gland, resulting in goiter.",
      ),
      QuizQuestion(
        question:
            "6. External respiration in living organisms involves the        (BECE 2013 Q10)",
        options: [
          "production of energy",
          "exhaling of carbon dioxide",
          "inhaling of oxygen",
          "intake of oxygen and expiration of carbon dioxide"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "External respiration is the exchange of gases with the environment by taking in oxygen and releasing carbon dioxide.",
      ),
      QuizQuestion(
        question:
            "7. The gas produced when glucose is oxidized during aerobic respiration is        (BECE 2016 Q17)",
        options: ["carbon dioxide", "nitrogen", "hydrogen", "oxygen"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Aerobic respiration produces carbon dioxide, water, and energy when glucose is completely oxidized.",
      ),
      QuizQuestion(
        question:
            "8. Which of the following statements about aerobic and anaerobic respiration is not correct?        (BECE 2021 Q11)",
        options: [
          "Water is produced as a by-product in aerobic respiration.",
          "Alcohol or lactic acid is produced in anaerobic respiration.",
          "No oxygen is required in anaerobic respiration.",
          "Very little energy is released in aerobic respiration."
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Aerobic respiration releases a large amount of energy, not very little. Anaerobic respiration releases much less energy.",
      ),
      QuizQuestion(
        question:
            "9. The function of the hair in the nose of humans is to        (BECE 2018 Q16)",
        options: [
          "make breathing easier",
          "keep nose moist",
          "filter dust from the air breathed in",
          "keep the nose warm"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The hairs in the nose trap dust, pollen, and other particles, preventing them from entering the respiratory tract.",
      ),
      QuizQuestion(
        question:
            "10. Exchange of gases takes place in the respiratory system through the        (BECE 2005 Q10)",
        options: ["alveoli", "bronchus", "trachea", "bronchioles"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The alveoli are tiny air sacs in the lungs where oxygen enters the blood and carbon dioxide leaves the blood.",
      ),
      QuizQuestion(
        question:
            "11. The different types of teeth that an animal has gives an indication of the animal's        (BECE 2007 Q12)",
        options: ["digestion", "growth", "feeding habit", "reproduction"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The type and arrangement of teeth show the kind of food an animal eats, indicating its feeding habit.",
      ),
      QuizQuestion(
        question:
            "12. The type of teeth used for biting and cutting food items are the        (BECE 2013 Q6)",
        options: ["incisors", "canines", "premolars", "molars"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Incisors are the front teeth specialized for biting and cutting food.",
      ),
      QuizQuestion(
        question:
            "13. The type of teeth used by mammals to crush food items is        (BECE 2010 Q31)",
        options: ["incisors", "canines", "premolars", "molars"],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Molars are broad, flat teeth specialized for crushing and grinding food during chewing.",
      ),
      QuizQuestion(
        question:
            "14. Which of the following types of teeth is used by mammals to tear food materials?        (BECE 2014 Q30)",
        options: ["Incisors", "Canines", "Molars", "Premolars"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Canines are pointed teeth adapted for tearing and holding food, especially meat.",
      ),
      QuizQuestion(
        question:
            "15. Which part of the human tooth contains blood vessels and nerves?        (BECE 2022 Q13)",
        options: ["Enamel", "Dentine", "Pulp cavity", "Cement"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The pulp cavity contains blood vessels, nerves, and connective tissue that nourish the tooth.",
      ),
      QuizQuestion(
        question:
            "16. Which of the following blood vessels carries deoxygenated blood?        (BECE 2000 Q27)",
        options: [
          "Aorta",
          "Pulmonary artery",
          "Pulmonary vein",
          "Renal artery"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "The pulmonary artery carries deoxygenated blood from the heart to the lungs for oxygenation.",
      ),
      QuizQuestion(
        question:
            "17. Oxygen is made available to all cells of the human body by the        (BECE 2009 Q18)",
        options: [
          "plasma",
          "red blood cells",
          "white blood cells",
          "platelets"
        ],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Red blood cells contain haemoglobin, which transports oxygen from the lungs to all body cells.",
      ),
      QuizQuestion(
        question:
            "18. The function of the platelets in the circulatory system of humans is to        (BECE 2018 Q40)",
        options: [
          "transport oxygen",
          "transport carbon dioxide",
          "defend the body",
          "clot the blood"
        ],
        correctIndex: 3,
        difficulty: "Easy",
        explanation:
            "Platelets help stop bleeding by forming blood clots at the site of injury.",
      ),
      QuizQuestion(
        question:
            "19. Which of the following substances are carried by the blood?\nI. Nutrients\nII. Oxygen\nIII. Urine\nIV. Carbon dioxide        (BECE 2019 Q27)",
        options: [
          "I and II only",
          "I, II and IV only",
          "II, III and IV only",
          "I, II, III and IV"
        ],
        correctIndex: 1,
        difficulty: "Medium",
        explanation:
            "Blood transports nutrients, oxygen, and carbon dioxide. Urine is not carried by the blood as a transported substance; it is produced in the kidneys.",
      ),
      QuizQuestion(
        question:
            "20. The function of the white blood cells in humans is to        (BECE 2018 Q36)",
        options: [
          "produce haemoglobin",
          "ensure blood clot during an injury",
          "produce antibodies to fight disease-causing organisms",
          "produce digestive enzymes"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "White blood cells protect the body against infection by producing antibodies and destroying harmful microorganisms.",
      ),
      QuizQuestion(
        question: "21. The male sex cell is the        (BECE 2002a Q30)",
        options: ["penis", "scrotum", "sperm", "testes"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The sperm is the male reproductive cell (gamete) responsible for fertilization.",
      ),
      QuizQuestion(
        question:
            "22. The ovum of a mammal develops from        (BECE 2002b Q20)",
        options: [
          "eggs fertilized inside the body",
          "eggs fertilized outside the body",
          "unfertilized eggs",
          "only female sex cells"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "An ovum is an unfertilized egg cell produced in the ovary before fertilization occurs.",
      ),
      QuizQuestion(
        question: "23. The testes in mammals produce        (BECE 2004 Q36)",
        options: ["blood", "fluid", "sperms", "urine"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The testes are the male reproductive organs that produce sperm cells.",
      ),
      QuizQuestion(
        question:
            "24. The human sex cell that takes part in reproduction is the        (BECE 2005 Q14)",
        options: ["penis", "scrotum", "sperms", "testes"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Sperm is the male sex cell that fuses with the ovum during fertilization.",
      ),
      QuizQuestion(
        question:
            "25. The process that takes place when the sperm and the egg of a human fuse together is referred to as        (BECE 2010 Q19)",
        options: ["fertilization", "menstruation", "ovulation", "reproduction"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "Fertilization is the fusion of the male and female gametes to form a zygote.",
      ),
      QuizQuestion(
        question:
            "26. Male sex cells are produced in the        (BECE 2012 Q38)",
        options: ["testes", "ovaries", "penis", "prostate gland"],
        correctIndex: 0,
        difficulty: "Easy",
        explanation:
            "The testes are responsible for producing sperm cells in males.",
      ),
      QuizQuestion(
        question:
            "27. The organ where a mammalian embryo is safely retained during its development is the        (BECE 2015 Q26)",
        options: ["Fallopian tube", "ovary", "uterus", "vagina"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "The uterus is the organ where the embryo implants and develops until birth.",
      ),
      QuizQuestion(
        question:
            "28. Fertilization in humans usually takes place in the        (BECE 2015 Q30)",
        options: ["ovary", "uterus", "Fallopian tube", "vagina"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "In humans, fertilization normally occurs in the Fallopian tube (oviduct).",
      ),
      QuizQuestion(
        question:
            "29. Which of the following factors contributes to early parenthood?\nI. Poverty\nII. Lack of parental care\nIII. Illiteracy\nIV. Peer pressure        (BECE 2012 Q33)",
        options: [
          "I and II only",
          "II and III only",
          "I, II and IV only",
          "I, II, III and IV"
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
            "Poverty, lack of parental care, illiteracy, and peer pressure can all contribute to early parenthood.",
      ),
      QuizQuestion(
        question:
            "30. Which of the following factors does not lead to teenage pregnancy?\nI. Peer pressure\nII. Curiosity\nIII. Good parental care\nIV. Financial insecurity        (BECE 2018 Q29)",
        options: [
          "I and II only",
          "III and IV only",
          "III only",
          "I, II and IV"
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
            "Good parental care helps prevent teenage pregnancy, while the other listed factors increase its risk.",
      ),
      QuizQuestion(
        question:
            "31. A substance which helps in the digestion of food material is called        (BECE 2008 Q23)",
        options: ["hormone", "enzyme", "plasma", "saliva"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Enzymes are biological catalysts that speed up the digestion of food.",
      ),
      QuizQuestion(
        question:
            "32. The end product of the digestion of fats and oils is        (BECE 2008 Q21)",
        options: [
          "amino acids",
          "glucose",
          "fatty acids and glycerol",
          "maltose"
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Fats and oils are digested into fatty acids and glycerol by the action of lipase enzymes.",
      ),
      QuizQuestion(
        question:
            "33. Which of the following substances is an enzyme?        (BECE 2007 Q17)",
        options: ["Insulin", "Pepsin", "Bile", "Maltose"],
        correctIndex: 1,
        difficulty: "Easy",
        explanation:
            "Pepsin is a digestive enzyme that breaks down proteins in the stomach.",
      ),
      QuizQuestion(
        question:
            "34. Digestion of starch starts from the        (BECE 2012 Q11)",
        options: ["stomach", "duodenum", "mouth", "ileum"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Digestion of starch begins in the mouth where salivary amylase starts breaking down starch into maltose.",
      ),
      QuizQuestion(
        question:
            "35. Digestion is completely ended in the        (BECE 2022 Q39)",
        options: ["stomach", "large intestine", "small intestine", "rectum"],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
            "Digestion is completed in the small intestine before nutrients are absorbed into the bloodstream.",
      ),
    ],
  ),

  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "Religious & Moral Education JHS1 s1 ss1 - God, His Creation and Attributes":
      QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question:
              "1. When the last tree dies, the last man dies. This statement refers to the need to\n(BECE 2022 Q4)",
          options: [
            "Encourage farming",
            "Irrigate forest vegetation",
            "Manage the environment well",
            "Stop making furniture out of wood"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Proper environmental management ensures the survival of humans and other living things."),
      QuizQuestion(
          question:
              "2. According to the Ewe myth on creation, God could not create more human beings because\n(BECE 2021 Q17)",
          options: [
            "Clay was scarce",
            "He was very tired",
            "Man was disobedient",
            "People were too many on the earth"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "According to the Ewe creation myth, God stopped creating humans because He became very tired."),
      QuizQuestion(
          question:
              "3. Drought can easily be caused when there is\n(BECE 2022 Q3)",
          options: [
            "Surface mining",
            "Sand weaning",
            "Deforestation",
            "Quarrying"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Deforestation reduces rainfall and contributes to drought."),
      QuizQuestion(
          question:
              "4. Traditional worshippers believe that the world was created by\n(BECE 2023 Q28)",
          options: ["Lesser gods", "Angels", "Ancestors", "Supreme Being"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Traditional African Religion teaches that the Supreme Being created the world."),
      QuizQuestion(
          question:
              "5. Which of the following items is not a basic need for man's survival?\n(BECE 2023 Q34)",
          options: ["Medicine", "Food", "Air", "Water"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Food, water and air are basic survival needs, while medicine is important but not a basic need."),
      QuizQuestion(
          question:
              "6. Washing dirty clothes in streams causes\n(BECE 2022 Q5)",
          options: [
            "Water pollution",
            "Water shortage",
            "Survival of fishes",
            "Death of water gods"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Detergents and dirt pollute water bodies."),
      QuizQuestion(
          question:
              "7. As a result of God's ability to do all things, He is referred to\n(BECE 2022 Q15)",
          options: ["Omnipresent", "Omnipotent", "Omniscient", "Omnivorous"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Omnipotent means all-powerful."),
      QuizQuestion(
          question:
              "8. In Islam, the Omnipotence of Allah describes His\n(BECE 2023 Q37)",
          options: ["Justice", "Power", "Patience", "Wisdom"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Omnipotence refers to Allah's unlimited power."),
      QuizQuestion(
          question:
              "9. Referring to God as the Alpha and Omega means that God is\n(BECE 2020 Q6)",
          options: [
            "Present everywhere",
            "The beginning and the end",
            "The provider of all needs",
            "The ultimate reality"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Alpha and Omega signifies that God is eternal—the beginning and the end."),
      QuizQuestion(
          question:
              "10. Which of these creation of God provides security and protection for man?\n(BECE 2021 Q14)",
          options: ["Goat", "Dog", "Cock", "Parrot"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Dogs are commonly used for security and protection."),
      QuizQuestion(
          question:
              "11. According to Islamic creation story, Allah created Adam followed by\n(BECE 2022 Q1)",
          options: ["Khadija", "Aisha", "Hawa", "Mariam"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Allah created Hawa (Eve) after Adam."),
      QuizQuestion(
          question:
              "12. Human is considered as the most important creation in the Bible because he was\n(BECE 2022 Q2)",
          options: [
            "Created in the image of God",
            "The last to be created",
            "God's assistant in creation",
            "The first to be created"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Humans were uniquely created in God's image."),
      QuizQuestion(
          question:
              "13. According to Christian teaching, God created man and woman on the\n(BECE 2013 Q1)",
          options: ["Third day", "Fifth day", "Sixth day", "Fourth day"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Human beings were created on the sixth day."),
      QuizQuestion(
          question:
              "14. According to the Bible, lonely places where there is silence promote\n(BECE 2020 Q31)",
          options: [
            "General layout of things",
            "Development of better relationship between them and God",
            "Beginning of eternity",
            "Hidden things that can be seen by everyone"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Quiet places encourage prayer and fellowship with God."),
      QuizQuestion(
          question:
              "15. The revelation of the whole Quran took\n(BECE 2000 Q7)",
          options: ["22 years", "24 years", "23 years", "20 years"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The Holy Quran was revealed over a period of 23 years."),
      QuizQuestion(
          question:
              "16. Christians, Muslims and Traditional worshippers believe that the world was created by\n(BECE 1999 Q2)",
          options: ["An angel", "A holy spirit", "God", "A godly person"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "All three religions believe that God is the Creator."),
      QuizQuestion(
          question:
              "17. The snake as an animal was created by God to\n(BECE 2004 Q10)",
          options: [
            "Give man meat",
            "Kill man",
            "Lead man to sin",
            "Tempt man"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "In the Bible, the serpent tempted Eve to disobey God."),
      QuizQuestion(
          question:
              "18. God commanded the earth to produce plants on the\n(BECE 2005 Q1)",
          options: ["Second day", "Third day", "Fourth day", "Fifth day"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Plants were created on the third day."),
      QuizQuestion(
          question:
              "19. One way of helping to protect the environment from degradation is to\n(BECE 2000 Q2)",
          options: [
            "Encourage small-scale mining",
            "Cover the earth's surface with sand",
            "Plant more trees",
            "Burn refuse openly"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Tree planting helps conserve the environment."),
      QuizQuestion(
          question:
              "20. Which of the following attributes of God is not manifested in the creation story?\n(BECE 2004 Q1)",
          options: [
            "All knowing",
            "Ever forgiving",
            "All powerful",
            "Ever present"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "God's forgiveness is not demonstrated in the creation account."),
      QuizQuestion(
          question:
              "21. God revealed Himself in the Garden of Eden to\n(BECE 2007 Q1)",
          options: ["Moses", "Abraham", "Eve", "Adam"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "According to Genesis, God spoke directly with Adam in the Garden of Eden."),
      QuizQuestion(
          question:
              "22. God is Omnipotent. This means that God is\n(BECE 2001 Q1)",
          options: [
            "All powerful",
            "Knows everything",
            "Is everywhere",
            "Is very gracious"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Omnipotent means having unlimited power."),
      QuizQuestion(
          question:
              "23. God blessed and made the Sabbath holy because it was the day\n(BECE 2001 Q9)",
          options: [
            "Israel defeated their enemies",
            "For settling all disputes",
            "The Israelites left Egypt",
            "God rested from creation"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "God rested on the seventh day after completing creation."),
      QuizQuestion(
          question:
              "24. On the fifth day of creation, God commanded\n(BECE 2002 Q1)",
          options: [
            "The sky to appear to separate the water",
            "Water and air to be filled with many kinds of living creatures",
            "Water to come together in one place so that the land would appear",
            "The water under the firmament to separate from that above it"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "On the fifth day, God created birds and sea creatures."),
      QuizQuestion(
          question:
              "25. The Omniscience of God portrays Him as\n(BECE 2006 Q2)",
          options: [
            "All powerful",
            "Ever forgiving",
            "Very gracious",
            "All knowing"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Omniscience means possessing complete knowledge."),
      QuizQuestion(
          question:
              "26. Which of the following behaviours pollutes our environment?\n(BECE 2006 Q23)",
          options: [
            "Cutting down trees",
            "Killing birds and animals",
            "Throwing rubbish around",
            "Clearing the land for building"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Improper disposal of waste pollutes the environment."),
      QuizQuestion(
          question:
              "27. Which of the following attributes of God shows that He has the whole world under His view?\n(BECE 2017 Q8)",
          options: ["Omnipotent", "Creator", "Omnipresent", "Omniscient"],
          correctIndex: 3,
          difficulty: "Medium",
          explanation:
              "God's omniscience means He knows everything happening everywhere."),
      QuizQuestion(
          question:
              "28. According to the Holy Bible, what was created on the second day?\n(BECE 2006 Q1)",
          options: [
            "Heavens or sky",
            "Smaller animals",
            "Plants and trees",
            "Greater light"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "God created the sky (firmament) on the second day."),
      QuizQuestion(
          question:
              "29. According to the Bible, the first thing God created was\n(BECE 2018 Q3)",
          options: ["Sickness", "Light", "Plants", "Darkness"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "God said, 'Let there be light,' on the first day."),
      QuizQuestion(
          question: "30. Cain's violent act against Abel shows\n(BECE 2018 Q2)",
          options: ["Greed", "Jealousy", "Selfishness", "Misunderstanding"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Cain killed Abel because he was jealous of God's acceptance of Abel's offering."),
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
          explanation: "God's omniscience means He knows everything."),
      QuizQuestion(
          question:
              "32. By creating the world and everything in an orderly way, God wanted to show that He is\n(BECE 2009 Q3)",
          options: [
            "In a hurried way",
            "Orderly",
            "In a difficult way",
            "Orderly"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "The creation account shows God's orderliness and purpose."),
      QuizQuestion(
          question:
              "33. In the creation story, God ordered Adam to\n(BECE 2005 Q2)",
          options: [
            "Subdue and fill the earth",
            "Take good care of Eve",
            "Worship Him regularly",
            "Eat all the fruit in the Garden"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "God commanded Adam to be fruitful, multiply, and have dominion over the earth."),
      QuizQuestion(
          question:
              "34. The Akans call God Ananse Kokroko because He is\n(BECE 2011 Q1)",
          options: ["Everlasting", "Dependable", "Omnipotent", "Forgiving"],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Ananse Kokroko emphasizes God's unmatched power."),
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
          explanation: "Omnipresence means God is present everywhere."),
      QuizQuestion(
          question:
              "36. Which of the following practices destroys our vegetation?\n(BECE 2013 Q2)",
          options: [
            "Cutting down trees randomly",
            "Killing animals for food",
            "Constructing drains",
            "Killing disease vectors"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Indiscriminate tree felling destroys vegetation."),
      QuizQuestion(
          question:
              "37. By creating the environment, God wants us to\n(BECE 2009 Q8)",
          options: [
            "Make a mighty ocean",
            "Control all things",
            "Find Himself and others",
            "Name all creation"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation:
              "Adam was given the responsibility of naming God's creation."),
      QuizQuestion(
          question:
              "38. The belief that God sees the secret deeds of all and punishes those who do evil implies that He is\n(BECE 2011 Q1)",
          options: ["Sovereign", "Omnipresent", "Omniscient", "Omnipotent"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Only an all-knowing God can see every hidden deed."),
      QuizQuestion(
          question:
              "39. Adam described Eve as woman because she\n(BECE 2011 Q3)",
          options: [
            "Was made out of his rib",
            "Was the mother of all living",
            "Allowed the serpent to deceive her",
            "Was made a helper fit for him"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Adam called her Woman because she was taken out of man."),
      QuizQuestion(
          question:
              "40. One of the ways of protecting God's creation is by\n(BECE 2011 Q15)",
          options: [
            "Constructing buildings and roads",
            "Polluting air and water bodies",
            "Planting more trees and other plants",
            "Killing snakes and other dangerous animals"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Tree planting helps preserve God's creation."),
      QuizQuestion(
          question:
              "41. In Christianity, the sky, seas, animals and other living things came into being through\n(BECE 2012 Q1)",
          options: [
            "God's command",
            "Natural orders",
            "The lesser gods",
            "Earth gods"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Christian teaching states that creation came into existence through God's command."),
      QuizQuestion(
          question:
              "42. According to Akan belief, the order of creation is\n(BECE 2012 Q4)",
          options: [
            "Earth, rivers, plants and sky",
            "Rivers, plants, earth and sky",
            "Sky, earth, rivers and plants",
            "Plants, rivers, sky and earth"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "According to Akan belief, God created the sky, earth, rivers and plants in that order."),
      QuizQuestion(
          question:
              "43. One way by which humankind pollutes the air in the city is by\n(BECE 2012 Q10)",
          options: [
            "The use of insecticides",
            "The use of detergents",
            "Smoke from motor vehicles",
            "Smoke from the burning of wood"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Exhaust fumes from motor vehicles contribute significantly to air pollution in cities."),
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
          explanation: "Omnipotence refers to God's unlimited power."),
      QuizQuestion(
          question:
              "45. According to the Bible, God commanded the earth to produce plants on the\n(BECE 2018 Q1)",
          options: ["First day", "Third day", "Fifth day", "Sixth day"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "God commanded the earth to produce plants on the third day of creation."),
      QuizQuestion(
          question:
              "46. Which of the following options is not a reason for which we must care for God's creation?\n(BECE 2018 Q1)",
          options: [
            "It makes us righteous people",
            "To show respect for God's gift of nature",
            "To preserve it for future generations",
            "We are stewards of God's creation"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "Caring for creation shows stewardship and respect and preserves nature, but it does not automatically make a person righteous."),
      QuizQuestion(
          question:
              "47. Traditional worshippers believe that the world was created by\n(BECE 2017 Q21)",
          options: ["An angel", "A holy spirit", "God", "An ancestor"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Traditional worshippers believe that the Supreme Being, or God, created the world."),
      QuizQuestion(
          question:
              "48. Which of the following attributes of God shows that He rules the world?\n(BECE 2019 Q1)",
          options: ["All-powerful", "Creator", "Omnipresence", "Omniscient"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "God's unlimited power enables Him to rule over the whole world."),
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
          explanation:
              "Plants release oxygen, which humans and animals need for respiration."),
      QuizQuestion(
          question:
              "50. Muslims describe Allah as Al-Rahman because He is\n(BECE 2019 Q3)",
          options: ["All-knowing", "Just", "Merciful", "The restorer"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "Al-Rahman means the Most Merciful or the Most Compassionate."),
      QuizQuestion(
          question:
              "51. The attribute Alpha and Omega reveals that God is\n(BECE 2019 Q4)",
          options: [
            "Everywhere at all times",
            "Gracious and merciful",
            "Holy and immortal",
            "The beginning and the end"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "Alpha and Omega means that God is the beginning and the end."),
      QuizQuestion(
          question:
              "52. Abraham built an altar for the Lord at the Oak of Moreh because\n(BECE 2019 Q5)",
          options: [
            "God asked him to do so",
            "God had appeared to him there",
            "He wanted to worship God there",
            "It was a Canaanite worship centre"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation:
              "Abraham built an altar at the Oak of Moreh because God appeared to him there."),
      QuizQuestion(
          question:
              "53. The Omniscience of God portrays Him as\n(BECE 2012 Q1)",
          options: [
            "All-powerful",
            "All-knowing",
            "Ever-present",
            "Ever-living"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Omniscience means having complete and unlimited knowledge."),
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
          explanation:
              "The attributes of God are the names and titles that describe His nature and qualities."),
      QuizQuestion(
          question:
              "55. According to Christian teachings, God created man on the\n(BECE 2011 Q4)",
          options: ["First day", "Second day", "Fifth day", "Sixth day"],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "According to the Bible, human beings were created on the sixth day."),
      QuizQuestion(
          question:
              "56. God created the two great lights in the heavens in order to\n(BECE 2014 Q1)",
          options: [
            "Show His mercy",
            "Separate night from day",
            "Give life to the earth",
            "Provide heat to the earth"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "The sun and moon were created to govern and distinguish day from night."),
      QuizQuestion(
          question:
              "57. God created water bodies to provide humankind with\n(BECE 2014 Q3)",
          options: ["Air", "Water", "Plants", "Salt"],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Water bodies provide water for human use and survival."),
      QuizQuestion(
          question:
              "58. In the Islamic creation story, the creation of man is found in the\n(BECE 2013 Q10)",
          options: ["Hadith", "Hijrah", "Holy Quran", "Tawrah"],
          correctIndex: 2,
          difficulty: "Easy",
          explanation:
              "The Islamic account of the creation of humankind is recorded in the Holy Quran."),
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
          explanation:
              "Plants provide medicinal materials and add beauty to the environment."),
      QuizQuestion(
          question:
              "60. Which of the following is provided by plants for humans?\n(BECE 2013 Q24)",
          options: ["Food", "Fuel", "Medicine", "Salt"],
          correctIndex: 0,
          difficulty: "Easy",
          explanation:
              "Plants provide food for humans, while salt is not obtained from plants."),
      QuizQuestion(
          question:
              "61. According to the Bible, God created woman to\n(BECE 2015 Q1)",
          options: [
            "Control the family",
            "Feed all mankind",
            "Be a faithful worshipper",
            "Keep man company"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation:
              "God created woman as a suitable companion and helper for man."),
      QuizQuestion(
          question:
              "62. One of the reasons for which God made the sea is to\n(BECE 2015 Q4)",
          options: [
            "Provide food",
            "Support transportation",
            "Provide water for domestic use",
            "Serve as a home for aquatic animals"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation:
              "The sea serves as a natural habitat for fish and other aquatic creatures."),
      QuizQuestion(
          question:
              "63. Creation according to Islamic tradition means\n(BECE 2015 Q3)",
          options: ["Command", "Instruction", "Prediction", "Prophecy"],
          correctIndex: 0,
          difficulty: "Medium",
          explanation:
              "Islamic tradition teaches that Allah brings creation into existence through His command."),
      QuizQuestion(
          question:
              "64. Which of the following is a cause of bad environmental conditions?\n(BECE 2015 Q11)",
          options: [
            "Afforestation",
            "Deforestation",
            "Soil erosion",
            "Global warming"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation:
              "Deforestation destroys vegetation and contributes to poor environmental conditions."),
      QuizQuestion(
          question:
              "65. One of the reasons why the sea is salty is to\n(BECE 2015 Q13)",
          options: [
            "Prevent it from drying up",
            "Make it beautiful",
            "Preserve it from getting spoiled",
            "Enable heavy ships to float on it"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation:
              "The salt content of seawater helps limit spoilage and the growth of certain harmful organisms."),
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
  "Religious & Moral Education JHS1 s2 ss1 - Topic-Specific Celebrations and Significance": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. One of the religious values in celebrating traditional festivals is to\n(BECE 2000 Q18)",
          options: [
            "Acknowledge the presence of the gods",
            "Bring the citizens together",
            "Raise funds to develop the community",
            "Contract marriages"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Traditional festivals have religious significance because they acknowledge the presence and influence of the gods and ancestors."
      ),

      QuizQuestion(
          question: "2. Which of the following festivals is a harvest festival?\n(BECE 2005 Q39)",
          options: [
            "Adae",
            "Hogbetsotso",
            "Odwira",
            "Aboakyer"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Odwira is celebrated partly to give thanks for the harvest and to purify the community."
      ),

      QuizQuestion(
          question: "3. The festival celebrated by the people of Winneba is\n(BECE 2017 Q9)",
          options: [
            "Aboakyer",
            "Bakatue",
            "Durbar",
            "Gmayem"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The Effutu people of Winneba celebrate the Aboakyer festival."
      ),

      QuizQuestion(
          question: "4. The main purpose of the Odwira festival is to\n(BECE 2006 Q5)",
          options: [
            "Remember the dead",
            "Purify the state",
            "Strengthen the unity of the people",
            "Pay homage to the chief"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Odwira is primarily a purification festival celebrated to cleanse the state and its people."
      ),

      QuizQuestion(
          question: "5. The main reason for celebrating the Homowo festival is to\n(BECE 2012 Q10)",
          options: [
            "Look for twins",
            "Hoot at hunger",
            "Visit the shrines",
            "Sprinkle spiritual food"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Homowo means 'hooting at hunger' and commemorates the end of a severe famine among the Ga people."
      ),

      QuizQuestion(
          question: "6. Eid-ul-Adha is celebrated by Muslims to\n(BECE 2016 Q11)",
          options: [
            "Mark Abraham's willingness to sacrifice his son to Allah",
            "Remember the birth of Prophet Muhammad",
            "Remember the death of Prophet Muhammad",
            "Mark the end of Ramadan"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Eid-ul-Adha commemorates Prophet Ibrahim's willingness to sacrifice his son in obedience to Allah."
      ),

      QuizQuestion(
          question: "7. The festival celebrated by Christians in memory of the resurrection of Jesus is called\n(BECE 2000 Q8)",
          options: [
            "Christmas",
            "Palm Sunday",
            "Good Friday",
            "Easter"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Easter commemorates the resurrection of Jesus Christ from the dead."
      ),

      QuizQuestion(
          question: "8. Which of the following celebrations signifies the salvation of all Christians?\n(BECE 2017 Q10)",
          options: [
            "Christmas",
            "Palm Sunday",
            "Good Friday",
            "Easter"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Easter celebrates Christ's resurrection, which represents victory over sin and death and the salvation of believers."
      ),

      QuizQuestion(
          question: "9. The Damba festival is celebrated to mark the\n(BECE 2001 Q5)",
          options: [
            "End of the agricultural year",
            "Migration of the ethnic group",
            "Founder of the Mole-Dagbon",
            "Birthday of the Holy Prophet"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The Damba festival is traditionally associated with the birth of Prophet Muhammad."
      ),

      QuizQuestion(
          question: "10. One of the best advantages of celebrating festivals is to\n(BECE 2001 Q18)",
          options: [
            "Come together to fight one's enemies",
            "Help organise funerals well",
            "Train the youth in defending the community",
            "Continue with the tradition"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Celebrating festivals helps preserve and transmit the customs and traditions of a community."
      ),

      QuizQuestion(
          question: "11. Eid-ul-Fitr celebration teaches Muslims to\n(BECE 1999 Q18)",
          options: [
            "Submit to Allah",
            "Give alms",
            "Sacrifice themselves to God",
            "Appreciate God's mercy"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Eid-ul-Fitr encourages Muslims to thank Allah and appreciate His mercy after completing the Ramadan fast."
      ),

      QuizQuestion(
          question: "12. The Muslim festival of sacrifice is\n(BECE 2001 Q5)",
          options: [
            "Eid-ul-Fitr",
            "Milad-un-Nabi",
            "Ramadan",
            "Eid-ul-Adha"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Eid-ul-Adha is known as the Festival of Sacrifice."
      ),

      QuizQuestion(
          question: "13. The Denkyira Asafo Company is associated with the festival of\n(BECE 2001 Q17)",
          options: [
            "Homowo",
            "Aboakyer",
            "Odwira",
            "Akwambo"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The Denkyira Asafo Company takes part in the Aboakyer festival celebrated by the Effutu people of Winneba."
      ),

      QuizQuestion(
          question: "14. Which of the following festivals helps to develop the strength and vitality of the youth?\n(BECE 2001 Q17)",
          options: [
            "Hogbetsotso",
            "Odwira",
            "Damba",
            "Aboakyer"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "The deer-hunting activities of Aboakyer test and develop the strength, courage and vitality of the youth."
      ),

      QuizQuestion(
          question: "15. Which of the following traditional festivals is used for cleansing and purification of the people?\n(BECE 2009 Q9)",
          options: [
            "Adae Kese",
            "Akwambo",
            "Kundum",
            "Odwira"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Odwira is a purification festival used to cleanse the people and the traditional state."
      ),

      QuizQuestion(
          question: "16. The Hogbetsotso festival is celebrated to mark the\n(BECE 2011 Q9)",
          options: [
            "Death of King Agorkorli",
            "End of the farming season",
            "Migration of the Ewes",
            "End of famine among the Ga-Adangme"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Hogbetsotso commemorates the migration and escape of the Anlo-Ewe people from Notsie."
      ),

      QuizQuestion(
          question: "17. An important religious value of traditional festivals is to\n(BECE 2011 Q13)",
          options: [
            "Acknowledge the presence of the ancestors",
            "Settle disputes among families",
            "Bring citizens together to sacrifice",
            "Hoot at hunger"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Traditional festivals provide an opportunity to honour and acknowledge the presence of the ancestors."
      ),

      QuizQuestion(
          question: "18. The 11th day of Zul-Hijjah, which is the month of pilgrimage on the Islamic calendar. During this period,Muslims the world over, which are financially sound are expected to make sacrifice of sheep to Allah.\n(BECE 2013 Q12)",
          options: [
            "Adae",
            "Hogbetsotso",
            "Odwira",
            "Eid-ul-Adha"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Eid-ul-Adha is celebrated during Zul-Hijjah and involves the sacrifice of an animal by Muslims who can afford it."
      ),

      QuizQuestion(
          question: "19. The most important rite in an Islamic marriage is the\n(BECE 2001 Q34)",
          options: [
            "Presentation of household utensils to the bride",
            "Delivery of a wedding sermon during the feast",
            "Payment of the dowry",
            "Celebration of the marriage feast"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The payment of the mahr, or dowry, is an essential requirement of a valid Islamic marriage."
      ),

      QuizQuestion(
          question: "20. A naming ceremony gives the new baby\n(BECE 2002 Q10)",
          options: [
            "Identity within the community",
            "Reunion with the family",
            "Reunion with the community",
            "A position in the family"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "A naming ceremony formally identifies and introduces the child to the family and community."
      ),

      QuizQuestion(
          question: "21. The importance of performing funeral rites is that it\n(BECE 2002A Q15)",
          options: [
            "Helps the dead to join the ancestors",
            "Avoids more deaths in the family",
            "Opens the way for the dead to go to heaven",
            "Enables the dead to resurrect on the last day"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "In traditional belief, properly performed funeral rites help the deceased enter the ancestral world."
      ),

      QuizQuestion(
          question: "22. In traditional society, people with traditional authority perform the naming ceremony because it is believed that\n(BECE 2002B Q8)",
          options: [
            "They will get a lot of money from the family",
            "The child will follow in their footsteps",
            "They will help the parents of the child",
            "It is their duty to ensure that the child is named"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Traditional authorities are responsible for formally naming and welcoming the child into the community."
      ),

      QuizQuestion(
          question: "23. Gifts given to girls during puberty rites enable them to\n(BECE 2002B Q23)",
          options: [
            "Buy their clothing",
            "Cook a meal for their husbands",
            "Maintain their friends",
            "Obtain cooking utensils"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Puberty-rite gifts often include household and cooking utensils to prepare girls for adult and family responsibilities."
      ),

      QuizQuestion(
          question: "24. In traditional society, rites of passage involve a\n(BECE 2003 Q7)",
          options: [
            "Transition from death to becoming an ancestor",
            "Life-cycle movement from one stage to another",
            "Transition from death to reincarnation",
            "Period during which health is tested"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Rites of passage mark important transitions from one stage of life to another."
      ),

      QuizQuestion(
          question: "25. By creating Adam and Eve, God was establishing the institution of\n(BECE 2003 Q11)",
          options: [
            "Comportment",
            "Brotherliness",
            "Friendship",
            "Marriage"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The creation and union of Adam and Eve established the institution of marriage."
      ),

      QuizQuestion(
          question: "26. The cutlass given to a boy during puberty rites signifies\n(BECE 2003 Q32)",
          options: [
            "Acceptance into the military sector",
            "Bravery and courage",
            "Readiness to defend the community",
            "Working to maintain himself and the family"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "The cutlass represents the young person's responsibility to work and provide for himself and his future family."
      ),

      QuizQuestion(
          question: "27. During naming ceremonies, the baby is given drops of water and wine to signify that he or she should be\n(BECE 2004 Q15)",
          options: [
            "Truthful",
            "Patient",
            "Brave",
            "Obedient"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Water and wine are used to teach the child to distinguish truth from falsehood and always speak the truth."
      ),

      QuizQuestion(
          question: "28. An Akan girl qualifies for puberty rites when\n(BECE 2004 Q27)",
          options: [
            "She is between fifteen and seventeen years old",
            "She first experiences menstruation",
            "Her breasts develop",
            "She finds a boyfriend"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Among the Akan, a girl's first menstruation indicates that she has reached puberty and qualifies for puberty rites."
      ),

      QuizQuestion(
          question: "29. The most important prayer request during marriage rites is for\n(BECE 2004 Q30)",
          options: [
            "Prosperity and wealth",
            "Protection and long life",
            "Good health and protection",
            "Long life and children"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Prayers during marriage rites commonly ask for long life and children for the couple."
      ),

      QuizQuestion(
          question: "30. The transition between childhood and adulthood is termed\n(BECE 2005 Q20)",
          options: [
            "Outdooring",
            "Adolescence",
            "Puberty",
            "Confirmation"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Adolescence is the transitional period between childhood and adulthood."
      ),
    ],
  ),
  "Religious & Moral Education JHS1 s3 ss1 - The Family, Religious Home and Obedience": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. The main role of the father is to\n(BECE 2003 Q21)",
          options: [
            "Cook for the family",
            "Make sure the children work",
            "Make sure the water in the house is kept clean",
            "Provide shelter for the family"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "One of the main responsibilities of a father is to provide shelter and other basic needs for the family."
      ),

      QuizQuestion(
          question: "2. Social conflicts can best be resolved by\n(BECE 2012 Q36)",
          options: [
            "Obeying the scriptures",
            "Being principled and humble",
            "Being authoritative and principled",
            "Tolerating and forgiving others"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Tolerance and forgiveness help people settle disagreements peacefully and restore good relationships."
      ),

      QuizQuestion(
          question: "3. The payment of school fees and other bills is mainly the responsibility of the\n(BECE 2000 Q21)",
          options: [
            "Grandfather",
            "Mother",
            "Uncle",
            "Father"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Traditionally, the father is mainly responsible for providing the financial needs of the family."
      ),

      QuizQuestion(
          question: "4. The best way to live in peace in a community is to\n(BECE 2000 Q33)",
          options: [
            "Understand and cooperate with others",
            "Disagree with your enemies",
            "Be afraid of those in authority",
            "Enter into conflicts with neighbours"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Understanding and cooperating with others promote peaceful and harmonious community life."
      ),

      QuizQuestion(
          question: "5. A child who refuses to play with bad friends is said to be\n(BECE 2017 Q34)",
          options: [
            "Faithful",
            "Obedient",
            "Polite",
            "Sincere"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Avoiding bad company shows obedience to good moral instruction from parents and other responsible adults."
      ),

      QuizQuestion(
          question: "6. Which of the following is an advantage of the extended family?\n(BECE 2017 Q24)",
          options: [
            "Members have privacy",
            "It provides security for its members",
            "Over-reliance on a few rich people",
            "Persistence of disputes"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The extended family provides support, care and security for its members."
      ),

      QuizQuestion(
          question: "7. One of the advantages of the extended family system is that\n(BECE 2000 Q22)",
          options: [
            "The uncle inherits the father's property",
            "The children are cared for by members of the family",
            "Old people are sent to old people's homes",
            "Girls become maidservants of their aunties"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Members of the extended family share responsibility for caring for children."
      ),

      QuizQuestion(
          question: "8. The maintenance of law and order in the nuclear family is the responsibility of\n(BECE 2017 Q30)",
          options: [
            "Parents",
            "Grandparents",
            "Children",
            "A diviner"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Parents establish and enforce rules that maintain order and discipline in the nuclear family."
      ),

      QuizQuestion(
          question: "9. One can promote good relationships and peaceful living by being\n(BECE 2001 Q6)",
          options: [
            "Violent and respectful",
            "Respectful and obedient",
            "Helpful only to relatives",
            "Kind and vocal"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Respect and obedience promote cooperation, harmony and peaceful relationships."
      ),

      QuizQuestion(
          question: "10. In order to live in harmony with family members, we must be\n(BECE 2012 Q37)",
          options: [
            "Brave",
            "Courageous",
            "Dutiful",
            "Faithful"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Being dutiful means carrying out one's responsibilities, which helps the family live in harmony."
      ),

      QuizQuestion(
          question: "11. A child who apologizes for committing an offence is said to be\n(BECE 2011 Q28)",
          options: [
            "Knowledgeable",
            "Intelligent",
            "Law-abiding",
            "Obedient"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Apologizing after wrongdoing shows obedience, humility and willingness to correct one's behaviour."
      ),

      QuizQuestion(
          question: "12. Conflicts in our society can best be resolved by\n(BECE 2000 Q34)",
          options: [
            "Being obedient to truants",
            "Obeying the scriptures",
            "Being authoritative and proud",
            "Tolerating and forgiving others"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Tolerance and forgiveness are important values for resolving conflicts peacefully."
      ),

      QuizQuestion(
          question: "13. The rules and regulations in schools are there to ensure\n(BECE 2000 Q28)",
          options: [
            "That children attend school regularly",
            "Good behaviour",
            "Proper maintenance of school property",
            "That children do their assignments"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "School rules guide pupils toward good behaviour and discipline."
      ),

      QuizQuestion(
          question: "14. Children who are obedient and live a good life are\n(BECE 2011 Q31)",
          options: [
            "A joy to society",
            "Praised by all people",
            "Known to be sent to school",
            "Sent to the elderly"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Obedient and morally upright children contribute positively to society."
      ),

      QuizQuestion(
          question: "15. School rules are obeyed in order to\n(BECE 2008 Q28)",
          options: [
            "Achieve success in sports",
            "Have good people in the community",
            "Promote peace in the school",
            "Achieve distinctions in examinations"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Obeying school rules promotes discipline, order and peace within the school."
      ),

      QuizQuestion(
          question: "16. Which of the following does not promote progress in a society?\n(BECE 2001 Q21)",
          options: [
            "Conflicts",
            "Reconciliation",
            "Respect",
            "Tolerance"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Conflict disrupts unity and development, while reconciliation, respect and tolerance promote progress."
      ),

      QuizQuestion(
          question: "17. The purpose of school rules and regulations is to\n(BECE 2003 Q21)",
          options: [
            "Get pupils punished",
            "Encourage people to become good citizens",
            "Create good conditions for work",
            "Reward obedient pupils"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "School rules create an orderly and disciplined environment that supports teaching and learning."
      ),

      QuizQuestion(
          question: "18. The nuclear family system consists of\n(BECE 2003 Q23)",
          options: [
            "Parents and grandchildren",
            "Children and parents",
            "Uncles, aunts, children and other relations",
            "Grandparents, children and parents"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "A nuclear family consists mainly of parents and their children."
      ),

      QuizQuestion(
          question: "19. To live a life of obedience means being\n(BECE 2004 Q21)",
          options: [
            "Gentle, loving and generous",
            "Respectful to parents",
            "An honest and generous person",
            "Respectful to others"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Obedience includes respecting and following the lawful instructions of parents."
      ),

      QuizQuestion(
          question: "20. Which of the following is not true about the nuclear family?\n(BECE 2018 Q30)",
          options: [
            "Parents, children and grandparents are members",
            "Parents and children are members",
            "Siblings and cousins are members",
            "Grandparents, parents and other relatives are members"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Cousins belong to the extended family rather than the nuclear family."
      ),

      QuizQuestion(
          question: "21. Running errands for those in authority portrays the child as\n(BECE 2017 Q34)",
          options: [
            "Honest",
            "Humble",
            "Obedient",
            "Sincere"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Carrying out lawful instructions and errands shows obedience."
      ),

      QuizQuestion(
          question: "22. A father shows commitment to the family by\n(BECE 2011 Q28)",
          options: [
            "Being punctual at work and helping others",
            "Travelling with his wife outside the country",
            "Being steadfast in prayers and sacrifices",
            "Treating all dependants with patience and tolerance"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "A committed father cares for all family dependants with patience, fairness and tolerance."
      ),

      QuizQuestion(
          question: "23. Carrying out instructions given by the elderly shows that one is\n(BECE 2012 Q36)",
          options: [
            "Obedient",
            "Sincere",
            "Strong",
            "Truthful"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Following lawful instructions from the elderly is a sign of obedience."
      ),

      QuizQuestion(
          question: "24. A family made up of a father, mother and grandparents is described as an\n(BECE 2016 Q21)",
          options: [
            "Extended family",
            "Monogamous family",
            "Nuclear family",
            "Polygamous family"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The inclusion of grandparents makes it an extended family."
      ),

      QuizQuestion(
          question: "25. A home where members learn their religion through oral sources is known as a\n(BECE 2018 Q29)",
          options: [
            "Christian home",
            "Islamic home",
            "Traditional home",
            "Jewish home"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Traditional religion is mainly transmitted orally through stories, songs, proverbs and customs."
      ),

      QuizQuestion(
          question: "26. One of a child's responsibilities in the home is to\n(BECE 1999 Q30)",
          options: [
            "Sweep the compound",
            "Provide his or her clothing",
            "Pay school fees",
            "Pay hospital fees"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Children can contribute to household cleanliness by sweeping the compound."
      ),

      QuizQuestion(
          question: "27. Human rights include all the following except\n(BECE 2000 Q27)",
          options: [
            "The right to life",
            "Freedom of association",
            "Freedom of worship",
            "Administering instant justice"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Administering instant justice is not a human right and may violate lawful procedures."
      ),

      QuizQuestion(
          question: "28. Love for our community should be part of our training so that we can\n(BECE 2000 Q35)",
          options: [
            "Work harder for it",
            "Become democratic",
            "Develop good skills in it",
            "Build good and happy homes"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "Love for the community encourages people to work hard for its progress and development."
      ),

      QuizQuestion(
          question: "29. Which organization in Ghana deals with human rights issues?\n(BECE 2001 Q26)",
          options: [
            "National Commission on Children",
            "National Council for Women and Development",
            "Commission on Human Rights and Administrative Justice",
            "National Commission for Civic Education"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The Commission on Human Rights and Administrative Justice handles human-rights and administrative-justice matters in Ghana."
      ),

      QuizQuestion(
          question: "30. Which of the following does not constitute a moral responsibility of a child?\n(BECE 2001 Q38)",
          options: [
            "Sweeping the classroom",
            "Working on his or her plot",
            "Worshipping God",
            "Paying school fees"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Paying school fees is mainly the responsibility of parents or guardians."
      ),

      QuizQuestion(
          question: "31. What contribution can a child make when a community school is being built?\n(BECE 2001 Q39)",
          options: [
            "Roofing the building",
            "Fetching water and sand",
            "Drawing up the building plan",
            "Cheering the workers with songs"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Fetching water and sand is a safe and practical way a child can support a community building project."
      ),

      QuizQuestion(
          question: "32. A patriotic citizen is a person who\n(BECE 2005 Q40)",
          options: [
            "Always helps the family",
            "Practises personal hygiene",
            "Always defends the nation",
            "Always worships the Creator"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Patriotism involves loyalty to and willingness to defend one's country."
      ),

      QuizQuestion(
          question: "33. As a child, your duties include all these except\n(BECE 2006 Q34)",
          options: [
            "Fetching water",
            "Weeding the compound",
            "Preparing meals",
            "Paying fees"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Paying school fees is normally the responsibility of parents or guardians."
      ),

      QuizQuestion(
          question: "34. One who loves his or her country\n(BECE 2007 Q31)",
          options: [
            "Always helps the needy",
            "Practises personal hygiene",
            "Defends the nation",
            "Always worships God"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "A patriotic person demonstrates love and loyalty by defending and supporting the nation."
      ),

      QuizQuestion(
          question: "35. The best way to live in peace in a community is to\n(BECE 2012 Q31)",
          options: [
            "Sit on the fence",
            "Keep to oneself always",
            "Understand and cooperate with others",
            "Enter into conflict with neighbours"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Understanding and cooperation help prevent conflict and promote peaceful coexistence."
      ),

      QuizQuestion(
          question: "36. Youth camps are organized purposely for the youth to\n(BECE 1999 Q27)",
          options: [
            "Fend for themselves",
            "Find their parents",
            "Learn to socialize",
            "Run away from household chores"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Youth camps help young people interact, cooperate and develop social skills."
      ),

      QuizQuestion(
          question: "37. Which of the following is not taught in religious youth organizations?\n(BECE 1999 Q35)",
          options: [
            "Serving God and the nation",
            "Leading a disciplined life",
            "Being law-abiding",
            "Using violence to demand rights"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Religious youth organizations promote discipline and peaceful conduct, not violence."
      ),

      QuizQuestion(
          question: "38. One important aim of a youth organization is to\n(BECE 2000 Q29)",
          options: [
            "Bring unity among the youth",
            "Learn dancing and merry-making",
            "Let the youth live on their own and look for jobs",
            "Oppose the views of the elderly"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Youth organizations promote unity, cooperation and fellowship among young people."
      ),

      QuizQuestion(
          question: "39. One good reason for the establishment of the Catholic Youth Organization is to\n(BECE 2005 Q15)",
          options: [
            "Serve as soldiers to defend the church",
            "Foster unity among priests",
            "Perform cultural dances in the church",
            "Teach the youth about the traditions of the church"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "The Catholic Youth Organization helps young Catholics learn the teachings, values and traditions of the Church."
      ),

      QuizQuestion(
          question: "40. The spirit of patriotism is shown best by the youth of the\n(BECE 2009 Q32)",
          options: [
            "Young People's Guild",
            "Catholic Youth Organization",
            "Ahmadiyya Muslim Youth",
            "Asafo Company"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Asafo companies traditionally defend and serve their communities, demonstrating courage and patriotism."
      ),
    ],
  ),
  "Religious & Moral Education JHS1 s4 ss1 - Islamic Prophets / Caliphs / Personalities": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Prophet Mohammed’s twelfth birthday is important because\n(BECE 2000 Q15)",
          options: [
            "There was a prophecy about his future.",
            "Halimah returned him to his parents.",
            "Amina passed away.",
            "Abdul Mutalib died."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Abdul Mutalib, Prophet Mohammed's grandfather, died when Mohammed was twelve years old."
      ),

      QuizQuestion(
          question: "2. The traditional healer does not normally charge high fees because\n(BECE 1999 Q40)",
          options: [
            "They are in the subsistence economy.",
            "They use cowries for diagnosis.",
            "Local herbs and plants are used.",
            "It will weaken the power of the medicine."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Traditional healers mainly use locally available herbs and plants, making treatment inexpensive."
      ),

      QuizQuestion(
          question: "3. Which of the following is not a patriarch?\n(BECE 2000 Q12)",
          options: [
            "Abraham",
            "Isaac",
            "Jacob",
            "Noah"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The biblical patriarchs are Abraham, Isaac and Jacob."
      ),

      QuizQuestion(
          question: "4. From the age of eight, Mohammed was brought up by\n(BECE 2001 Q2)",
          options: [
            "Halimah.",
            "Abdul Mutalib.",
            "Khadijah.",
            "Abu Talib."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "After the death of Abdul Mutalib, Prophet Mohammed was cared for by his uncle Abu Talib."
      ),

      QuizQuestion(
          question: "5. A Muslim is a person who\n(BECE 2001 Q12)",
          options: [
            "Is at peace with God and his neighbour.",
            "Can recite the whole Qur’an.",
            "Fasts during the Ramadan.",
            "Visits Mecca every year."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "A Muslim is one who submits to Allah and lives in peace with God and fellow human beings."
      ),

      QuizQuestion(
          question: "6. The second Caliph was\n(BECE 2003 Q4)",
          options: [
            "Umar.",
            "Abu Bakr.",
            "Ali.",
            "Uthman."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Umar ibn Al-Khattab was the second rightly guided Caliph."
      ),

      QuizQuestion(
          question: "7. The title Al-Faruq given to Umar by the Holy Prophet Mohammed means\n(BECE 2002B Q7)",
          options: [
            "A strong believer in the principles and teaching of Islam.",
            "Lover of Islam.",
            "Defender of faith.",
            "One who can differentiate between right and wrong."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Al-Faruq means one who distinguishes between truth and falsehood."
      ),

      QuizQuestion(
          question: "8. Blessed are the merciful for they shall\n(BECE 1999 Q17)",
          options: [
            "See God.",
            "Obtain mercy.",
            "Inherit the earth.",
            "Be called the children of God."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "According to the Beatitudes, the merciful shall obtain mercy."
      ),

      QuizQuestion(
          question: "9. The blind man Jesus healed was called\n(BECE 2000 Q17)",
          options: [
            "Bartholomew.",
            "Barabbas.",
            "Bartimaeus.",
            "Nicodemus."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Jesus healed blind Bartimaeus near Jericho."
      ),

      QuizQuestion(
          question: "10. Jesus Christ began his ministry at the age of\n(BECE 2001 Q2)",
          options: [
            "12",
            "25",
            "30",
            "33"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Jesus began His public ministry when He was about thirty years old."
      ),

      QuizQuestion(
          question: "11. The sermon on the Mount was delivered by\n(BECE 2002B Q6)",
          options: [
            "Jesus.",
            "Moses.",
            "Joshua.",
            "Paul."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Jesus delivered the famous Sermon on the Mount."
      ),

      QuizQuestion(
          question: "12. On which day did Jesus resurrect?\n(BECE 2002B Q5)",
          options: [
            "Ascension Day",
            "Good Friday",
            "Easter Sunday",
            "Palm Sunday"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Jesus rose from the dead on Easter Sunday."
      ),

      QuizQuestion(
          question: "13. ... can be found in the book of\n(BECE 2002A Q19)",
          options: [
            "Genesis, Exodus and Numbers.",
            "Exodus, Deuteronomy and Leviticus.",
            "Genesis, Deuteronomy and Numbers.",
            "Exodus, Leviticus and Deuteronomy."
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Answer based on the provided BECE source."
      ),

      QuizQuestion(
          question: "14. In Islam if one is pious it means he\n(BECE 2002B Q13)",
          options: [
            "Sees God.",
            "Reads about God.",
            "Understands God.",
            "Fears God."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Piety (Taqwa) means fearing Allah and obeying Him."
      ),

      QuizQuestion(
          question: "15. Whose preaching ministry urged the Jews to bear fruits that befit repentance?\n(BECE 2003 Q4)",
          options: [
            "Jesus Christ",
            "Paul",
            "Peter",
            "John the Baptist"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "John the Baptist preached repentance and urged people to bear fruits worthy of repentance."
      ),

      QuizQuestion(
          question: "16. The Caliph Abu Bakr was referred to as Siddiq by Mohammed due to his\n(BECE 2003 Q5)",
          options: [
            "Courage.",
            "Tolerance.",
            "Truthfulness.",
            "Generosity."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "As-Siddiq means 'the truthful one'."
      ),

      QuizQuestion(
          question: "17. All those who took custody of Prophet Mohammed were happy with him because he\n(BECE 2002B Q7)",
          options: [
            "Had a unique character.",
            "Was a hardworking young man.",
            "Was an orphan at a tender age.",
            "Was prayerful."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Prophet Mohammed was loved because of his excellent character."
      ),

      QuizQuestion(
          question: "18. In the traditional society, one could become an ancestor when one\n(BECE 2002B Q9)",
          options: [
            "Visited the shrine always.",
            "Offered sacrifices to the gods.",
            "Died a natural death.",
            "Married the widow of another man."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "In African Traditional Religion, dying a natural and honourable death is a requirement for becoming an ancestor."
      ),

      QuizQuestion(
          question: "19. The moral lesson from the life of Prophet Mohammed that one should emulate is the habit of\n(BECE 2008 Q15)",
          options: [
            "Faithfulness.",
            "Punctuality.",
            "Truthfulness.",
            "Sacrifice."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Prophet Mohammed was widely known for his truthfulness."
      ),

      QuizQuestion(
          question: "20. Caliph Abubakar led prayers in the lifetime of Prophet Mohammed because the Prophet\n(BECE 2008 Q16)",
          options: [
            "Was tired.",
            "Was sick.",
            "Wanted to test him.",
            "Had travelled."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Prophet Mohammed asked Abu Bakr to lead the prayers during his illness."
      ),
      QuizQuestion(
          question: "21. \"Blessed are the meek for they shall\"\n(BECE 2008 Q17)",
          options: [
            "Obtain mercy.",
            "See God.",
            "Inherit the earth.",
            "Be satisfied."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "According to the Beatitudes, the meek shall inherit the earth."
      ),

      QuizQuestion(
          question: "22. The washing of the feet of His disciples offers a lesson in\n(BECE 2008 Q20)",
          options: [
            "Expressing love to others.",
            "Rendering service to others.",
            "Being helpful to others.",
            "Obedience to others."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Jesus washed His disciples' feet to teach humility and service."
      ),

      QuizQuestion(
          question: "23. The dreams of Joseph focused on\n(BECE 2009 Q6)",
          options: [
            "Leadership.",
            "Friendship.",
            "Mastership.",
            "Stewardship."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Joseph's dreams revealed that he would become a leader over his family."
      ),

      QuizQuestion(
          question: "24. Torgbe Tsali gave his jaws to his people as a\n(BECE 2009 Q8)",
          options: [
            "Token to be worshipped.",
            "Powerful instrument of divination.",
            "Foundation stone for shrines.",
            "Present to the kings for their fight."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Torgbe Tsali's jaws became a powerful instrument of divination."
      ),

      QuizQuestion(
          question: "25. A traditional chief may be destooled if he\n(BECE 2009 Q12)",
          options: [
            "Becomes a born-again Christian.",
            "Takes many wives.",
            "Does not give birth to children.",
            "Misuses stool property."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "A chief may be destooled for misusing stool property."
      ),

      QuizQuestion(
          question: "26. The immediate cause of Mohammed’s departure to Medina was\n(BECE 2009 Q13)",
          options: [
            "Invitation from Yathrib.",
            "Harsh conditions in Mecca.",
            "Plan to kill him.",
            "Desire to spread Islam."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The Quraysh planned to kill Prophet Mohammed, leading to the Hijrah."
      ),

      QuizQuestion(
          question: "27. Which of the following were not among the twelve disciples?\n(BECE 2009 Q20)",
          options: [
            "Matthew and James",
            "Simon and Andrew",
            "Peter and John",
            "Paul and Barnabas"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Paul and Barnabas were not among Jesus' original twelve disciples."
      ),

      QuizQuestion(
          question: "28. According to Jesus, the summary of the ten commandments is\n(BECE 2009 Q29)",
          options: [
            "Love for God and one's neighbour.",
            "Obedience to parents and the elderly.",
            "Observing the Sabbath and keeping it holy.",
            "Worshipping only God and not gods."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Jesus summarized the commandments as loving God and loving one's neighbour."
      ),

      QuizQuestion(
          question: "29. \"Blessed are the peacemakers for they shall\"\n(BECE 2011 Q7)",
          options: [
            "See God.",
            "Be called sons of God.",
            "Inherit the earth.",
            "Obtain mercy."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The Beatitudes say peacemakers shall be called the children of God."
      ),

      QuizQuestion(
          question: "30. The name Moses means\n(BECE 2011 Q8)",
          options: [
            "Washed in water.",
            "Drawn out of water.",
            "Abandoned with water.",
            "Baptised with water."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Moses means 'drawn out of water' because Pharaoh's daughter drew him from the Nile."
      ),

      QuizQuestion(
          question: "31. Which of the following disciples of Jesus was a tax collector?\n(BECE 2011 Q19)",
          options: [
            "Bartholomew",
            "Joseph and John",
            "Peter and Matthew",
            "Judas and Thomas"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Matthew was a tax collector before becoming a disciple of Jesus."
      ),

      QuizQuestion(
          question: "32. Which of the following is responsible for morality in traditional society?\n(BECE 2011 Q25)",
          options: [
            "Linguist",
            "Gong-gong beater",
            "Chief priest",
            "Fetish priest"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "The chief priest is responsible for enforcing morality and religious customs."
      ),

      QuizQuestion(
          question: "33. God made a covenant with\n(BECE 2003 Q6)",
          options: [
            "Isaac.",
            "Abraham.",
            "Jacob.",
            "Joshua."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "God established His covenant with Abraham."
      ),

      QuizQuestion(
          question: "34. Which of the following persons knew God 'face to face'?\n(BECE 2003 Q9)",
          options: [
            "Abraham.",
            "Isaac.",
            "Jacob.",
            "Moses."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The Bible describes Moses as speaking with God face to face."
      ),

      QuizQuestion(
          question: "35. Joseph was hated by his brothers because\n(BECE 2003 Q13)",
          options: [
            "Jacob promised him of inheritance.",
            "He loved his father very much.",
            "Of his prophetic dreams.",
            "He was gentle and handsome."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Joseph's dreams made his brothers jealous and they hated him."
      ),

      QuizQuestion(
          question: "36. The patriarch described as a 'great man of faith' was\n(BECE 2004 Q2)",
          options: [
            "Jacob.",
            "David.",
            "Moses.",
            "Abraham."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Abraham is known as the father of faith."
      ),

      QuizQuestion(
          question: "37. Which of the following people was not a disciple of Jesus?\n(BECE 2004 Q3)",
          options: [
            "Paul",
            "Peter",
            "Matthew",
            "James"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Paul became an apostle after Jesus' resurrection and was not among the original disciples."
      ),

      QuizQuestion(
          question: "38. Abraham was known for his great faith because he\n(BECE 2005 Q12)",
          options: [
            "Refused the idols of Canaan.",
            "Was willing to sacrifice his son to God.",
            "Built an altar to worship God.",
            "Agreed to leave his homeland."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Abraham demonstrated great faith by being willing to sacrifice Isaac."
      ),
      QuizQuestion(
          question: "39. The tribes of Israel derived their names from the sons of\n(BECE 2005 Q18)",
          options: [
            "Abraham.",
            "Jacob.",
            "Joseph.",
            "Isaac."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The twelve tribes of Israel were named after the sons of Jacob."
      ),
      QuizQuestion(
          question: "40. Israel came out of slavery in Egypt under the leadership of\n(BECE 2005 Q19)",
          options: [
            "Joshua.",
            "Joseph.",
            "Abraham.",
            "Moses."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Moses led the Israelites out of Egypt during the Exodus."
      ),
      QuizQuestion(
          question: "41. Torgbe Tsali is remembered for\n(BECE 2006 Q6)",
          options: [
            "Cruelty to the Anlos.",
            "Freeing his people from oppressions.",
            "Selling his people into slavery.",
            "Allowing missionaries to preach to his people."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Torgbe Tsali sacrificed himself to free the Anlo people from oppression."
      ),

      QuizQuestion(
          question: "42. The second Caliph of Islam was\n(BECE 2006 Q6)",
          options: [
            "Abubakar.",
            "Umar.",
            "Ali.",
            "Uthman."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Umar ibn Al-Khattab was the second rightly guided Caliph."
      ),

      QuizQuestion(
          question: "43. God gave Noah and his people the rainbow as a sign of the covenant that\n(BECE 2006 Q9)",
          options: [
            "The earth would never again be destroyed by flood.",
            "Idol worshippers would be destroyed.",
            "Heavenly bodies would always give light.",
            "Humankind would not speak the same language."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The rainbow was God's sign that He would never again destroy the earth with a flood."
      ),

      QuizQuestion(
          question: "44. A dead person is not regarded as an ancestor if he or she\n(BECE 2006 Q10)",
          options: [
            "Lived for more than forty years.",
            "Died through an accident.",
            "Married and had many children.",
            "Died while defending his community."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "In African Traditional Religion, people who die unnatural deaths are generally not regarded as ancestors."
      ),

      QuizQuestion(
          question: "45. The burning bush that Moses saw attracted him because\n(BECE 2006 Q14)",
          options: [
            "God spoke to him from it.",
            "The place was a holy ground.",
            "The fire was not consuming the bush.",
            "God wanted to save Israel through him."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Moses was amazed because the bush burned without being consumed."
      ),

      QuizQuestion(
          question: "46. According to the Qur'an, the Torah was revealed through\n(BECE 2006 Q18)",
          options: [
            "Ibrahim.",
            "Mohammed.",
            "Musa.",
            "Ishmael."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Allah revealed the Torah to Prophet Musa (Moses)."
      ),

      QuizQuestion(
          question: "47. According to Jesus, the poor in spirit are blessed because they shall\n(BECE 2006 Q19)",
          options: [
            "Inherit the Kingdom of heaven.",
            "Be comforted.",
            "Inherit the earth.",
            "Be called the sons of God."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The first Beatitude states that the poor in spirit shall inherit the Kingdom of Heaven."
      ),

      QuizQuestion(
          question: "48. The Qur'an was revealed to Mohammed through\n(BECE 2007 Q2)",
          options: [
            "Abu Bakr.",
            "Angel Jibril.",
            "Torgbe Tsali.",
            "Angel Mika-il."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Angel Jibril (Gabriel) revealed the Qur'an to Prophet Mohammed."
      ),

      QuizQuestion(
          question: "49. God saved the believers from the flood through\n(BECE 2007 Q8)",
          options: [
            "Abraham.",
            "Noah.",
            "Moses.",
            "Joseph."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "God instructed Noah to build the ark to save the believers."
      ),

      QuizQuestion(
          question: "50. Caliph Abu Bakr is remembered for\n(BECE 2007 Q9)",
          options: [
            "Going on pilgrimage with the prophet.",
            "Marrying the prophet’s daughter.",
            "Compiling the Qur’an into a book.",
            "Defending the prophet in Mecca."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "During Abu Bakr's caliphate, the Qur'an was compiled into one book."
      ),

      QuizQuestion(
          question: "51. Jesus came into the world so that people may\n(BECE 2013 Q11)",
          options: [
            "Forgive their enemies.",
            "Have eternal life.",
            "Overcome problems.",
            "Become wealthy."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Jesus came so that all who believe in Him may have eternal life."
      ),

      QuizQuestion(
          question: "52. God's covenant with the patriarch is associated with\n(BECE 2013 Q12)",
          options: [
            "Abraham.",
            "Joseph.",
            "Joshua.",
            "Moses."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "God's covenant was made with Abraham."
      ),

      QuizQuestion(
          question: "53. By facing the wild beast, Toha Zie\n(BECE 2013 Q14)",
          options: [
            "Helped the poor in their community.",
            "Led his people to defeat their enemies.",
            "Risked his life for his people.",
            "Preached peace to his people."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Toha Zie became famous for risking his life to save his people from a dangerous beast."
      ),

      QuizQuestion(
          question: "54. Israel came out of slavery in Egypt under the leadership of\n(BECE 2013 Q18)",
          options: [
            "Abraham.",
            "Joseph.",
            "Joshua.",
            "Moses."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Moses led the Israelites out of slavery in Egypt."
      ),

      QuizQuestion(
          question: "55. Egbnor Abor is remembered for sacrificing his life to\n(BECE 2013 Q19)",
          options: [
            "Ensure victory at war.",
            "Free his people from slavery.",
            "Save children from hunger.",
            "Ward off an epidemic."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Egbnor Abor sacrificed his life to free his people from slavery."
      ),

      QuizQuestion(
          question: "56. The twelfth son of Jacob was\n(BECE 2014 Q6)",
          options: [
            "Benjamin.",
            "Joseph.",
            "Dan.",
            "Gad."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Benjamin was the youngest and twelfth son of Jacob."
      ),

      QuizQuestion(
          question: "57. Moses led the Israelites through the wilderness for\n(BECE 2014 Q7)",
          options: [
            "Forty years.",
            "Forty months.",
            "Fifty years.",
            "Fifty months."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The Israelites wandered in the wilderness for forty years."
      ),

      QuizQuestion(
          question: "58. Which of the following people was commanded by God to build an ark?\n(BECE 2015 Q1)",
          options: [
            "Joseph",
            "Jacob",
            "Noah",
            "David"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "God commanded Noah to build the ark before the flood."
      ),

      QuizQuestion(
          question: "59. Who gave the tomb in which Jesus was buried?\n(BECE 2015 Q2)",
          options: [
            "Simon of Cyrene",
            "Joseph of Arimathea",
            "Nicodemus",
            "Zebedee"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Joseph of Arimathea provided his own tomb for Jesus' burial."
      ),

      QuizQuestion(
          question: "60. Egbnor Abor is fondly remembered by the Fante for\n(BECE 2018 Q8)",
          options: [
            "His miraculous powers.",
            "Commanding the golden stool.",
            "His resurrection from death.",
            "Saving his people."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Egbnor Abor is remembered for sacrificing himself to save his people."
      ),
      QuizQuestion(
          question: "61. The spiritual leader who was also a successor of Prophet Mohammed (SAW) was\n(BECE 2019 Q6)",
          options: [
            "Caliph.",
            "Hafiz.",
            "Imam.",
            "Sheikh."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "A Caliph is the political and spiritual successor to Prophet Mohammed."
      ),

      QuizQuestion(
          question: "62. Egbnor Abor was honoured with the Aboakyer festival because of his\n(BECE 2019 Q7)",
          options: [
            "Magical deed.",
            "Death for the land.",
            "Killing of the beast.",
            "Good leadership."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Egbnor Abor is honoured for sacrificing his life for the welfare of his people."
      ),

      QuizQuestion(
          question: "63. Toha Zie became famous because\n(BECE 2019 Q8)",
          options: [
            "Of his exploits in war.",
            "He was a hunter.",
            "He was considered as a god.",
            "He saved his people from beasts."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Toha Zie became famous for saving his people from dangerous wild beasts."
      ),

      QuizQuestion(
          question: "64. Toha Zie was nicknamed the red hunter because of his\n(BECE 2020 Q7)",
          options: [
            "Character.",
            "Complexion.",
            "Kindness.",
            "Wisdom."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Toha Zie was called the Red Hunter because of his reddish complexion."
      ),

      QuizQuestion(
          question: "65. The major event that led to the conversion of Umar to Islam was his\n(BECE 2020 Q8)",
          options: [
            "Mohammed’s flight into Medina.",
            "Hearing of the flight.",
            "The death of Caliph Uthman.",
            "The preaching of Abu Bakr."
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "According to the provided BECE source, the correct answer is the preaching of Abu Bakr."
      ),

      QuizQuestion(
          question: "66. The name Abraham means\n(BECE 2020 Q9)",
          options: [
            "Exalted father.",
            "Favoured father.",
            "Traditional father.",
            "Father of a multitude."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "God changed Abram's name to Abraham, meaning 'father of a multitude'."
      ),

      QuizQuestion(
          question: "67. The seeds that fell along the path in the Parable of the Sower were\n(BECE 2021 Q3)",
          options: [
            "Blown away by the wind.",
            "Eaten by birds.",
            "Choked by thorns.",
            "Scorched by the sun."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "In the Parable of the Sower, birds ate the seeds that fell along the path."
      ),

      QuizQuestion(
          question: "68. One virtue that can be emulated from the lives of Egya Ahor and Tweneboa Kodua is\n(BECE 2021 Q5)",
          options: [
            "Justice.",
            "Love.",
            "Hard work.",
            "Respect."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Both personalities demonstrated love and self-sacrifice for their people."
      ),

      QuizQuestion(
          question: "69. The Patriarch who took his brother’s birth right and blessings was\n(BECE 2021 Q12)",
          options: [
            "Esau.",
            "Joseph.",
            "Jacob.",
            "Isaac."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Jacob obtained Esau's birthright and later received his father's blessing."
      ),

      QuizQuestion(
          question: "70. Muslims believe that God’s messages to His prophets were declared through His\n(BECE 2021 Q25)",
          options: [
            "Angels.",
            "Caliphs.",
            "Prophets.",
            "Diviners."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Allah delivered His revelations to prophets through angels, especially Angel Jibril."
      ),

      QuizQuestion(
          question: "71. Joseph was hated by his brothers because\n(BECE 2016 Q1)",
          options: [
            "He was loved by his father very much.",
            "He was gentle and handsome.",
            "Jacob was a man of tolerance.",
            "Of his prophetic dreams."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Joseph's dreams made his brothers jealous, causing them to hate him."
      ),

      QuizQuestion(
          question: "72. Who provided the tomb in which Jesus was buried?\n(BECE 2016 Q5)",
          options: [
            "Joseph of Arimathea",
            "Nicodemus",
            "Simon of Cyrene",
            "Zebedee"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Joseph of Arimathea gave his own new tomb for the burial of Jesus."
      ),

      QuizQuestion(
          question: "73. The second rightly guided caliph in Islam was\n(BECE 2016 Q6)",
          options: [
            "Abu Bakr Al Siddiq.",
            "Umar Ibn Al-Khattab.",
            "Uthman Ibn Affan.",
            "Ali Ibn Abu Talib."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Umar Ibn Al-Khattab succeeded Abu Bakr as the second rightly guided Caliph."
      ),

      QuizQuestion(
          question: "74. By facing the wild beast, Toha Zie\n(BECE 2016 Q7)",
          options: [
            "Led his people to be defeated.",
            "Preached peace to his people.",
            "Helped the poor.",
            "Risked his life for his people."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Toha Zie risked his own life in order to save his people."
      ),

      QuizQuestion(
          question: "75. The teachings of Prophet Mohammed are found in the\n(BECE 2023 Q6)",
          options: [
            "Kalima.",
            "Hadith.",
            "Bible.",
            "Quran."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The Hadith contains the sayings and teachings of Prophet Mohammed."
      ),

      QuizQuestion(
          question: "76. Which of the following people was not a disciple of Jesus?\n(BECE 2023 Q12)",
          options: [
            "Paul",
            "Peter",
            "Matthew",
            "James"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Paul became an apostle after Jesus' resurrection and was not among the original twelve disciples."
      ),

      QuizQuestion(
          question: "77. God's covenant with the patriarch is associated with\n(BECE 2023 Q13)",
          options: [
            "Abraham.",
            "Joseph.",
            "Joshua.",
            "Moses."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "God made His covenant with Abraham."
      ),

      QuizQuestion(
          question: "78. Egya Ahor is remembered for sacrificing his life to\n(BECE 2023 Q19)",
          options: [
            "Ensure victory at war.",
            "Free his people from slavery.",
            "Save children from hunger.",
            "Ward off an epidemic."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "Egya Ahor sacrificed his life to ensure victory for his people during war."
      ),

      QuizQuestion(
          question: "79. The first Christian Martyr was\n(BECE 2017 Q15)",
          options: [
            "Ali.",
            "Stephen.",
            "Ibrahim.",
            "Munah."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Stephen was the first Christian martyr recorded in the Bible."
      ),

      QuizQuestion(
          question: "80. Moses led the Israelites through the wilderness for\n(BECE 2018 Q6)",
          options: [
            "Forty months.",
            "Forty years.",
            "Fifty years.",
            "Fifty months."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The Israelites wandered in the wilderness for forty years before entering Canaan."
      ),QuizQuestion(
          question: "81. Holy Spirit\n(BECE 2022 Q34)",
          options: [
            "Holy Spirit",
            "God",
            "Neighbours",
            "Religious leaders"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "According to the provided BECE source, the correct answer is Holy Spirit."
      ),

      QuizQuestion(
          question: "82. Who provided the tomb in which Jesus Christ and mercy is the parable of\n(BECE 2022 Q35)",
          options: [
            "Mustard Seed",
            "Lost Coin",
            "Ten Virgins",
            "Good Samaritan"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "According to the provided BECE source, the correct answer is Good Samaritan."
      ),

      QuizQuestion(
          question: "83. Golgotha was the place where Jesus Christ\n(BECE 2023 Q8)",
          options: [
            "Fed the five thousand men.",
            "Fasted for forty days.",
            "Prayed in the night.",
            "Was crucified."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Golgotha was the place where Jesus Christ was crucified."
      ),

      QuizQuestion(
          question: "84. Which of the following virtues can be learnt from the life stories of Joseph?\n(BECE 2023 Q17)",
          options: [
            "Reconciliation.",
            "Retribution.",
            "Repentance.",
            "Reformation."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Joseph forgave and reconciled with his brothers, teaching the virtue of reconciliation."
      ),

      QuizQuestion(
          question: "\"85. And who is my neighbour?\" Jesus answered this question with the parable of the\n(BECE 2023 Q38)",
          options: [
            "Mustard seed.",
            "Prodigal son.",
            "Wicked Tenants.",
            "Good Samaritan."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Jesus answered the question 'Who is my neighbour?' with the Parable of the Good Samaritan."
      ),
    ],
  ),
  "Religious & Moral Education JHS1 s5 ss1 - Religious Practices": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Mourners from the cemetery wash their hands before entering funeral house again to\n(BECE 1999 Q11)",
          options: [
            "Break relations with the dead.",
            "Shows that they are among the living.",
            "Announce their return from the cemetery.",
            "Cleanse themselves from any curse."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Washing the hands after returning from the cemetery symbolizes breaking all relations with the dead."
      ),

      QuizQuestion(
          question: "2. Traditional religion is practiced in order to\n(BECE 2001 Q7)",
          options: [
            "Instill discipline.",
            "Worship idols.",
            "Preserve African culture.",
            "Disregard other religions."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Traditional religion helps preserve African cultural values, beliefs and practices."
      ),

      QuizQuestion(
          question: "3. Akwesidae according to the Akan calendar is\n(BECE 2001 Q11)",
          options: [
            "A day that marks the beginning of the month.",
            "The first Sunday that marks the beginning of the month.",
            "The Sunday that marks the 42nd day of the month.",
            "A day on which the Golden Stool descended."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Akwasidae is celebrated every 42 days according to the Akan traditional calendar."
      ),

      QuizQuestion(
          question: "4. Palm Sunday is observed by Christians to remember the\n(BECE 1999 Q2)",
          options: [
            "Birth and baptism of Christ.",
            "Resurrection and appearance of Christ.",
            "Joyful journey of Christ into Jerusalem.",
            "Baptism of the Holy Spirit."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Palm Sunday commemorates Jesus Christ's triumphant entry into Jerusalem."
      ),

      QuizQuestion(
          question: "5. The main role of angels in Islam is to\n(BECE 2001 Q15)",
          options: [
            "Reveal Allah's orders and messages to His Prophets.",
            "Help Allah's Prophets to understand the Qur'an.",
            "Explain dreams to the people.",
            "Give spiritual power for the writing of the Qur'an."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Angels are Allah's messengers who convey His revelations and commands to His Prophets."
      ),

      QuizQuestion(
          question: "6. Constant prayer among Muslims helps them to\n(BECE 2002B Q15)",
          options: [
            "Be tolerant and intelligent.",
            "Become steadfast and patriotic.",
            "Have humor and peace.",
            "Become clean and upright in life."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Regular prayer promotes purity, discipline and righteous living."
      ),

      QuizQuestion(
          question: "7. The burial of pieces of hair, fingernails and toenails of a corpse at his hometown signifies that\n(BECE 1999 Q10)",
          options: [
            "There is life after death.",
            "The spirit has contact with the living.",
            "Lesser gods want the spirit.",
            "Witches are powerful in one's hometown."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "The practice signifies that the spirit of the deceased maintains contact with the living."
      ),

      QuizQuestion(
          question: "8. The first book in the Bible is called\n(BECE 2000 Q20)",
          options: [
            "Genesis.",
            "Deuteronomy.",
            "Exodus.",
            "Revelation."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Genesis is the first book of the Bible."
      ),

      QuizQuestion(
          question: "9. The Islamic practice where wealthy Muslims cater for the needs of the poor and needy is\n(BECE 2002A Q7)",
          options: [
            "Hajj.",
            "Offers food and living things to the gods.",
            "Sings dirges to the dead.",
            "Wins a fortune."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "The source text appears to contain OCR errors. The original BECE question refers to Zakat, but the options have been preserved exactly as provided."
      ),

      QuizQuestion(
          question: "10. All the religions in Ghana believe in\n(BECE 1999 Q4)",
          options: [
            "Jesus Christ.",
            "The Bible.",
            "The prophet Mohammed.",
            "The supreme God."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The major religions in Ghana believe in the existence of a Supreme Being."
      ),

      QuizQuestion(
          question: "11. The third Islamic daily prayer is\n(BECE 2000 Q14)",
          options: [
            "Asr.",
            "Zuhr.",
            "Fajr.",
            "Maghrib."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Asr is the third of the five compulsory daily prayers in Islam."
      ),

      QuizQuestion(
          question: "12. To become a Christian, one must first\n(BECE 2000 Q16)",
          options: [
            "Say the Lord's prayer.",
            "Recite the Apostle's creed.",
            "Be confirmed.",
            "Be baptized."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Baptism is the Christian rite of initiation into the faith."
      ),

      QuizQuestion(
          question: "13. How many times do Muslims go round the Ka'ba during Hajj?\n(BECE 2001 Q17)",
          options: [
            "Four times.",
            "Five times.",
            "Seven times.",
            "Ten times."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Pilgrims perform Tawaf by circling the Ka'ba seven times."
      ),

      QuizQuestion(
          question: "14. In traditional society, taboos help people to\n(BECE 2002B Q14)",
          options: [
            "Behave well.",
            "Believe in their god.",
            "Know their God.",
            "Perform sacrifices."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Taboos regulate behaviour and promote discipline within society."
      ),

      QuizQuestion(
          question: "15. Which of the religion believes that God moved from the earth because of the activities of mankind?\n(BECE 2000 Q13)",
          options: [
            "Christianity",
            "Islam",
            "Traditionalist",
            "Hinduism"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "African Traditional Religion teaches that God withdrew from human beings because of their wrongdoing."
      ),
      QuizQuestion(
          question: "16. The pillar of faith in Islam which expresses charity is\n(BECE 2000 Q9)",
          options: [
            "Salat.",
            "Sawn.",
            "Zakat.",
            "Kalimat."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Zakat is the pillar of Islam that requires Muslims to give charity to the poor and needy."
      ),

      QuizQuestion(
          question: "17. Salat is to prayer as charity is to\n(BECE 2001 Q10)",
          options: [
            "Zakat",
            "Shahadah",
            "Sawn",
            "Hajj"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Zakat refers to the compulsory giving of charity in Islam."
      ),

      QuizQuestion(
          question: "18. The Muslim prayer observed between Asr and Isha is\n(BECE 1999 Q5)",
          options: [
            "Zuhr",
            "Jumu'ah",
            "Idd",
            "Maghrib"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Maghrib is the prayer offered immediately after sunset, between Asr and Isha."
      ),

      QuizQuestion(
          question: "19. Muslims pray five times a day in order to\n(BECE 2000 Q10)",
          options: [
            "Be known in the community.",
            "Avoid evil and bad actions.",
            "Dominate world affairs.",
            "Be role models in society."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Regular prayer helps Muslims avoid sinful acts and remain conscious of Allah."
      ),

      QuizQuestion(
          question: "20. Kente weaving is popular among the\n(BECE 1999 Q13)",
          options: [
            "Asante.",
            "Kwebu.",
            "Fante.",
            "Akwapim."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Kente weaving originated among the Asante people of Ghana."
      ),

      QuizQuestion(
          question: "21. Uthman B. Affan standardized the Qur'an in order to\n(BECE 2000 Q19)",
          options: [
            "Bring it into one volume.",
            "Avoid the omission of some verse.",
            "Give the Qur'an the same reading.",
            "Stop the fighting among Muslims."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Caliph Uthman standardized the Qur'an to ensure a uniform recitation throughout the Muslim community."
      ),

      QuizQuestion(
          question: "22. The system by which a drink is poured to the gods and the Supreme beings is known as\n(BECE 2000 Q18)",
          options: [
            "Sacrifice",
            "Thankfulness",
            "Worship",
            "Libation"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Libation is the ritual pouring of drink as an offering to God, deities and ancestors."
      ),

      QuizQuestion(
          question: "23. Christians believe in Jesus Christ because He\n(BECE 2002A Q8)",
          options: [
            "Was given birth to by a virgin.",
            "Came to save humankind from their sins.",
            "Overcame death on the holy cross.",
            "Could perform many miracle."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Christians believe Jesus came to save humanity from sin through His death and resurrection."
      ),

      QuizQuestion(
          question: "24. Palm Sunday is celebrated to mark the\n(BECE 2002A Q11)",
          options: [
            "Birth of Christ.",
            "Outpouring of the Holy Spirit.",
            "Joyful journey of Jesus into Jerusalem.",
            "Resurrection of Jesus from the dead."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Palm Sunday commemorates Jesus' triumphant entry into Jerusalem."
      ),

      QuizQuestion(
          question: "25. The traditionalist believes that destiny can be changed if he\n(BECE 2002A Q13)",
          options: [
            "Is born again into Christianity.",
            "Could consult the gods.",
            "Become a wizard.",
            "Is well educated."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Traditional believers hold that consulting the gods can influence or change one's destiny."
      ),

      QuizQuestion(
          question: "26. The best way to pray during worship is to\n(BECE 2002A Q17)",
          options: [
            "Face the east and in reverence.",
            "Kneel with arms open.",
            "Be humble and sincere.",
            "Remove your sandals."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "True worship requires humility and sincerity rather than outward posture."
      ),

      QuizQuestion(
          question: "27. The Islamic practice by which wealthy Muslims show concern for the poor and needy is\n(BECE 2002A Q18)",
          options: [
            "Tawaf",
            "Zakat",
            "Hajj",
            "Salat"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Zakat is the compulsory charity that supports the poor and needy."
      ),

      QuizQuestion(
          question: "28. A Muslim performs Tayammum when he\n(BECE 2002A Q20)",
          options: [
            "Is late to the mosque.",
            "Is about to marry.",
            "Cannot find water.",
            "Meets the Imam in the mosque."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Tayammum is dry ablution performed when water is unavailable or cannot be used."
      ),

      QuizQuestion(
          question: "29. Which of the following is not a revealed book in Islam?\n(BECE 2002B Q10)",
          options: [
            "Hadith",
            "Injil",
            "Zabur",
            "Taurah"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Hadith contains the sayings and actions of Prophet Muhammad and is not one of the revealed scriptures."
      ),

      QuizQuestion(
          question: "30. Zuhr is one of the five compulsory prayers of Muslims which is observed\n(BECE 2002B Q11)",
          options: [
            "From dawn to sunshine.",
            "When the sun is high in the sky.",
            "Late in the afternoon.",
            "An hour after sunset."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Zuhr is the midday prayer, observed after the sun passes its highest point."
      ),
      QuizQuestion(
          question: "31. All the three main religions in Ghana believe\n(BECE 2002B Q12)",
          options: [
            "In ancestral worship.",
            "That God is everywhere.",
            "In being saved for salvation.",
            "That dwarfs exist in forests."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Christianity, Islam and African Traditional Religion all believe that God is omnipresent."
      ),

      QuizQuestion(
          question: "32. Constant prayer among Muslims helps them to\n(BECE 2002B Q15)",
          options: [
            "Be tolerant and intelligent.",
            "Become steadfast and patriotic.",
            "Have humor and peace.",
            "Become clean and upright in life."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Regular prayer develops spiritual discipline and encourages upright living."
      ),

      QuizQuestion(
          question: "33. The Traditional believer communicates with God through\n(BECE 2002B Q16)",
          options: [
            "Sacrifices.",
            "Purification rites.",
            "Libation.",
            "Spirit possessions."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Libation is a common means by which traditional believers communicate with God, the gods and the ancestors."
      ),

      QuizQuestion(
          question: "34. The essence of the holy communion is to\n(BECE 2002B Q17)",
          options: [
            "Give thanks to God.",
            "Remember Christian fellowship.",
            "Remember the saving act of Jesus.",
            "Remember Jesus's teaching on sharing."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Holy Communion commemorates the sacrificial death of Jesus Christ for the salvation of humanity."
      ),

      QuizQuestion(
          question: "35. The Islamic practice of committing the whole Qur'an to memory is\n(BECE 2002B Q19)",
          options: [
            "Hudah.",
            "Hafiz.",
            "Qurra.",
            "Tadjwid."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "A Hafiz is a Muslim who has memorized the entire Qur'an."
      ),

      QuizQuestion(
          question: "36. Traditional believers wear charms or talisman\n(BECE 2003 Q8)",
          options: [
            "To look attractive.",
            "For special protection.",
            "To be able to fight in the market.",
            "For longer life."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Charms and talismans are traditionally believed to provide spiritual protection."
      ),

      QuizQuestion(
          question: "37. Fishermen all over the country do not go to sea on\n(BECE 2003 Q9)",
          options: [
            "Tuesday.",
            "Friday.",
            "Saturday.",
            "Sunday."
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "According to the provided BECE source, Friday is observed as the day fishermen do not go to sea."
      ),

      QuizQuestion(
          question: "38. To the traditional believers, the next in importance to the Supreme Being are the\n(BECE 2003 Q20)",
          options: [
            "Lesser gods.",
            "Earth goddess.",
            "Ancestral spirits.",
            "Spirits in plants and animals."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "In African Traditional Religion, the lesser gods are regarded as next in importance after the Supreme Being."
      ),

      QuizQuestion(
          question: "39. In the traditional society, giving birth to a child is considered as a\n(BECE 2003 Q24)",
          options: [
            "Privilege.",
            "Responsibility.",
            "Right.",
            "Virtue."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Having children is regarded as a privilege and a blessing in traditional society."
      ),

      QuizQuestion(
          question: "40. When Fatimah and Mensah are committed to each other in friendship, they are prepared to\n(BECE 2003 Q26)",
          options: [
            "Worship God sincerely.",
            "Write an examination together.",
            "Run away from evil.",
            "Share their wealth and poverty together."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "True friendship involves standing by one another in both prosperity and hardship."
      ),

      QuizQuestion(
          question: "41. Anyone who enters a house is expected to first\n(BECE 2003 Q27)",
          options: [
            "Ask for water.",
            "Remove his sandals.",
            "Offer greetings.",
            "Ask for a seat."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Greeting people upon entering a house is a sign of respect and good manners."
      ),

      QuizQuestion(
          question: "42. The Holy Qur'an describes angels as creatures who\n(BECE 2004 Q5)",
          options: [
            "Anoint prophets and messengers of Allah.",
            "Punish wrong doers on the judgment day.",
            "Act on the orders of Allah.",
            "Lead the faithful to observe the Hajj."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Angels are obedient servants of Allah who carry out His commands."
      ),

      QuizQuestion(
          question: "43. Which of the following acts in Islam promotes good neighbourliness, love and brotherhood?\n(BECE 2004 Q6)",
          options: [
            "Hajj",
            "Asr",
            "Salat",
            "Ramadan"
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Congregational Salat promotes unity, brotherhood and good neighbourliness among Muslims."
      ),

      QuizQuestion(
          question: "44. The Muslim prayer observed after sunset is\n(BECE 2004 Q7)",
          options: [
            "Maghrib.",
            "Asr.",
            "Zuhr.",
            "Fajr."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Maghrib is the obligatory prayer performed immediately after sunset."
      ),

      QuizQuestion(
          question: "45. To the traditional believer, the transition from the physical to the spiritual world occurs through\n(BECE 2004 Q11)",
          options: [
            "Naming.",
            "Birth.",
            "Death.",
            "Puberty."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Death marks the transition from the physical world to the spiritual world in African Traditional Religion."
      ),QuizQuestion(
          question: "46. All religions teach mankind to see the ______ of the earth and to\n(BECE 2004 Q13)",
          options: [
            "Farm on it.",
            "Build on it.",
            "Care for it.",
            "Make it fertile."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "All religions teach that human beings are stewards of the earth and should care for it."
      ),

      QuizQuestion(
          question: "47. There is no god but Allah and Muhammed is the messenger of Allah. This represents the\n(BECE 2004 Q14)",
          options: [
            "Shahadah.",
            "Iqamah.",
            "Adhan.",
            "Sunnah."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The Shahadah is the Islamic declaration of faith."
      ),

      QuizQuestion(
          question: "48. Capital punishment is meant to\n(BECE 2006 Q39)",
          options: [
            "Rehabilitate offenders.",
            "Punishing offenders out of revenge.",
            "Protecting the good people in society.",
            "Helping offenders to become better persons."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Capital punishment is intended to protect society from dangerous offenders."
      ),

      QuizQuestion(
          question: "49. The need for repentance is expressed in the parable of the\n(BECE 2007 Q31)",
          options: [
            "Sower.",
            "Mustard seed.",
            "Good Samaritan.",
            "Prodigal son."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The Parable of the Prodigal Son teaches repentance, forgiveness and God's mercy."
      ),

      QuizQuestion(
          question: "50. Which of the following is not a punishment in schools?\n(BECE 2008 Q25)",
          options: [
            "Bad testimonial",
            "Banishment",
            "Flogging",
            "Reprimand"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Banishment is not a normal disciplinary measure used in schools."
      ),

      QuizQuestion(
          question: "51. One effect of corruption in society is that it\n(BECE 2008 Q29)",
          options: [
            "Makes people rich.",
            "Provides jobs for people.",
            "Helps the country to develop.",
            "Puts wrong people in positions."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Corruption often results in unqualified people occupying important positions."
      ),

      QuizQuestion(
          question: "52. Dumping of refuse at residential areas is dangerous because it may\n(BECE 2008 Q32)",
          options: [
            "Result in soil erosion.",
            "Reduce plant species.",
            "Cause damage to houses.",
            "Lead to disease outbreak."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Improper refuse disposal creates breeding grounds for disease-causing organisms, leading to disease outbreaks."
      ),
    ],
  ),
  "Religious & Moral Education JHS1 s5 ss2 - Substance Abuse and Decent Living": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Which of the following can be noticed in those who use drugs?\n(BECE 2008 Q38)",
          options: [
            "Quick response to questions in class",
            "Disrespect for authority",
            "Poor relationship with friends",
            "Involvement in communal activities"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Drug abuse often leads to indiscipline and disrespect for authority."
      ),

      QuizQuestion(
          question: "2. Refusal to follow medical prescription may lead to\n(BECE 2017 Q18)",
          options: [
            "Disrespect for authorities",
            "Failure in life",
            "Reduction in wealth",
            "Substance abuse"
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Ignoring medical prescriptions can result in misuse of drugs and substance abuse."
      ),

      QuizQuestion(
          question: "3. Boys and girls are to dress modestly and decently to show that they are\n(BECE 2006 Q36)",
          options: [
            "Truthful",
            "Honest",
            "Courteous",
            "Brilliant"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Decent dressing is a sign of courtesy, self-respect and good manners."
      ),

      QuizQuestion(
          question: "4. People lead decent lives in order to\n(BECE 2003 Q28)",
          options: [
            "Be praised for patriotism",
            "Be seen as kind and generous",
            "Promote health and peaceful conditions",
            "Protect the user from the physical effects of drugs"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Living decently promotes healthy relationships and peaceful coexistence."
      ),

      QuizQuestion(
          question: "5. Which type of substance is coffee?\n(BECE 2001 Q36)",
          options: [
            "Stimulant",
            "Hard drug",
            "Common drug",
            "Beverage"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Coffee contains caffeine, which is a stimulant."
      ),

      QuizQuestion(
          question: "6. People avoid dangerous substances in order to\n(BECE 2012 Q25)",
          options: [
            "Develop their potentials",
            "Stay healthy",
            "Study hard",
            "Be respected by society"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Avoiding harmful substances helps people maintain good health."
      ),

      QuizQuestion(
          question: "7. Which of the following is an example of a hard drug?\n(BECE 2002A Q35)",
          options: [
            "Chloroquine",
            "Coffee",
            "Alcohol",
            "Cocaine"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Cocaine is classified as a hard drug because of its highly addictive nature."
      ),

      QuizQuestion(
          question: "8. Which of the following is not an example of a stimulant?\n(BECE 2006 Q36)",
          options: [
            "Alcohol",
            "Cocaine",
            "Chloroquine",
            "Marijuana"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "Alcohol is a depressant, not a stimulant."
      ),

      QuizQuestion(
          question: "9. Self-medication means\n(BECE 2004 Q37)",
          options: [
            "Taking medicine prescribed by the doctor",
            "Buying drugs with prescription form",
            "Taking medicine given at the hospital",
            "Taking drugs without medical advice"
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Self-medication is the use of drugs without professional medical advice."
      ),

      QuizQuestion(
          question: "10. Which of the following reasons may promote drug abuse?\n(BECE 2002B Q39)",
          options: [
            "Showing pictures of victims of drug abuse",
            "Debate organized for students on hard drug abuse",
            "Taking the drugs without knowing the side effect",
            "Police dealing strictly with drug peddlers"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Taking drugs without knowing their side effects can encourage drug abuse."
      ),

      QuizQuestion(
          question: "11. Which of the following is an effect of drug abuse?\n(BECE 2011 Q27)",
          options: [
            "Obedience",
            "Truancy",
            "Politeness",
            "Truthfulness"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Drug abuse often leads to truancy and other forms of indiscipline."
      ),

      QuizQuestion(
          question: "12. Decent dressing and good eating habits show\n(BECE 2023 Q32)",
          options: [
            "That one is obedient to parents",
            "The particular community one comes from",
            "The level of training one has received",
            "That one belongs to a traditional society"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Good dressing and eating habits reflect proper upbringing and training."
      ),

      QuizQuestion(
          question: "13. Which of the following drugs is most commonly abused?\n(BECE 2005 Q33)",
          options: [
            "Cocaine",
            "Laxatives",
            "Tobacco",
            "Paracetamol"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Tobacco is one of the most commonly abused substances worldwide."
      ),

      QuizQuestion(
          question: "14. The basis for describing some drugs as sedative is that they\n(BECE 2002B Q39)",
          options: [
            "Stimulate the user",
            "Tend to relax the nerves and reduce stress",
            "Make the user feel high",
            "Cause hallucinations"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Sedatives are drugs that calm the nervous system and reduce anxiety and stress."
      ),

      QuizQuestion(
          question: "15. Substances that tend to relax the nerves and reduce stress are\n(BECE 2004 Q39)",
          options: [
            "Sedatives",
            "Stimulants",
            "Hard drugs",
            "Common drugs"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Sedatives are substances that calm the nerves and reduce stress."
      ),
      QuizQuestion(
          question: "16. Which of the following is not a reason for living a decent life?\n(BECE 2007 Q36)",
          options: [
            "To earn the respect of people",
            "To gain the trust of others",
            "To receive prizes from others",
            "To have a good name"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The purpose of living a decent life is to build good character, not to receive prizes from others."
      ),

      QuizQuestion(
          question: "17. Smoking is discouraged because it\n(BECE 2007 Q36)",
          options: [
            "Results in respiratory problem",
            "Attracts the HIV virus",
            "Leads to sexual promiscuity",
            "Destroys the blood group of people"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Smoking damages the lungs and can cause serious respiratory diseases."
      ),

      QuizQuestion(
          question: "18. One danger associated with drug abuse is that it\n(BECE 2012 Q28)",
          options: [
            "Causes idleness",
            "Makes a person arrogant",
            "Destroys the blood group",
            "Can deform a person"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Drug abuse can lead to laziness, lack of productivity and idleness."
      ),

      QuizQuestion(
          question: "19. A defensive mechanism that can help protect student against drug abuse is\n(BECE 2012 Q28)",
          options: [
            "To control one's temper",
            "Living a chaste life",
            "Refusing and saying no to drugs",
            "Reporting drug peddlers to the police"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "The best personal defense against drug abuse is to refuse and say no to drugs."
      ),

      QuizQuestion(
          question: "20. People lead decent lives in order to\n(BECE 2013 Q23)",
          options: [
            "Be praised for patriotism",
            "Be seen as being kind",
            "Promote peaceful living",
            "Qualify to be ancestors"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Living a decent life promotes peace, harmony and good relationships in society."
      ),

      QuizQuestion(
          question: "21. A student must dress decently because it\n(BECE 2015 Q25)",
          options: [
            "Is a mark of intelligence",
            "Shows respect and politeness",
            "Enables one to gain favour from others",
            "Helps one to obey school rules"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Decent dressing demonstrates respect for oneself and for others."
      ),

      QuizQuestion(
          question: "22. People lead decent live in order to\n(BECE 2016 Q27)",
          options: [
            "Be praised for patriotism",
            "Be seen as being kind",
            "Promote peaceful living",
            "Qualify to be an ancestor"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Decent living encourages peaceful coexistence within the community."
      ),

      QuizQuestion(
          question: "23. Which of the following behaviours is an effect of drug abuse?\n(BECE 2016 Q28)",
          options: [
            "Obedience",
            "Politeness",
            "Truancy",
            "Truthfulness"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Drug abuse commonly results in truancy and other forms of indiscipline."
      ),

      QuizQuestion(
          question: "24. Looking simple and decent is a sign of\n(BECE 2016 Q28)",
          options: [
            "Comportment",
            "Faithfulness",
            "Repentance",
            "Tolerance"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Looking simple and decent reflects good comportment and proper behaviour."
      ),

      QuizQuestion(
          question: "25. A person must lead a decent life in order to\n(BECE 2018 Q33)",
          options: [
            "Be praised for patriotism",
            "Be seen as being kind",
            "Promote peaceful living",
            "Qualify to be an ancestor"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Living a decent life promotes peace and harmony in society."
      ),

      QuizQuestion(
          question: "26. People abuse substance because of\n(BECE 2020 Q33)",
          options: [
            "Happiness",
            "Ignorance",
            "Problems",
            "Vengeance"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Ignorance about the harmful effects of drugs is a major cause of substance abuse."
      ),

      QuizQuestion(
          question: "27. To avoid drug abuse, the student must\n(BECE 2021 Q10)",
          options: [
            "Exercise the body frequently",
            "Keep off bad friends",
            "Respect teachers and friends",
            "Attend worship meetings regularly"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Avoiding bad company is one of the most effective ways to prevent drug abuse."
      ),

      QuizQuestion(
          question: "28. Living a decent life can earn you\n(BECE 2021 Q23)",
          options: [
            "Promotion",
            "Respect",
            "Success",
            "Wealth"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "People who live decent lives are respected and trusted by others."
      ),
    ],
  ),
  "Religious & Moral Education JHS1 s6 ss1 - Objective Questions": QuizModel(
    audioPath: '',
    questions: [
      QuizQuestion(
          question: "1. Leisure time is described as a time for\n(BECE 2001 Q30)",
          options: [
            "Scrubbing the toilet and the kitchen.",
            "Going to church to worship God.",
            "Attending school and doing homework.",
            "Playing indoor and outdoor games."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Leisure time is free time used for relaxation and recreational activities such as indoor and outdoor games."
      ),

      QuizQuestion(
          question: "2. The expression, work and happiness means\n(BECE 2002A Q24)",
          options: [
            "When one works, one becomes happy.",
            "Enjoying the fruits of one's labour.",
            "Singing whilst working.",
            "Always working."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The expression means that hard work enables one to enjoy the rewards of one's labour."
      ),

      QuizQuestion(
          question: "3. Humankind can learn a lot about the use of time from the\n(BECE 2006 Q37)",
          options: [
            "Hare.",
            "Ant.",
            "Tortoise.",
            "Bee."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "The ant is known for diligence, proper planning and making good use of time."
      ),

      QuizQuestion(
          question: "4. Which of the following is the best way of handling money?\n(BECE 2002A Q39)",
          options: [
            "Keeping it under the breast.",
            "Tying it in a handkerchief.",
            "Crumpling it into a savings box.",
            "Folding it neatly into the pocket."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Money should be handled neatly and carefully to keep it clean and in good condition."
      ),

      QuizQuestion(
          question: "5. People normally save money in order to\n(BECE 1999 Q22)",
          options: [
            "Use their income wisely.",
            "Help the government to generate more revenue.",
            "Be generous to people.",
            "Prepare for the future."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Saving money helps people prepare for future needs and emergencies."
      ),

      QuizQuestion(
          question: "6. As pupils, we should use our leisure time to\n(BECE 2002A Q23)",
          options: [
            "Play games.",
            "Do our homework.",
            "Do household chores.",
            "Go to church."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Students should use part of their leisure time productively by doing their homework."
      ),

      QuizQuestion(
          question: "7. A happy and prosperous life depends on\n(BECE 2002A Q31)",
          options: [
            "Obedience.",
            "Respect.",
            "Courage.",
            "Hard work."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Hard work is the foundation of a happy and prosperous life."
      ),

      QuizQuestion(
          question: "8. One of the benefits of working hard is\n(BECE 2001 Q40)",
          options: [
            "Putting up good house.",
            "Having leisure.",
            "Becoming financially self-reliant.",
            "Being popular and respectful."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Hard work enables people to become financially independent."
      ),

      QuizQuestion(
          question: "9. We contribute to church dues and offering to\n(BECE 2001 Q33)",
          options: [
            "Enable the church to develop spiritually.",
            "Promote deliverance service.",
            "Help pastors preach well.",
            "Help evangelize and care for the poor."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Church offerings support evangelism and provide assistance to the needy."
      ),

      QuizQuestion(
          question: "10. It is a bad habit to use one's leisure time in\n(BECE 1999 Q28)",
          options: [
            "Reading a story book.",
            "Telling stories.",
            "Playing games.",
            "Gossiping about friends."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Gossip is an unhealthy use of leisure time and should be avoided."
      ),

      QuizQuestion(
          question: "11. In school's speech and prize giving day, the best pupil is rewarded with a\n(BECE 2003 Q25)",
          options: [
            "Book prizes.",
            "Cash prize.",
            "Testimonial.",
            "Certificate."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Outstanding pupils are commonly recognized with certificates during prize-giving ceremonies."
      ),

      QuizQuestion(
          question: "12. The importance of work is to help us to\n(BECE 2003 Q38)",
          options: [
            "Be honest in our daily activities.",
            "Plan our duties at all time.",
            "Be reliable in the society.",
            "Keep healthy and active minds."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Working keeps both the body and mind active and healthy."
      ),

      QuizQuestion(
          question: "13. Leisure time is used for\n(BECE 2004 Q28)",
          options: [
            "Playing games.",
            "Congregational worship.",
            "Doing house chores.",
            "Weeding the house."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Leisure is free time mainly used for relaxation and recreation."
      ),

      QuizQuestion(
          question: "14. Work help us to become\n(BECE 2004 Q24)",
          options: [
            "Reliable.",
            "Sincere.",
            "Healthy.",
            "Courteous."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Working diligently builds reliability and responsibility."
      ),

      QuizQuestion(
          question: "15. There is dignity in labour. This statement means\n(BECE 2004 Q25)",
          options: [
            "Only office work brings recognition.",
            "Some jobs are more dignified than others.",
            "We should work among all classes of people.",
            "We need to be proud of our work."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "The statement teaches that every honest job is valuable and people should take pride in their work."
      ),
      QuizQuestion(
          question: "16. The term idleness in Religious and Moral Education means\n(BECE 2005 Q24)",
          options: [
            "Having fun.",
            "Enjoying siesta.",
            "Wasting time.",
            "Playing games."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Idleness refers to wasting time instead of engaging in useful and productive activities."
      ),

      QuizQuestion(
          question: "17. In which way can money help spread germs?\n(BECE 2005 Q34)",
          options: [
            "Keeping it in a purse for a long period.",
            "Handling it with hands.",
            "Crumpling it in one's pockets.",
            "Keeping it in one's brassiere."
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Keeping money in one's brassiere exposes it to sweat and germs, making it unhygienic."
      ),

      QuizQuestion(
          question: "18. The statement that time is money, implies that time is\n(BECE 2005 Q38)",
          options: [
            "Precious.",
            "Limitless.",
            "Life.",
            "Everything."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "The saying emphasizes that time is valuable and should not be wasted."
      ),

      QuizQuestion(
          question: "19. The most important requirement for a happy and prosperous life is\n(BECE 2006 Q25)",
          options: [
            "Loyalty.",
            "Respect.",
            "Courage.",
            "Hard work."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Hard work is the key to achieving success and prosperity."
      ),

      QuizQuestion(
          question: "20. The expression 'work and happiness' implies one\n(BECE 2006 Q28)",
          options: [
            "Likes working always.",
            "Dances whilst working.",
            "Works whilst playing.",
            "Enjoys the fruit of his labour."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Work brings satisfaction because people enjoy the rewards of their labour."
      ),

      QuizQuestion(
          question: "21. Good working habits include all the following except\n(BECE 2006 Q37)",
          options: [
            "Honesty.",
            "Reliability.",
            "Commitment.",
            "Faith."
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Honesty, reliability and commitment are work habits, while faith is not specifically a working habit."
      ),

      QuizQuestion(
          question: "22. Hard work is most often crowned with\n(BECE 2007 Q21)",
          options: [
            "Favours.",
            "Success.",
            "Popularity.",
            "Obedience."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Hard work usually leads to success."
      ),

      QuizQuestion(
          question: "23. The best way to enjoy peace and success in life is to\n(BECE 2007 Q24)",
          options: [
            "Accumulate wealth.",
            "Fight for one's right always.",
            "Be very strict on others.",
            "Develop the spirit of responsibility."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Being responsible promotes peace, trust and success."
      ),

      QuizQuestion(
          question: "24. Which of the following is not true about money? It is\n(BECE 2008 Q27)",
          options: [
            "Owned by the state.",
            "The accepted means of exchange.",
            "The official currency of a country.",
            "The exchange goods for goods."
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "Money is used to exchange goods and services, not 'exchange goods for goods,' which describes barter."
      ),

      QuizQuestion(
          question: "25. The best way a worker can ask for a good salary is through\n(BECE 2008 Q26)",
          options: [
            "Negotiation.",
            "Confrontation.",
            "Strike.",
            "Threat."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Negotiation is the proper and peaceful way to request better pay."
      ),

      QuizQuestion(
          question: "26. It is a bad habit to use one's leisure time in\n(BECE 2011 Q29)",
          options: [
            "Playing games.",
            "Telling stories.",
            "Reading story books.",
            "Gossiping about friends."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Gossiping is an unhealthy and irresponsible use of leisure time."
      ),

      QuizQuestion(
          question: "27. A happy and prosperous life depends on\n(BECE 2011 Q39)",
          options: [
            "Obedience.",
            "Hard work.",
            "Respect.",
            "Courage."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Hard work is the foundation of a prosperous and successful life."
      ),

      QuizQuestion(
          question: "28. The saying time is money, means\n(BECE 2012 Q31)",
          options: [
            "Time fetches money.",
            "More time spent on work, brings profit.",
            "Money is not gained without spending time.",
            "Good use of time brings profit."
          ],
          correctIndex: 3,
          difficulty: "Medium",
          explanation: "The saying emphasizes using time wisely because productive use of time leads to success and profit."
      ),

      QuizQuestion(
          question: "29. Humankind work in order to\n(BECE 2012 Q39)",
          options: [
            "Go to heaven.",
            "Be loved by everyone.",
            "Win souls for Christ.",
            "Cater for one's basic needs."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "People work primarily to provide for their basic needs and those of their families."
      ),

      QuizQuestion(
          question: "30. Workers go on strike to\n(BECE 2013 Q21)",
          options: [
            "Have some rest.",
            "Demand better conditions of service.",
            "Destroy company property.",
            "Attend political rallies."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Workers organize strikes to demand improved salaries, welfare and working conditions."
      ),
      QuizQuestion(
          question: "31. Which of the following is not a positive attribute to work?\n(BECE 2013 Q26)",
          options: [
            "Hard working",
            "Laziness",
            "Punctuality",
            "Truthfulness"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Laziness is a negative attitude to work, while hard work, punctuality and truthfulness are positive qualities."
      ),

      QuizQuestion(
          question: "32. A wrong way to use one's leisure is\n(BECE 2013 Q33)",
          options: [
            "Reading story books.",
            "Gossiping.",
            "Playing games.",
            "Telling stories."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Gossiping is an improper use of leisure because it can harm relationships and waste time."
      ),

      QuizQuestion(
          question: "33. A positive attitude towards work is\n(BECE 2014 Q31)",
          options: [
            "Commitment.",
            "Graciousness.",
            "Compliance.",
            "Purity."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Commitment is an important positive attitude that promotes productivity and responsibility."
      ),

      QuizQuestion(
          question: "34. The most important requirement for a happy and prosperous life is\n(BECE 2014 Q25)",
          options: [
            "Courage.",
            "Hard work.",
            "Loyalty.",
            "Respect."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Hard work is the key to achieving success and prosperity."
      ),

      QuizQuestion(
          question: "35. In planning personal budget, it is necessary to ensure that\n(BECE 2014 Q36)",
          options: [
            "Expenditure is more than income.",
            "Income is more than expenditure.",
            "Expenditure equals income.",
            "Income is less than expenditure."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "A good budget ensures that income is greater than expenditure so that savings can be made."
      ),

      QuizQuestion(
          question: "36. Leisure is best used to\n(BECE 2014 Q38)",
          options: [
            "Perform house chores.",
            "Attend church service.",
            "Acquire new skills.",
            "Attend extra classes."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Leisure can be used productively to acquire useful skills and talents."
      ),

      QuizQuestion(
          question: "37. Which of the following animals provides security to man?\n(BECE 2015 Q6)",
          options: [
            "Goat",
            "Donkey",
            "Dog",
            "Cow"
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Dogs are commonly kept to provide security by guarding homes and property."
      ),

      QuizQuestion(
          question: "38. Money is used wisely when\n(BECE 2015 Q32)",
          options: [
            "Things are bought on credit.",
            "It is spent on expensive things.",
            "It is spent on things budgeted for.",
            "It is spent on poor people."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Wise use of money involves spending according to a planned budget."
      ),

      QuizQuestion(
          question: "39. Saving money helps the individual to\n(BECE 2015 Q35)",
          options: [
            "Plan for the future.",
            "Become rich overnight.",
            "Attend school regularly.",
            "Make more friends."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Saving money prepares a person for future needs and emergencies."
      ),

      QuizQuestion(
          question: "40. Which of the following activities best offer relaxation?\n(BECE 2015 Q38)",
          options: [
            "Painting",
            "Eating",
            "Running",
            "Reading"
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "Painting is a leisure activity that provides relaxation and recreation."
      ),

      QuizQuestion(
          question: "41. Work done to earn income can be described as\n(BECE 2015 Q40)",
          options: [
            "Home work.",
            "Community work.",
            "Occupational work.",
            "School work."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Occupational work refers to work done to earn income or wages."
      ),

      QuizQuestion(
          question: "42. Laziness always leads to\n(BECE 2016 Q33)",
          options: [
            "Misunderstanding.",
            "Misuse of wealth.",
            "Sickness.",
            "Waste of time."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Laziness causes people to waste valuable time instead of engaging in productive work."
      ),

      QuizQuestion(
          question: "43. Idleness means\n(BECE 2016 Q34)",
          options: [
            "Enjoying siesta.",
            "Doing nothing.",
            "Having fun.",
            "Playing games."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Idleness is the habit of doing nothing useful or productive."
      ),

      QuizQuestion(
          question: "44. Which of the following behavior is not a positive attitude to work?\n(BECE 2016 Q35)",
          options: [
            "Hard work",
            "Lateness",
            "Punctuality",
            "Truthfulness"
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Lateness is a negative work habit because it reduces efficiency and reliability."
      ),

      QuizQuestion(
          question: "45. Workers go on strike to\n(BECE 2016 Q36)",
          options: [
            "Attend political rallies.",
            "Demand better conditions of service.",
            "Destroy company property.",
            "Have some rest."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Workers go on strike to demand improved salaries, welfare and working conditions."
      ),
      QuizQuestion(
          question: "46. The best way of handling money is by\n(BECE 2016 Q38)",
          options: [
            "Writing scripture words on it.",
            "Crumpling it into our pockets.",
            "Holding it with wet hands.",
            "Folding it with clean hands."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Money should be folded neatly and handled with clean hands to keep it clean and in good condition."
      ),

      QuizQuestion(
          question: "47. The saying, time is money means\n(BECE 2016 Q40)",
          options: [
            "Luck comes with time.",
            "Money can be made with time.",
            "Opportunities lost cannot be recovered.",
            "Wealth can be acquired with patience."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "The saying emphasizes that once opportunities are lost through poor use of time, they cannot easily be recovered."
      ),

      QuizQuestion(
          question: "48. To earn a living, one needs to be\n(BECE 2017 Q32)",
          options: [
            "Healthy.",
            "Hard working.",
            "Prayerful.",
            "Responsible."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Hard work is the key to earning a living and achieving financial independence."
      ),

      QuizQuestion(
          question: "49. Which of the following best offers relaxation?\n(BECE 2017 Q35)",
          options: [
            "Eating",
            "Painting",
            "Running",
            "Reading"
          ],
          correctIndex: 1,
          difficulty: "Medium",
          explanation: "Painting is a leisure activity that promotes relaxation and creativity."
      ),

      QuizQuestion(
          question: "50. Saving money helps the individual to\n(BECE 2017 Q36)",
          options: [
            "Become rich overnight.",
            "Attend school regularly.",
            "Make more friends.",
            "Plan for the future."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Saving prepares an individual for future needs and unforeseen emergencies."
      ),

      QuizQuestion(
          question: "51. The most important requirement for a happy and responsible life is\n(BECE 2017 Q37)",
          options: [
            "Courage.",
            "Hard work.",
            "Loyalty.",
            "Respect."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Hard work is the foundation of a happy, responsible and prosperous life."
      ),

      QuizQuestion(
          question: "52. A positive attitude towards work is\n(BECE 2017 Q38)",
          options: [
            "Commitment.",
            "Graciousness.",
            "Intelligence.",
            "Purity."
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Commitment demonstrates dedication and responsibility towards one's work."
      ),

      QuizQuestion(
          question: "53. In planning personal budget, it is necessary to ensure that\n(BECE 2017 Q39)",
          options: [
            "Expenditure is equal to income.",
            "Expenditure is more than income.",
            "Income is less than expenditure.",
            "Income is more than expenditure."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "A sound personal budget ensures that income exceeds expenditure so savings can be made."
      ),

      QuizQuestion(
          question: "54. Which of the following factors is a benefit of honest work?\n(BECE 2018 Q34)",
          options: [
            "Becoming financially sound",
            "Becoming popular in town",
            "Building the body size",
            "Having time for leisure"
          ],
          correctIndex: 0,
          difficulty: "Easy",
          explanation: "Honest work provides income that helps a person become financially stable."
      ),

      QuizQuestion(
          question: "55. Work done to earn income can be described as\n(BECE 2018 Q36)",
          options: [
            "Community work.",
            "Home work.",
            "Occupational activity.",
            "School work."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Occupational activity refers to work done primarily to earn income."
      ),

      QuizQuestion(
          question: "56. Lazy people get old very fast. This means that hard work brings about\n(BECE 2019 Q25)",
          options: [
            "Comfort.",
            "Development.",
            "Good health.",
            "Great wealth."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Hard work keeps the body active and contributes to good health."
      ),

      QuizQuestion(
          question: "57. To succeed in academic work, the individual needs to engage in serious\n(BECE 2019 Q37)",
          options: [
            "Farming.",
            "Learning.",
            "Prayers.",
            "Discussions."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Academic success depends primarily on serious learning and study."
      ),

      QuizQuestion(
          question: "58. Visits to tourist centres help students to\n(BECE 2019 Q39)",
          options: [
            "Become more adventurous.",
            "Make more friends.",
            "Overcome stress and boredom.",
            "Pass their examinations."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Tourist visits provide recreation and help reduce stress and boredom."
      ),

      QuizQuestion(
          question: "59. To work means using\n(BECE 2020 Q37)",
          options: [
            "Mental and moral power.",
            "Mental and physical power.",
            "Physical and moral effort.",
            "Spiritual and will power."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Work involves the use of both mental and physical effort to achieve a goal."
      ),

      QuizQuestion(
          question: "60. Money offers comfort in life because it\n(BECE 2020 Q38)",
          options: [
            "Helps to make people popular.",
            "Makes people become honest.",
            "Helps in acquiring basic needs.",
            "Promotes fear of God in people."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Money provides comfort by enabling people to obtain their basic needs."
      ),
      QuizQuestion(
          question: "61. The time wasted cannot be recovered. This saying means\n(BECE 2020 Q39)",
          options: [
            "Time cannot be recalled.",
            "Time is very precious.",
            "Opportunity missed is lost.",
            "Punctuality leads to success."
          ],
          correctIndex: 2,
          difficulty: "Medium",
          explanation: "Once an opportunity is lost through poor use of time, it cannot be regained."
      ),

      QuizQuestion(
          question: "62. To relax and recover lost energy, one needs to\n(BECE 2021 Q2)",
          options: [
            "Check his or her pressure.",
            "Eat a well-balanced diet.",
            "Engage in healthy exercise.",
            "Have enough leisure."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Adequate leisure allows the body and mind to rest and regain energy."
      ),

      QuizQuestion(
          question: "63. To achieve success in examination, one has to engage in\n(BECE 2021 Q11)",
          options: [
            "Fasting.",
            "Hard work.",
            "Prayers.",
            "Smartness."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Success in examinations depends primarily on hard work and consistent study."
      ),

      QuizQuestion(
          question: "64. Proper use of leisure helps the individual to\n(BECE 2021 Q15)",
          options: [
            "Do God's work.",
            "Earn money.",
            "Remove boredom.",
            "Work hard."
          ],
          correctIndex: 2,
          difficulty: "Easy",
          explanation: "Proper use of leisure provides relaxation and helps remove boredom."
      ),

      QuizQuestion(
          question: "65. The saying that money flies implies, money\n(BECE 2021 Q22)",
          options: [
            "Can be spent easily.",
            "Can take you anywhere.",
            "Is controlled by evil.",
            "Should be used wisely."
          ],
          correctIndex: 0,
          difficulty: "Medium",
          explanation: "The saying means money can easily disappear if it is not carefully managed."
      ),

      QuizQuestion(
          question: "66. Money must be carefully handled because it\n(BECE 2021 Q38)",
          options: [
            "Can buy expensive things.",
            "Can easily get missing.",
            "Can make a person happy.",
            "Is expensive to print."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Money should be handled carefully because it can easily get lost or misplaced."
      ),

      QuizQuestion(
          question: "67. Immoral life style must be avoided because they may lead to the following situations except\n(BECE 2023 Q5)",
          options: [
            "Poverty.",
            "Dropping out of school.",
            "Premature parenting.",
            "High self-esteem."
          ],
          correctIndex: 3,
          difficulty: "Easy",
          explanation: "Immoral lifestyles lead to many negative consequences, but not to high self-esteem."
      ),

      QuizQuestion(
          question: "68. Idleness can be associated with\n(BECE 2023 Q15)",
          options: [
            "Procrastination.",
            "Laziness.",
            "Mismanagement.",
            "Leisure."
          ],
          correctIndex: 1,
          difficulty: "Easy",
          explanation: "Idleness is closely associated with laziness, which discourages productive work."
      ),
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
