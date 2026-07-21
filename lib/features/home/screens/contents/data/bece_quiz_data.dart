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
