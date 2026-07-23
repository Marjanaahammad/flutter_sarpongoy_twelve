import '../model/quiz_model.dart';

/// BECE Past Exam – Objectives (Multiple Choice) questions.
/// Keyed by the lesson topic string (matches the topic field in Lesson).
final Map<String, QuizModel> beceQuizData = {
  // ─── ENGLISH: ORAL LANGUAGE ───────────────────────────────────────────────
  "English JHS1 s1 ss1 - Conversation Everyday Discourse": QuizModel(
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
  "Math JHS1 s1 ss2 - Number Operations": QuizModel(
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
  "Math JHS1 s1 ss3 - Fractions, Decimals and Percentages": QuizModel(
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
  "Math JHS1 s1 ss4 - Number: Ratios and Proportion": QuizModel(
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

  "Math JHS1 s2 ss1 - Patterns and Relations": QuizModel(
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
          explanation: "Substitute y = 37: 37 = 5x + 2. Therefore, 5x = 35 and x = 7."
      ),
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
          explanation: "The outputs increase by 11. Since 11(1) - 2 = 9, the rule is t → 11t - 2."
      ),
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
        r"2. The area of a square is \(49\text{ cm}^2\). Find the perimeter of the square.          (BECE 1990 Q35)",
        options: [
          r"7\text{ cm}",
          r"51\text{ cm}",
          r"28\text{ cm}",
          r"49\text{ cm}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The side of the square is \(\sqrt{49} = 7\text{ cm}\). Therefore, its perimeter is \(4 \times 7 = 28\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"3. The circumference of a circular track is \(440\text{ m}\). Find the diameter of this track. Take \(\pi = \frac{22}{7}\).          (BECE 1991 Q26)",
        options: [
          r"70\text{ m}",
          r"140\text{ m}",
          r"280\text{ m}",
          r"691\text{ m}",
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
        r"5. The bearing of Aboku from Bebeka is \(055^\circ\). What is the bearing of Bebeka from Aboku?          (BECE 1993 Q32)",
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
        r"8. A square of side \(6\text{ cm}\) has the same area as a rectangle of length \(9\text{ cm}\). Find the breadth of the rectangle.          (BECE 1999 Q32)",
        options: [
          r"3\text{ cm}",
          r"4\text{ cm}",
          r"6\text{ cm}",
          r"24\text{ cm}",
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
        r"12. The area of a rectangle is \(18\text{ cm}^2\). One of its sides is \(9\text{ cm}\) long. Find its perimeter.          (BECE 2001 Q34)",
        options: [
          r"11\text{ cm}",
          r"18\text{ cm}",
          r"22\text{ cm}",
          r"36\text{ cm}",
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
        r"15. The length of a rectangle is three times its width. If its perimeter is \(24\text{ cm}\), find its width.          (BECE 2002A Q35)",
        options: [
          r"3\text{ cm}",
          r"4\text{ cm}",
          r"6\text{ cm}",
          r"8\text{ cm}",
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
        r"17. An equilateral triangle has side \(16\text{ cm}\). A square has the same perimeter as the equilateral triangle. What is the area of the square?          (BECE 2005 Q23)",
        options: [
          r"48\text{ cm}^2",
          r"96\text{ cm}^2",
          r"144\text{ cm}^2",
          r"256\text{ cm}^2",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The triangle's perimeter is \(3 \times 16 = 48\text{ cm}\). Each side of the square is \(48 \div 4 = 12\text{ cm}\), so its area is \(12^2 = 144\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        r"18. The perimeter of a rectangle is \(24\text{ cm}\). If the breadth of the rectangle is \(4\text{ cm}\), find the area of the rectangle.          (BECE 2005 Q29)",
        options: [
          r"32\text{ cm}^2",
          r"48\text{ cm}^2",
          r"64\text{ cm}^2",
          r"144\text{ cm}^2",
        ],
        correctIndex: 0,
        difficulty: "Medium",
        explanation:
        r"Since \(2(l + 4) = 24\), \(l + 4 = 12\) and \(l = 8\text{ cm}\). Therefore, the area is \(8 \times 4 = 32\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        r"19. The base of an isosceles triangle is \(7\text{ cm}\) long. Each of the other two sides is \(x\text{ cm}\) long. What will be the expression for its perimeter?          (BECE 2006 Q7)",
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
        r"21. A football field is \(120\text{ m}\) long and \(75\text{ m}\) wide. What is the perimeter of the field?          (BECE 2008 Q14)",
        options: [
          r"195\text{ m}",
          r"390\text{ m}",
          r"780\text{ m}",
          r"900\text{ m}",
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
        r"24. A rectangle has an area of \(36\text{ cm}^2\) and a width of \(3\text{ cm}\). Find its perimeter.          (BECE 2009 Q16)",
        options: [
          r"12\text{ cm}",
          r"18\text{ cm}",
          r"24\text{ cm}",
          r"30\text{ cm}",
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
        r"26. Find the area of a square, if its perimeter is \(28\text{ cm}\).          (BECE 2011 Q16)",
        options: [
          r"784\text{ cm}^2",
          r"196\text{ cm}^2",
          r"49\text{ cm}^2",
          r"14\text{ cm}^2",
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
        r"28. The bearing of Atoru from Busase is \(275^\circ\). What is the bearing of Busase from Atoru?          (BECE 2012 Q31)",
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
        r"29. The perimeter of a rectangle is \(48\text{ cm}\). If the length is \(14\text{ cm}\), find its width.          (BECE 2013 Q12)",
        options: [
          r"24\text{ cm}",
          r"20\text{ cm}",
          r"10\text{ cm}",
          r"3.4\text{ cm}",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"Since \(2(l + w) = 48\), \(l + w = 24\). Therefore, \(w = 24 - 14 = 10\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"30. The length of a rectangular fence is \(25\text{ m}\). The ratio of the length to the width is \(5:3\). Find the width of the rectangular fence.          (BECE 2013 Q22)",
        options: [
          r"19\text{ m}",
          r"13\text{ m}",
          r"15\text{ m}",
          r"16\text{ m}",
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
        r"32. The perimeter of a rectangle is \(24\text{ cm}\). If the length is \(7\text{ cm}\), find the width.          (BECE 2014 Q28)",
        options: [
          r"3\text{ cm}",
          r"5\text{ cm}",
          r"10\text{ cm}",
          r"12\text{ cm}",
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
        r"34. A rectangular field \(50\text{ m}\) wide and \(y\text{ m}\) long requires \(260\text{ m}\) of fencing. Find \(y\).          (BECE 2015 Q29)",
        options: [
          r"15\text{ m}",
          r"40\text{ m}",
          r"80\text{ m}",
          r"105\text{ m}",
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
        r"37. The perimeter of an isosceles triangle is \(45\text{ cm}\). Find the length of the third side, if each of the equal sides is \(14\text{ cm}\) long.          (BECE 2016 Q27)",
        options: [
          r"11\text{ cm}",
          r"14\text{ cm}",
          r"17\text{ cm}",
          r"31\text{ cm}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The two equal sides have a total length of \(14 + 14 = 28\text{ cm}\). The third side is \(45 - 28 = 17\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"38. The bearing of \(X\) from \(Y\) is \(196^\circ\). What is the bearing of \(Y\) from \(X\)?          (BECE 2016 Q37)",
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
        r"40. The perimeter of a rectangle is \(26\text{ cm}\). If its length is \(10\text{ cm}\), find its area.          (BECE 2018 Q19)",
        options: [
          r"30\text{ cm}^2",
          r"60\text{ cm}^2",
          r"130\text{ cm}^2",
          r"160\text{ cm}^2",
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
        r"42. The bearing of \(P\) from \(Q\) is \(060^\circ\). Find the bearing of \(Q\) from \(P\).          (BECE 2018 Q39)",
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
        r"44. The two sides of a parallelogram are \(4.8\text{ m}\) and \(7.2\text{ m}\) long. Find its perimeter.          (BECE 2019 Q14)",
        options: [
          r"48.0\text{ m}",
          r"34.6\text{ m}",
          r"24.0\text{ m}",
          r"17.3\text{ m}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The perimeter is \(2(4.8 + 7.2) = 2 \times 12 = 24.0\text{ m}\).",
      ),

      QuizQuestion(
        question:
        r"45. If the bearing of \(A\) from \(B\) is \(240^\circ\), find the bearing of \(B\) from \(A\).          (BECE 2019 Q16)",
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
        r"47. Two sides of a parallelogram are \(5.8\text{ m}\) and \(8.2\text{ m}\) long. Find its perimeter.          (BECE 2020 Q22)",
        options: [
          r"14.0\text{ m}",
          r"36.6\text{ m}",
          r"28.0\text{ m}",
          r"47.6\text{ m}",
        ],
        correctIndex: 2,
        difficulty: "Easy",
        explanation:
        r"The perimeter is \(2(5.8 + 8.2) = 2 \times 14 = 28.0\text{ m}\).",
      ),

      QuizQuestion(
        question:
        r"48. Two sides of a rectangle are \(10\text{ cm}\) and \(6\text{ cm}\). Calculate the area of a square with the same perimeter as that of the rectangle.          (BECE 2020 Q36)",
        options: [
          r"16\text{ cm}^2",
          r"30\text{ cm}^2",
          r"60\text{ cm}^2",
          r"64\text{ cm}^2",
        ],
        correctIndex: 3,
        difficulty: "Medium",
        explanation:
        r"The rectangle's perimeter is \(2(10 + 6) = 32\text{ cm}\). The square's side is \(32 \div 4 = 8\text{ cm}\), so its area is \(8^2 = 64\text{ cm}^2\).",
      ),

      QuizQuestion(
        question:
        r"49. The area of a rectangle is \(18\text{ cm}^2\). If one of its sides is \(2\text{ cm}\) long, find its perimeter.          (BECE 2021 Q10)",
        options: [
          r"18\text{ cm}",
          r"20\text{ cm}",
          r"22\text{ cm}",
          r"36\text{ cm}",
        ],
        correctIndex: 2,
        difficulty: "Medium",
        explanation:
        r"The other side is \(18 \div 2 = 9\text{ cm}\). Therefore, the perimeter is \(2(9 + 2) = 22\text{ cm}\).",
      ),

      QuizQuestion(
        question:
        r"50. What is the length of the side of a square of area \(225\text{ cm}^2\)?          (BECE 2022 Q14)",
        options: [
          r"12.00\text{ cm}",
          r"15.00\text{ cm}",
          r"56.25\text{ cm}",
          r"112.50\text{ cm}",
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

  ///─── SOCIAL STUDIES ────────────────────────────────────────────────────

  "JHS 1 - Environmental issues": QuizModel(
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

  "JHS 2 - Environmental issues": QuizModel(
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
