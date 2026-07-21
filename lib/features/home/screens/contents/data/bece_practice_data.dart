import '../model/practice_model.dart';

/// BECE Past Exam – Theory (Guided Practice) questions.
/// Keyed by the lesson topic string (matches the topic field in Lesson).
final Map<String, PracticeModel> becePracticeData = {
  // ─── ENGLISH: ORAL LANGUAGE ────────────────────────────────────────────
  "Conversation and Everyday Discourse": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nYou are about to call your class prefect to discuss a school issue. Write TWO sentences: one using a formal greeting and one using an informal greeting. Then explain when each is appropriate.",
        answer:
            "Formal: 'Good morning, Class Prefect. I would like to discuss an important school matter with you.'\nInformal (to a close friend): 'Hey Ama! What's up? I need to talk to you about something.'\n\nFormal register is used in official or school settings. Informal register is used with close friends in relaxed situations.",
        explanation:
            "Register refers to the level of formality in language. Choosing the correct register shows social awareness and communication skill.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nExplain THREE features of an effective conversation. Give an example of each feature.",
        answer:
            "1. Turn-taking — Each person waits for their turn to speak. Example: Kwame listens while Ama speaks, then responds.\n2. Active listening — Nodding and maintaining eye contact to show attention. Example: Nodding when the teacher explains.\n3. Appropriate language — Using correct register for the situation. Example: Using polite language when speaking to an elder.",
        explanation:
            "Effective conversation involves balanced participation, attentive listening, and appropriate communication style.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nA new student from another country joins your class. They greet you informally, but you are in a classroom setting. Write a SHORT dialogue (4 lines) showing how you POLITELY correct the student's register and teach them the appropriate greeting.",
        answer:
            "New student: 'Hey! What's going on?'\nYou: 'Hello! Welcome to our school. In class, we usually use more formal greetings.'\nNew student: 'Oh, I see. How should I say it?'\nYou: 'You could say: Good morning, class. It is more appropriate for the school setting.'",
        explanation:
            "Helping someone use the correct register respectfully shows good communication skills and cultural awareness.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nWhat is the difference between VERBAL and NON-VERBAL communication? Give TWO examples of each.",
        answer:
            "Verbal communication uses spoken or written words:\n• Example 1: Saying 'Thank you' to someone.\n• Example 2: Writing a text message.\n\nNon-verbal communication uses body language and gestures:\n• Example 1: Nodding your head to show agreement.\n• Example 2: Waving goodbye.",
        explanation:
            "Both verbal and non-verbal communication are essential tools for sending and receiving messages effectively.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nYour friend says: 'I don't think you need to greet teachers — it wastes time.' Write a paragraph DISAGREEING with your friend and explaining why greetings are important in Ghanaian culture.",
        answer:
            "I respectfully disagree with my friend's view. Greetings are a very important part of Ghanaian culture and social life. They show respect, especially to elders and those in authority. When we greet our teachers, we acknowledge their role and build a positive relationship with them. A simple 'Good morning, sir/madam' takes only a few seconds but makes a big difference in creating a respectful and welcoming classroom environment. Therefore, greetings should never be seen as a waste of time.",
        explanation:
            "Giving reasons and using respectful disagreement language is a key communication skill tested in BECE.",
      ),
    ],
  ),
  "Giving and Following Direction": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nA stranger stops you and asks how to get to the nearest hospital from your school. Write CLEAR directions using at least FOUR direction words or phrases (e.g., turn left, straight, past, junction).",
        answer:
            "From the school gate, walk straight along the main road until you reach the big junction. Turn left at the junction. Walk past the petrol station on your right side. The hospital is about 200 metres ahead on your left, just after the water tower. You cannot miss it.",
        explanation:
            "Good directions use clear command verbs, specific distances, and permanent landmarks to guide the listener.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nExplain FOUR characteristics of a good landmark. Give an example of each.",
        answer:
            "1. Permanent — It does not move. Example: A post office building.\n2. Easily visible — It can be seen from a distance. Example: A church with a tall steeple.\n3. Well-known — Most people in the community know it. Example: A central market.\n4. Clearly named — It has a name people recognise. Example: 'Kejetia Market.'",
        explanation:
            "Effective landmarks help people identify their location and navigate confidently.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nDescribe the DIFFERENCE between giving directions using RELATIVE position (e.g., left, right) and ABSOLUTE direction (e.g., North, South, East, West). When is each type most useful?",
        answer:
            "Relative directions describe position based on where the person is standing: left, right, in front, behind. They are useful for short distances in familiar areas.\n\nAbsolute directions use compass points (North, South, East, West). They are useful for maps, navigation apps, and long-distance travel where the starting position may vary.",
        explanation:
            "Both types of directional language are important; the choice depends on context and the listener's familiarity with the area.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nYour younger sibling gets lost at the Kumasi market. Write a telephone script (5 lines) giving them directions to find you. Use at least THREE directional phrases.",
        answer:
            "You: 'Stay calm. Can you see any sign or shop near you?'\nSibling: 'Yes, I see a shop called Ama's Fabric Store.'\nYou: 'Good. Walk straight from that shop until you reach the intersection.'\nSibling: 'Okay, I am now at the intersection.'\nYou: 'Turn right and walk about 50 metres. I will be standing beside the orange stall on the left.'",
        explanation:
            "Giving telephone directions requires calm, step-by-step instructions using clear landmarks and direction words.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nWhy is it important to CONFIRM that the person you are giving directions to has understood you? Write THREE ways you can check their understanding.",
        answer:
            "It is important to confirm understanding because unclear directions can cause the person to get lost, waste time, or become frustrated.\n\nThree ways to check:\n1. Ask them to repeat the directions back to you: 'Could you repeat the directions to me?'\n2. Ask a checking question: 'So where will you turn first?'\n3. Draw a simple sketch map and ask if they can follow it.",
        explanation:
            "Confirming understanding makes communication effective and prevents mistakes in direction-following.",
      ),
    ],
  ),
  "Active and Passive Voice": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nRewrite the following sentences in PASSIVE VOICE:\n(a) 'The farmer harvested the maize.'\n(b) 'The students are writing the exam.'\n(c) 'Someone stole my bicycle.'",
        answer:
            "(a) The maize was harvested by the farmer.\n(b) The exam is being written by the students.\n(c) My bicycle was stolen (by someone).",
        explanation:
            "Passive voice places the object first and uses 'be + past participle.' The agent can be omitted if unknown or unimportant.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nRewrite these PASSIVE sentences in ACTIVE VOICE:\n(a) 'The report was written by Ama.'\n(b) 'The windows were broken by the storm.'\n(c) 'The song was performed by the choir.'",
        answer:
            "(a) Ama wrote the report.\n(b) The storm broke the windows.\n(c) The choir performed the song.",
        explanation:
            "To convert to active voice, identify the agent (by whom), make it the subject, and use the appropriate active verb.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nGive THREE situations where a writer would prefer to use PASSIVE VOICE over ACTIVE VOICE and explain why.",
        answer:
            "1. When the doer is unknown: 'The money was stolen.' (We don't know who stole it.)\n2. When the action is more important than the doer: 'The vaccine was developed in 2020.' (The vaccine matters more than who made it.)\n3. In scientific writing to sound objective: 'The results were recorded at 5-minute intervals.'",
        explanation:
            "Passive voice is chosen strategically when emphasis, formality, or anonymity is needed in writing.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nA student wrote: 'The road is built by the government workers last year.' Identify the error and write the correct sentence.",
        answer:
            "Error: 'is built' is present tense passive, but 'last year' indicates the past tense is needed.\n\nCorrect sentence: 'The road was built by the government workers last year.'",
        explanation:
            "Tense consistency is essential in passive constructions — 'was/were + past participle' for past events.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nWrite a SHORT paragraph (4–5 sentences) about a recent school event using the PASSIVE VOICE at least THREE times.",
        answer:
            "Last week, a science fair was organised by the JHS 2 students. Several experiments were displayed in the school hall. Awards were given to the top three teams by the headmistress. The event was photographed by a local newspaper. All participants were praised for their hard work and creativity.",
        explanation:
            "Using passive voice in formal writing shifts emphasis to the event and outcomes rather than the individuals involved.",
      ),
    ],
  ),
  "Reported Speech (Direct and Indirect)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nConvert the following DIRECT SPEECH sentences to REPORTED SPEECH:\n(a) She said, 'I will go to the market tomorrow.'\n(b) He said, 'I have finished my homework.'\n(c) They said, 'We are tired.'",
        answer:
            "(a) She said that she would go to the market the following day.\n(b) He said that he had finished his homework.\n(c) They said that they were tired.",
        explanation:
            "In reported speech: 'will' → 'would', 'have finished' → 'had finished', 'are' → 'were'. Time expressions also shift.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nConvert to DIRECT SPEECH:\n(a) Ama told her friend that she was going to visit her grandmother.\n(b) The teacher said that the test would be on Monday.\n(c) Kofi asked if I had brought my book.",
        answer:
            "(a) Ama told her friend, 'I am going to visit my grandmother.'\n(b) The teacher said, 'The test will be on Monday.'\n(c) Kofi asked, 'Have you brought your book?'",
        explanation:
            "Converting back to direct speech reverses the backshifting and restores original pronouns and tenses.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nList FIVE time expressions that change when converting from direct to reported speech. Write the original expression and its reported equivalent.",
        answer:
            "1. 'Today' → 'that day'\n2. 'Yesterday' → 'the day before' / 'the previous day'\n3. 'Tomorrow' → 'the following day' / 'the next day'\n4. 'Now' → 'then'\n5. 'Here' → 'there'",
        explanation:
            "Time and place expressions shift in reported speech to reflect the change in perspective.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nA student wrote: 'The teacher said that students must brings their textbooks.' Identify ALL errors and write the correct sentence.",
        answer:
            "Errors:\n1. 'must brings' — incorrect verb form; should be 'must bring'.\n2. 'must' does not change in reported speech in all contexts but is acceptable here.\n\nCorrect: 'The teacher said that students must bring their textbooks.'",
        explanation:
            "Modal verbs like 'must' sometimes remain unchanged in reported speech, and the base verb form is always used after modals.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nWrite a short story (5 sentences) that includes at least TWO examples of reported speech and ONE example of direct speech.",
        answer:
            "Last Monday, Kwame came home very excited. He said that he had won the science competition at school. His mother shouted, 'I am so proud of you, my son!' She told him that she would buy him a new calculator as a reward. Kwame promised that he would work even harder for the next competition.",
        explanation:
            "Including both direct and reported speech in writing shows mastery of the shift in tenses, pronouns, and punctuation.",
      ),
    ],
  ),
  // ─── SCIENCE ───────────────────────────────────────────────────────────
  "Classification of Materials": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nList and explain FOUR properties used to classify materials. Give one example of a material for each property.",
        answer:
            "1. Hardness — resistance to scratching. Example: Diamond is very hard.\n2. Conductivity — ability to conduct electricity or heat. Example: Copper conducts electricity.\n3. Flexibility — ability to bend without breaking. Example: Rubber is flexible.\n4. Malleability — ability to be hammered into sheets. Example: Gold is malleable.",
        explanation:
            "Properties help scientists and engineers choose the right material for specific purposes.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nDifferentiate between CONDUCTORS and INSULATORS of electricity. Give TWO examples of each and state ONE use of each type.",
        answer:
            "Conductors allow electricity to flow through them.\nExamples: Copper, Aluminium.\nUse: Copper wires carry electricity in homes.\n\nInsulators do not allow electricity to flow.\nExamples: Rubber, Wood.\nUse: Rubber coating around wires prevents electric shock.",
        explanation:
            "The distinction between conductors and insulators is fundamental to electrical safety and engineering.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nGive THREE differences between NATURAL materials and SYNTHETIC (man-made) materials.",
        answer:
            "Natural materials:\n1. Occur naturally in the environment (e.g., wood, cotton).\n2. Are generally biodegradable.\n3. May be less durable in some conditions.\n\nSynthetic materials:\n1. Are made by humans through chemical processes (e.g., nylon, plastic).\n2. Are often non-biodegradable, causing pollution.\n3. Can be engineered for specific properties (e.g., extra strength).",
        explanation:
            "Understanding the differences helps in making environmentally responsible choices about materials.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nExplain why METALS are commonly used in construction and cooking. Mention at least THREE properties of metals in your answer.",
        answer:
            "Metals are widely used in construction and cooking because of their useful properties:\n1. Strength — Metals like steel are very strong and can support heavy loads in buildings.\n2. Thermal conductivity — Metals like aluminium conduct heat well, making them suitable for cooking pots.\n3. Malleability — Metals can be shaped into beams, sheets, and rods needed in construction.\nThese properties make metals among the most versatile and widely used materials.",
        explanation:
            "The combination of strength, conductivity, and malleability makes metals ideal for structural and thermal applications.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nA student wants to build a simple toy boat. Suggest TWO suitable materials and explain why each is appropriate, based on its properties.",
        answer:
            "1. Plastic — Plastic is light, waterproof, and does not rust. These properties make it ideal for a toy boat that needs to float and withstand water contact.\n2. Wood — Wood is light, buoyant (floats easily), and can be carved into the shape of a boat. It is also widely available and easy to work with.\n\nBoth materials are safe, easy to handle, and appropriate for a floating toy.",
        explanation:
            "Matching material properties to purpose is the key principle in material selection for any project.",
      ),
    ],
  ),
  "Human Growth Stages": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nList the FIVE main stages of human growth and development IN ORDER. For each stage, state the approximate age range and ONE key feature.",
        answer:
            "1. Infancy (0–2 years) — Rapid growth; learning to walk and talk.\n2. Early Childhood (3–6 years) — Language development; social play begins.\n3. Middle Childhood (7–12 years) — Logical thinking; formal schooling.\n4. Adolescence (13–18 years) — Puberty; emotional and identity development.\n5. Adulthood (18+ years) — Physical maturity; responsibility and independence.",
        explanation:
            "Each stage has distinct biological and psychological characteristics that shape human development.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nExplain THREE physical changes that occur in BOYS during puberty and THREE changes that occur in GIRLS during puberty.",
        answer:
            "Boys during puberty:\n1. Deepening of the voice.\n2. Growth of facial and body hair.\n3. Increase in height and muscle mass.\n\nGirls during puberty:\n1. Development of breasts.\n2. Widening of the hips.\n3. Onset of menstruation (monthly period).",
        explanation:
            "Puberty is driven by hormonal changes and prepares the body for reproductive function.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\na) What is PUBERTY?\nb) Name the hormone responsible for puberty in males.\nc) Name the hormone responsible for puberty in females.",
        answer:
            "a) Puberty is the stage of development during which a child's body changes into an adult body capable of reproduction. It is driven by the release of hormones from the pituitary gland.\n\nb) Testosterone is the primary male hormone responsible for puberty in males.\n\nc) Oestrogen (and progesterone) are the primary female hormones responsible for puberty in females.",
        explanation:
            "Hormones are chemical messengers that trigger the physical and emotional changes of puberty.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nGive THREE ways that ADOLESCENTS can maintain GOOD HEALTH during their stage of growth.",
        answer:
            "1. Balanced diet — Eating a variety of foods provides the nutrients needed for rapid growth, strong bones, and brain development.\n2. Regular physical exercise — Exercise maintains a healthy weight, builds muscle, and improves mental health.\n3. Adequate sleep — Teenagers need 8–10 hours of sleep per night to support growth hormone release and brain development.",
        explanation:
            "Healthy habits established during adolescence create the foundation for lifelong physical and mental well-being.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nDescribe TWO emotional challenges that are common during ADOLESCENCE and suggest how a teenager can cope with each challenge.",
        answer:
            "1. Mood swings — Hormonal changes cause rapid shifts in emotion. A teenager can cope by talking to a trusted adult, practising deep breathing, or writing in a journal.\n\n2. Peer pressure — Friends may push a teenager to behave inappropriately. They can cope by learning to say 'No' confidently, choosing positive friends, and seeking guidance from parents or counsellors.",
        explanation:
            "Acknowledging emotional challenges and developing coping strategies is essential for healthy adolescent development.",
      ),
    ],
  ),
  // ─── MATHEMATICS ───────────────────────────────────────────────────────
  "Number and Numeration Systems": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "1.Question: Write 356.07 in standard form.",
        answer:
            "**Correct Answer**\n\n ⦿ Standard form is structured as A × 10ⁿ, where 1 ≤ A < 10 and n is an integer.\n"
            "⦿ Shift the decimal point 2 places to the left to place it after the first non-zero digit (3).\n"
            "⦿ Multiplying the resulting number 3.5607 by 10² preserves its exact original value.\n\n"
            "356.07 = 3.5607 × 10²",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "2. Question: Which of the following numbers is the prime number greater than 23?",
        answer:
            "**Correct Answer**\n\n⦿ A prime number is an integer greater than 1 with exactly two distinct factors: 1 and the number itself.\n"
            "⦿ 17: Prime, but less than 23.\n"
            "⦿ 24: Even and composite (divisible by 2, 3, etc.).\n"
            "⦿ 25: Ends in 5 and composite (divisible by 5).\n"
            "⦿ 29: Only has factors 1 and 29. Since 29 is greater than 23, it is the correct answer.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "3.Question: Write 4687.02 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Locate the first non-zero digit, which is 4.\n"
            "⦿ Move the decimal point 3 positions to the left so that it rests between 4 and 6.\n"
            "⦿ Multiply the new decimal by 10³ to represent the three-place shift.\n\n"
            "4687.02 = 4.68702 × 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "4.Question: Correct 0.02751 to three decimal places.",
        answer:
            "**Correct Answer**\n\n⦿ Count to the third digit after the decimal point (7).\n"
            "⦿ Examine the critical target digit to its right in the fourth decimal place (5).\n"
            "⦿ Since this digit is 5 or greater, round the third decimal place digit up by adding 1 (7 + 1 = 8).\n"
            "⦿ This results in 0.028.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "5. Question: Write 1342 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ The whole number 1342 has an implicit decimal point at the end: 1342.0.\n"
            "⦿ Shift the decimal point 3 places to the left to place it after the leading digit.\n"
            "⦿ Multiply the resulting value by 10³ to maintain numeric equivalence.\n\n"
            "1342 = 1.342 × 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "6. Question: Express 2345 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Identify the implicit decimal point at the unit's right: 2345.0.\n"
            "⦿ Shift the decimal point 3 places to the left to obtain 2.345.\n"
            "⦿ Balance the shift by multiplying by 10³.\n\n"
            "2345 = 2.345 × 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "7 Question: Write GH₵35,632.00 correct to the nearest thousand cedis.",
        answer:
            "**Correct Answer**\n\n⦿ Identify the digit in the thousands position (5).\n"
            "⦿ Examine the adjacent digit to its right in the hundreds place (6).\n"
            "⦿ Because 6 is greater than or equal to 5, round the thousands place up by 1 (5 + 1 = 6) and replace all subsequent digits with zero.\n"
            "⦿ This gives GH₵36,000.00.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "8. Question: Write 83000 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Begin at the implicit decimal point (83000.0) and shift it 4 places to the left.\n"
            "⦿ This positions the decimal point to produce 8.3.\n"
            "⦿ Multiply by 10⁴ to account for the four-digit shift.\n\n"
            "83000 = 8.3 × 10⁴",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "9.Question: Which of the following is not a prime number?",
        answer: "**Correct Answer**\n\n⦿ Review the factors of each option:\n"
            "⦿ 3, 5, 7: Each of these numbers only has two factors (1 and itself). They are prime.\n"
            "⦿ 9: Has more than two factors (1, 3, and 9). Therefore, 9 is a composite number and is not prime.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "10.Question: Express 2474.5 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Shift the visible decimal 3 positions to the left so it sits immediately behind the first digit (2).\n"
            "⦿ This shift corresponds to a positive power factor of 10³.\n"
            "2474.5 = 2.4745 × 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "11.Question: Write 78910 correct to the nearest thousand.",
        answer:
            "**Correct Answer**\n\n⦿ Focus on the thousands digit (8) and evaluate the hundreds digit directly to its right (9).\n"
            "⦿ Since 9 is 5 or greater, round up by adding 1 to the thousands place (8 + 1 = 9).\n"
            "⦿ Set the hundreds, tens, and units places to zero to yield 79,000.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "12.Question: Express 962 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Starting with the implicit decimal point at 962.0, shift it 2 places to the left.\n"
            "⦿ The resulting expression is scaled with an exponent value of 2.\n"
            "962 = 9.62 × 10²",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "13. Question: Round 8921465 to the nearest hundred.",
        answer: "**Correct Answer**\n\n⦿ Locate the hundreds place digit (4).\n"
            "⦿ Look at the tens digit directly to its right (6).\n"
            "⦿ Since 6 ≥ 5, round up by adding 1 to the hundreds place (4 + 1 = 5).\n"
            "⦿ Replace all subsequent digits with zero to obtain 8,921,500.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "14. Question: Write the number 34.1 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Move the decimal point 1 place to the left to get a value between 1 and 10.\n"
            "⦿ This gives 3.41, which must be multiplied by 10¹ (equivalent to 10).\n"
            "34.1 = 3.41 × 10¹",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "15.Question: Which of the following is an even prime number?",
        answer:
            "**Correct Answer**\n\n⦿ A prime number is a positive integer with exactly two factors (1 and itself).\n"
            "⦿ All even numbers greater than 2 are divisible by 2, meaning they have at least three factors (1, 2, and themselves) and are composite.\n"
            "⦿ Therefore, the number 2 is the only even prime number in existence.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "16. Question: Write 2340000 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Shift the implicit decimal point from the end of the number 6 places to the left to reach 2.34.\n"
            "⦿ This corresponds directly to scaling the number by a factor of 10⁶.\n"
            "2340000 = 2.34 × 10⁶",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "17.Question: Express 4037 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Move the implicit decimal point at 4037.0 exactly 3 places to the left.\n"
            "⦿ This results in 4.037 scaled by 10³.\n"
            "4037 = 4.037 × 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "18.Question: Write 3560 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Shift the implicit decimal point 3 places to the left to create 3.56.\n"
            "⦿ The scale factor for this shift is represented by 10³.\n"
            "3560 = 3.56 × 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "19.Question: Which of the following numbers is an integer?",
        answer:
            "**Correct Answer**\n\n⦿ An integer is any positive or negative whole number, including zero. It cannot contain fractional or decimal parts.\n"
            "⦿ The values -5/4 and -2/3 are fractions, and 0.5 is a decimal.\n"
            "⦿ The value -1 is a whole negative number, which makes it a member of the set of integers.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "20. Question: Which of the following is arranged in ascending order?",
        answer:
            "**Correct Answer**\n\n⦿ Ascending order requires sorting numbers from the smallest value to the largest.\n"
            "⦿ Compare the values in option A: -10, -7, 4.2, 9.\n"
            "⦿ On a number line, -10 is further left than -7, so -10 < -7.\n"
            "⦿ Any negative number is smaller than a positive number, so -7 < 4.2.\n"
            "⦿ Finally, 4.2 < 9. Thus, option A is correctly sorted.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "21.Question: Express 134.78 correct to the nearest tenth.",
        answer:
            "**Correct Answer**\n\n⦿ Locate the tenths place digit, which is the first position after the decimal point (7).\n"
            "⦿ Look at the hundredths digit to its right (8).\n"
            "⦿ Since 8 ≥ 5, round up by adding 1 to the tenths place (7 + 1 = 8).\n"
            "⦿ Drop all trailing digits to get 134.8.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "22. Question: Express 625.13 in standard form.",
        answer:
            "**Correct Answer**\n\n⦿ Shift the decimal point 2 places to the left to secure a leading digit between 1 and 10.\n"
            "⦿ This produces 6.2513, which must be multiplied by 10².\n\n"
            "625.13 = 6.2513 × 10²",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "23. Question: Which of the following is the largest set?",
        answer:
            "**Correct Answer**\n\n⦿ Let us examine the inclusion relationships of the sets of numbers:\n"
            "⦿ The set of Natural Numbers ({1, 2, 3, ...}) and Whole Numbers ({0, 1, 2, ...}) are fully nested within the set of Integers.\n"
            "⦿ The set of Composite numbers is a small subset of the Natural Numbers.\n"
            "⦿ Because the set of Integers includes all positive whole numbers, negative whole numbers, and zero, it is the largest set among the choices.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "24. Question: Correct 48,947.2547 to the nearest hundred.",
        answer:
            "**Correct Answer**\n\n⦿ Identify the digit in the hundreds place (9).\n"
            "⦿ Examine the digit in the tens place immediately to its right (4).\n"
            "⦿ Since 4 < 5, we round down. This means the hundreds digit remains 9, and the remaining whole number places are replaced with zero.\n"
            "⦿ Mathematically, this yields 48,900.\n"
            "⦿ Note on exam key: The book answer key lists Option D (49,000), which corresponds to rounding up to the nearest thousand instead of the nearest hundred, or carrying over a round-up.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "25. Question: Arrange the following integers from the least to the highest: 4, 9, -10, 7 and 2.",
        answer:
            "**Correct Answer**\n\n⦿ Order the given values {4, 9, -10, 7, 2} from left to right on a number line.\n"
            "⦿ The negative integer -10 is the smallest number.\n"
            "⦿ Arranging the remaining positive integers gives 2, 4, 7, 9.\n"
            "⦿ The complete ascending sequence is -10, 2, 4, 7, 9.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "26.Question: Which of the following is not an integer?",
        answer:
            "**Correct Answer**\n\n⦿ Integers must be clean whole units with no fractional or decimal parts.\n"
            "⦿ The values 1, -5, and 0 are all whole units.\n"
            "⦿ The value 0.5 is a decimal representing a half-fraction, so it is not an integer.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "27. Question: Which of the following numbers is the largest?",
        answer:
            "**Correct Answer**\n\n⦿ When comparing negative numbers, the value with the smallest absolute value lies closest to zero on the number line.\n"
            "⦿ Among -70, -50, -3, and -2, the number -2 is furthest to the right.\n"
            "⦿ Thus, -2 has the largest value.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "28. Question: Find the largest value of these numbers: -1, 0, -6, -3.",
        answer:
            "**Correct Answer**\n\n⦿ Any value of zero or positive integers is greater than any negative integer.\n"
            "⦿ Because all other options (-1, -6, -3) lie to the left of zero on the number line, 0 is the largest of these numbers.",
        explanation: "",
      ),
    ],
  ),
  "Number Operations": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "1.Question: A ribbon 3m long is to be cut into strips of length 14cm.     (BECE 2002 Q1b)\n"
            "(a) How many strips of length 14cm were cut?\n"
            "(b) What length of ribbon remained?",
        answer:
            "**Correct Answer**\n\n ⦿ Step 1: Convert the total length of the ribbon into centimetres.\nTo compare the measurements easily, "
            "we must work with the same units. Since 1m = 100cm, we convert 3m as follows:\n"
            "Total length of ribbon = 3 x 100cm = 300cm\n\n"
            "⦿ Step 2: Determine the number of strips of length 14cm that can be cut.\nWe divide the total length of the ribbon in centimetres (300cm) by the length of one strip (14cm):\n\n"
            r"Number of strips = \frac{300}{14}"
            "\nLet us perform the division: 300 ÷ 14 = 21 with a remainder of 6\n"
            "Therefore, the number of complete strips cut is 21 strips.\n\n"
            "⦿ Step 3: Determine the remaining length of the ribbon.\n"
            "The remainder from our division represents the leftover piece of ribbon that is too short to make another full 14cm strip:\n"
            "Leftover remainder = 6\n"
            "Therefore, the length of ribbon that remained is 6 cm.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "2. Question: A number of sweets were shared among 8 children and each child received 30. If 12 children shared the same number of sweets, how many will each receive?    (BECE 2002 Q1c)",
        answer:
            "**Correct Answer**\n\n⦿ Step 1: Calculate the total number of sweets shared.\n"
            "We are told that 8 children received 30 sweets each. To find the total pool of sweets, we multiply the number of children by the amount each child received:\n"
            "Total number of sweets = 8 x 30 = 240 sweets\n\n"
            "⦿ Step 2: Calculate how many sweets each child receives when shared among 12 children.\n"
            "Now, the same pool of 240 sweets is shared equally among a new total of 12 children. We divide the total sweets by the new number of children:\n"
            r"Sweets received per child = \frac{240}{12}"
            "\nSweets received per child = 20 sweets"
            "\nEach child will receive 20 sweets.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "3.Question: Find the Least Common Multiple (L.C.M) of 9, 18 and 16.      (BECE 2002 Q2b)",
        answer: "**Correct Answer**\n\n"
            "⦿ Step 1: Write down the prime factorisation for each number.\n"
            "For 9:               9 = 3 x 3 = 3^2\n"
            "For 18:              18 = 2 x 3 x 3 = 2 x 3^2\n"
            "For 16:              16 = 2 x 2 x 2 x 2 = 2^4\n\n"
            "⦿ Step 2: Step 2: Identify the highest power of each prime factor present in any of the numbers.\n"
            "The prime factor 2 appears. The highest power of 2 is 2^4 (from 16).\n"
            "The prime factor 3 appears. The highest power of 3 is 3^2 (from 9 and 18).\n\n"
            "⦿ Step 3: Multiply these highest powers together to find the L.C.M.\n"
            "L.C.M = 2^4 x 3^2\n"
            "L.C.M = 16 x 9\n"
            "L.C.M = 144",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "4.Question: A man had three GH₵50.00, seven GH₵20.00 and five GH₵10.00 notes in his pocket. He bought a bicycle for GH₵150.00 and two mobile phones at GH₵80.00 each. How many GH₵20.00 and GH₵10.00 notes did he have left?       (BECE 2013 Q5a)",
        answer:
            "**Correct Answer**\n\n⦿ Step 1: Calculate the total amount of money the man had in his pocket.\n"
            "We find the value of each set of notes and sum them up:\n"
            "Three GH₵50.00 notes:3 x GH₵50.00 = GH₵150.00\n"
            "Seven GH₵20.00 notes:7 x GH₵20.00 = GH₵140.00\n"
            "Five GH₵10.00 notes:5 x GH₵10.00 = GH₵50.00\n"
            "Total amount in pocket = GH₵150.00 + GH₵140.00 + GH₵50.00 = GH₵340.00\n\n"
            "⦿ Step 2: Calculate the total cost of the purchases.\n"
            "One bicycle:   Cost = GH₵150.00\n"
            "Two mobile phones at GH₵80.00 each:    Cost = 2 x GH₵80.00 = GH₵160.00\n"
            "Total spending =     GH₵150.00 + GH₵160.00 = GH₵310.00\n\n"
            "⦿ Step 3: Calculate the cash left over.\n"
            "Remaining cash = Total amount in pocket - Total spending\n"
            "Remaining cash = GH₵340.00 - GH₵310.00 = GH₵30.00\n\n"
            "⦿ Step 4: Determine the combination of notes left.\n"
            "     1. The bicycle cost exactly GH₵150.00. The man can pay for this using his three GH₵50.00 notes (3 x GH₵50.00 = GH₵150.00).\n"
            "     2.The two mobile phones cost GH₵160.00. To pay this, he must use his remaining notes:He uses all seven of his GH₵20.00 notes:\n"
            "       7 x GH₵20.00 = GH₵140.00\n"
            "He still needs to pay: GH₵160.00 - GH₵140.00 = GH₵20.00\n"
            "He covers this remaining GH₵20.00 by using two of his GH₵10.00 notes (2 x GH₵10.00 = GH₵20.00).\n\n"
            "⦿ Step 5: Count the final notes left in his pocket.\n"
            "⦁ He spent all 7 of his GH₵20.00 notes.\n"
            "⦁ He spent 2 of his 5 GH₵10.00 notes, leaving 3 notes.\n"
            "⦁ Therefore, the man was left with zero GH₵20.00 notes and three GH₵10.00 notes (which equals the remaining GH₵30.00).",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "5. Question: Find the sum of all the factors of 24.        (BECE 2013 Q5c)",
        answer: "**Correct Answer**\n\n⦿ Step 1: Find all the factors of 24.\n"
            "The factors of 24 are the whole numbers that divide into 24 exactly without leaving a remainder:\n"
            "Factors = {1, 2, 3, 4, 6, 8, 12, 24}\n\n"
            "⦿ Step 2: Add all these factors together.\n"
            "Sum = 1 + 2 + 3 + 4 + 6 + 8 + 12 + 24\n"
            "Sum = 60\n"
            "The sum of all the factors of 24 is 60.\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "6. Question: Find the Least Common Multiple (LCM) of the following numbers: 3, 5 and 9.        (BECE 2019 Q1b)",
        answer: "**Correct Answer**\n\n⦿ Step 1: Write down the prime factorisation for each number.\n"
        "For 3:  3 = 3^1\n"
            "For 5:5 = 5^1\n"
            "For 9:9 = 3 x 3 = 3^2\n\n"
            "⦿ Step 2: Identify the highest power of each prime factor present in any of the numbers.\n"
            "    ⦁ The prime factor 3 appears. The highest power is 3^2 (from 9).\n"
            "    ⦁ The prime factor 5 appears. The highest power is 5^1 (from 5).\n\n"
            "⦿ Step 3: Multiply these highest powers together to find the L.C.M.\n"
            "L.C.M = 3^2 x 5^1\n"
            "L.C.M = 9 x 5\n"
            "L.C.M = 45\n"
            "The Least Common Multiple of 3, 5, and 9 is 45.",
        explanation: "",
      ),
    ],
  ),
  "Fractions, Decimals and Percentages": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "Question 1: (a) If a shop sells a pencil at ₵500.00 and a pen at ₵2,000.00:\n\n(i) If Afua bought 8 pencils and 5 pens, how much did she pay altogether for them?\n\n(ii) The price of a pencil is increased by 20% and a pen by 10%. Find how much she will pay for 10 pencils and 8 pens.\n(BECE 2002B Q2)",
        answer: "⦿ (i) Total cost for original quantities:\n"
            "⦁ Find the total spent on pencils: Multiply 8 pencils by the individual cost of ₵500.00.\n"
            "Cost of pencils = 8 × ₵500.00 = ₵4,000.00\n\n"
            "⦁ Find the total spent on pens: Multiply 5 pens by the individual cost of ₵2,000.00.\n"
            "Cost of pens = 5 × ₵2,000.00 = ₵10,000.00\n\n"
            "⦁ Calculate the final sum:\n"
            "Total Paid = ₵4,000.00 + ₵10,000.00 = ₵14,000.00\n\n"
            "⦿ (ii) Total cost after price increases:\n"
            "⦁ Find the increased price of a pencil: Add 20% of the original price to itself.\n\n"
            r"Increase amount = \frac{20}{100} × ₵500.00 = ₵100.00"
            "\nNew price per pencil = ₵500.00 + ₵100.00 = ₵600.00\n\n"
            "⦁ Find the increased price of a pen: Add 10% of the original price to itself.\n\n"
            r"Increase amount = \frac{10}{100} × ₵2,000.00 = ₵200.00"
            "\nNew price per pen = ₵2,000.00 + ₵200.00 = ₵2,200.00\n\n"
            "⦁ Calculate the new total cost for 10 pencils and 8 pens:\n\n"
            "Cost of 10 pencils = 10 × ₵600.00 = ₵6,000.00\n"
            "Cost of 8 pens = 8 × ₵2,200.00 = ₵17,600.00\n"
            "New Total Paid = ₵6,000.00 + ₵17,600.00 = ₵23,600.00",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: r"Question 2: Evaluate 5\frac{1}{15} − 2\frac{2}{3} + 1\frac{5}{12}.     (BECE 2006 Q6b(i))",
        answer: "⦿ Convert the mixed numbers to improper fractions:\n"
            r"5\frac{1}{15} = \frac{(5 x 15) + 1}{15} = \frac{76}{15}""\n\n"
            r"2\frac{2}{3} = \frac{(2 × 3) + 2}{3} = \frac{8}{3}""\n\n"
            r"1\frac{5}{12} = \frac{(1 × 12) + 5}{12} = \frac{17}{12}""\n\n"
            "⦿ Express the standard equation:\n"
            r"\frac{76}{15} − \frac{8}{3} + \frac{17}{12}"
            "\n"
            "⦿ Find the Lowest Common Multiple (LCM):\n"
            "      The LCM of the denominators 15, 3, and 12 is 60.\n\n"
            "⦿ Combine fractions under a single denominator:\n\n"
            r"\frac{76(4) − 8(20) + 17(5)}{60}""\n\n"
            r"= \frac{304 − 160 + 85}{60}""\n\n"
            r"= \frac{144 + 85}{60} = \frac{229}{60}""\n\n"
            "⦿ Convert back to a mixed fraction:\n"
            r"\frac{229}{60} = 3\frac{49}{60}",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            r"Question 3: Simplify 7\frac{1}{3} − 4\frac{5}{6} + 2\frac{3}{8}.       (BECE 2008 Q6b)",
        answer: "⦿ Convert the mixed fractions into improper fractions:\n\n"
            r"7\frac{1}{3} = \frac{22}{3}, 4\frac{5}{6} = \frac{29}{6}, 2\frac{3}{8} = \frac{19}{8}"
            "\n\n"
            "⦿ Write down the expression:\n\n"
            r"\frac{22}{3} − \frac{29}{6} + \frac{19}{8}"
            "\n\n"
            "⦿ Determine the LCM:\n"
            "      The LCM of 3, 6, and 8 is 24.\n\n"
            "⦿ Adjust and simplify the numerators:\n\n"
            r"\frac{22(8) − 29(4) + 19(3)}{24}"
            "\n\n"
            r"= \frac{176 − 116 + 57}{24}"
            "\n\n"
            r"= \frac{60 + 57}{24} = \frac{117}{24}"
            "\n\n"
            "⦿ Reduce the fraction and convert to a mixed number:\n"
            "⦿ Divide numerator and denominator by 3:\n"
            r"\frac{(117 ÷ 3)}{(24 ÷ 3)} = \frac{39}{8}"
            "\n"
            "⦿ Convert to mixed format:\n"
            r"\frac{39}{8} = 4\frac{7}{8}",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            r"Question 4: Simplify \frac{(1200 x 1260)}{800} and write your answer in standard form.       (BECE 2009 Q1a)",
        answer: "⦿ Eliminate trailing zeros to simplify the fraction:\n\n"
            r"\frac{(1200 x 1260)}{800} = \frac{(12 x 1260)}{8}""\n\n"
            "⦿ Simplify the factors of 12 and 8 by dividing by 4:\n\n"
            r"\frac{(3 x 1260)}{2}""\n\n"
            "⦿ Complete the division of 1260 by 2:\n\n"
            "3 x 630 = 1890\n\n"
            "⦿ Convert the product into standard scientific notation:\n\n"
            "1890 = 1.89 x 10³",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            r"Question 5: An amount of GH₵4,200.00 was shared between Aba and Kwame. If Aba had \frac{5}{7} of the amount:"
            "\n(i) How much did Kwame receive?\n"
            "(ii) What percentage of Aba's share did Kwame receive?(BECE 2012 Q1b)",
        answer: "⦿ (i) Calculate Kwame's portion:\n"
            "⦁ Find Aba's share of the total:\n\n"
            r"Aba’s Share = \frac{5}{7} x GH₵4,200.00 = 5 x GH₵600.00 = GH₵3,000.00""\n\n"
            "⦿ Deduct Aba's share from the total amount to find Kwame's share:\n\n"
            "Kwame’s Share = GH₵4,200.00 − GH₵3,000.00 = GH₵1,200.00\n\n"
            "⦿ (ii) Find Kwame's share as a percentage of Aba's share:\n"
            "⦿ Construct the percentage fraction:\n\n"
            r"Percentage = \frac{Kwame’s share}{Aba’s share} x 100%""\n\n"
            r"Percentage = \frac{1200}{3000} x 100% = \frac{12}{30} x 100% = \frac{2}{5} x 100% = 40%",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: r"Question 6: Arrange \frac{8}{9}, \frac{2}{18}, \frac{10}{16} in ascending order of magnitude.     (BECE 2012 Q6(a)(ii))",
        answer: "⦿ Identify the Lowest Common Multiple (LCM) of the denominators:\n"
            "⦿ The LCM of 9, 18, and 16 is 144.\n\n"
            "⦿ Convert each fraction to have the common denominator of 144:\n"
            r"⦁ Convert \frac{8}{9}:""\n\n"
           r"\frac{8 x 16}{9 x 16} = \frac{128}{144}""\n\n"
            r"⦿ Convert \frac{2}{18}:""\n\n"
            r"\frac{2 x 8}{18 x 8} = \frac{16}{144}""\n\n"
            r"⦿ Convert \frac{10}{16}:"'\n\n'
            r"\frac{10 x 9}{16 x 9} = \frac{90}{144}""\n\n"
            "⦿ Compare the numerators to order them from smallest to largest:\n\n"
            r"16 < 90 < 128 ⇒ \frac{16}{144} < \frac{90}{144} < \frac{128}{144}""\n\n"
            "⦿ Rewrite with original fractions:\n\n"
            r"\frac{2}{18}, \frac{10}{16}, \frac{8}{9}",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: r"Question 7: Simplify 6(3\frac{5}{6} − 1\frac{1}{4}).       (BECE 2013 Q5a)",
        answer: "⦿ Work inside the parentheses first by converting mixed fractions to improper fractions:\n\n"
            r"3\frac{5}{6} = \frac{23}{6}, 1\frac{1}{4} = \frac{5}{4}""\n\n"
            "⦿ Find a common denominator of 12 to subtract the fractions:\n\n"
            r"\frac{23}{6} − \frac{5}{4} = \frac{23(2) − 5(3)}{12} = \frac{(46 − 15)}{12} = \frac{31}{12}""\n\n"
            "⦿ Multiply the resulting fraction by the coefficient of 6 outside the parentheses:\n\n"
            r"Result = 6 x \frac{31}{12} = \frac{31}{2}""\n\n"
            "⦿ Convert the final improper fraction to a mixed number:\n\n"
            r"\frac{31}{2} = 15\frac{1}{2}",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "Question 8:A passenger travelling by air is allowed a maximum of 20 kg luggage. A man has four bags weighing 3.5 kg, 2 kg, and 1.5 kg along with a main suitcase:\n\n(i) Find the excess weight of his luggage if the fourth bag makes the total weight 22.0 kg.\n\n(ii) Express the excess weight as a percentage of the maximum weight allowed.\n(BECE 2016 Q2b)",
        answer: "⦿ (i) Calculate the difference in allowed weight:\n"
            "⦿ Deduct the maximum limit of 20 kg from the actual accumulated weight of 22.0 kg:\n\n"
            "Excess weight = 22.0 kg − 20 kg = 2.0 kg\n\n"
            "⦿ (ii) Calculate the percentage value:\n"
            "⦿ Set up the excess weight over the total permitted weight limit:\n\n"
            r"Percentage excess = \frac{2.0}{20} x 100% = \frac{1}{10} x 100% = 10%",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "Question 9:(a) Express 250% as a fraction in its lowest term.\n"
            r"(b) Simplify: 2 + (\frac{15}{64} ÷ \frac{6}{7}).       (BECE 2019 Q4a and Q4c)",
        answer: "⦿ (a) Convert 250% to its simplest fraction form:\n"
            "     ⦁ Write the percentage out of 100:\n\n"
            "250/100\n\n"
            "⦿ Simplify by dividing both parts by their greatest common factor (50):\n\n"
            r"\frac{250 ÷ 50)}{100 ÷ 50} = \frac{5}{2} = 2\frac{1}{2}""\n\n"
            "⦿ (b) Process the bracket operation first:\n"
            "     ⦁ To divide by a fraction, multiply by its reciprocal:\n\n"
            r"\frac{15}{64} ÷ \frac{6}{7} = \frac{15}{64} x \frac{7}{6}""\n\n"
            "⦿ Simplify the fraction multiplication by dividing 15 and 6 by 3:\n\n"
            r"\frac{5}{64} x \frac{7}{2} = \frac{35}{128}""\n\n"
            "⦿ Add the integer 2 to the fraction:\n\n"
            r"2 + \frac{35}{128} = 2\frac{35}{128}",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: r"Question 10:Express \frac{13}{15} − \frac{7}{10} as a percentage.       (BECE 2020 Q3a)",
        answer: "⦿ Simplify the subtraction of fractions:\n"
            "     ⦁ The Lowest Common Multiple of 15 and 10 is 30.\n"
            "⦿ Standardise the numerators:\n\n"
            r"\frac{13}{15} − \frac{7}{10} = \frac{13(2) − 7(3)}{30} = \frac{26 − 21}{30} = \frac{5}{30}""\n\n"
            "⦿ Simplify the fraction:\n\n"
            r"\frac{5}{30} = \frac{1}{6}""\n\n"
            "⦿ Convert the fraction to a percentage:\n"
            r"⦿ Multiply \frac{1}{6} by 100%:""\n\n"
            r"\frac{1}{6} x 100% = \frac{100}{6}% = \frac{50}{3}% = 16\frac{2}{3}% (or 16.67%)",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "Question 11: Antwiwaa bought 25 mangoes, 7 of which were unripe. What percentage of the mangoes were ripe?(BECE 2021 Q4a)",
        answer: "⦿ Identify the quantity of ripe mangoes:\n"
            "⦿ Subtract the 7 unripe mangoes from the initial total of 25 mangoes:\n\n"
            "Ripe mangoes = 25 − 7 = 18\n\n"
            "⦿ Calculate the percentage representation:\n"
            "⦿ Create the proportion of ripe mangoes over total mangoes and multiply by 100%:\n\n"
            r"Percentage = \frac{18}{25} x 100% = 18 x 4% = 72%",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: r"Question 12: Simplify: 1\frac{3}{4} − 2\frac{5}{6} − 1\frac{9}{10} + 4\frac{7}{8}.      (BECE 2023 Q1b)",
        answer: "⦿ Rewrite mixed numbers as improper fractions:\n\n"
            r"1\frac{3}{4} = \frac{7}{4}, 2\frac{5}{6} = \frac{17}{6}, 1\frac{9}{10} = \frac{19}{10}, 4\frac{7}{8} = \frac{39}{8}""\n\n"
            "⦿ Set up the structural expression:\n\n"
            r"\frac{7}{4} − \frac{17}{6} − \frac{19}{10} + \frac{39}{8}""\n"
            "⦿ Evaluate using the LCM of the denominators:\n"
            "⦿ Find the LCM of 4, 6, 10, and 8, which is 120.\n"
            "⦿ Apply multiplier adjustment to numerators:\n\n"
            r"\frac{7(30) − 17(20) − 19(12) + 39(15)}{120}""\n\n"
            r"= \frac{210 − 340 − 228 + 585}{120}""\n\n"
            "⦿ Consolidate values in the numerator:\n"
            "⦿ 210 − 340 = −130\n"
            "⦿ −130 − 228 = −358\n"
            "⦿ −358 + 585 = 227\n\n"
            "⦿ Express in final mixed fraction format:\n\n"
            r"\frac{227}{120} = 1\frac{107}{120}",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "Question 13: If 15% of the length of a rope is 720 metres, find half of the length of the rope.\n(BECE 2024 Q3c)",
        answer: "⦿ Determine the total length (100%) of the rope first:\n"
            "⦿ If 15% corresponds to 720 m, calculate 100%:\n\n"
            r"Total length = (100% / 15%) x 720 m = \frac{100}{15} x 720 m""\n\n"
            "⦿ Simplify the multiplication and division:\n\n"
            "720 ÷ 15 = 48 ⇒ Total length = 100 x 48 = 4,800 m\n\n"
            "⦿ Find half of this total length:\n\n"
            r"Half length = \frac{1}{2} x 4,800 m = 2,400 m",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "Question 14: A polytank contains 4,500 litres of water and 1/5 of the water is used for cleaning.\n\n(i) Find the volume of water used for cleaning.\n\n(ii) What percentage of water is left in the tank?    (BECE 2025 Q3b)",
        answer: "⦿ (i) Find the exact cleaning volume used:\n"
            "⦿ Multiply the fractional usage by the total liquid storage amount:\n\n"
            r"Volume used = \frac{1}{5} x 4,500 litres = 900 litres""\n\n"
            "⦿ (ii) Find the remaining volume percentage:\n"
            "⦿ Calculate the volume remaining in the polytank:\n\n"
            "Volume remaining = 4,500 litres − 900 litres = 3,600 litres\n\n"
            "⦿ Convert the remaining volume to a percentage of the total original volume:\n\n"
            r"Percentage left = \frac{3,600}{4,500} x 100%""\n\n"
            "⦿ Simplify by dividing both parts by their common factor of 900:\n\n"
            r"Percentage left = \frac{4}{5} x 100% = 4 x 20% = 80%""\n\n"
            r"⦿ Alternative verification: If \frac{1}{5} is used, then 1 − \frac{1}{5} = \frac{4}{5} remains. Converting \frac{4}{5} to a percentage yields \frac{4}{5} x 100% = 80%.",
        explanation: "",
      ),
    ],
  ),
  "Number: Ratios and Proportion": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
        "Question 1: Three school children share some oranges as follows: Akwasi gets 1/3 of the total, and the remainder is shared between Abena and Jantuah in the ratio 3:2. If Jantuah gets 24 oranges, how many does Akwasi get?\n(BECE 1991 Q1b)",
        answer:
        "⦿ Define the variable:\n"
            "⦁ Let the total number of oranges be y.\n\n"
            "⦿ Calculate Akwasi's share:\n"
        r"⦁ Akwasi's share = \frac{1}{3} × y"
        "\n\n"
            "⦿ Find the remainder:\n"
        r"⦁ Remainder = y - \frac{1}{3}y = \frac{2}{3}y"
        "\n\n"
            "⦿ Share the remainder:\n"
            "⦁ Abena : Jantuah = 3 : 2\n"
            "⦁ Total parts = 3 + 2 = 5\n"
        r"⦁ Jantuah's share = \frac{2}{5} × \frac{2}{3}y"
        "\n\n"
            "⦿ Form the equation:\n"
        r"\frac{2}{5} × \frac{2}{3}y = 24"
        "\n"
        r"\frac{4}{15}y = 24"
        "\n\n"
            "⦿ Solve for y:\n"
            "4y = 24 × 15 = 360\n"
            "y = 360 ÷ 4 = 90 oranges\n\n"
            "⦿ Calculate Akwasi's share:\n"
        r"Akwasi's share = \frac{1}{3} × 90 = 30 oranges"
        "\n\n"
            "Answer = 30 oranges",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 2: The cost of sending a telegram is ₵500.00 for the first 12 words and ₵25.00 for every extra word. Find the cost of sending a telegram containing 20 words.\n(BECE 1996 Q2b)",
        answer:
        "⦿ Cost of the first 12 words:\n"
            "⦁ = ₵500.00\n\n"
            "⦿ Calculate the extra words:\n"
            "⦁ Extra words = 20 - 12 = 8 words\n\n"
            "⦿ Cost of extra words:\n"
            "⦁ = 8 × ₵25.00 = ₵200.00\n\n"
            "⦿ Calculate the total cost:\n"
            "⦁ Total Cost = ₵500.00 + ₵200.00 = ₵700.00\n\n"
            "Answer = ₵700.00",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 3: Three children Kwabena, Esi and Yaw were given 160 oranges to share. Kwabena got 1/4 of the oranges. Esi and Yaw shared the remainder in the ratio 3:2 respectively.\n\n(i) Find how many oranges Esi received.\n(ii) How many more oranges did Yaw receive than Kwabena?\n(BECE 2001 Q2b)",
        answer:
        "⦿ Calculate Kwabena's share:\n"
        r"⦁ Kwabena's share = \frac{1}{4} × 160 = 40 oranges"
        "\n\n"
            "⦿ Find the remainder:\n"
            "⦁ Remaining oranges = 160 - 40 = 120 oranges\n\n"
            "⦿ Total ratio parts:\n"
            "⦁ 3 + 2 = 5 parts\n\n"
            "⦿ (i) Find Esi's share:\n"
        r"⦁ Esi's share = \frac{3}{5} × 120 = 72 oranges"
        "\n\n"
            "⦿ (ii) Find Yaw's share:\n"
        r"⦁ Yaw's share = \frac{2}{5} × 120 = 48 oranges"
        "\n\n"
            "⦁ Difference = 48 - 40 = 8 oranges\n\n"
            "(i) Answer = 72 oranges\n"
            "(ii) Answer = 8 oranges",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 4: Three numbers are in the ratio 2:3:4 and their average is 36.\n\n(i) Calculate the sum of the three numbers.\n(ii) Find the greatest number.\n(BECE 2002A Q1a)",
        answer:
        "⦿ (i) Calculate the sum:\n"
            "⦁ Average = Sum ÷ 3\n"
            "⦁ Sum = 36 × 3 = 108\n\n"
            "⦿ (ii) Find the greatest number:\n"
            "⦁ Total ratio parts = 2 + 3 + 4 = 9\n"
        r"⦁ Greatest number = \frac{4}{9} × 108 = 48"
        "\n\n"
            "(i) Answer = 108\n"
            "(ii) Answer = 48",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 5: A boy has enough money to buy 14 pencils at ₵450.00 each. How many erasers costing ₵300.00 each can he buy with the same amount of money?\n(BECE 2005 Q1a)",
        answer:
        "⦿ Calculate the total money:\n"
            "⦁ Total money = 14 × ₵450.00 = ₵6,300.00\n\n"
            "⦿ Let y be the number of erasers.\n\n"
            "⦁ 300 × y = 6,300\n"
            "⦁ y = 6,300 ÷ 300 = 21\n\n"
            "Answer = 21 erasers",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 6: The ratio of men to women in a village is 12:25. If there are 120 men:\n\n(i) How many women are there?\n(ii) What is the total number of men and women?\n(BECE 2006 Q2a)",
        answer:
        "⦿ (i) Find the number of women:\n"
            "⦁ Let x represent the number of women.\n\n"
        r"⦁ \frac{120}{x} = \frac{12}{25}"
        "\n\n"
            "⦁ 12x = 120 × 25\n"
            "⦁ x = (120 × 25) ÷ 12 = 250 women\n\n"
            "⦿ (ii) Find the total population:\n"
            "⦁ Total = Men + Women\n"
            "⦁ Total = 120 + 250 = 370 people\n\n"
            "(i) Answer = 250 women\n"
            "(ii) Answer = 370 people",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 7: Mr. Jones used 173 units of electricity last month. If the charge for the first 110 units was ₵150 per unit and ₵200 per unit for the rest, calculate the total bill for Mr. Jones.\n(BECE 2007 Q5a)",
        answer:
        "⦿ Calculate the cost of the first 110 units:\n"
            "⦁ 110 × ₵150 = ₵16,500.00\n\n"
            "⦿ Calculate the remaining units:\n"
            "⦁ Remaining units = 173 - 110 = 63 units\n\n"
            "⦿ Calculate the cost of the remaining units:\n"
            "⦁ 63 × ₵200 = ₵12,600.00\n\n"
            "⦿ Calculate the total bill:\n"
            "⦁ Total Bill = ₵16,500.00 + ₵12,600.00 = ₵29,100.00\n\n"
            "Answer = ₵29,100.00",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 8: A typist charges 28Gp for the first five sheets and 8Gp for each additional sheet she types. How much will she charge for typing 36 sheets?\n(BECE 2008 Q1c)",
        answer:
        "⦿ Charge for the first 5 sheets:\n"
            "⦁ = 28Gp\n\n"
            "⦿ Calculate the additional sheets:\n"
            "⦁ 36 - 5 = 31 sheets\n\n"
            "⦿ Calculate the charge for the additional sheets:\n"
            "⦁ 31 × 8Gp = 248Gp\n\n"
            "⦿ Calculate the total charge:\n"
            "⦁ 28Gp + 248Gp = 276Gp\n\n"
            "⦿ Convert to Ghana Cedis:\n"
            "⦁ 276Gp ÷ 100 = GH¢2.76\n\n"
            "Answer = GH¢2.76",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 9: The ratio of the sheep to goats on a farm is 4:7. If there are 1,428 sheep, find how many goats are on the farm.\n(BECE 2009 Q4a)",
        answer:
        "⦿ Let y represent the number of goats.\n\n"
        r"⦁ \frac{1428}{y} = \frac{4}{7}"
        "\n\n"
            "⦁ 4y = 1,428 × 7\n"
            "⦁ 4y = 9,996\n"
            "⦁ y = 9,996 ÷ 4 = 2,499 goats\n\n"
            "Answer = 2,499 goats",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 10: The selling price of a gas cooker is GH¢450.00. If a customer is allowed a discount of 20%, calculate the:\n\n(i) Discount.\n(ii) Amount paid by the customer.\n(BECE 2016 Q4b)",
        answer:
        "⦿ (i) Calculate the discount:\n"
        r"⦁ Discount = \frac{20}{100} × 450.00 = GH¢90.00"
        "\n\n"
            "⦿ (ii) Calculate the amount paid:\n"
            "⦁ Amount Paid = Selling Price - Discount\n"
            "⦁ Amount Paid = GH¢450.00 - GH¢90.00 = GH¢360.00\n\n"
            "(i) Answer = GH¢90.00\n"
            "(ii) Answer = GH¢360.00",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 11: A property worth GH¢10,480.00 is shared between a widow and her 10 children in the ratio 1:4 respectively. The children shared their portion equally. Find each child's share.\n(BECE 2018 Q5a)",
        answer:
        "⦿ Determine the total ratio parts:\n"
            "⦁ Total parts = 1 + 4 = 5 parts\n\n"
            "⦿ Calculate the children's total share:\n"
        r"⦁ Children's share = \frac{4}{5} × GH¢10,480.00 = GH¢8,384.00"
        "\n\n"
            "⦿ Calculate each child's share:\n"
            "⦁ Each child's share = GH¢8,384.00 ÷ 10 = GH¢838.40\n\n"
            "Answer = GH¢838.40",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 12: The ratio of boys to girls in a school is 12:25. If there are 120 boys, find:\n\n(i) How many girls are in the school?\n(ii) What is the total number of boys and girls in the school?\n(BECE 2019 Q2b)",
        answer:
        "⦿ (i) Find the number of girls:\n"
            "⦁ Let x represent the number of girls.\n\n"
        r"⦁ \frac{120}{x} = \frac{12}{25}"
        "\n\n"
            "⦁ 12x = 120 × 25\n"
            "⦁ x = (120 × 25) ÷ 12 = 250 girls\n\n"
            "⦿ (ii) Calculate the total number of students:\n"
            "⦁ Total = Boys + Girls\n"
            "⦁ Total = 120 + 250 = 370 students\n\n"
            "(i) Answer = 250 girls\n"
            "(ii) Answer = 370 students",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
        "Question 13: Esi and Kofi shared an amount of GH¢21,000.00 in the ratio 2:5 respectively. How much more did Kofi receive than Esi?\n(BECE 2020 Q2c)",
        answer:
        "⦿ Determine the total ratio parts:\n"
            "⦁ Total parts = 2 + 5 = 7 parts\n\n"
            "⦿ Calculate Esi's share:\n"
        r"⦁ Esi's share = \frac{2}{7} × GH¢21,000.00 = GH¢6,000.00"
        "\n\n"
            "⦿ Calculate Kofi's share:\n"
        r"⦁ Kofi's share = \frac{5}{7} × GH¢21,000.00 = GH¢15,000.00"
        "\n\n"
            "⦿ Calculate how much more Kofi received:\n"
            "⦁ Difference = GH¢15,000.00 - GH¢6,000.00 = GH¢9,000.00\n\n"
            "Answer = GH¢9,000.00",
        explanation: "",
      ),
    ],
  ),
  "Patterns and Relations": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
        "Question 1: The mapping shows the relationship between x and y:\n\n"
            "x : 1, 2, 3, 4, ..., 8, ..., n\n"
            "y : -1, 2, 5, 8, ..., m, ..., 29\n\n"
            "Find the:\n"
            "(i) Rule for the mapping.\n"
            "(ii) Values of m and n.\n"
            "(BECE 2021 Q4b)",
        answer:
        "⦿ (i) Find the rule for the mapping:\n"
            "⦁ The general linear rule is:\n"
            "y = ax + b\n\n"

            "⦿ Find the value of a:\n"
            "⦁ Difference between successive y-values:\n"
            "2 - (-1) = 3\n"
            "5 - 2 = 3\n"
            "⦁ Therefore, a = 3\n\n"

            "⦿ Find the value of b:\n"
            "⦁ Substitute x = 1 and y = -1 into y = ax + b.\n\n"
            "-1 = 3(1) + b\n"
            "-1 = 3 + b\n"
            "b = -4\n\n"

            "⦿ Therefore, the mapping rule is:\n"
            "y = 3x - 4\n\n"

            "⦿ (ii) Find m:\n"
            "⦁ Substitute x = 8 into the rule.\n\n"
            "m = 3(8) - 4\n"
            "m = 24 - 4 = 20\n\n"

            "⦿ Find n:\n"
            "⦁ Substitute y = 29 into the rule.\n\n"
            "29 = 3n - 4\n"
            "33 = 3n\n"
        r"n = \frac{33}{3} = 11"
        "\n\n"

            "(i) Answer = y = 3x - 4\n"
            "(ii) Answer: m = 20, n = 11",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 2: Given the sequence 1, 4, 9, ...\n\n"
            "Write down the next two terms of the sequence.\n"
            "(BECE 2022 Q1b)",
        answer:
        "⦿ Observe the pattern:\n"
            "⦁ The terms are perfect squares of consecutive natural numbers.\n\n"

            "1 = 1²\n"
            "4 = 2²\n"
            "9 = 3²\n\n"

            "⦿ Find the next two terms:\n"
            "⦁ 4² = 16\n"
            "⦁ 5² = 25\n\n"

            "Answer = 16, 25",
        explanation: "",
      ),
    ],
  ),
  "ALGEBRAIC EXPRESSIONS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
        "Question 1: Given that m = -2 and n = 1/4, find the value of:\n\n"
            "(i) m²(n − 1)\n"
            "(ii) (n² − 3/m)/m\n"
            "(BECE 1991 Q3c)",
        answer:
        "⦿ (i) Find the value of m²(n − 1):\n"
            "⦁ Substitute m = -2 and n = 1/4.\n\n"
        r"(-2)^2\left(\frac{1}{4}-1\right)"
        "\n\n"
        r"⦁ \frac{1}{4}-1=-\frac{3}{4}"
        "\n"
            "⦁ (-2)² = 4\n\n"
        r"⦁ 4\times\left(-\frac{3}{4}\right)=-3"
        "\n\n"
            "⦿ (ii) Find the value of (n² − 3/m)/m:\n"
            "⦁ Substitute the values.\n\n"
        r"\frac{\left(\frac{1}{4}\right)^2-\frac{3}{-2}}{-2}"
        "\n\n"
        r"⦁ \left(\frac{1}{4}\right)^2=\frac{1}{16}"
        "\n"
        r"⦁ \frac{3}{-2}=-\frac{3}{2}"
        "\n"
        r"⦁ \frac{1}{16}+\frac{3}{2}=\frac{25}{16}"
        "\n\n"
        r"⦁ \frac{25}{16}\div(-2)=\frac{25}{16}\times\left(-\frac{1}{2}\right)=-\frac{25}{32}"
        "\n\n"
            "(i) Answer = -3\n"
        r"(ii) Answer = -\frac{25}{32}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 2: Given that π = 3.14 and g = 20, find the value of F in the relation:\n\n"
            "F = (3πg²)/4\n"
            "(BECE 1994 Q2b)",
        answer:
        "⦿ Substitute the given values:\n\n"
            "F = (3 × 3.14 × 20²) ÷ 4\n\n"
            "⦁ 20² = 400\n\n"
            "⦁ F = (3 × 3.14 × 400) ÷ 4\n"
            "⦁ F = 3 × 3.14 × 100\n"
            "⦁ F = 3 × 314\n"
            "⦁ F = 942\n\n"
            "Answer = 942",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 3: If p = 7, a = 16, b = -5 and c = 3, evaluate:\n\n"
            "(p² − (a − b))/c\n"
            "(BECE 1997 Q1a)",
        answer:
        "⦿ Substitute the given values:\n\n"
            "(7² − (16 − (-5))) ÷ 3\n\n"
            "⦁ 16 − (-5) = 21\n"
            "⦁ 7² = 49\n"
            "⦁ 49 − 21 = 28\n\n"
        r"⦁ \frac{28}{3}=9\frac{1}{3}"
        "\n\n"
        r"Answer = 9\frac{1}{3}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 4: Simplify the expression:\n\n"
            "3x² + 6xy − 3y² + 4x² − 8xy + 2y²\n"
            "(BECE 1998 Q1a)",
        answer:
        "⦿ Group like terms:\n\n"
            "(3x² + 4x²) + (6xy − 8xy) + (-3y² + 2y²)\n\n"
            "⦁ 3x² + 4x² = 7x²\n"
            "⦁ 6xy − 8xy = -2xy\n"
            "⦁ -3y² + 2y² = -y²\n\n"
            "⦿ Combine the results:\n"
            "7x² − 2xy − y²\n\n"
            "Answer = 7x² − 2xy − y²",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 5: If p = 7, a = 16, b = 4 and c = 3, evaluate:\n\n"
            "(p² − (a − b))/c\n"
            "(BECE 1998 Q1c)",
        answer:
        "⦿ Substitute the given values:\n\n"
            "(7² − (16 − 4)) ÷ 3\n\n"
            "⦁ 16 − 4 = 12\n"
            "⦁ 7² = 49\n"
            "⦁ 49 − 12 = 37\n\n"
        r"⦁ \frac{37}{3}=12\frac{1}{3}"
        "\n\n"
        r"Answer = 12\frac{1}{3}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 6: Find the value of the expression 2x − 3y if x = 1/3 and y = -1/2.\n(BECE 1999 Q2b)",
        answer:
        "⦿ Substitute the given values:\n\n"
        r"2\left(\frac{1}{3}\right)-3\left(-\frac{1}{2}\right)"
        "\n\n"
        r"⦁ 2\times\frac{1}{3}=\frac{2}{3}"
        "\n"
        r"⦁ -3\times\left(-\frac{1}{2}\right)=\frac{3}{2}"
        "\n\n"
        r"⦁ \frac{2}{3}+\frac{3}{2}=\frac{4}{6}+\frac{9}{6}=\frac{13}{6}"
        "\n\n"
        r"⦁ \frac{13}{6}=2\frac{1}{6}"
        "\n\n"
        r"Answer = 2\frac{1}{6}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 7: Given that\n\n"
            "s = n/2[2a + (n − 1)d],\n"
            "a = 3, d = 4 and n = 10, find the value of s.\n"
            "(BECE 2017 Q2c)",
        answer:
        "⦿ Substitute the values:\n\n"
            "s = (10 ÷ 2)[2(3) + (10 − 1)4]\n\n"
            "⦁ 2(3) = 6\n"
            "⦁ (10 − 1)4 = 9 × 4 = 36\n"
            "⦁ 6 + 36 = 42\n\n"
            "⦁ 10 ÷ 2 = 5\n"
            "⦁ s = 5 × 42 = 210\n\n"
            "Answer = 210",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 8: Simplify:\n\n"
            r"8x²y³\frac{3}{8xy⁴}""\n"
            "(BECE 2019 Q2c)",
        answer:
        "⦿ Expand the expression:\n\n"
        r"8\times\frac{3}{8}\times x^2\times x\times y^3\times y^4"
        "\n\n"
        r"⦁ 8\times\frac{3}{8}=3"
        "\n"
            "⦁ x² × x = x³\n"
            "⦁ y³ × y⁴ = y⁷\n\n"
            "⦿ Therefore:\n"
            "3x³y⁷\n\n"
            "Answer = 3x³y⁷",
        explanation: "",
      ),
    ],
  ),
  "Algebraic Expressions": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
        "Question 1: When a certain number is subtracted from 10 and the result is multiplied by 2, the final result is 4. Find the number.\n\n"
            "A. 8\n"
            "B. 12\n"
            "C. 16\n"
            "D. 24\n"
            "(BECE 1991 Q37)",
        answer:
        "⦿ Let the number be x.\n\n"
            "⦁ Subtract the number from 10:\n"
            "10 - x\n\n"
            "⦁ Multiply the result by 2:\n"
            "2(10 - x) = 4\n\n"
            "⦁ Expand and solve:\n"
            "20 - 2x = 4\n"
            "-2x = 4 - 20\n"
            "-2x = -16\n"
            "x = 8\n\n"
            "Answer = A. 8",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 2: Solve for x if 2x + 5 = 3x - 7.\n\n"
            "A. 12\n"
            "B. 2⅖\n"
            "C. -⅖\n"
            "D. -2⅖\n"
            "(BECE 1994 Q26)",
        answer:
        "⦿ Solve the equation:\n\n"
            "2x + 5 = 3x - 7\n\n"
            "⦁ Subtract 2x from both sides:\n"
            "5 = x - 7\n\n"
            "⦁ Add 7 to both sides:\n"
            "x = 12\n\n"
            "Answer = A. 12",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 3: If 3/15 is equivalent to 45/a, find a.\n\n"
            "A. 225\n"
            "B. 150\n"
            "C. 252\n"
            "D. 126\n"
            "(BECE 1990 Q22)",
        answer:
        "⦿ Form the proportion:\n\n"
        r"\frac{3}{15}=\frac{45}{a}"
        "\n\n"
            "⦁ Cross-multiply:\n"
            "3a = 15 × 45\n"
            "3a = 675\n\n"
            "⦁ Divide both sides by 3:\n"
            "a = 225\n\n"
            "Answer = A. 225",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 4: Five times a number is four more than the number. Find the number.\n\n"
            "A. 3/2\n"
            "B. 1\n"
            "C. 2/3\n"
            "D. 1/2\n"
            "(BECE 1993 Q26)",
        answer:
        "⦿ Let the number be x.\n\n"
            "⦁ Five times the number is 5x.\n"
            "⦁ Four more than the number is x + 4.\n\n"
            "5x = x + 4\n\n"
            "⦁ Subtract x from both sides:\n"
            "4x = 4\n\n"
            "⦁ Divide both sides by 4:\n"
            "x = 1\n\n"
            "Answer = B. 1",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 5: Mark is 30 years old. Yaw is half as old as Mark. Paul is 10 years older than Yaw. How old is Paul?\n\n"
            "A. 30 years\n"
            "B. 25 years\n"
            "C. 20 years\n"
            "D. 15 years\n"
            "(BECE 1994 Q3)",
        answer:
        "⦿ Find Yaw's age:\n\n"
        r"⦁ Yaw's age = \frac{1}{2} × 30 = 15 years"
        "\n\n"
            "⦿ Find Paul's age:\n"
            "⦁ Paul is 10 years older than Yaw.\n"
            "Paul's age = 15 + 10 = 25 years\n\n"
            "Answer = B. 25 years",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 6: If 1/3 of a number is added to 1/5 of the same number, the result is 8. Find the number.\n\n"
            "A. 3\n"
            "B. 5\n"
            "C. 15\n"
            "D. 30\n"
            "(BECE 1992 Q34)",
        answer:
        "⦿ Let the number be x.\n\n"
        r"\frac{1}{3}x+\frac{1}{5}x=8"
        "\n\n"
            "⦁ Use 15 as the common denominator:\n"
        r"\frac{5}{15}x+\frac{3}{15}x=8"
        "\n\n"
        r"\frac{8}{15}x=8"
        "\n\n"
            "⦁ Multiply both sides by 15:\n"
            "8x = 120\n\n"
            "⦁ Divide both sides by 8:\n"
            "x = 15\n\n"
            "Answer = C. 15",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 7: Solve for h in the equation 15 - 2h = 6.\n\n"
            "A. -10.5\n"
            "B. -9.0\n"
            "C. -4.5\n"
            "D. 4.5\n"
            "(BECE 1998 Q21)",
        answer:
        "⦿ Solve the equation:\n\n"
            "15 - 2h = 6\n\n"
            "⦁ Subtract 15 from both sides:\n"
            "-2h = 6 - 15\n"
            "-2h = -9\n\n"
            "⦁ Divide both sides by -2:\n"
            "h = 4.5\n\n"
            "Answer = D. 4.5",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 8: Find x, if 1/x + 1/3 = 1.\n\n"
            "A. 2/3\n"
            "B. -2/3\n"
            "C. 3/2\n"
            "D. 3/4\n"
            "(BECE 1993 Q31)",
        answer:
        "⦿ Solve the equation:\n\n"
        r"\frac{1}{x}+\frac{1}{3}=1"
        "\n\n"
            "⦁ Subtract 1/3 from both sides:\n"
        r"\frac{1}{x}=1-\frac{1}{3}"
        "\n"
        r"\frac{1}{x}=\frac{2}{3}"
        "\n\n"
            "⦁ Take the reciprocal of both sides:\n"
        r"x=\frac{3}{2}"
        "\n\n"
        r"Answer = C. \frac{3}{2}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 9: If 1/x = 1½, find x.\n\n"
            "A. 3\n"
            "B. 1/2\n"
            "C. 4/3\n"
            "D. 2/3\n"
            "(BECE 1994 Q11)",
        answer:
        "⦿ Convert the mixed number to an improper fraction:\n\n"
        r"1\frac{1}{2}=\frac{3}{2}"
        "\n\n"
            "⦿ Therefore:\n"
        r"\frac{1}{x}=\frac{3}{2}"
        "\n\n"
            "⦁ Take the reciprocal of both sides:\n"
        r"x=\frac{2}{3}"
        "\n\n"
        r"Answer = D. \frac{2}{3}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 10: Solve the equation 13x - 2(3x + 4) = 22.\n\n"
            "A. 5\n"
            "B. 4\n"
            "C. 30/7\n"
            "D. 26/7\n"
            "(BECE 2000 Q3)",
        answer:
        "⦿ Expand the bracket:\n\n"
            "13x - 2(3x + 4) = 22\n"
            "13x - 6x - 8 = 22\n\n"
            "⦁ Collect like terms:\n"
            "7x - 8 = 22\n\n"
            "⦁ Add 8 to both sides:\n"
            "7x = 30\n\n"
            "⦁ Divide both sides by 7:\n"
        r"x=\frac{30}{7}"
        "\n\n"
        r"Answer = C. \frac{30}{7}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 11: If 4(m + 4) = 18, find the value of m.\n\n"
            "A. 1/2\n"
            "B. 3/2\n"
            "C. 5/2\n"
            "D. 3/25\n"
            "(BECE 1999 Q29)",
        answer:
        "⦿ Solve the equation:\n\n"
            "4(m + 4) = 18\n\n"
            "⦁ Divide both sides by 4:\n"
        r"m+4=\frac{18}{4}=\frac{9}{2}"
        "\n\n"
            "⦁ Subtract 4 from both sides:\n"
        r"m=\frac{9}{2}-4"
        "\n"
        r"m=\frac{9}{2}-\frac{8}{2}"
        "\n"
        r"m=\frac{1}{2}"
        "\n\n"
        r"Answer = A. \frac{1}{2}",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 12: If 13x - 12 = 5x + 60, find x.\n\n"
            "A. -9\n"
            "B. -6\n"
            "C. 9\n"
            "D. 6\n"
            "(BECE 1995 Q33)",
        answer:
        "⦿ Solve the equation:\n\n"
            "13x - 12 = 5x + 60\n\n"
            "⦁ Subtract 5x from both sides:\n"
            "8x - 12 = 60\n\n"
            "⦁ Add 12 to both sides:\n"
            "8x = 72\n\n"
            "⦁ Divide both sides by 8:\n"
            "x = 9\n\n"
            "Answer = C. 9",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 13: The product of 2x and 3 is 138. Find x.\n\n"
            "A. 23\n"
            "B. 33\n"
            "C. 68\n"
            "D. 69\n"
            "(BECE 1996 Q33)",
        answer:
        "⦿ Form the equation:\n\n"
            "2x × 3 = 138\n"
            "6x = 138\n\n"
            "⦁ Divide both sides by 6:\n"
            "x = 23\n\n"
            "Answer = A. 23",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 14: Solve for y in the equation 1/3y + 1/5y = 8.\n\n"
            "A. 15\n"
            "B. 30\n"
            "C. 45\n"
            "D. 60\n"
            "(BECE 2002A Q27)",
        answer:
        "⦿ Solve the equation:\n\n"
        r"\frac{1}{3}y+\frac{1}{5}y=8"
        "\n\n"
            "⦁ Use 15 as the common denominator:\n"
        r"\frac{5}{15}y+\frac{3}{15}y=8"
        "\n\n"
        r"\frac{8}{15}y=8"
        "\n\n"
            "⦁ Multiply both sides by 15:\n"
            "8y = 120\n\n"
            "⦁ Divide both sides by 8:\n"
            "y = 15\n\n"
            "Answer = A. 15",
        explanation: "",
      ),

      PracticeQuestion(
        scenario:
        "Question 15: Kofi is 2 years older than Ama. If the sum of their ages is 16, find Ama's age.\n\n"
            "A. 7 years\n"
            "B. 9 years\n"
            "C. 14 years\n"
            "D. 18 years\n"
            "(BECE 2002B Q25)",
        answer:
        "⦿ Let Ama's age be x years.\n\n"
            "⦁ Kofi's age = x + 2\n\n"
            "⦁ Their ages add up to 16:\n"
            "x + (x + 2) = 16\n\n"
            "2x + 2 = 16\n"
            "2x = 14\n"
            "x = 7\n\n"
            "Answer = A. 7 years",
        explanation: "",
      ),
    ],
  ),

  // ─── SOCIAL STUDIES ───────────────────────────────────────────────────
  "Environmental Issues": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "Question 1 (BECE 1992 Q2)\n\n(a) Identify four environmental problems in Ghana.\n(b) Suggest two solutions to each of the four problems identified in (a).",
        answer: "⦿ (a) Answers:\n\n"
            "1. Deforestation\n"
            "2. Air pollution\n "
            "3. Water pollution\n"
            "4. Soil erosion\n\n"
            "⦿ (b) Answers:.\n"
            "• Solutions to Deforestation:\n\n"
            "   • Practice of afforestation: People must be encouraged and supported with funds by the government to grow plants or trees in areas where there were no previous tree cover. This increases plant populations and preserves vegetation.\n"
            "   • Practice of re-afforestation: Planting trees to replace those cut for farming or lumbering helps regenerate depleted forests.\n\n"
            "• Solutions to Air pollution:\n\n"
            "   • Public education: Sensitize the public through media to stop actions like bush burning and improper disposal of industrial chemicals.\n"
            "   • Banning over-aged vehicles: Restricting vehicles with weak engines that produce excessive carbon monoxide fumes.\n\n"
            "• Solutions to Water pollution:\n\n"
            "   • Public education: Educate people to stop using DDT for fishing and dumping refuse into water bodies.\n"
            "   • Enforcement of laws: The EPA must identify and punish individuals or companies that contaminate water sources.\n\n"
            "• Solutions to Soil erosion:\n\n"
            "   • Practice of re-afforestation: Growing plants helps safeguard land against erosion and replenishes soil via organic matter.\n"
            "   • Creation of fire belts: Guiding farmers to create fire belts prevents fires from destroying surrounding forest vegetation.\n\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "Question 2 (BECE 2001 Q5)\n"
            "(a) Mention four causes of desertification in West Africa.\n"
            "(b) What measures can be taken to control desertification in West Africa?",
        answer: "⦿ (a) Answers:\n\n"
            "• Deforestation: Excessive tree felling for charcoal and lumbering makes the land bare and prone to erosion.\n"
            "• Overgrazing: Constant feeding by livestock on a specific area removes vegetation cover and topsoil.\n"
            "• Poor farming practices: Over-cultivation destroys the soil nutrients needed to support plant life.\n"
            "• Bush burning: Indiscriminate burning destroys organic matter and soil organisms, rendering the land less useful.\n\n"
            "⦿ (b) Answers:\n\n"
            "   • Afforestation: Planting trees regularly in new areas to protect the physical environment..\n"
            "   • Reforestation: Replacing cut trees to regenerate depleted forest zones..\n"
            "   • Public education: Using media to educate people on the dangers of illegal mining and improper farming..\n"
            "   • Proper farming practices: Encouraging agro-forestry, mixed farming, and the use of organic manure to maintain soil fertility.\n\n",
        explanation: " ",
      ),
      PracticeQuestion(
          scenario: "Question 3 (BECE 2010 Q2)\n"
              "(a) Mention four causes of environmental degradation.\n"
              "(b) Outline four ways by which the environment can be protected from degradation.",
          answer: " ⦿ (a) Answers:\n\n"
              "• Dumping of solid and liquid waste materials into\n water bodies render drinking water to become contaminated.\n"
              "• Using chemicals such as DDT for fishing cause drinking\nwater to become contaminated and aquatic life destroyed.\n"
              "• Releasing gases and fumes from industries or factories\n into the atmosphere renders breathing air to become polluted.\n"
              "• Human excreta and other waste materials from homes\n and industries that are dumped into gutters, refuse dump sites pollute the air because they produce bad odour.\n\n"
              " ⦿ (b) Answers:\n\n"
              "   • Enforcement of legislation: The EPA must enforce laws against illegal mining and bush burning, using fines or imprisonment as a deterrent.\n"
              "   • Appropriate farming methods: Adopting contour ploughing, shifting cultivation, and mixed farming to preserve soil quality.\n"
              "   • Mass public education: Educating the public on the long-term effects of activities like indiscriminate waste disposal.\n"
              "   • Afforestation: Regularly planting trees to safeguard the physical environment.",
          explanation: " "),
      PracticeQuestion(
        scenario: "Question 4 (BECE 2015 Q1)\n"
            "(a) Describe four bad effects of deforestation.\n"
            "(b) In what four ways can deforestation be minimized in Ghana?",
        answer: " ⦿ (a) Answers:\n\n"
            "• Excessive evaporation: Removing trees along riverbanks exposes water to direct sun, causing rivers to dry up.\n"
            "• Soil erosion: Bare land is easily washed away by wind and water, leading to a loss of fertile topsoil.\n"
            "• Destruction of medicinal plants: Loss of plant species used for traditional and modern medicine.\n"
            "• Habitat loss: Destruction of the natural homes of wildlife, leading to animal extinction.\n\n"
            " ⦿ (b) Answers:\n\n"
            "   • Afforestation: Growing new forests in areas previously without trees.\n"
            "   • Re-afforestation: Replacing trees harvested for timber or fuel.\n"
            "   • Creation of forest reserves: Banning entry into specific zones to allow nature to thrive.\n"
            "   • Public sensitization: Creating awareness of the environmental importance of forests via the EPA.",
        explanation: " ",
      ),
      PracticeQuestion(
          scenario: "Question 5 (BECE 2018 Q1)\n"
              "(a) List five examples of natural disasters.\n"
              "(b) Outline five ways by which the physical environment can be protected from degradation.",
          answer: " ⦿ (a) Answers:\n\n"
              "• Flood / torrential rain.\n"
              "• Hurricane / typhoon.\n"
              "• Tsunamis / tidal waves.\n"
              "• Volcanic eruption.\n"
              "• Landslides / mud flow.\n\n"
              " ⦿ (b) Answers:\n\n"
              "   • Creation of fire belts: Protecting forests from accidental bushfires.\n"
              "   • Environmental law enforcement: Strict monitoring by the Forestry Commission.\n"
              "   • Sedentary agriculture: Adopting crop rotation and cover cropping to prevent the need for shifting cultivation.\n"
              "   • Alternative fuel sources: Promoting LPG gas to reduce dependence on firewood and charcoal.\n"
              "   • Wood substitutes: Using metal or plastic for building frames and roofing instead of timber.",
          explanation: ""),
      PracticeQuestion(
          scenario: "Question 6 (BECE 2024 Q1a)\n"
              "How will you explain the term environment to your study group?",
          answer:
              "The environment refers to both the physical and social surroundings. The physical surroundings include natural elements like climate, mountains, rivers, and vegetation. The social surroundings include man-made cultural, political, and religious beliefs and structures.",
          explanation: " "),
    ],
  ),
  "Mapping Skills": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "(a) Explain the following:\n\n"
            "(i) Cardinal points;\n"
            "(ii) Scale of a map.",
        answer:
            "⦿ Cardinal points: These are the four major directions or geographical points on a compass used to locate places. The four cardinal points are North, East, West, and South.\n\n"
            "⦿ Scale of a map: A scale of a map is the ratio or proportion of distance on a map to the actual distance on the ground. It can be expressed in linear form, statement form, or any fractional form (representative fraction).\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario:
            "(b) Describe how one can use the four cardinal points to determine direction without the use of a compass.",
        answer:
            "⦿ You can determine direction based on the position of the sun using the following steps:\n\n"
            "• Step 1: Stretch out your hands sideways.\n"
            "• Step 2: Point your right hand toward the direction of the sunrise, which is the East.\n"
            "• Step 3: Point your left hand toward the direction of the sunset, which is the West.\n"
            "• Step 4: The direction you are facing is the North.\n"
            "• Step 5: The direction behind you is the South.\n\n"
            "⦿ Alternatively, the Shadow Method can be used:\n\n"
            "• Morning: Stand in the sun; your shadow points approximately North-West.\n"
            "• Afternoon: Stand in the sun; your shadow points approximately South-East.\n"
            "• Stick Method: Place a stick upright on level ground. Mark the shadow's tip. Wait 10–30 minutes and mark the new tip. The first mark is West and the second is East.\n",
        explanation: " ",
      ),
      PracticeQuestion(
          scenario:
              "(c) State three forms in which the scale of a map can be expressed with the aid of an example each.",
          answer: " ⦿ Answers:\n\n"
              "• Statement Scale: A scale expressed in words. Example: 1 cm to 20 km.\n"
              "• Linear Scale: A line drawn on a map divided into equal parts representing ground distance.\n"
              "• Releasing gases and fumes from industries or factories\n into the atmosphere renders breathing air to become polluted.\n"
              "• Representative Fraction (R.F.): A scale expressed as a fraction or ratio showing the proportion of map distance to ground distance. Example: 1:50,000.",
          explanation: " "),
      PracticeQuestion(
        scenario:
            "(d) Describe any four methods used for showing relief features on maps.",
        answer: " ⦿ Answers:\n\n"
            "• Contours: Lines drawn to connect places of equal height above sea level. They are usually brown on topographical maps.\n"
            "• Spot height: A black dot or small circle followed by a number (e.g., .200) representing the exact measured height of that specific spot.\n"
            "• Trigonometrical stations: A triangle with a dot (∆) and figures representing a measured point above sea level.\n"
            "• Hachures: Short lines showing the direction of water flow. Thicker, closer lines indicate steep slopes; thinner, wider lines indicate gentle slopes.\n\n",
        explanation: " ",
      ),
      PracticeQuestion(
          scenario:
              "(e) List the steps to be taken to draw a school compound map.",
          answer: " ⦿ Answers:\n\n"
              "• Reconnaissance: Perform a general survey of the area to identify boundaries and landmarks.\n"
              "• Rough Sketch: Draw an initial sketch including identified features.\n"
              "• Correction: Revisit the compound to correct any errors on the sketch.\n"
              "• Measurement: Use a tape to measure the actual length and breadth of the compound.\n"
              "• Scale Selection: Choose a scale based on measurements (e.g., 1cm to 10m).\n"
              "• Outline: Draw the compound's perimeter to scale using a ruler and pencil.\n"
              "• Feature Insertion: Place landmarks (trees, buildings) at their correct locations to scale.\n"
              "• Labeling: Label each feature with its actual name.\n"
              "• Orientation: Indicate the North direction with a north pole symbol.\n"
              "• Key/Legend: Provide a key to explain the symbols and signs used.\n"
              "• Title: Write a descriptive title at the top, such as 'Map of St. Peter's JHS'.\n",
          explanation: ""),
      PracticeQuestion(
          scenario:
              "(f) Outline the benefits that can be derived from the relief features of Ghana.",
          answer: "⦿ Answers:\n\n"
              " • Relief Rainfall: Mountains aid in rainfall formation, which supports local agriculture.\n"
              " • Mineral Deposits: Highlands contain valuable minerals such as gold, bauxite, and diamonds.\n"
              " • Water Sources: Mountains and plateaus serve as the source of major rivers (e.g., River Pra).\n"
              " • Tourism: Relief features like Mt. Afadjato serve as tourist sites and recreational areas.\n"
              " • Construction Materials: Sand, stones, and rocks for building are extracted from valleys and highlands.\n"
              " • Fertile Farming Land: Lowlands provide suitable ground for mechanized and large-scale farming.\n"
              " • Religious Sites: Certain mountains are used as sacred areas for prayer and worship.\n"
              " • Windbreaks: High relief features act as barriers against destructive heavy winds.\n"
              " • Infrastructure: Lowlands facilitate the easier construction of roads and railway lines.\n",
          explanation: " "),
    ],
  ),
  "Understanding Our Natural World": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1 (BECE 2013 Q2)"
            "(a) List four features of a slum.\n"
            "(b) Enumerate four measures that can be taken to prevent slums in the urban towns of Ghana.",
        answer: "⦿ (a)Answers:"
            "• Overcrowded settlement.\n"
            "• Filthy/dirty environment and poor sanitation.\n"
            "• Buildings are not well arranged or orderly.\n"
            "• Narrow streets or a complete lack of streets.\n"
            "• Presence of criminals and social vices.\n"
            "• Buildings constructed from inferior or scrap materials.\n"
            "• Heavy pressure on limited social facilities.\n"
            "• Frequent outbreaks of diseases such as cholera.\n"
            "⦿ (b)Answers:\n\n"
            "• Town planners to provide good layout: The Town and Country Planning Department must provide proper layouts with specific zoning and site plans to prevent overcrowding.\n"
            "• Building plan approval: Citizens must obtain building permits from authorities before construction to ensure structures are authorized and properly placed.\n"
            "• Demolishing unauthorized buildings: Pulling down structures without permits reduces overcrowding and improves the movement of people and vehicles.\n"
            "• Provision of streets before settlement: Proper street patterns must be established before building begins to ensure orderly planning.\n"
            "• Improvement in sanitation: Authorities must provide waste collection facilities like dustbins and gutters in high-density areas to prevent slum conditions.\n"
            "• Orderly arrangement of buildings: Ensuring builders follow site plans prevents haphazard growth and the development of slums.\n"
            "• Control of rural-urban migration: Developing rural areas reduces the number of people moving to cities, which lowers the demand for informal housing.\n"
            "• Provision of affordable housing: Government and NGOs should build low-cost houses to provide decent accommodation for low-income earners.\n"
            "• Public education: Using mass media to sensitize the public about the dangers of slums, such as crime and disease outbreaks.\n"
            "• Enforcement of bye-laws: Strict enforcement of planning laws and sanctioning those who build in unauthorized places serves as a deterrent.\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 2 (BECE 2014 Q6)"
            "(a) Explain the term natural disaster and give two examples.\n"
            "(b) Outline four reasons why a good layout is necessary for a decent settlement.",
        answer: "⦿ (a) Answers:\n\n"
            " A natural disaster is any misfortune that occurs from a natural phenomenon leading to the destruction of the environment.\n"
            "• Examples include:\n"
            "   • Earthquakes and floods.\n"
            "   • Droughts and volcanic eruptions.\n"
            "   • Landslides, tsunamis, typhoons, or hurricanes.\n"
            "⦿ (b) Answers:\n\n"
            "• Easy movement: Proper arrangement of buildings and streets allows people and vehicles to move freely within the settlement.\n"
            "• Easy supply of utilities: A good layout provides designated spaces for water pipes, electricity poles, and communication lines..\n"
            "• Proper location of social facilities: It ensures that hospitals, schools, police stations, and markets are built in accessible and appropriate locations.\n"
            "• Easy mail distribution: Clearly defined streets and house numbers allow for the easy identification and delivery of letters.\n"
            "• Reduction of disaster effects: Proper drainage and spacing between buildings help minimize the impact of floods, earthquakes, and landslides.\n"
            "• Crime minimization: Well-planned areas eliminate crowded hideouts, making it easier for security agents to monitor and check criminal activities.\n"
            "• Aesthetic beauty: A well-planned settlement is visually attractive and appreciated for its architectural design.\n"
            "• Improved sanitation: Dedicated areas for waste collection, gutters, and toilet facilities prevent the indiscriminate disposal of waste.\n"
            "• Reduced disease spread: Adequate spacing between buildings reduces the overcrowding that leads to the rapid spread of contagious diseases.\n"
            "• Slum prevention: A good layout discourages unauthorized construction and the formation of informal settlements.\n",
        explanation: " ",
      ),
      PracticeQuestion(
          scenario: "QUESTION 3 (BECE 2022 Q5)"
              "(a) Define the following:\n"
              "(i) Human settlement;\n"
              "(ii) A slum.\n"
              "(b) State four uses of land in your community.",
          answer: " ⦿ (a) Answers:\n\n"
              "• (i) Settlement: A settlement is a place where people have put up their homes to live in.\n"
              "• (ii) A slum: A slum is an overcrowded and filthy area where buildings are not arranged in any order and are inhabited by people.\n\n"
              " ⦿ (b) Answers:\n\n"
              "• Farming: To grow crops like plantain and cocoyam for food.\n"
              "• Building houses: To provide places for people to live and rest.\n"
              "• Transport: For the construction of roads to move people and goods.\n"
              "• Mining: To extract minerals like gold from the earth.\n"
              "• Rearing animals: To provide grazing land for cattle, sheep, and poultry.\n"
              "• Recreational purposes: For building football fields and parks.\n"
              "• Industries: To build factories that process raw materials into goods.\n"
              "• Cultural/Religious purposes: For places of worship or traditional deities.\n"
              "• Marketplaces: To facilitate trade, such as the Kejetia Market.\n"
              "• Public Services: For building schools, hospitals, and cemeteries.\n",
          explanation: " "),
      PracticeQuestion(
        scenario: "QUESTION 4 (BECE 2023 Q5a)\n\n"
            "(i) What is settlement?\n"
            "(ii) Explain four reasons for which bad layout of settlements must be prevented.",
        answer:
            " ⦿ (i) Settlement: A settlement is a place where people put up their houses and live in them (e.g., huts, villages, cottages).\n\n"
            " ⦿ (ii) Reasons to prevent bad layouts:\n\n"
            "• To stop the formation of slums and informal housing.\n"
            "• To ensure easy access to social facilities like clinics and schools.\n"
            "• To make efficient use of available land space.\n"
            "• To improve ventilation and the flow of air between buildings.\n"
            "• To control and check natural and man-made disasters.\n"
            "• To reduce overcrowding, congestion, and the spread of diseases.\n"
            "• To facilitate the easy location of addresses and help minimize crime.\n",
        explanation: " ",
      ),
      PracticeQuestion(
          scenario: "(a) Name three types of rainfall.\n"
              "(b) Describe how any one type of rainfall is formed.",
          answer: " ⦿ (a) Answers:\n\n"
              "• Convectional rainfall\n"
              "• Relief (orographic) rainfall\n"
              "• Cyclonic or frontal rainfall\n\n"
              " ⦿ (b) Answers:\n\n"
              "• Formation of relief or orographic rainfall:\n\n"
              "   • It is the type of rainfall which falls from moist air which rises as a result of air blowing against mountains or highlands.\n"
              "   • It is formed when moist air from the sea, lake or any water body blows against mountains.\n"
              "   • The air is forced to rise above the mountain.\n"
              "   • It becomes cooler in the upper atmosphere.\n"
              "   • It condenses to form clouds.\n"
              "   • The clouds become heavy or thicker as the cooling continues.\n"
              "   • It then leads to much rainfall on the windward side of the highland.\n"
              "   • And a very little or no rain falls on the leeward side of the highland.\n\n\n"
              "• Formation of cyclonic/frontal rainfall:\n\n"
              "   • It is formed when cold air masses and warm air from opposite directions meet at a front.\n"
              "   • The warm air rises over the cold air because the warm air is lighter than the cold air.\n"
              "   • The warm air mass rises into the upper atmosphere.\n"
              "   • When it gets there, it cools and condenses and that leads to the formation of clouds.\n"
              "   • When the clouds become heavy, they fall back as rain.\n"
              "   • The rain falls in wider or large areas and falls for a long period of time.\n\n"
              "• Formation of conventional rainfall:\n\n"
              "   • It is a type of rain which falls from moist air rising as a result of heating.\n"
              "   • It is formed when the heating of the land surface causes evaporation of warm moisture.\n"
              "   • The warm moist air becomes light, and it is forced to rise by convection currents.\n"
              "   • The moist air becomes cooler in the upper atmosphere.\n"
              "   • The moist air condenses and forms clouds and rainfall.\n"
              "   • Heavy rain often comes with thunder and lightning.\n"
              "   • Convectional rainfall occurs mostly in the afternoon.\n",
          explanation: ""),
      PracticeQuestion(
          scenario:
              "(a) Calculate the mean monthly temperature for the first half of the year (Using Jan-Jun data: 25, 27, 27, 27, 26, 26).\n"
              "(b) What is the annual temperature range?\n"
              "(c) Find the total annual rainfall.\n"
              "(d) Describe the pattern of rainfall distribution.",
          answer: "⦿ (a) Answer:\n\n"
              " • Total temperature for the first half of the year (i.e., Jan to June) = 25 + 27 + 27 + 27 + 26 + 26 = 158°C\n"
              " • Mean monthly temperature for the first half of the year = Total temperature for the first half of the year ÷ Number of months in the first half of the year\n"
              " • = 158°C ÷ 6 = 26.3°C\n\n"
              "⦿ (b) Answer:\n\n"
              " • Annual temperature range = Highest temperature − Lowest temperature\n"
              " • = 27°C − 23°C = 4°C\n\n"
              "⦿ (c) Answer:\n\n"
              " • Total annual rainfall (i.e., from Jan to Dec) = 43 + 53 + 137 + 145 + 183 + 234 + 127 + 74 + 178 + 201 + 99 + 30\n"
              " • = 1,504 mm\n"
              "⦿ (d) Answer:\n\n"
              " • The rainfall recorded a total of 1,504 mm from January to December which was very high distribution.\n"
              " • The months of June and October recorded the highest or wettest rainfall with 234 and 201 respectively.\n"
              " • December recorded 30 mm and that was the least rainfall.\n"
              " • The rainfall pattern was not evenly distributed. This is because it was recorded highest in June (234mm) and October (201mm) but lowest in December (30mm) and January (43mm).\n"
              " • The rainfall distribution in the month of August was sharply dropped to 74mm between the two peaks.\n"
              " • Rainfall was recorded every month indicating that it rained in all twelve months.",
          explanation: " "),
      PracticeQuestion(
        scenario: "(a) State five characteristics of the harmattan.\n"
            "(b) In what two ways is the harmattan useful?\n"
            "(c) Mention three disadvantages of the harmattan.",
        answer: "⦿ (a) Answer:\n\n"
            "• Another name is tropical continental air mass or north-east trade winds.\n"
            "• It is dry and has low water vapour content or low humidity.\n"
            "• It is hot during the day and cold during the night.\n"
            "• It is accompanied or characterized by carrying a lot of dust particles.\n"
            "• It blows from the north-east of Ghana to the south-west of Ghana in direction.\n"
            "• It is mostly hazy and this reduces visibility both in the morning and evening.\n"
            "• It is mostly severe from November to February.\n"
            "• The winds do not bring rain.\n"
            "• The winds are normally dry.\n"
            "• Cloud cover is low.\n\n"
            "⦿ (b) Answer:\n\n"
            "• Promotes harvest and drying of crops: The hot and dry nature of harmattan enables farmers to dry their harvested crops faster and preserve them for future use.\n"
            "• Promotes salt production: It provides a favourable condition to support the production of salt. This is because there is high evaporation during the harmattan season due to its hot and dry nature.\n"
            "• Promotes laundry services: The hot and dry nature of harmattan facilitates laundry activities. This is because washed clothes can dry faster during the period.\n"
            "• Facilitates land preparation/clearing of farmlands: The dry nature of harmattan enables farmers to prepare their farmlands for the next farming period.\n"
            "• Favours travelling and other social activities: The absence of rain during the harmattan season enables travelling, trading and social activities to be performed successfully without interruption by rain.\n"
            "• Minimizes mosquito breeding: The dry nature of harmattan dries up stagnant water that serves as a mosquito breeding source and reduces malaria parasites.\n\n"
            "⦿ (c) Answer:\n\n"
            "• Air pollution: Harmattan is accompanied by dust particles in the air and this pollutes the air or atmosphere.\n"
            "• Diseases: Skin rashes, irritation and other airborne diseases spread rapidly due to the dry and hot nature of harmattan. It also causes bronchial-related illnesses such as asthma.\n"
            "• Poor visibility: The hazy nature of harmattan seriously results in poor visibility. This affects drivers and other transporters, leading to a high rate of accidents.\n"
            "• Decrease in volume of water bodies: The dry, hot and lack-of-rainfall nature of harmattan facilitates the rate of evaporation. This reduces the volume of water bodies and affects activities that depend on water bodies.\n"
            "• Bushfires: The hot and dry nature of harmattan facilitates bushfires since the vegetation becomes very dry and can spread fire easily.\n"
            "• It prevents rainfall: Harmattan is associated with low relative humidity, which does not support rainfall.\n"
            "• Uncomfortable living/lips and feet bleed: People feel discomfort during the harmattan season. Their skin and lips become very dry and lose moisture, causing sores on the lips and skin.\n"
            "• Delay in planting of crops: The hot, dry and lack-of-rainfall nature of harmattan disrupts farming activities, especially the planting of crops.\n"
            "• Lack of pasture for animals: The dry nature of harmattan affects the growth of grasses used to feed animals.",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "(a) Name the three types of rocks.\n"
            "(b) State four importance of rocks.",
        answer: "⦿ (a) Answer:\n\n"
            "• Igneous rock\n"
            "• Sedimentary rock\n"
            "• Metamorphic rock\n\n"
            "⦿ (b) Answer:\n\n"
            "• For building: Rocks are quarried and used for the construction of bridges, dams, and houses. Examples include granite, clay and limestone.\n"
            "• As a source of precious minerals: Some rocks contain minerals. For instance, gold, coal, petroleum and diamonds are obtained from rocks.\n"
            "• As a source of fuel: Some rocks serve as sources of fuel, such as petroleum, coal and natural gas. For example, oil and gas are obtained from shale rock.\n"
            "• As a source of food or salt: Some salt rocks, such as sodium chloride from sedimentary rocks, serve as sources of salt that is mined for cooking.\n"
            "• Serves as a tourist attraction: Some rocks have attractive features, such as their shapes or layers. These become tourist sites, for example, the Umbrella Rock at Boti Falls.\n"
            "• Source of underground water: Springs, wells and other underground water take their sources from rocks.\n"
            "• For construction of roads: Rocks such as granite and basalt are used to construct roads because they are strong and durable.\n"
            "• Source of employment: Rocks provide employment through quarrying, mining industries and tourist sites.\n"
            "• For ornamental uses: Some beautiful rocks, such as marble, can be polished as ornaments and used to decorate houses and floors.\n"
            "• Source of revenue to the state: Some rock products, such as gold, are exported to other countries to earn foreign exchange.\n"
            "• Source of materials for crafts: Rocks like marble and clay provide raw materials for sculpturing and ceramic activities.\n"
            "• For soil formation: Soil is formed as a result of the breakdown or disintegration of rocks.",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario:
            "(a) Mention two areas in Ghana which experience relief rainfall.\n"
            "(b) List two benefits of rainfall.",
        answer: "⦿ (a) Answer:\n\n"
            "• Abetifi in Kwahu District\n"
            "• Aburi-Akwapim, located in the Akwapim-Togoland Ranges\n"
            "• Kusa area, located near Fomena in the Atiwa Range\n"
            "• Kwahu Range or mountainous area\n"
            "• Parts of the Volta Region, especially the Amedzofe area\n"
            "• Mampong area in the Ashanti Region\n\n"
            "⦿ (b) Answer:\n\n"
            "• It provides water for domestic uses: Rainfall is harvested by people in their homes for cooking, bathing, drinking, washing, and other household activities.\n"
            "• It provides water for industrial use: Rainfall provides water that is treated for industrial activities, such as mixing chemicals or cooling engines.\n"
            "• It provides water to support agricultural activities: Rainfall improves soil moisture and enables farmers to plant and grow their crops.\n"
            "• It improves weather conditions: Rainfall helps to reduce hot weather conditions to normal temperatures, thereby improving living conditions.\n"
            "• It increases the volume of water bodies: Rainfall increases the volume of rivers and lakes used for hydroelectric power generation, such as Lake Volta.\n"
            "• It supports the growth of pasture: Rainfall promotes the growth of grass used to feed livestock.",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "(a) Outline five features of the rain forest.\n"
            "(b) State any five benefits of the rain forest.",
        answer: "⦿ (a) Answer:\n\n"
            "• The forest is evergreen throughout the year with broad leaves.\n"
            "• The forest is arranged in layers.\n"
            "• The trees are tall and straight.\n"
            "• There are many lianas and/or woody climbers which twist around the trees.\n"
            "• The trees have inter-locking canopies.\n"
            "• Dead leaves, trees and fungi are common in their undergrowth.\n"
            "• The trees are not found in pure stands.\n"
            "• The trees have thin barks with buttress roots.\n\n"
            "⦿ (b) Answer:\n\n"
            "• Source of foreign exchange: Timber is exported abroad to earn foreign exchange.\n"
            "• Provision of timber to feed sawmills: The forest provides timber used as raw materials by sawmills.\n"
            "• Provision of logs for construction: The forest provides logs which are processed into wood for construction.\n"
            "• Provision of wood for furniture making: Logs are processed into wood and plywood to make tables, chairs and other furniture.\n"
            "• Provision of logs and wood for fuel: The forest provides wood used for firewood and charcoal.\n"
            "• Conservation of soil fertility: Forest shade prevents erosion, while fallen leaves become manure that enriches the soil.\n"
            "• Provision of food: The forest provides fruits and meat from game to sustain human life.\n"
            "• Provision of tourist sites: Attractive forest features become tourist sites, such as Kakum National Park.\n"
            "• Source of employment: Jobs are created for hunters, herbalists and chainsaw operators.\n"
            "• Provision of medicine: Leaves and barks are used to produce traditional and orthodox medicines, such as those obtained from mahogany and neem trees.\n"
            "• Conservation of water bodies: Forests protect water bodies from drying up through evaporation.\n"
            "• Provision of habitat: The forest serves as a home for wildlife such as monkeys and elephants.\n"
            "• Provision of cooking items: Wood logs are processed into pestles, mortars and wooden ladles.",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario:
            "(a) State the two main seasons and the periods in which they occur in Ghana.",
        answer: "⦿ (a) Answer:\n\n"
            "• The dry season: It occurs from November to February.\n"
            "• The wet season: It occurs from March to October.",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "(a) Describe the Solar System.\n"
            "(b) Name four planets in the Solar System.",
        answer: "⦿ (a) Answer:\n\n"
            "• The Solar System consists of the Sun and the eight planets. It also includes moons, dwarf planets, comets, asteroids and other satellites.\n\n"
            "⦿ (b) Answer:\n\n"
            "• Mercury\n"
            "• Venus\n"
            "• Earth\n"
            "• Mars\n"
            "• Jupiter\n"
            "• Saturn\n"
            "• Uranus\n"
            "• Neptune\n"
            "• Pluto (dwarf planet)",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "(a) State two major highlands in Ghana.\n"
            "(b) State two major lowlands in Ghana.\n"
            "(c) Outline two uses of the International Date Line.",
        answer: "⦿ (a) Answer:\n\n"
            "• Gambaga Scarp (Northeast Highlands)\n"
            "• Mampong Scarp (Central Highlands)\n"
            "• Wa Scarp (Northwest Highlands)\n"
            "• The Akwapim-Togo Ranges\n"
            "• Kwahu Scarp\n\n"
            "⦿ (b) Answer:\n\n"
            "• Volta Basin Lowlands\n"
            "• Coastal Lowlands/Coastal Plains\n"
            "• Afram Plains\n"
            "• River Basins\n\n"
            "⦿ (c) Answer:\n\n"
            "• It helps to avoid confusion resulting from differences in time between places.\n"
            "• It helps to determine days and nights at various places at a specific time.\n"
            "• It helps to determine dates in different parts of the world at the same time.\n"
            "• It helps to determine local time and standard time with reference to GMT.\n"
            "• It helps to determine the number of hours a traveller is ahead or behind.\n"
            "• It helps a traveller to know when a day is lost or gained.",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario:
            "(a) Calculate the time at town ‘A’ on a longitude 45° E if the time at town ‘B’ on longitude 0° is 9 a.m.",
        answer: "⦿ (a) Answer:\n\n"
            "• Difference in longitude between town A and town B = 45° − 0° = 45°\n"
            "• Every 15° = 1 hour\n"
            "• Time difference = (45° × 1 hour) ÷ 15° = 3 hours.\n"
            "• Since town A is east of town B, the time at town A will be 3 hours ahead of the time in town B.\n"
            "• Therefore, the time at town A will be 9 a.m. + 3 hours = 12 p.m. (noon).",
        explanation: " ",
      ),
    ],
  ),
  "Adolescent Reproductive Health": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1 (BECE 2010 Q1)\n"
            "(a) State four causes of irresponsible adolescent behaviour.\n"
            "(b) Explain four benefits of adolescent chastity.",
        answer: "⦿ (a)Answers:"
            "• Refusal of physical needs by parents: When parents refuse to provide children with their physical needs, it compels them to seek such needs elsewhere. This encourages them to engage in irresponsible behaviours such as armed robbery or prostitution.\n"
            "• Negative peer pressure: Pressure and influences from the peers of adolescents can make them engage in bad behaviours such as prostitution, armed robbery, and drug abuse.\n"
            "• Curiosity and adventure: The curiosity or adventurous nature of adolescents often leads them into bad behaviours such as drug abuse, prostitution, and pre-marital sex..\n"
            "• Lack of parental love and respect: Parents who do not show love, care, and respect make their children feel rejected. These children then seek affection and respect from the opposite sex, leading them into early sexual relationships.\n"
            "• Influence of parental examples: Parents who portray irresponsible behaviours such as drinking, smoking, or prostitution influence their children to copy them and practice such lifestyles.\n"
            "• Media influence: Exposure to mass media (television, magazines, movies, pornographic material) influences adolescents to practice bad behaviours like drinking alcohol, drug abuse, and prostitution.\n"
            "• Breakdown of the extended family: The reduction in control and discipline previously provided by elderly relatives like uncles and grandparents has led to a higher level of irresponsible behaviour.\n"
            "• Broken homes: Broken marriages or homes often lead to a lack of parental control and responsibility, which can lead adolescents into irresponsible habits.\n"
            "• Materialistic desires: The desire to possess material things like mobile phones, expensive shoes, or bags compels some to engage in robbery or prostitution to earn money.\n"
            "• Lack of education: Children who lack knowledge about the consequences of certain irresponsible behaviours may unknowingly engage in them.\n"
            "• Poverty: Financial difficulties on the part of parents make children lack basic needs, leading them to behaviours like prostitution to survive or support the family.\n"
            "⦿ (b)Answers:\n\n"
            "• Development of self-dignity: People who live a chaste life feel self-honoured and proud. They possess a sense of self-worth and feel valued and worthy of respect in society.\n"
            "• Respect from adults: Adults in the community highly respect and honour adolescents who live a chaste life. They are seen as role models worthy of emulation because chastity is a cherished Ghanaian value.\n"
            "• Attraction of responsible marriage partners: Chaste adolescents often find responsible partners. Because they wait for the right time, it allows parents to conduct necessary family background investigations before marriage is contracted.\n"
            "• Uninterrupted education: Abstaining from premarital sex allows adolescents to focus on their studies and avoid unwanted pregnancies that could terminate their education.\n"
            "• Prevention of STDs: Living a chaste life prevents individuals from contracting sexually transmitted diseases like HIV/AIDS, syphilis, or gonorrhoea because they abstain from all sexually related activities.\n"
            "• Honour to parents: Chaste children bring respect to their parents. The parents become worthy of emulation for successfully raising their children to such a responsible status.\n"
            "• Trust in future marriage: Those who practice chastity are often highly trusted by their future spouses. Keeping one's virginity until marriage minimizes suspicion of infidelity and helps promote a stable marriage.\n"
            "• Prevention of early parenthood: Chastity prevents teenage pregnancies, ensuring that adolescents do not become parents before they are physically, emotionally, or financially ready.\n"
            "• Prevention of abortion and its risks: By avoiding unwanted pregnancies, chastity removes the temptation to resort to unsafe abortions, which can lead to womb damage or loss of life.\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 2 (BECE 2020 Q2)\n"
            "(a) Define the following terms:\n"
            "(i) Adolescence;\n"
            "(ii) Reproductive health;\n"
            "(b) Outline four factors that can promote good adolescence reproductive health.",
        answer: "⦿ (a) Answers:\n\n"
            "   • (i) Adolescence is a stage of transition of an individual from childhood to adulthood.\n"
            "   • (ii)  Reproductive health is the state of complete physical, mental, and social well-being of the entire reproductive system of an individual.\n"
            "⦿ (b) Answers:\n\n"
            "• Good parenting: Parents must provide for the physical and emotional needs of their children and guide them away from negative influences. This prevents children from seeking needs on the street and reduces exposure to sexual health risks.\n"
            "• Chastity and moral values: Encouraging adolescents to stay away from sexual activities helps them avoid unwanted pregnancies and diseases like HIV that affect the reproductive system.\n"
            "• Academic ambition: Developing a desire to complete Secondary and Tertiary education provides adolescents with the knowledge and focus needed to overcome reproductive health issues and secure a future career.\n"
            "• Obedience to guardians: Following the advice of parents and guardians prevents adolescents from engaging in irresponsible behaviours like prostitution or activities leading to unsafe abortions.\n"
            "• Respect for social values: Living according to societal norms (tolerance, hospitality, and respect for elders) helps adolescents stay away from illegal practices and maintain a healthy lifestyle.\n"
            "• Avoidance of negative peer influence: Adolescents should be encouraged to reject influences from peers to watch pornography or engage in drug abuse and sexual relationships.\n"
            "• Maintaining good hygiene: Practising regular health habits—such as bathing, brushing teeth, and shaving pubic parts—ensures that reproductive organs remain healthy and function well.\n"
            "• Sex education: Formal education on reproductive organs and the dangers of indiscriminate sexual activity helps adolescents understand how to protect their bodies and minds.\n"
            "• Good eating habits: Eating a balanced diet, drinking enough water, and avoiding excessive fatty foods or late-night eating ensures the proper functioning of the reproductive system.\n"
            "• Physical exercise: Regular exercise maintains a healthy body and mind, promoting proper blood circulation which is essential for a healthy reproductive system.\n"
            "• Guidance and counselling: Access to services from teachers, pastors, and experts provides adolescents with the information needed to navigate health issues and make responsible choices.\n",
        explanation: " ",
      ),
    ],
  ),

  "Citizenship and Human Rights": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1 (BECE 1996 Q4a)\n\n"
            "Describe three duties of a citizen of Ghana.\n",
        answer:
            "• Payment of tax: A citizen of Ghana is expected to pay taxes to the state. This will enable the government to mobilize sufficient revenue to undertake development projects such as roads, provision of water, electricity, etc. in the country.\n"
            "• Law abiding/obedience to the constitution: A citizen of Ghana is expected to obey all the rules and regulations and provisions of the constitution of the country. This will help to bring peace and stability in the country.\n"
            "• Participate in communal labour: It is the responsibility of a citizen of Ghana to offer his or her skills, knowledge and experience to support the development of his or her community through communal labour. These include cleaning, weeding, construction, etc.\n"
            "• Respect for the rights of others: A citizen must respect the right of other people to ensure harmonious living in the country.\n"
            "• Protection of public properties: A citizen is expected to protect properties of the state to enable them function effectively in the country.\n"
            "• Reporting criminals to the police: It is the responsibility of every citizen to report to the police people who indulge in criminal activities in the country to enhance the security of the country.\n"
            "• Defending the state: A citizen is expected to always defend the name of Ghana especially in times of war.\n"
            "• Exhibiting positive work attitudes: It is the responsibility of a citizen to exhibit positive work attitudes to increase productivity of the country. These include punctuality, hard work, and respect for authorities, etc. at workplaces.\n"
            "• Defending the constitution of Ghana: It is the responsibility of every citizen of Ghana to uphold and defend the constitution of Ghana against a plot of military coup.\n"
            "• Lack of education: Children who lack knowledge about the consequences of certain irresponsible behaviours may unknowingly engage in them.\n"
            "• Poverty: Financial difficulties on the part of parents make children lack basic needs, leading them to behaviours like prostitution to survive or support the family.\n"
            "• Offering voluntary service to the state: A citizen is expected to render a voluntary service such as national service, acting as a witness at the court etc. to the state.\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 2 (BECE 2010 Q4)\n\n"
            "(a) What is citizenship?\n"
            "(b) Describe four ways by which one could become a citizen of Ghana.",
        answer: "⦿ (a) Citizenship definition:\n\n"
            "   • Citizenship means membership of a country. A citizen is a person who has been accepted as a member of a country either by reason of birth, adoption, descent or by registration.\n"
            "⦿ (b) Ways to become a citizen of Ghana:\n\n"
            "• By birth: A person born anywhere in the world whose parents or grandparents are Ghanaians could become a citizen of Ghana.\n"
            "• By adoption: A child who is not more than sixteen years and adopted by a Ghanaian through legal process could become a citizen of Ghana.\n"
            "• By Naturalization: A foreigner who has stayed in Ghana for a certain number of years and shown good character could renounce his/her current citizenship and apply to become a citizen of Ghana. He/she must swear an oath of allegiance to his/her new country (Ghana) in the process.\n"
            "• By Registration (Marriage): A foreigner married to a Ghanaian can apply to become a citizen of Ghana by registration.\n"
            "• By honorary conferment: Citizenship may be conferred on a foreigner by the president of Ghana as a sign of appreciation of his/her contribution to humanity or development. (Example: Dr W.B Du Bois).\n"
            "• By foundling: A foreigner whose parents are unknown and not more than seven years of age found in Ghana shall be presumed to be a citizen of Ghana.\n"
            "• By descent: A person can become a citizen of Ghana by tracing the nationality or ancestry of his or her parents irrespective of his or her place of birth. (Example: Dede Ayew).\n",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "QUESTION 3 (BECE 2023 Q4a)\n\n"
            "Differentiate between freedom and obligation.\n",
        answer:
            "• Freedoms are the benefits that an individual enjoys without any hindrance.\n"
            "• Obligations are the duties and responsibilities of an individual in a state or country.\n",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "QUESTION 4 (BECE 2024 Q3b)\n\n"
            "In what four ways can citizens contribute to the development of the state?\n",
        answer:
            "• By paying taxes: This enables the government to mobilize revenue for development projects such as roads, water, and electricity to improve lives.\n"
            "• By reporting crime activities: Reporting people who indulge in criminal activities like armed robbery or rape to the police improves national security.\n"
            "• Not getting involved in criminal activities: By avoiding crime, citizens ensure a comfortable environment that leads to higher productivity.\n"
            "• Offering voluntary services: Rendering services such as national service or acting as a witness in court when called upon.\n"
            "• Participating in national politics: Contributing through political education, campaigns, and voting during national elections.\n"
            "• Exhibiting positive work ethics: Increasing national productivity through punctuality, hard work, and respect for authorities at workplaces.\n"
            "• Honouring communal labour: Supporting community development by offering skills and labour for cleaning, weeding, and construction.\n"
            "• Defending the constitution: Upholding the constitution against military takeovers and ensuring its provisions are not undermined.\n"
            "• Being law abiding: Obeying all rules and regulations to ensure peace and stability in the country.\n"
            "• Discouraging outmoded cultural practices: Helping to abolish practices like widowhood rites, trokosi, or FGM to safeguard human rights.\n"
            "• Protecting national properties: Safeguarding state assets like hospitals, school buildings, and furniture so they function effectively.\n"
            "• Engaging in public education: Sensitizing others to protect national properties and public facilities.\n"
            "• Protection of the environment: Safeguarding water bodies, vegetation, and air to promote national health and development.\n"
            "• Projecting the good image of the country: Promoting Ghana's name through music, sports, and culture to attract investors and create jobs.",
        explanation: " ",
      ),
    ],
  ),
  "Human Resource Development": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1 (BECE 2009 Q6)\n\n"
            "(a) What is human resource?\n"
            "(b) Explain three factors which can negatively affect human resource in Ghana.\n"
            "(c) Describe four measures that can be taken to improve human resource in Ghana.\n",
        answer: "⦿ (a) Answer:\n\n"
            "Human resource refers to the population, their skills and ability to use them to facilitate development.\n\n"
            "⦿ (b) Answer:\n\n"
            "• Incidence of diseases: Diseases such as malaria, cholera, typhoid and HIV/AIDS that attack people make them weak and reduce their ability to work effectively.\n"
            "• Incidence of accidents: Accidents can cause a person to lose his life or become disabled. As a result, his skills, knowledge and experiences cannot be utilized for production.\n"
            "• Insecurity: People are not able to make good use of the skills, knowledge and experience they possess in production in an environment where they feel intimidated or insecure (e.g., armed robbery or ethnic conflicts).\n"
            "• Disasters: Natural disasters such as droughts, floods, and bush fires can lead to loss of human power and limit a worker's efficiency.\n"
            "• Rapid growth of population: This creates unemployment, making people unable to find jobs and put their skills and knowledge into efficient use.\n"
            "• Bribery and corruption: Practices at the workplace result in inadequate tools because funds meant for provisions are diverted for personal use.\n"
            "• Favouritism and Nepotism: These lead to the appointment of the wrong people to positions they cannot handle, rendering the workforce inefficient.\n"
            "• Low level of Education and Training: A lack of requisite skills and knowledge prevents people from functioning efficiently in modern workplaces.\n"
            "• Poor conditions of work/services: Lack of facilities and poor wages reduce worker motivation.\n"
            "• Influence of traditional beliefs and practices: Taboos or norms, such as non-working days for traditional reasons, can make workers idle.\n"
            "• Negative attitudes to work/apathy: Lateness, absenteeism, and irregularity reduce overall productivity.\n"
            "• Absence of co-operant factors: A lack of working materials or tools at the workplace directly reduces the efficiency of the human resource.\n"
            "⦿ (c) Answer:\n\n"
            "• Improvement in welfare services: Providing enhanced remuneration, health insurance, and accommodation allowances to make workers more committed.\n"
            "• Provision of quality education: Equipping people with the requisite knowledge and skills needed for professional roles like doctors, engineers, and teachers.\n"
            "• Training: Offering technical, vocational, and entrepreneurial training to help individuals develop their full potential.\n"
            "• Improved working conditions: Providing higher wages and better facilities to motivate workers to bring out their best.\n"
            "• Proper supervision: Effective management supervision ensures workers exhibit positive attitudes and increase productivity.\n"
            "• Good work ethics: Encouraging punctuality, honesty, and loyalty to enhance relationships between employers and workers.\n"
            "• Provision of employment: Creating more opportunities so that people can put their acquired talents and skills to practical use.\n"
            "• Provision of efficient tools: Supplying the right equipment, such as computers, to make work more efficient.\n"
            "• Reduction of accidents: Putting measures in place to minimize loss of human resources through death or disability.\n"
            "• Career guidance and counselling: Equipping workers with professional information regarding work ethics and career paths.\n"
            "• Enforcement of laws: Implementing strict laws against corruption and nepotism to ensure qualified people are appointed.\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 2 (BECE 2011 Q6)\n\n"
            "(a) Describe four ways through which human resources can be developed in Ghana.\n\n"
            "(b) State two reasons why labour is not fully used in Ghana.",
        answer: "⦿ (a) Answer:\n\n"
            "• Refer to the measures listed in Question 1(c) above, such as Provision of quality education, Training, Improved working conditions, and Proper supervision.\n\n"
            "⦿ (b) Answer:\n\n"
            "• Poor working conditions: Low wages and a lack of incentives discourage workers from putting in their best effort.\n"
            "• Inadequate training facilities: A lack of facilities for on-the-job and off-the-job training prevents workers from improving their skills.\n"
            "• Inadequate job opportunities: Many educated individuals remain jobless, meaning their skills and talents are not utilized.\n"
            "• Limited welfare services: A lack of medical services, transport, and housing leads to a lukewarm attitude toward work.\n"
            "• Low technical know-how: Low levels of education make it difficult for workers to efficiently exploit natural resources.\n",
        explanation: " ",
      ),
      PracticeQuestion(
        scenario: "QUESTION 3 (BECE 2023 Q6)\n\n"
            "(a) State the two classifications of human resource.\n"
            "(b) Outline four measures the government can take to ensure efficient use of human resource in Ghana.\n",
        answer: "⦿ (a) Answer:\n\n"
            "• Skilled\n"
            "• Unskilled\n\n"
            "⦿ (b) Answer:\n\n"
            "• Refer to the measures listed in Question 1(c) above.\n",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 4 (BECE 2024 Q6)\n\n"
            "Identify four challenges mostly associated with human resources development in Ghana.",
        answer:
            "• Brain drain: Trained professionals leave the country for \"greener pastures\" abroad, depriving Ghana of their skills.\n"
            "• Inadequate training and retraining: Workers lack the updated knowledge needed for high productivity.\n"
            "• Limited welfare services: Insufficient insurance, accommodation, and transport reduce worker morale.\n"
            "• Poor conditions of service: Lack of materials and low motivation lead to a lack of commitment.\n"
            "• Financial challenges: Government constraints make it difficult to provide tools and salary increments.\n"
            "• Inconsistent government policies: Changing administrations may abandon existing development plans.\n"
            "• Nepotism/favouritism: Hiring unqualified family members or friends over skilled individuals weakens development efforts.\n"
            "• Improper implementation of educational policies: This leads to poor-quality education that does not meet market needs.\n"
            "• Ineffective monitoring: Poor supervision at workplaces allows for shoddy work and inefficiency.",
        explanation: " ",
      ),
    ],
  ),
  "Financial and Investment Issues": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1 (BECE 2025 Q5)\n\n"
            "(a) (i) How would you explain the concept of social security to parents?\n"
            "(a) (ii) State any two national social security schemes available in Ghana.\n"
            "(b) Suggest four reasons to convince any individual to join a Social Security Scheme in Ghana.",
        answer: "⦿ (a) (i) Answer:\n\n"
            "Social security is a program by society or the public designed to provide income, security, and protection against the future, old age, and unforeseen circumstances. These circumstances include invalidity, sickness, or the death of a breadwinner.\n\n"
            "⦿ (a) (ii) Answer:\n\n"
            "• Social Security and National Insurance Trust (SSNIT)\n"
            "• National Health Insurance Scheme (NHIS)\n"
            "• National Pension Scheme\n"
            "• State Insurance Corporation (SIC)\n"
            "• Micro insurance schemes (e.g., GLICO, Providence Life, LEAP, Tier II and III)\n\n"
            "⦿ (b) Answer:\n\n"
            "• Financial Security: Social security schemes such as SSNIT, SIC, and the National Pension Scheme provide financial security to policyholders. The beneficiaries or holders of the policy are assured of a lump sum of money they can claim in times of disability, death, or retirement.\n"
            "• Medical Care and Sick Benefits: Schemes like the National Health Insurance Scheme (NHIS) provide cover against sickness. It allows the insured to attend the hospital for medical care or buy drugs from a pharmacy with the costs charged to the insurer. This enables people to seek medical care regularly without immediate financial strain.\n"
            "• Poverty Prevention: Social security schemes, such as Providence Life and GLICO, protect holders against poverty by enabling them to plan against unforeseen circumstances and preventing them from forced borrowing. These policies help individuals keep money aside for future use or investment, thereby curbing unnecessary spending.\n"
            "• Surviving and Death Benefits for Dependents: Social security providers like SSNIT or SIC Life provide relief packages for beneficiaries. It allows parents to plan against untimely death by saving money for their surviving children, dependents, and the family in the form of life insurance.\n"
            "• Retirement and Old Age Benefits: Schemes provide opportunities for both government and private workers to plan for life after work. A certain percentage of their monthly salary is deducted and kept by institutions like SSNIT, which is then returned to the workers when they reach retirement age.\n"
            "• Economic Stability: Social security ensures economic stability in the country by encouraging savings for retirement, profit gain, or investment capital. This minimizes excessive borrowing and provides a safety net against sickness or disability.\n"
            "• Disability and Invalidity Benefits: Social security schemes provide opportunities for people to insure against disability in life. If an unfortunate incident such as an accident occurs, the individual can receive disability or invalidity benefits from the insurer to support their livelihood.",
        explanation: "",
      ),
    ],
  ),

  "Independent Ghana": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1: The Achievements of Dr. Kwame Nkrumah\n\n"
            "Write an essay on the following: The achievements of Dr. Kwame Nkrumah.",
        answer:
            "• Leadership in Independence: He led Ghana to achieve independence from British colonial rule on 6th March 1957, becoming the first Prime Minister and later the first President.\n"
            "• Infrastructure (Tema Harbour): Under his leadership, the Tema Harbour was constructed to boost international trade and maritime activities.\n"
            "• Industrialization (State Enterprises): His government established numerous state enterprises to promote self-reliance, including VALCO, Rubber Manufacturing at Bonsa, Nsawam Canaries, GIHOC, and Akosombo Textiles.\n"
            "• Healthcare Expansion: He expanded healthcare by building new hospitals, notably the Okomfo Anokye Teaching Hospital in Kumasi, and established the University of Ghana Medical School at Korle Bu.\n"
            "• Energy (Akosombo Dam): He oversaw the construction of the Akosombo Dam, providing electricity for domestic use and exporting power to neighbouring countries like Togo.\n"
            "• Education Development: He built several second-cycle schools, such as Tweneboa Kodua SHS, and established higher-learning institutions like UCC, KNUST, and various polytechnics and teacher-training colleges.\n"
            "• Free Education Policy: He introduced a compulsory free-tuition primary education scheme and provided free textbooks to Ghanaian children.\n"
            "• Financial Institutions: He established key financial institutions, including the Bank of Ghana, Ghana Commercial Bank, and the State Insurance Corporation.\n"
            "• Housing: He founded the State Housing Corporation to address the housing needs of the growing population by providing affordable homes.\n"
            "• Agriculture: He set up state farms and irrigation facilities for rice and sugar, while diversifying crops to include cash crops and livestock rearing.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 2: The Overthrow of Dr. Kwame Nkrumah\n\n"
            "(a) Mention achievements of Dr. Kwame Nkrumah.\n"
            "(b) What are the reasons that led to the overthrow of Dr. Kwame Nkrumah?",
        answer: "⦿ (a) Achievements:\n\n"
            "• Refer to the detailed points in Question 1.\n\n"
            "⦿ (b) Reasons for Overthrow:\n\n"
            "• One-party state: He declared Ghana a one-party state, making the CPP the only legal party and causing widespread political dissatisfaction.\n"
            "• Dictatorial Rule: He was accused of ruling as a dictator, concentrating power within the CPP and ignoring the interests of other groups.\n"
            "• Preventive Detention Act (PDA): The introduction of the PDA allowed for the detention of political opponents without trial, leading to human rights violations.\n"
            "• Corruption and Mismanagement: Widespread bribery and the collapse of state-owned enterprises due to mismanagement led to a loss of public trust.\n"
            "• Military Dissatisfaction: He provided preferential treatment to his Presidential Guards over the regular Armed Forces, inciting the military to plot a coup.\n"
            "• Disrespect for Tradition: His government destooled some traditional chiefs and disrespected local institutions, making him unpopular among traditional leaders.\n"
            "• Financial Mismanagement: Excessive spending on ambitious projects and foreign aid to countries like Guinea and Mali resulted in high inflation and national debt.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 3: The 1948 Riots and Watson Commission\n\n"
            "(a) Identify causes of the 1948 riots.\n"
            "(b) Outline recommendations of the Watson Commission.",
        answer: "⦿ (a) Causes of the 1948 Riots:\n\n"
            "• Constitutional Shortcomings: The Burns Constitution of 1946 failed to meet the political aspirations of the people.\n"
            "• Inequality in Civil Service: Most high-ranking civil service positions were held by Europeans, leaving few opportunities for Africans.\n"
            "• Economic Monopolies: Local businesses were crippled by the dominance of the Association of West African Merchants (AWAM).\n"
            "• Post-War Economic Slump: The country faced an economic downturn after World War II, leading to high unemployment.\n"
            "• High Cost of Living: Shortages of essential goods led to inflated prices and general hardship.\n"
            "• Swollen Shoot Disease Policy: The government's order to cut down infected cocoa trees without compensation angered farmers.\n"
            "• The Shooting of Veterans: The immediate spark was the killing of three ex-servicemen—Sergeant Adjetey, Corporal Attipoe, and Private Odartey-Lamptey—at the Osu crossroads.\n\n"
            "⦿ (b) Watson Commission Recommendations:\n\n"
            "• New Constitution: Recommended drafting a new constitution to replace the Burns Constitution and grant more autonomy.\n"
            "• Veteran Welfare: Recommended that the government fulfil promises made to ex-servicemen regarding pensions and housing.\n"
            "• Africanization of Administration: Suggested that Ghanaians should be more involved in the governance and administration of the colony.\n"
            "• Social Amenities: Recommended the provision of better social amenities, such as clean water and housing, for the local population.\n"
            "• Educational Reform: Urged the expansion and improvement of primary, middle, and secondary education.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 4: Impact of the 1948 Riots\n\n"
            "Highlight ways in which the riots contributed to Ghana’s independence.",
        answer:
            "• Constitutional Reform: The riots led to the Watson and Coussey Committees, which paved the legal way for self-rule through constitutional changes.\n"
            "• Birth of the CPP: The internal disagreements following the riots led Kwame Nkrumah to form the CPP, which demanded \"Self-government now.\"\n"
            "• Nationalism: The events unified the people of the Gold Coast and heightened political awareness and the desire for freedom.\n"
            "• The Big Six Popularity: The arrest of the UGCC leaders, known as the Big Six, made them national heroes and united the masses against colonial rule.\n"
            "• Political Representation: The riots forced the British to increase the number of Africans in the Legislative and Executive Councils.\n"
            "• International Awareness: The disturbances drew global attention to the anti-colonial struggle in West Africa, putting pressure on the British government.",
        explanation: "",
      ),
    ],
  ),


  "Environmental Issues": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "QUESTION 1: The Achievements of Dr. Kwame Nkrumah\n\n"
            "Write an essay on the following: The achievements of Dr. Kwame Nkrumah.",
        answer:
            "• Leadership in Independence: He led Ghana to achieve independence from British colonial rule on 6th March 1957, becoming the first Prime Minister and later the first President.\n"
            "• Infrastructure (Tema Harbour): Under his leadership, the Tema Harbour was constructed to boost international trade and maritime activities.\n"
            "• Industrialization (State Enterprises): His government established numerous state enterprises to promote self-reliance, including VALCO, Rubber Manufacturing at Bonsa, Nsawam Canaries, GIHOC, and Akosombo Textiles.\n"
            "• Healthcare Expansion: He expanded healthcare by building new hospitals, notably the Okomfo Anokye Teaching Hospital in Kumasi, and established the University of Ghana Medical School at Korle Bu.\n"
            "• Energy (Akosombo Dam): He oversaw the construction of the Akosombo Dam, providing electricity for domestic use and exporting power to neighbouring countries like Togo.\n"
            "• Education Development: He built several second-cycle schools, such as Tweneboa Kodua SHS, and established higher-learning institutions like UCC, KNUST, and various polytechnics and teacher-training colleges.\n"
            "• Free Education Policy: He introduced a compulsory free-tuition primary education scheme and provided free textbooks to Ghanaian children.\n"
            "• Financial Institutions: He established key financial institutions, including the Bank of Ghana, Ghana Commercial Bank, and the State Insurance Corporation.\n"
            "• Housing: He founded the State Housing Corporation to address the housing needs of the growing population by providing affordable homes.\n"
            "• Agriculture: He set up state farms and irrigation facilities for rice and sugar, while diversifying crops to include cash crops and livestock rearing.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 2: The Overthrow of Dr. Kwame Nkrumah\n\n"
            "(a) Mention achievements of Dr. Kwame Nkrumah.\n"
            "(b) What are the reasons that led to the overthrow of Dr. Kwame Nkrumah?",
        answer: "⦿ (a) Achievements:\n\n"
            "• Refer to the detailed points in Question 1.\n\n"
            "⦿ (b) Reasons for Overthrow:\n\n"
            "• One-party state: He declared Ghana a one-party state, making the CPP the only legal party and causing widespread political dissatisfaction.\n"
            "• Dictatorial Rule: He was accused of ruling as a dictator, concentrating power within the CPP and ignoring the interests of other groups.\n"
            "• Preventive Detention Act (PDA): The introduction of the PDA allowed for the detention of political opponents without trial, leading to human rights violations.\n"
            "• Corruption and Mismanagement: Widespread bribery and the collapse of state-owned enterprises due to mismanagement led to a loss of public trust.\n"
            "• Military Dissatisfaction: He provided preferential treatment to his Presidential Guards over the regular Armed Forces, inciting the military to plot a coup.\n"
            "• Disrespect for Tradition: His government destooled some traditional chiefs and disrespected local institutions, making him unpopular among traditional leaders.\n"
            "• Financial Mismanagement: Excessive spending on ambitious projects and foreign aid to countries like Guinea and Mali resulted in high inflation and national debt.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 3: The 1948 Riots and Watson Commission\n\n"
            "(a) Identify causes of the 1948 riots.\n"
            "(b) Outline recommendations of the Watson Commission.",
        answer: "⦿ (a) Causes of the 1948 Riots:\n\n"
            "• Constitutional Shortcomings: The Burns Constitution of 1946 failed to meet the political aspirations of the people.\n"
            "• Inequality in Civil Service: Most high-ranking civil service positions were held by Europeans, leaving few opportunities for Africans.\n"
            "• Economic Monopolies: Local businesses were crippled by the dominance of the Association of West African Merchants (AWAM).\n"
            "• Post-War Economic Slump: The country faced an economic downturn after World War II, leading to high unemployment.\n"
            "• High Cost of Living: Shortages of essential goods led to inflated prices and general hardship.\n"
            "• Swollen Shoot Disease Policy: The government's order to cut down infected cocoa trees without compensation angered farmers.\n"
            "• The Shooting of Veterans: The immediate spark was the killing of three ex-servicemen—Sergeant Adjetey, Corporal Attipoe, and Private Odartey-Lamptey—at the Osu crossroads.\n\n"
            "⦿ (b) Watson Commission Recommendations:\n\n"
            "• New Constitution: Recommended drafting a new constitution to replace the Burns Constitution and grant more autonomy.\n"
            "• Veteran Welfare: Recommended that the government fulfil promises made to ex-servicemen regarding pensions and housing.\n"
            "• Africanization of Administration: Suggested that Ghanaians should be more involved in the governance and administration of the colony.\n"
            "• Social Amenities: Recommended the provision of better social amenities, such as clean water and housing, for the local population.\n"
            "• Educational Reform: Urged the expansion and improvement of primary, middle, and secondary education.",
        explanation: "",
      ),
      PracticeQuestion(
        scenario: "QUESTION 4: Impact of the 1948 Riots\n\n"
            "Highlight ways in which the riots contributed to Ghana’s independence.",
        answer:
            "• Constitutional Reform: The riots led to the Watson and Coussey Committees, which paved the legal way for self-rule through constitutional changes.\n"
            "• Birth of the CPP: The internal disagreements following the riots led Kwame Nkrumah to form the CPP, which demanded \"Self-government now.\"\n"
            "• Nationalism: The events unified the people of the Gold Coast and heightened political awareness and the desire for freedom.\n"
            "• The Big Six Popularity: The arrest of the UGCC leaders, known as the Big Six, made them national heroes and united the masses against colonial rule.\n"
            "• Political Representation: The riots forced the British to increase the number of Africans in the Legislative and Executive Councils.\n"
            "• International Awareness: The disturbances drew global attention to the anti-colonial struggle in West Africa, putting pressure on the British government.",
        explanation: "",
      ),
    ],
  ),

  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "Mapping ": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "Question 1 (BECE 2019 Q1)\n"
            "(a) Explain the following:\n"
            "(i) Cardinal points;\n"
            "(ii) Scale of a map.",
        answer: "Corrected Answers:\n\n (i) Cardinal points:\n\n"
            "• Cardinal points are the four major directions or geographical points on a compass used to locate places.\n"
            "• The four cardinal points are North, East, West, and South.\n\n"
            "(ii) Scale of a map:\n\n"
            " • A scale of a map is the ratio or proportion of distance on a map to the actual distance on the ground.\n"
            " • A scale can be expressed in three main forms: linear form, statement form, or any fractional form (representative fraction).",
        explanation: "Explanation: \n\n **Bad effects of deforestation:**\n\n"
            "• Exposes water bodies to excessive evaporation: Indiscriminate cutting down of trees along riverbanks exposes water bodies to direct sunshine.This causes water bodies to dry up through evaporation process.\n\n"
            "• Exposes the land to erosion/Reduction in soil fertility: An indiscriminate cutting down of trees for farming, charcoal production, lumbering, etc.makes the land become bare and exposes it to agents of erosion such as wind, water, etc. This destroys the surface of the soil and renders the land less fertile for plant growth.\n\n"
            "• It destroys medicinal plants: Deforestation causes plants in which their leaves, roots and barks are used for medicinal purposes to be destroyed and lost forever.\n\n"
            "• Destruction of habitat of wildlife: Deforestation as a result of farming, charcoal production, mining or road construction destroys forests and habitat of wildlife. This leads to their extinction.\n\n"
            "**Ways deforestation can be minimized in Ghana:**\n\n"
            "• Practice of afforestation: People must be encouraged and supported with funds by the government to grow plants or trees in areas where there was no previous tree cover. This will help to increase plants population and preserve vegetation in the country.\n\n"
            "• Practice of re-afforestation: People must be encouraged by the government to plant trees to replace those that are cut off for farming, lumbering and other purposes. This will help to regenerate the depleted forests in the country.\n\n"
            "• Public education: The Environmental Protection Agency (EPA), through the media, must sensitize the public and create awareness on the effect of deforestation in the country. This will help to minimize practices such as improper farming, charcoal production, excessive lumbering, etc. that destroy forests in the country.\n\n"
            "• Creation of forest reserves: People must be restricted and banned from entering into certain forests zones in the country for firewood or woodlot, logs or farming. This will help to preserve and protect the forests in the country.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nCompare how CHRISTIANITY, ISLAM, and TRADITIONAL AFRICAN RELIGION each understand the NATURE OF GOD. Give ONE point of similarity and ONE difference.",
        answer:
            "Similarity: All three religions believe in a Supreme Being who is all-powerful (omnipotent), who created the world and all people in it.\n\nDifference: Christians believe in the Trinity — God as Father, Son (Jesus), and Holy Spirit. Muslims believe strictly in the oneness of God (Tawhid) without any partners or equals. Traditional African Religion (e.g., Akan) believes in Onyame as the Supreme God, but also recognises lesser deities and ancestral spirits as intermediaries.",
        explanation:
            "The three major religious traditions in Ghana share belief in a Supreme God but differ on the nature and form of that God.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nA classmate says, 'If God is all-powerful and all-loving, why is there suffering in the world?' Write a RELIGIOUS RESPONSE to this question using ideas from any ONE religion you have studied.",
        answer:
            "From a Christian perspective, suffering in the world is not evidence that God does not care. The Bible teaches that God gave humans free will — the freedom to choose between right and wrong. Much suffering comes from wrong choices made by people. Additionally, the Bible shows that even faithful believers faced suffering (e.g., Job), but God remained with them through it and brought good out of their trials. Christians believe suffering can build character, deepen faith, and draw people closer to God.",
        explanation:
            "This type of question tests religious knowledge and the ability to articulate doctrinal positions clearly and respectfully.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nExplain what WORSHIP is and describe THREE MODES of worship practised by believers in Ghana.",
        answer:
            "Worship is the act of showing reverence, devotion, and honour to God through various acts of religious expression.\n\nThree modes of worship:\n1. Prayer — Speaking to God privately or in a group, expressing gratitude, confession, and requests.\n2. Singing/Worship Songs — Praising God through hymns, gospel music, or Islamic devotional songs (nasheeds).\n3. Sacrifice/Offerings — Giving money (tithes and offerings in Christianity), or performing traditional libation (in African Traditional Religion) as an act of devotion.",
        explanation:
            "Worship takes many forms across religious traditions; all are expressions of devotion to the divine.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nWhy is it important for young people in Ghana to learn about the attributes of God? Give FOUR reasons.",
        answer:
            "1. Moral guidance — Understanding that God is just and holy motivates young people to behave honestly and avoid wrongdoing.\n2. Comfort in difficulty — Knowing God is omnipresent and loving reassures young people that they are not alone in challenges.\n3. Interreligious respect — Learning about God's attributes across religions helps students respect different faiths and promote peaceful coexistence.\n4. Identity and purpose — Belief in a Creator who made them intentionally gives young people a sense of worth, direction, and purpose in life.",
        explanation:
            "Knowledge of God's attributes shapes values, character, and worldview in meaningful ways for young Ghanaians.",
      ),
    ],
  ),

  "Behaviours Considered as Good Manners": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nDescribe FOUR examples of good manners in Ghanaian culture. For each, explain why it is considered respectful.",
        answer:
            "1. Greeting elders first — In Ghana, it is respectful to greet older people before speaking to them. It acknowledges their seniority and shows honour.\n2. Receiving gifts or food with both hands — Accepting things with two hands shows gratitude and respect to the giver.\n3. Not interrupting when an elder speaks — It shows patience, attentiveness, and respect for authority.\n4. Kneeling or bowing when speaking to chiefs or elders — It is a sign of submission and deep respect in many Ghanaian communities.",
        explanation:
            "Good manners in Ghanaian culture are deeply rooted in communal values of respect, honour, and social harmony.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nA student sees their peer cheating in an exam. Describe what GOOD MANNERS and MORAL INTEGRITY would require them to do. Include religious teaching in your answer.",
        answer:
            "Good manners and moral integrity require the student to act honestly, even when it is difficult. They should not assist in the cheating or pretend not to notice, as this would make them complicit. Ideally, they should quietly advise their peer to stop, reminding them of the consequences (disqualification, failure, shame).\n\nReligiously, Christianity, Islam, and African Traditional Religion all teach honesty and integrity. For example, the Bible states, 'Do not steal' (Exodus 20:15), and Islam values 'Amanah' (trustworthiness). Encouraging honesty is an act of true friendship and moral responsibility.",
        explanation:
            "Good manners go beyond politeness — they include moral courage to uphold what is right even under social pressure.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nExplain the concept of CHASTITY as taught in any ONE religion you have studied. Why is it important for young people today?",
        answer:
            "In Christianity, chastity means remaining sexually pure outside of marriage. The Bible teaches that the body is the temple of the Holy Spirit (1 Corinthians 6:19–20) and that sexual immorality dishonours God and damages the person.\n\nFor young people today, chastity is important for several reasons:\n1. It protects against sexually transmitted infections (STIs) and unplanned pregnancies.\n2. It preserves emotional and mental health, avoiding the consequences of unstable relationships.\n3. It maintains personal dignity and self-respect, which are the foundations of future stable families and relationships.",
        explanation:
            "Chastity, as taught across religions, has both spiritual and practical benefits for the well-being of young people.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nYour younger sibling is being pressured by friends to skip school and go to a party. Write a short advice (5 sentences) you would give them, drawing on moral values and religious teaching.",
        answer:
            "My dear sibling, I understand that peer pressure can be very hard to resist, especially when friends are involved. However, our religious teachings remind us that we must make wise choices that honour God and build our future. Skipping school is dishonest to your teachers, parents, and yourself — and it damages your education. True friends will respect your decision to do what is right. Remember: the choices you make today shape the person you will become tomorrow.",
        explanation:
            "Religious and moral values provide a framework for making difficult decisions and resisting peer pressure.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nWrite a short essay (one paragraph) on the topic: 'The Importance of Good Manners in Ghanaian Society.'",
        answer:
            "Good manners are the backbone of peaceful and harmonious living in Ghanaian society. They reflect the deep cultural values of respect, humility, and consideration for others that have been passed down through generations. When individuals greet one another, help those in need, speak politely, and dress decently, they contribute to a society built on mutual respect and dignity. Good manners also promote unity across Ghana's diverse ethnic groups, as shared values of decency and respect create a common foundation for peaceful coexistence. Ultimately, a society that practises good manners is one where every member — young or old, rich or poor — is treated with dignity and care.",
        explanation:
            "A well-structured essay on good manners should cover their cultural, social, and moral significance with specific examples.",
      ),
    ],
  ),

  // ─── JHS 2 / JHS 3: ENGLISH theory ─────────────────────────────────────────

  "JHS 2 - Environmental issues": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nState the difference between a homogeneous and a heterogeneous mixture.",
        answer: "Homogeneous mixtures have a uniform composition and single phase throughout. Heterogeneous mixtures have visible, distinct phases.",
        explanation: "For example, sugar solution vs. muddy water.",
      ),
    ],
  ),
  "EFFECTIVE TURN-TAKING IN CONVERSATION": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nExplain why turn-taking is necessary in sound communication. State two consequences of not observing turn-taking.",
        answer:
            "Turn-taking is necessary because it allows each party to express their opinions fully, ensures active listening, and keeps the conversation orderly. Without turn-taking:\n1. Interruptions occur, causing frustration and breakdown in communication.\n2. Important points or ideas of silent participants are missed.",
        explanation:
            "Orderly conversation requires active listening and structured participation.",
      ),
    ],
  ),

  "USING APPROPRIATE REGISTER (INFORMAL VS. FORMAL)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nYour friend writes: 'Yo Headmaster, I need a day off cause my head is spinning.' Correct this sentence to match a formal register appropriate for a petition to a headmaster.",
        answer:
            "Correct: 'Dear Sir, I am writing to request permission to be absent from school today due to an illness.'",
        explanation:
            "Formal petitions require formal greetings (Dear Sir), fully spelled words (no 'cause'), and polite expressions.",
      ),
    ],
  ),

  "REPORTED SPEECH": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nConvert these direct sentences to reported speech:\n(a) Ama said, 'I went to Cape Coast yesterday.'\n(b) The teacher asked, 'Have you completed the assignment?'",
        answer:
            "(a) Ama said that she had gone to Cape Coast the previous day (or the day before).\n(b) The teacher asked if I had completed the assignment.",
        explanation:
            "Ensure that pronouns, tenses (past simple to past perfect; present perfect to past perfect), and time markers shift correctly.",
      ),
    ],
  ),

  "QUESTION TAGS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nState the rule for creating question tags. Provide the correct question tags for:\n(a) Kojo cannot swim.\n(b) You will help me tomorrow.",
        answer:
            "Rule: Positive sentences take negative tags, and negative sentences take positive tags. The auxiliary verb from the main sentence is repeated in the tag.\n(a) Kojo cannot swim, can he?\n(b) You will help me tomorrow, won't you?",
        explanation:
            "Question tags turn statements into yes/no questions to confirm information.",
      ),
    ],
  ),

  "MASTERING REGISTER AND OPEN QUESTIONS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\na) What is the difference between an open and closed question?\nb) Write one example of an open question to ask a friend about their weekend.",
        answer:
            "a) Open questions require a detailed and explanatory answer, whereas closed questions can be answered with a simple 'yes' or 'no'.\nb) 'What did you do during the weekend?' (or 'How did you spend your weekend?')",
        explanation: "Open questions prompt description and elaboration.",
      ),
    ],
  ),

  "THE ART OF ARGUMENT AND DEBATING": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nWrite a short introductory paragraph for a debate supporting the motion: 'Mobile phones should be allowed in Junior High Schools.'",
        answer:
            "Mr. Chairman, Panel of Judges, accurate Timekeeper, fellow debaters and constituents, I stand before you to support the motion that mobile phones should be allowed in Junior High Schools. In an era driven by technology, digital literacy is no longer a luxury but an absolute necessity for modern education.",
        explanation:
            "Debate introductions should greet the audience and clearly state the speaker's stance on the motion.",
      ),
    ],
  ),

  "CONDITIONAL SENTENCES (TYPE 3)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nExplain when a Type 3 conditional sentence is used. Rewrite the following in Type 3 conditional form:\n'I did not study, so I failed the exam.'",
        answer:
            "A Type 3 conditional represents an imaginary past event that did not happen and its hypothetical result. \nRewrite: 'If I had studied, I would not have failed the exam.' (or 'If I had studied, I would have passed the exam.')",
        explanation:
            "Type 3 uses: If + past perfect, would have + past participle.",
      ),
    ],
  ),

  "DEFINING AND NON-DEFINING RELATIVE CLAUSES": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nCombine the pairs of sentences using relative pronouns:\n(a) The girl is my sister. She won the prize.\n(b) Accra is the capital of Ghana. It is a busy city. (Use non-defining clause)",
        answer:
            "(a) The girl who won the prize is my sister.\n(b) Accra, which is the capital of Ghana, is a busy city.",
        explanation:
            "Relative pronouns (who, which) connect clauses. Non-defining clauses contain extra info and are bracketed by commas.",
      ),
    ],
  ),

  "ADVERBIAL PHRASES AND THEIR FUNCTIONS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nIdentify the adverbial phrase in the sentence and state its grammatical function:\n'The children played soccer on the school field.'",
        answer:
            "Adverbial phrase: 'on the school field'.\nGrammatical function: Adverbial phrase of place (modifies the verb 'played' by showing where the action occurred).",
        explanation:
            "Adverbial phrases describe when, where, how, or why actions take place.",
      ),
    ],
  ),

  // ─── JHS 2 / JHS 3: SCIENCE theory ─────────────────────────────────────────
  "Types of mixtures and their characteristics": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\na) Define a mixture.\nb) Differentiate between homogeneous and heterogeneous mixtures, giving one example of each.",
        answer:
            "a) A mixture consists of two or more substances physically combined together in any proportion.\nb) Homogeneous mixtures have uniform appearance and composition throughout (e.g. salt solution). Heterogeneous mixtures have visible, non-uniform components (e.g. mixture of sand and iron filings).",
        explanation: "Mixture classification is based on uniformity of phase.",
      ),
    ],
  ),

  "SEPARATING MIXTURES (PHYSICAL PROCESSES)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nDescribe the laboratory process of separating a mixture of common salt and sand.",
        answer:
            "1. Addition of water: Add water to the mixture and stir to dissolve the common salt. Sand remains insoluble.\n2. Filtration: Pour the mixture through a filter paper in a funnel. The sand remains as residue, and the salt solution passes through as filtrate.\n3. Evaporation: Heat the filtrate to evaporate the water, leaving dry salt crystal behind.",
        explanation:
            "Physical separation processes utilize the distinct physical properties of each component.",
      ),
    ],
  ),

  "ATOMIC STRUCTURE AND SUB-ATOMIC PARTICLES": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nDraw a labeled diagram of a Helium atom (atomic number 2, mass number 4) representing the nucleus and subatomic particles.",
        answer:
            "The diagram of Helium (He) would show:\n- A central nucleus containing 2 Protons (positively charged) and 2 Neutrons (neutral charge).\n- Two Electrons (negatively charged) orbiting the nucleus in the first energy shell (K shell).",
        explanation:
            "Helium has atomic number 2 (2 protons, 2 electrons) and mass number 4 (4 - 2 = 2 neutrons).",
      ),
    ],
  ),

  "THE PERIODIC TABLE AND ELECTRON CONFIGURATION": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nExplain how elements are arranged on the periodic table. Write the electron configuration for Calcium (atomic number 20).",
        answer:
            "Elements are arranged on the periodic table in order of increasing atomic number (number of protons). Elements with similar chemical properties are grouped in vertical columns called Groups.\nConfiguration: The electron configuration of Calcium (Ca) is 2, 8, 8, 2.",
        explanation:
            "The arrangement follows shell capacities: 2, 8, 8, 18, etc.",
      ),
    ],
  ),

  // ─── JHS 2 / JHS 3: MATH theory ────────────────────────────────────────────
  "FROM BILLIONS TO STANDARD FORM": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nExpress the following numbers in standard form:\n(a) 125,000,000\n(b) 0.000045",
        answer: "(a) 1.25 × 10^8\n(b) 4.5 × 10^-5",
        explanation:
            "Standard form is A × 10^n where 1 ≤ A < 10 and n is an integer.",
      ),
    ],
  ),

  "The Complete Guide to Number Operations": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nSolve the expression using BODMAS: \n(15 + 5) ÷ 4 - 2 × 3 + 10",
        answer:
            "Step 1 (Brackets): 15 + 5 = 20.\nStep 2 (Division): 20 ÷ 4 = 5.\nStep 3 (Multiplication): 2 × 3 = 6. Expression becomes: 5 - 6 + 10.\nStep 4 (Addition/Subtraction): 5 + 10 - 6 = 15 - 6 = 9.",
        explanation:
            "BODMAS sets mathematical operation precedence: Brackets, Orders, Division/Multiplication, Addition/Subtraction.",
      ),
    ],
  ),
};
