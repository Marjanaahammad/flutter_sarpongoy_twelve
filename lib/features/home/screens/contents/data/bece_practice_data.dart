import '../model/practice_model.dart';

/// BECE Past Exam – Theory (Guided Practice) questions.
/// Keyed by the lesson topic string (matches the topic field in Lesson).
final Map<String, PracticeModel> becePracticeData = {
  // ─── ENGLISH: ORAL LANGUAGE ────────────────────────────────────────────
  "Conversation and Everyday Discourse": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nYou are about to call your class prefect to discuss a school issue. Write TWO sentences: one using a formal greeting and one using an informal greeting. Then explain when each is appropriate.",
        answer: "Formal: 'Good morning, Class Prefect. I would like to discuss an important school matter with you.'\nInformal (to a close friend): 'Hey Ama! What's up? I need to talk to you about something.'\n\nFormal register is used in official or school settings. Informal register is used with close friends in relaxed situations.",
        explanation: "Register refers to the level of formality in language. Choosing the correct register shows social awareness and communication skill.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nExplain THREE features of an effective conversation. Give an example of each feature.",
        answer: "1. Turn-taking — Each person waits for their turn to speak. Example: Kwame listens while Ama speaks, then responds.\n2. Active listening — Nodding and maintaining eye contact to show attention. Example: Nodding when the teacher explains.\n3. Appropriate language — Using correct register for the situation. Example: Using polite language when speaking to an elder.",
        explanation: "Effective conversation involves balanced participation, attentive listening, and appropriate communication style.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nA new student from another country joins your class. They greet you informally, but you are in a classroom setting. Write a SHORT dialogue (4 lines) showing how you POLITELY correct the student's register and teach them the appropriate greeting.",
        answer: "New student: 'Hey! What's going on?'\nYou: 'Hello! Welcome to our school. In class, we usually use more formal greetings.'\nNew student: 'Oh, I see. How should I say it?'\nYou: 'You could say: Good morning, class. It is more appropriate for the school setting.'",
        explanation: "Helping someone use the correct register respectfully shows good communication skills and cultural awareness.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nWhat is the difference between VERBAL and NON-VERBAL communication? Give TWO examples of each.",
        answer: "Verbal communication uses spoken or written words:\n• Example 1: Saying 'Thank you' to someone.\n• Example 2: Writing a text message.\n\nNon-verbal communication uses body language and gestures:\n• Example 1: Nodding your head to show agreement.\n• Example 2: Waving goodbye.",
        explanation: "Both verbal and non-verbal communication are essential tools for sending and receiving messages effectively.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nYour friend says: 'I don't think you need to greet teachers — it wastes time.' Write a paragraph DISAGREEING with your friend and explaining why greetings are important in Ghanaian culture.",
        answer: "I respectfully disagree with my friend's view. Greetings are a very important part of Ghanaian culture and social life. They show respect, especially to elders and those in authority. When we greet our teachers, we acknowledge their role and build a positive relationship with them. A simple 'Good morning, sir/madam' takes only a few seconds but makes a big difference in creating a respectful and welcoming classroom environment. Therefore, greetings should never be seen as a waste of time.",
        explanation: "Giving reasons and using respectful disagreement language is a key communication skill tested in BECE.",
      ),
    ],
  ),
  "Giving and Following Direction": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nA stranger stops you and asks how to get to the nearest hospital from your school. Write CLEAR directions using at least FOUR direction words or phrases (e.g., turn left, straight, past, junction).",
        answer: "From the school gate, walk straight along the main road until you reach the big junction. Turn left at the junction. Walk past the petrol station on your right side. The hospital is about 200 metres ahead on your left, just after the water tower. You cannot miss it.",
        explanation: "Good directions use clear command verbs, specific distances, and permanent landmarks to guide the listener.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nExplain FOUR characteristics of a good landmark. Give an example of each.",
        answer: "1. Permanent — It does not move. Example: A post office building.\n2. Easily visible — It can be seen from a distance. Example: A church with a tall steeple.\n3. Well-known — Most people in the community know it. Example: A central market.\n4. Clearly named — It has a name people recognise. Example: 'Kejetia Market.'",
        explanation: "Effective landmarks help people identify their location and navigate confidently.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nDescribe the DIFFERENCE between giving directions using RELATIVE position (e.g., left, right) and ABSOLUTE direction (e.g., North, South, East, West). When is each type most useful?",
        answer: "Relative directions describe position based on where the person is standing: left, right, in front, behind. They are useful for short distances in familiar areas.\n\nAbsolute directions use compass points (North, South, East, West). They are useful for maps, navigation apps, and long-distance travel where the starting position may vary.",
        explanation: "Both types of directional language are important; the choice depends on context and the listener's familiarity with the area.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nYour younger sibling gets lost at the Kumasi market. Write a telephone script (5 lines) giving them directions to find you. Use at least THREE directional phrases.",
        answer: "You: 'Stay calm. Can you see any sign or shop near you?'\nSibling: 'Yes, I see a shop called Ama's Fabric Store.'\nYou: 'Good. Walk straight from that shop until you reach the intersection.'\nSibling: 'Okay, I am now at the intersection.'\nYou: 'Turn right and walk about 50 metres. I will be standing beside the orange stall on the left.'",
        explanation: "Giving telephone directions requires calm, step-by-step instructions using clear landmarks and direction words.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nWhy is it important to CONFIRM that the person you are giving directions to has understood you? Write THREE ways you can check their understanding.",
        answer: "It is important to confirm understanding because unclear directions can cause the person to get lost, waste time, or become frustrated.\n\nThree ways to check:\n1. Ask them to repeat the directions back to you: 'Could you repeat the directions to me?'\n2. Ask a checking question: 'So where will you turn first?'\n3. Draw a simple sketch map and ask if they can follow it.",
        explanation: "Confirming understanding makes communication effective and prevents mistakes in direction-following.",
      ),
    ],
  ),
  "Active and Passive Voice": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nRewrite the following sentences in PASSIVE VOICE:\n(a) 'The farmer harvested the maize.'\n(b) 'The students are writing the exam.'\n(c) 'Someone stole my bicycle.'",
        answer: "(a) The maize was harvested by the farmer.\n(b) The exam is being written by the students.\n(c) My bicycle was stolen (by someone).",
        explanation: "Passive voice places the object first and uses 'be + past participle.' The agent can be omitted if unknown or unimportant.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nRewrite these PASSIVE sentences in ACTIVE VOICE:\n(a) 'The report was written by Ama.'\n(b) 'The windows were broken by the storm.'\n(c) 'The song was performed by the choir.'",
        answer: "(a) Ama wrote the report.\n(b) The storm broke the windows.\n(c) The choir performed the song.",
        explanation: "To convert to active voice, identify the agent (by whom), make it the subject, and use the appropriate active verb.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nGive THREE situations where a writer would prefer to use PASSIVE VOICE over ACTIVE VOICE and explain why.",
        answer: "1. When the doer is unknown: 'The money was stolen.' (We don't know who stole it.)\n2. When the action is more important than the doer: 'The vaccine was developed in 2020.' (The vaccine matters more than who made it.)\n3. In scientific writing to sound objective: 'The results were recorded at 5-minute intervals.'",
        explanation: "Passive voice is chosen strategically when emphasis, formality, or anonymity is needed in writing.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nA student wrote: 'The road is built by the government workers last year.' Identify the error and write the correct sentence.",
        answer: "Error: 'is built' is present tense passive, but 'last year' indicates the past tense is needed.\n\nCorrect sentence: 'The road was built by the government workers last year.'",
        explanation: "Tense consistency is essential in passive constructions — 'was/were + past participle' for past events.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nWrite a SHORT paragraph (4–5 sentences) about a recent school event using the PASSIVE VOICE at least THREE times.",
        answer: "Last week, a science fair was organised by the JHS 2 students. Several experiments were displayed in the school hall. Awards were given to the top three teams by the headmistress. The event was photographed by a local newspaper. All participants were praised for their hard work and creativity.",
        explanation: "Using passive voice in formal writing shifts emphasis to the event and outcomes rather than the individuals involved.",
      ),
    ],
  ),
  "Reported Speech (Direct and Indirect)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nConvert the following DIRECT SPEECH sentences to REPORTED SPEECH:\n(a) She said, 'I will go to the market tomorrow.'\n(b) He said, 'I have finished my homework.'\n(c) They said, 'We are tired.'",
        answer: "(a) She said that she would go to the market the following day.\n(b) He said that he had finished his homework.\n(c) They said that they were tired.",
        explanation: "In reported speech: 'will' → 'would', 'have finished' → 'had finished', 'are' → 'were'. Time expressions also shift.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nConvert to DIRECT SPEECH:\n(a) Ama told her friend that she was going to visit her grandmother.\n(b) The teacher said that the test would be on Monday.\n(c) Kofi asked if I had brought my book.",
        answer: "(a) Ama told her friend, 'I am going to visit my grandmother.'\n(b) The teacher said, 'The test will be on Monday.'\n(c) Kofi asked, 'Have you brought your book?'",
        explanation: "Converting back to direct speech reverses the backshifting and restores original pronouns and tenses.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nList FIVE time expressions that change when converting from direct to reported speech. Write the original expression and its reported equivalent.",
        answer: "1. 'Today' → 'that day'\n2. 'Yesterday' → 'the day before' / 'the previous day'\n3. 'Tomorrow' → 'the following day' / 'the next day'\n4. 'Now' → 'then'\n5. 'Here' → 'there'",
        explanation: "Time and place expressions shift in reported speech to reflect the change in perspective.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nA student wrote: 'The teacher said that students must brings their textbooks.' Identify ALL errors and write the correct sentence.",
        answer: "Errors:\n1. 'must brings' — incorrect verb form; should be 'must bring'.\n2. 'must' does not change in reported speech in all contexts but is acceptable here.\n\nCorrect: 'The teacher said that students must bring their textbooks.'",
        explanation: "Modal verbs like 'must' sometimes remain unchanged in reported speech, and the base verb form is always used after modals.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nWrite a short story (5 sentences) that includes at least TWO examples of reported speech and ONE example of direct speech.",
        answer: "Last Monday, Kwame came home very excited. He said that he had won the science competition at school. His mother shouted, 'I am so proud of you, my son!' She told him that she would buy him a new calculator as a reward. Kwame promised that he would work even harder for the next competition.",
        explanation: "Including both direct and reported speech in writing shows mastery of the shift in tenses, pronouns, and punctuation.",
      ),
    ],
  ),
  // ─── SCIENCE ───────────────────────────────────────────────────────────
  "Classification of Materials": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nList and explain FOUR properties used to classify materials. Give one example of a material for each property.",
        answer: "1. Hardness — resistance to scratching. Example: Diamond is very hard.\n2. Conductivity — ability to conduct electricity or heat. Example: Copper conducts electricity.\n3. Flexibility — ability to bend without breaking. Example: Rubber is flexible.\n4. Malleability — ability to be hammered into sheets. Example: Gold is malleable.",
        explanation: "Properties help scientists and engineers choose the right material for specific purposes.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nDifferentiate between CONDUCTORS and INSULATORS of electricity. Give TWO examples of each and state ONE use of each type.",
        answer: "Conductors allow electricity to flow through them.\nExamples: Copper, Aluminium.\nUse: Copper wires carry electricity in homes.\n\nInsulators do not allow electricity to flow.\nExamples: Rubber, Wood.\nUse: Rubber coating around wires prevents electric shock.",
        explanation: "The distinction between conductors and insulators is fundamental to electrical safety and engineering.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nGive THREE differences between NATURAL materials and SYNTHETIC (man-made) materials.",
        answer: "Natural materials:\n1. Occur naturally in the environment (e.g., wood, cotton).\n2. Are generally biodegradable.\n3. May be less durable in some conditions.\n\nSynthetic materials:\n1. Are made by humans through chemical processes (e.g., nylon, plastic).\n2. Are often non-biodegradable, causing pollution.\n3. Can be engineered for specific properties (e.g., extra strength).",
        explanation: "Understanding the differences helps in making environmentally responsible choices about materials.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nExplain why METALS are commonly used in construction and cooking. Mention at least THREE properties of metals in your answer.",
        answer: "Metals are widely used in construction and cooking because of their useful properties:\n1. Strength — Metals like steel are very strong and can support heavy loads in buildings.\n2. Thermal conductivity — Metals like aluminium conduct heat well, making them suitable for cooking pots.\n3. Malleability — Metals can be shaped into beams, sheets, and rods needed in construction.\nThese properties make metals among the most versatile and widely used materials.",
        explanation: "The combination of strength, conductivity, and malleability makes metals ideal for structural and thermal applications.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nA student wants to build a simple toy boat. Suggest TWO suitable materials and explain why each is appropriate, based on its properties.",
        answer: "1. Plastic — Plastic is light, waterproof, and does not rust. These properties make it ideal for a toy boat that needs to float and withstand water contact.\n2. Wood — Wood is light, buoyant (floats easily), and can be carved into the shape of a boat. It is also widely available and easy to work with.\n\nBoth materials are safe, easy to handle, and appropriate for a floating toy.",
        explanation: "Matching material properties to purpose is the key principle in material selection for any project.",
      ),
    ],
  ),
  "Human Growth Stages": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nList the FIVE main stages of human growth and development IN ORDER. For each stage, state the approximate age range and ONE key feature.",
        answer: "1. Infancy (0–2 years) — Rapid growth; learning to walk and talk.\n2. Early Childhood (3–6 years) — Language development; social play begins.\n3. Middle Childhood (7–12 years) — Logical thinking; formal schooling.\n4. Adolescence (13–18 years) — Puberty; emotional and identity development.\n5. Adulthood (18+ years) — Physical maturity; responsibility and independence.",
        explanation: "Each stage has distinct biological and psychological characteristics that shape human development.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nExplain THREE physical changes that occur in BOYS during puberty and THREE changes that occur in GIRLS during puberty.",
        answer: "Boys during puberty:\n1. Deepening of the voice.\n2. Growth of facial and body hair.\n3. Increase in height and muscle mass.\n\nGirls during puberty:\n1. Development of breasts.\n2. Widening of the hips.\n3. Onset of menstruation (monthly period).",
        explanation: "Puberty is driven by hormonal changes and prepares the body for reproductive function.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\na) What is PUBERTY?\nb) Name the hormone responsible for puberty in males.\nc) Name the hormone responsible for puberty in females.",
        answer: "a) Puberty is the stage of development during which a child's body changes into an adult body capable of reproduction. It is driven by the release of hormones from the pituitary gland.\n\nb) Testosterone is the primary male hormone responsible for puberty in males.\n\nc) Oestrogen (and progesterone) are the primary female hormones responsible for puberty in females.",
        explanation: "Hormones are chemical messengers that trigger the physical and emotional changes of puberty.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nGive THREE ways that ADOLESCENTS can maintain GOOD HEALTH during their stage of growth.",
        answer: "1. Balanced diet — Eating a variety of foods provides the nutrients needed for rapid growth, strong bones, and brain development.\n2. Regular physical exercise — Exercise maintains a healthy weight, builds muscle, and improves mental health.\n3. Adequate sleep — Teenagers need 8–10 hours of sleep per night to support growth hormone release and brain development.",
        explanation: "Healthy habits established during adolescence create the foundation for lifelong physical and mental well-being.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nDescribe TWO emotional challenges that are common during ADOLESCENCE and suggest how a teenager can cope with each challenge.",
        answer: "1. Mood swings — Hormonal changes cause rapid shifts in emotion. A teenager can cope by talking to a trusted adult, practising deep breathing, or writing in a journal.\n\n2. Peer pressure — Friends may push a teenager to behave inappropriately. They can cope by learning to say 'No' confidently, choosing positive friends, and seeking guidance from parents or counsellors.",
        explanation: "Acknowledging emotional challenges and developing coping strategies is essential for healthy adolescent development.",
      ),
    ],
  ),
  // ─── MATHEMATICS ───────────────────────────────────────────────────────
  "Number and Numeration Systems": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "1. Question: Write 356.07 in standard form.",
        answer: "Correct Answer: 356.07 = 3.5607 x 10^{2}",
        explanation: "Explanation: • Standard form is written in the format A x 10^n, where 1 ≤ A < 10 and n is an integer.\n"
            "• To convert 356.07 into this format, the decimal point must be shifted 2 places to the left to place it after the first non-zero digit (3).\n"
            "• Shifting the decimal point 2 places to the left means we multiply the resulting number by 10^{2} to keep its value unchanged.",
      ),
      PracticeQuestion(
        scenario: "2. Question: Which of the following numbers is the prime number greater than 23?",
        answer: "Correct Answer: 29",
        explanation: "Explanation: A prime number is a number greater than 1 that has only two factors: 1 and itself.Let us examine the given options: \n"
            "         - 17: This is a prime number, but it is less than 23.\n"
            "         - 24: This is an even number greater than 2, so it is a composite number (factors include 1, 2, 3, 4, 6, 8, 12, 24).\n"
            "         - 25: This is a composite number because it ends in 5 and has factors of 1, 5, 25.\n"
            "         - 29: This number has only two factors (1 and 29), making it a prime number. Since 29 > 23, this is the correct choice.",
      ),
      PracticeQuestion(
        scenario: "3. Question: Write 4687.02 in standard form.",
        answer: "Correct Answer: 4687.02 = 4.68702 x 10^{3}",
        explanation: "Explanation: To write 4687.02 in standard form (A x 10^{n}), we move the decimal point 3 places to the left so that it lies between the 4 and the 6.\n"
            "Moving the decimal point 3 places to the left requires multiplying by 10^{3} to maintain equivalent value.\n"
            "This gives:4687.02 = 4.68702 x 10^{3}",
      ),PracticeQuestion(
        scenario: "4. Question: Correct 0.02751 to three decimal places.",
        answer: "Correct Answer: 0.02751 corrected to three decimal places is 0.028",
        explanation: "Explanation: To round a decimal to three decimal places, we examine the digit in the fourth decimal place.\n"
            "In 0.02751, the digits are:\n"
            "           1st decimal place: 0\n "
            "           2nd decimal place: 2 \n "
            "           3rd decimal place: 7 \n"
            "           4th decimal place: 5 \n"
            "Since the digit in the 4th decimal place is 5 (which is 5 or greater), we round up by adding 1 to the digit in the 3rd decimal place (7 + 1 = 8).\n"
            "Therefore, 0.02751 corrected to three decimal places is 0.028.",
      ),PracticeQuestion(
        scenario: "5. Question: Write in standard form 1342.",
        answer: "Correct Answer: 1342 = 1.342 x 10^{3}",
        explanation: "Explanation: The whole number 1342 has an implicit decimal point at the very end (1342.0).\n"
            "To express it in standard form, we shift the decimal point 3 places to the left to obtain a number between 1 and 10.\n"
            "Because we moved the decimal point 3 places to the left, we multiply by 10^{3}.\n"
            "This gives:1342 = 1.342 x 10^{3}",
      ),PracticeQuestion(
        scenario: "6. Question: Express 2345 in standard form.",
        answer: "Correct Answer: 2.345 x 10^{3}",
        explanation: "Explanation: For the whole number 2345, we locate the implicit decimal point at the end (2345.0).\n"
            "We shift this decimal point 3 places to the left to position it immediately after the first digit (2).\n"
            "To balance this shift, we multiply by 10^{3}.\n"
            "This gives:2.345 x 10^{3}",
      ),PracticeQuestion(
        scenario: "7. Question: Write GH₵35,632.00 correct to the nearest thousand cedis.",
        answer: "Correct Answer:GH₵35,632.00 rounded to the nearest thousand is GH₵36,000.00.",
        explanation: "Explanation: To round to the nearest thousand, we look at the digit in the hundreds place.\n"
            "In the number 35,632, the digit in the thousands place is 5, and the digit in the hundreds place is 6.\n"
            "Since the hundreds digit (6) is 5 or greater, we round up by adding 1 to the thousands digit (5 + 1 = 6) and replacing all subsequent digits with zeros.",
      ),

    ],
  ),

  "The Algebra Journey": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nSolve the following equations:\n(a) 4x − 3 = 17\n(b) 5(2x + 1) = 35\n(c) x/3 + 2 = 7",
        answer: "(a) 4x = 20 → x = 5.\n(b) 10x + 5 = 35 → 10x = 30 → x = 3.\n(c) x/3 = 5 → x = 15.",
        explanation: "Solving equations requires isolating the variable using inverse operations in the correct order.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\n(a) Expand and simplify: 2(3x + 4) − (x − 5)\n(b) Factorise completely: 12y² − 8y",
        answer: "(a) 6x + 8 − x + 5 = 5x + 13.\n(b) HCF of 12y² and 8y is 4y. 12y² − 8y = 4y(3y − 2).",
        explanation: "Expanding removes brackets using distribution. Factorising extracts the highest common factor.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nThe perimeter of a rectangle is 54 cm. The length is (2x + 3) cm and the width is (x + 1) cm. Find the value of x and the dimensions of the rectangle.",
        answer: "Perimeter = 2(length + width)\n54 = 2[(2x + 3) + (x + 1)]\n54 = 2[3x + 4]\n54 = 6x + 8\n6x = 46 → x = 46/6 = 7⅔\n\nOr using whole numbers: checking again…\n27 = (2x+3)+(x+1) = 3x+4\n3x = 23 → x = 23/3\nLength = 2(23/3)+3 = 49/3+3 = 58/3 cm; Width = 23/3+1 = 26/3 cm.",
        explanation: "Algebraic equations model real-world geometry problems. Set up the equation from the given formula and solve for x.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nSolve the inequality 3x − 2 ≥ 10 and represent the solution on a number line (describe the number line).",
        answer: "3x ≥ 12 → x ≥ 4.\n\nNumber line: Draw an arrow pointing to the right starting from 4, with a closed circle (filled dot) at 4 to show that 4 is included in the solution set.",
        explanation: "Solving inequalities follows the same steps as equations, except when multiplying/dividing by a negative number (flip the sign). A closed circle on the number line means the endpoint is included.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nIf p = 3 and q = −2, evaluate:\n(a) p² + 3q\n(b) 2p − q²\n(c) (p + q)²",
        answer: "(a) (3)² + 3(−2) = 9 − 6 = 3.\n(b) 2(3) − (−2)² = 6 − 4 = 2.\n(c) (3 + (−2))² = (1)² = 1.",
        explanation: "Substitution requires careful handling of negative numbers, especially when squaring (a negative squared is positive).",
      ),
    ],
  ),

  // ─── SOCIAL STUDIES ───────────────────────────────────────────────────
  "Dealing with Sanitation Challenges": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nDescribe THREE major sanitation challenges faced by communities in Ghana and suggest ONE solution for each.",
        answer: "1. Open defecation — Many communities lack toilets. Solution: Build and promote the use of community latrines.\n2. Poor garbage disposal — Waste is often dumped in open areas. Solution: Provide community dustbins and organise regular refuse collection.\n3. Contaminated water sources — Rivers used for washing and drinking get polluted. Solution: Dig boreholes and educate communities on protecting water bodies.",
        explanation: "Identifying problems and matching them with practical solutions shows understanding of community development.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\na) Explain what 'waste management' means.\nb) State and briefly explain the THREE Rs of waste management.",
        answer: "a) Waste management is the process of collecting, treating, and disposing of waste in a way that minimises harm to human health and the environment.\n\nb) The Three Rs:\n1. Reduce — Use fewer resources and produce less waste (e.g., buy only what you need).\n2. Reuse — Use items more than once before discarding them (e.g., refill water bottles).\n3. Recycle — Convert waste materials into new products (e.g., making compost from food waste).",
        explanation: "The 3Rs are the foundation of environmentally sustainable waste management.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nYou are a member of a school health club. Write a SHORT speech (5 sentences) to your classmates encouraging them to maintain good sanitation at school.",
        answer: "Fellow students, good sanitation in our school is everyone's responsibility. When we dispose of our waste properly, we prevent the spread of diseases like cholera and typhoid. Let us always use the school dustbins, clean our surroundings, and wash our hands with soap after visiting the toilet. A clean school environment helps us concentrate better and perform well in our studies. Together, we can make our school a healthy and pleasant place for all of us.",
        explanation: "Persuasive speech uses clear reasons, calls to action, and inclusive language (we/us/our) to motivate an audience.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nHow does poor sanitation affect EDUCATION in Ghana? Give FOUR specific effects.",
        answer: "1. School absenteeism — Students fall sick from poor sanitation and miss classes, causing them to fall behind academically.\n2. Lack of girls' attendance — Without proper toilet facilities, especially for menstruating girls, female students stay home from school.\n3. Low concentration — Unsanitary environments cause discomfort and distraction, reducing students' ability to focus.\n4. School closures — Severe outbreaks of diseases like cholera can force schools to close temporarily, interrupting the academic calendar.",
        explanation: "Sanitation and education are closely linked — improving one significantly improves the other.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nExplain the role of the COMMUNITY in solving sanitation problems. Give THREE practical actions community members can take.",
        answer: "The community plays a vital role in maintaining sanitation because government efforts alone cannot address every local problem.\n\nThree practical community actions:\n1. Organise communal clean-up exercises (e.g., Saturdays) to clear gutters, sweep public spaces, and collect rubbish.\n2. Report broken or blocked drains to local government authorities rather than waiting for problems to worsen.\n3. Educate community members, especially children, about proper waste disposal, hand-washing, and the use of public toilets.",
        explanation: "Community ownership and participation are essential for sustainable sanitation improvement.",
      ),
    ],
  ),

  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "THE NATURE OF GOD THROUGH ATTRIBUTES": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nChoose THREE attributes of God and explain how a BELIEVER demonstrates each attribute in their daily life.",
        answer: "1. Omnipresence — A believer who knows God is everywhere avoids wrongdoing even when alone, acting as if God is always watching.\n2. Omniscience — A believer who knows God sees all thoughts and actions strives to have pure intentions, not just outward good deeds.\n3. Love — A believer who understands God's love tries to love and care for others, helping the poor and showing kindness without expecting reward.",
        explanation: "Understanding God's attributes should translate into practical, moral behaviour in everyday life.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nCompare how CHRISTIANITY, ISLAM, and TRADITIONAL AFRICAN RELIGION each understand the NATURE OF GOD. Give ONE point of similarity and ONE difference.",
        answer: "Similarity: All three religions believe in a Supreme Being who is all-powerful (omnipotent), who created the world and all people in it.\n\nDifference: Christians believe in the Trinity — God as Father, Son (Jesus), and Holy Spirit. Muslims believe strictly in the oneness of God (Tawhid) without any partners or equals. Traditional African Religion (e.g., Akan) believes in Onyame as the Supreme God, but also recognises lesser deities and ancestral spirits as intermediaries.",
        explanation: "The three major religious traditions in Ghana share belief in a Supreme God but differ on the nature and form of that God.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nA classmate says, 'If God is all-powerful and all-loving, why is there suffering in the world?' Write a RELIGIOUS RESPONSE to this question using ideas from any ONE religion you have studied.",
        answer: "From a Christian perspective, suffering in the world is not evidence that God does not care. The Bible teaches that God gave humans free will — the freedom to choose between right and wrong. Much suffering comes from wrong choices made by people. Additionally, the Bible shows that even faithful believers faced suffering (e.g., Job), but God remained with them through it and brought good out of their trials. Christians believe suffering can build character, deepen faith, and draw people closer to God.",
        explanation: "This type of question tests religious knowledge and the ability to articulate doctrinal positions clearly and respectfully.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nExplain what WORSHIP is and describe THREE MODES of worship practised by believers in Ghana.",
        answer: "Worship is the act of showing reverence, devotion, and honour to God through various acts of religious expression.\n\nThree modes of worship:\n1. Prayer — Speaking to God privately or in a group, expressing gratitude, confession, and requests.\n2. Singing/Worship Songs — Praising God through hymns, gospel music, or Islamic devotional songs (nasheeds).\n3. Sacrifice/Offerings — Giving money (tithes and offerings in Christianity), or performing traditional libation (in African Traditional Religion) as an act of devotion.",
        explanation: "Worship takes many forms across religious traditions; all are expressions of devotion to the divine.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nWhy is it important for young people in Ghana to learn about the attributes of God? Give FOUR reasons.",
        answer: "1. Moral guidance — Understanding that God is just and holy motivates young people to behave honestly and avoid wrongdoing.\n2. Comfort in difficulty — Knowing God is omnipresent and loving reassures young people that they are not alone in challenges.\n3. Interreligious respect — Learning about God's attributes across religions helps students respect different faiths and promote peaceful coexistence.\n4. Identity and purpose — Belief in a Creator who made them intentionally gives young people a sense of worth, direction, and purpose in life.",
        explanation: "Knowledge of God's attributes shapes values, character, and worldview in meaningful ways for young Ghanaians.",
      ),
    ],
  ),

  "Behaviours Considered as Good Manners": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nDescribe FOUR examples of good manners in Ghanaian culture. For each, explain why it is considered respectful.",
        answer: "1. Greeting elders first — In Ghana, it is respectful to greet older people before speaking to them. It acknowledges their seniority and shows honour.\n2. Receiving gifts or food with both hands — Accepting things with two hands shows gratitude and respect to the giver.\n3. Not interrupting when an elder speaks — It shows patience, attentiveness, and respect for authority.\n4. Kneeling or bowing when speaking to chiefs or elders — It is a sign of submission and deep respect in many Ghanaian communities.",
        explanation: "Good manners in Ghanaian culture are deeply rooted in communal values of respect, honour, and social harmony.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nA student sees their peer cheating in an exam. Describe what GOOD MANNERS and MORAL INTEGRITY would require them to do. Include religious teaching in your answer.",
        answer: "Good manners and moral integrity require the student to act honestly, even when it is difficult. They should not assist in the cheating or pretend not to notice, as this would make them complicit. Ideally, they should quietly advise their peer to stop, reminding them of the consequences (disqualification, failure, shame).\n\nReligiously, Christianity, Islam, and African Traditional Religion all teach honesty and integrity. For example, the Bible states, 'Do not steal' (Exodus 20:15), and Islam values 'Amanah' (trustworthiness). Encouraging honesty is an act of true friendship and moral responsibility.",
        explanation: "Good manners go beyond politeness — they include moral courage to uphold what is right even under social pressure.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nExplain the concept of CHASTITY as taught in any ONE religion you have studied. Why is it important for young people today?",
        answer: "In Christianity, chastity means remaining sexually pure outside of marriage. The Bible teaches that the body is the temple of the Holy Spirit (1 Corinthians 6:19–20) and that sexual immorality dishonours God and damages the person.\n\nFor young people today, chastity is important for several reasons:\n1. It protects against sexually transmitted infections (STIs) and unplanned pregnancies.\n2. It preserves emotional and mental health, avoiding the consequences of unstable relationships.\n3. It maintains personal dignity and self-respect, which are the foundations of future stable families and relationships.",
        explanation: "Chastity, as taught across religions, has both spiritual and practical benefits for the well-being of young people.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nYour younger sibling is being pressured by friends to skip school and go to a party. Write a short advice (5 sentences) you would give them, drawing on moral values and religious teaching.",
        answer: "My dear sibling, I understand that peer pressure can be very hard to resist, especially when friends are involved. However, our religious teachings remind us that we must make wise choices that honour God and build our future. Skipping school is dishonest to your teachers, parents, and yourself — and it damages your education. True friends will respect your decision to do what is right. Remember: the choices you make today shape the person you will become tomorrow.",
        explanation: "Religious and moral values provide a framework for making difficult decisions and resisting peer pressure.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nWrite a short essay (one paragraph) on the topic: 'The Importance of Good Manners in Ghanaian Society.'",
        answer: "Good manners are the backbone of peaceful and harmonious living in Ghanaian society. They reflect the deep cultural values of respect, humility, and consideration for others that have been passed down through generations. When individuals greet one another, help those in need, speak politely, and dress decently, they contribute to a society built on mutual respect and dignity. Good manners also promote unity across Ghana's diverse ethnic groups, as shared values of decency and respect create a common foundation for peaceful coexistence. Ultimately, a society that practises good manners is one where every member — young or old, rich or poor — is treated with dignity and care.",
        explanation: "A well-structured essay on good manners should cover their cultural, social, and moral significance with specific examples.",
      ),
    ],
  ),

  // ─── JHS 2 / JHS 3: ENGLISH theory ─────────────────────────────────────────
  "EFFECTIVE TURN-TAKING IN CONVERSATION": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nExplain why turn-taking is necessary in sound communication. State two consequences of not observing turn-taking.",
        answer: "Turn-taking is necessary because it allows each party to express their opinions fully, ensures active listening, and keeps the conversation orderly. Without turn-taking:\n1. Interruptions occur, causing frustration and breakdown in communication.\n2. Important points or ideas of silent participants are missed.",
        explanation: "Orderly conversation requires active listening and structured participation.",
      ),
    ],
  ),

  "USING APPROPRIATE REGISTER (INFORMAL VS. FORMAL)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nYour friend writes: 'Yo Headmaster, I need a day off cause my head is spinning.' Correct this sentence to match a formal register appropriate for a petition to a headmaster.",
        answer: "Correct: 'Dear Sir, I am writing to request permission to be absent from school today due to an illness.'",
        explanation: "Formal petitions require formal greetings (Dear Sir), fully spelled words (no 'cause'), and polite expressions.",
      ),
    ],
  ),

  "REPORTED SPEECH": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nConvert these direct sentences to reported speech:\n(a) Ama said, 'I went to Cape Coast yesterday.'\n(b) The teacher asked, 'Have you completed the assignment?'",
        answer: "(a) Ama said that she had gone to Cape Coast the previous day (or the day before).\n(b) The teacher asked if I had completed the assignment.",
        explanation: "Ensure that pronouns, tenses (past simple to past perfect; present perfect to past perfect), and time markers shift correctly.",
      ),
    ],
  ),

  "QUESTION TAGS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nState the rule for creating question tags. Provide the correct question tags for:\n(a) Kojo cannot swim.\n(b) You will help me tomorrow.",
        answer: "Rule: Positive sentences take negative tags, and negative sentences take positive tags. The auxiliary verb from the main sentence is repeated in the tag.\n(a) Kojo cannot swim, can he?\n(b) You will help me tomorrow, won't you?",
        explanation: "Question tags turn statements into yes/no questions to confirm information.",
      ),
    ],
  ),

  "MASTERING REGISTER AND OPEN QUESTIONS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\na) What is the difference between an open and closed question?\nb) Write one example of an open question to ask a friend about their weekend.",
        answer: "a) Open questions require a detailed and explanatory answer, whereas closed questions can be answered with a simple 'yes' or 'no'.\nb) 'What did you do during the weekend?' (or 'How did you spend your weekend?')",
        explanation: "Open questions prompt description and elaboration.",
      ),
    ],
  ),

  "THE ART OF ARGUMENT AND DEBATING": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nWrite a short introductory paragraph for a debate supporting the motion: 'Mobile phones should be allowed in Junior High Schools.'",
        answer: "Mr. Chairman, Panel of Judges, accurate Timekeeper, fellow debaters and constituents, I stand before you to support the motion that mobile phones should be allowed in Junior High Schools. In an era driven by technology, digital literacy is no longer a luxury but an absolute necessity for modern education.",
        explanation: "Debate introductions should greet the audience and clearly state the speaker's stance on the motion.",
      ),
    ],
  ),

  "CONDITIONAL SENTENCES (TYPE 3)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nExplain when a Type 3 conditional sentence is used. Rewrite the following in Type 3 conditional form:\n'I did not study, so I failed the exam.'",
        answer: "A Type 3 conditional represents an imaginary past event that did not happen and its hypothetical result. \nRewrite: 'If I had studied, I would not have failed the exam.' (or 'If I had studied, I would have passed the exam.')",
        explanation: "Type 3 uses: If + past perfect, would have + past participle.",
      ),
    ],
  ),

  "DEFINING AND NON-DEFINING RELATIVE CLAUSES": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nCombine the pairs of sentences using relative pronouns:\n(a) The girl is my sister. She won the prize.\n(b) Accra is the capital of Ghana. It is a busy city. (Use non-defining clause)",
        answer: "(a) The girl who won the prize is my sister.\n(b) Accra, which is the capital of Ghana, is a busy city.",
        explanation: "Relative pronouns (who, which) connect clauses. Non-defining clauses contain extra info and are bracketed by commas.",
      ),
    ],
  ),

  "ADVERBIAL PHRASES AND THEIR FUNCTIONS": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nIdentify the adverbial phrase in the sentence and state its grammatical function:\n'The children played soccer on the school field.'",
        answer: "Adverbial phrase: 'on the school field'.\nGrammatical function: Adverbial phrase of place (modifies the verb 'played' by showing where the action occurred).",
        explanation: "Adverbial phrases describe when, where, how, or why actions take place.",
      ),
    ],
  ),

  // ─── JHS 2 / JHS 3: SCIENCE theory ─────────────────────────────────────────
  "Types of mixtures and their characteristics": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\na) Define a mixture.\nb) Differentiate between homogeneous and heterogeneous mixtures, giving one example of each.",
        answer: "a) A mixture consists of two or more substances physically combined together in any proportion.\nb) Homogeneous mixtures have uniform appearance and composition throughout (e.g. salt solution). Heterogeneous mixtures have visible, non-uniform components (e.g. mixture of sand and iron filings).",
        explanation: "Mixture classification is based on uniformity of phase.",
      ),
    ],
  ),

  "SEPARATING MIXTURES (PHYSICAL PROCESSES)": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nDescribe the laboratory process of separating a mixture of common salt and sand.",
        answer: "1. Addition of water: Add water to the mixture and stir to dissolve the common salt. Sand remains insoluble.\n2. Filtration: Pour the mixture through a filter paper in a funnel. The sand remains as residue, and the salt solution passes through as filtrate.\n3. Evaporation: Heat the filtrate to evaporate the water, leaving dry salt crystal behind.",
        explanation: "Physical separation processes utilize the distinct physical properties of each component.",
      ),
    ],
  ),

  "ATOMIC STRUCTURE AND SUB-ATOMIC PARTICLES": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nDraw a labeled diagram of a Helium atom (atomic number 2, mass number 4) representing the nucleus and subatomic particles.",
        answer: "The diagram of Helium (He) would show:\n- A central nucleus containing 2 Protons (positively charged) and 2 Neutrons (neutral charge).\n- Two Electrons (negatively charged) orbiting the nucleus in the first energy shell (K shell).",
        explanation: "Helium has atomic number 2 (2 protons, 2 electrons) and mass number 4 (4 - 2 = 2 neutrons).",
      ),
    ],
  ),

  "THE PERIODIC TABLE AND ELECTRON CONFIGURATION": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nExplain how elements are arranged on the periodic table. Write the electron configuration for Calcium (atomic number 20).",
        answer: "Elements are arranged on the periodic table in order of increasing atomic number (number of protons). Elements with similar chemical properties are grouped in vertical columns called Groups.\nConfiguration: The electron configuration of Calcium (Ca) is 2, 8, 8, 2.",
        explanation: "The arrangement follows shell capacities: 2, 8, 8, 18, etc.",
      ),
    ],
  ),

  // ─── JHS 2 / JHS 3: MATH theory ────────────────────────────────────────────
  "FROM BILLIONS TO STANDARD FORM": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nExpress the following numbers in standard form:\n(a) 125,000,000\n(b) 0.000045",
        answer: "(a) 1.25 × 10^8\n(b) 4.5 × 10^-5",
        explanation: "Standard form is A × 10^n where 1 ≤ A < 10 and n is an integer.",
      ),
    ],
  ),

  "The Complete Guide to Number Operations": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nSolve the expression using BODMAS: \n(15 + 5) ÷ 4 - 2 × 3 + 10",
        answer: "Step 1 (Brackets): 15 + 5 = 20.\nStep 2 (Division): 20 ÷ 4 = 5.\nStep 3 (Multiplication): 2 × 3 = 6. Expression becomes: 5 - 6 + 10.\nStep 4 (Addition/Subtraction): 5 + 10 - 6 = 15 - 6 = 9.",
        explanation: "BODMAS sets mathematical operation precedence: Brackets, Orders, Division/Multiplication, Addition/Subtraction.",
      ),
    ],
  ),
};
