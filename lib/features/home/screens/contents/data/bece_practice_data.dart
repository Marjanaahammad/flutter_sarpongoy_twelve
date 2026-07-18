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
        scenario: "1. Question: Write 356.07 in standard form.",
        answer: "Correct Answer: 356.07 = 3.5607 x 10^{2}",
        explanation:
            "Explanation: • Standard form is written in the format A x 10^n, where 1 ≤ A < 10 and n is an integer.\n"
            "• To convert 356.07 into this format, the decimal point must be shifted 2 places to the left to place it after the first non-zero digit (3).\n"
            "• Shifting the decimal point 2 places to the left means we multiply the resulting number by 10^{2} to keep its value unchanged.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\nA student scored 48 out of 80 in a maths test.\n(a) Express her score as a fraction in its lowest terms.\n(b) Convert this fraction to a percentage.\n(c) If the passing mark was 65%, did she pass?",
        answer:
            "(a) 48/80 = 3/5 (dividing both by 16).\n(b) 3/5 = 0.6 = 60%.\n(c) 60% < 65%, so she did NOT pass the test.",
        explanation:
            "Real-life contexts require converting between forms and comparing values to make decisions.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nAn item costs GH₵150. The price is increased by 20%, then reduced by 10%. What is the final price?",
        answer:
            "Step 1: 20% increase → 20% of 150 = 30. New price = 150 + 30 = GH₵180.\nStep 2: 10% reduction → 10% of 180 = 18. Final price = 180 − 18 = GH₵162.",
        explanation:
            "Percentage problems must be applied sequentially and always to the current value, not the original.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nArrange these values in DESCENDING ORDER (largest to smallest):\n3/5, 0.62, 65%, 0.6, 3/4",
        answer:
            "Convert all to decimals:\n3/5 = 0.60\n0.62 = 0.62\n65% = 0.65\n0.6 = 0.60\n3/4 = 0.75\n\nDescending order: 3/4, 65%, 0.62, 3/5, 0.6\nor: 0.75, 0.65, 0.62, 0.60, 0.60",
        explanation:
            "Converting all values to the same form (decimals) allows direct comparison.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nKwame earns GH₵3,600 per month. He spends 25% on rent, 15% on food, and saves the rest.\n(a) How much does he spend on rent?\n(b) How much does he spend on food?\n(c) How much does he save each month?",
        answer:
            "(a) Rent: 25% of 3,600 = 0.25 × 3,600 = GH₵900.\n(b) Food: 15% of 3,600 = 0.15 × 3,600 = GH₵540.\n(c) Total spent = 900 + 540 = GH₵1,440. Savings = 3,600 − 1,440 = GH₵2,160.",
        explanation:
            "Budgeting problems apply percentage calculations to practical financial situations.",
      ),
    ],
  ),

  "The Algebra Journey": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario:
            "BECE Theory Question 1\n\nSolve the following equations:\n(a) 4x − 3 = 17\n(b) 5(2x + 1) = 35\n(c) x/3 + 2 = 7",
        answer:
            "(a) 4x = 20 → x = 5.\n(b) 10x + 5 = 35 → 10x = 30 → x = 3.\n(c) x/3 = 5 → x = 15.",
        explanation:
            "Solving equations requires isolating the variable using inverse operations in the correct order.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 2\n\n(a) Expand and simplify: 2(3x + 4) − (x − 5)\n(b) Factorise completely: 12y² − 8y",
        answer:
            "(a) 6x + 8 − x + 5 = 5x + 13.\n(b) HCF of 12y² and 8y is 4y. 12y² − 8y = 4y(3y − 2).",
        explanation:
            "Expanding removes brackets using distribution. Factorising extracts the highest common factor.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 3\n\nThe perimeter of a rectangle is 54 cm. The length is (2x + 3) cm and the width is (x + 1) cm. Find the value of x and the dimensions of the rectangle.",
        answer:
            "Perimeter = 2(length + width)\n54 = 2[(2x + 3) + (x + 1)]\n54 = 2[3x + 4]\n54 = 6x + 8\n6x = 46 → x = 46/6 = 7⅔\n\nOr using whole numbers: checking again…\n27 = (2x+3)+(x+1) = 3x+4\n3x = 23 → x = 23/3\nLength = 2(23/3)+3 = 49/3+3 = 58/3 cm; Width = 23/3+1 = 26/3 cm.",
        explanation:
            "Algebraic equations model real-world geometry problems. Set up the equation from the given formula and solve for x.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 4\n\nSolve the inequality 3x − 2 ≥ 10 and represent the solution on a number line (describe the number line).",
        answer:
            "3x ≥ 12 → x ≥ 4.\n\nNumber line: Draw an arrow pointing to the right starting from 4, with a closed circle (filled dot) at 4 to show that 4 is included in the solution set.",
        explanation:
            "Solving inequalities follows the same steps as equations, except when multiplying/dividing by a negative number (flip the sign). A closed circle on the number line means the endpoint is included.",
      ),
      PracticeQuestion(
        scenario:
            "BECE Theory Question 5\n\nIf p = 3 and q = −2, evaluate:\n(a) p² + 3q\n(b) 2p − q²\n(c) (p + q)²",
        answer:
            "(a) (3)² + 3(−2) = 9 − 6 = 3.\n(b) 2(3) − (−2)² = 6 − 4 = 2.\n(c) (3 + (−2))² = (1)² = 1.",
        explanation:
            "Substitution requires careful handling of negative numbers, especially when squaring (a negative squared is positive).",
      ),
    ],
  ),

  // ─── SOCIAL STUDIES ───────────────────────────────────────────────────
  "Environmental Issues": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "Question 1 (BECE 1992 Q2)\n"
            "(a) Identify four environmental problems in Ghana.\n"
            "(b) Suggest two solutions to each of the four problems identified in (a).",
        answer:
            "Corrected Answers:\n\n(a) Four environmental problems in Ghana include:\n"
            "• Deforestation.\n"
            "• Air pollution.\n"
            "• Water pollution.\n"
            "• Soil erosion.\n"
            "(b) Solutions to the environmental problems:\n"
            "i. Solutions to Deforestation:\n"
            "   • Practice of afforestation.\n"
            "     • Practice of re-afforestation.\n\n"
            "ii. Solutions to Air Pollution:\n"
            "   • Public education.\n"
            "     • Banning the use and\n importation of over-aged vehicles.\n\n"
            "iii. Solutions to Water pollution:\n"
            "   • Public education.\n"
            "   • Enforcement of environmental laws.\n\n"
            "iv. Solutions to Soil erosion:\n"
            "   • Practice of re-afforestation.\n"
            "   • Creation of fire belts.\n",
        explanation:
            "Explaantion: \n\n Solutions to the environmental problems:\n\n"
            "**i. Solutions to Deforestation**\n\n"
            "• Practice of afforestation: People must be encouraged and supported with funds by the government to grow plants or trees in areas where there were no previous tree cover. This will help to increase plants population and preserve vegetation in the country.\n\n"
            "• Practice of re-afforestation: People must be encouraged by the government to plant trees to replace those that are cut off for farming, lumbering and other purposes. This will help to regenerate the depleted forests in the country.\n\n"
            "**ii. Solutions to Air pollution**\n\n"
            "• Public education: The public must be educated through the media by the government to stop actions that pollute the air. This will help to minimize activities such as excessive sand winning, bush burning, disposal of industrial chemicals and domestic waste materials that pollute the fresh air.\n\n"
            "• Banning the use and importation of over-aged vehicles: Government must put a ban on vehicles that are not road worthy or over-aged in the country. Such vehicles have weak engines and produce excessive harmful fumes or gases such as carbon monoxide that pollute the fresh breathing air.\n\n"
            "**iii. Solutions to Water pollution**\n\n"
            "• Public education: People must be sensitized, through the mass media, to protect the water bodies in the country. They must be educated to stop using DDT for fishing as well as washing and dumping refuse in water bodies because they render water bodies to become contaminated and unsafe for human use.\n\n"
            "• Enforcement of environmental laws: The Environmental Protection Agency (EPA) must enforce environmental laws against water pollution. Individuals and companies whose actions and activities pollute water bodies in the country must be identified and punished. This will deter others and minimize water pollution.\n\n"
            "**iv. Solutions to Soil erosion**\n\n"
            "• Practice of re-afforestation: People must be encouraged to grow plants to replace those that have been cut off for farming, charcoal production and other purposes. This will help to regenerate the depleted forests, safeguard land against soil erosion and replenish soil through decomposition of plant leaves.\n\n"
            "• Creation of fire belts: Farmers must be guided to create fire belts around their farms or bush before setting fire on them. Through this, fire will not get out of control and destroy vegetation or forest around.",
      ),
      PracticeQuestion(
        scenario: "Question 2 (BECE 2001 Q5)\n"
            "(a) Mention four causes of desertification in West Africa.\n"
            "(b) What measures can be taken to control desertification in West Africa?",
        answer: "Corrected Answers:\n\n(a) Causes of desertification:\n\n"
            "• Deforestation.\n"
            "• Overgrazing.\n"
            "• Poor farming practices.\n"
            "• Bush burning.\n\n"
            "(b) Measures to control desertification in West Africa:\n\n"
            "   • Practice of afforestation.\n"
            "   • Reforestation.\n"
            "   • Public education.\n"
            "   • Proper farming practices",
        explanation: "Explanation: \n\n **Causes of desertification:**\n\n"
            "• Deforestation: Excessive felling of trees for charcoal production, lumbering, farming, etc. makes land become bare. This facilitates soil erosion, leaching and loss of soil fertility leading to desertification.\n\n"
            "• Overgrazing: When animals such as sheep, cattle and goat feed on a particular farmland or grassland for a period of time, the vegetation cover and topsoil of the land gradually get removed to result in desertification.\n\n"
            "• Poor farming practices:  Poor farming practices such as over-cultivation reduce the soil fertility of land. Such farming practices destroy soil nutrients that support plant growth to result in desertification.\n\n"
            "• Bush burning: Indiscriminate bush burning for the purposes of farming, hunting, etc. destroys organisms and nutrients in the soil. This makes the soil less useful for plant growth and leads to desertification.\n\n"
            "**Measures to control desertification in West Africa:**\n\n"
            "• Practice of afforestation: Trees must be planted regularly in some areas to safeguard the physical environment against desertification.\n\n"
            "• Reforestation: Plants must be planted to replace trees that have been cut off for farming, lumbering or charcoal production. This will help to regenerate the depleted forests and protect land against desertification.\n\n"
            "• Public education: The public must be educated on the causes and effects associated with desertification. This will help to reduce practices such as improper farming, illegal mining, deforestation, etc. that render land useless and result in desertification.\n\n"
            "• Proper farming practices: Proper farming practices such as agro-forestry, mixed farming, application of organic manure, etc. must be encouraged to prevent desertification. This is because such practices protect the fertility of soil and prevent desertification.",
      ),
      PracticeQuestion(
          scenario: "Question 3 (BECE 2010 Q2)\n"
              "(a) Mention four causes of environmental degradation.\n"
              "(b) Outline four ways by which the environment can be protected from degradation.",
          answer:
              "Corrected Answers:\n\n(a) Causes of environmental degradation:\n\n"
              "• Dumping of solid and liquid waste materials into\n water bodies render drinking water to become contaminated.\n"
              "• Using chemicals such as DDT for fishing cause drinking\nwater to become contaminated and aquatic life destroyed.\n"
              "• Releasing gases and fumes from industries or factories\n into the atmosphere renders breathing air to become polluted.\n"
              "• Human excreta and other waste materials from homes\n and industries that are dumped into gutters, refuse dump sites pollute the air because they produce bad odour.\n\n"
              "(b) Ways by which the environment can be protected from degradation:\n\n"
              "   • Enforcement of legislation against\nenvironmental degradation.\n"
              "   • The use of appropriate farming methods.\n"
              "   • Public education.\n"
              "   • Practice of afforestation.",
          explanation:
              "Explanation: \n\n **Ways by which the environment can be protected from degradation:**\n\n"
              "• Enforcement of legislation against environmental degradation: The Environmental Protection Agency (EPA) must enforce the laws against illegal mining, indiscriminate felling of trees, bush burning, etc. Offenders must be fined to pay money or sentenced to imprisonment.\n\n"
              "• The use of appropriate farming methods: Farmers must be encouraged to adopt proper farming practices such as contour ploughing, shifting cultivation, agro-forestry, mixed farming, application of organic manure, etc. This will help to prevent land degradation because such practices protect the fertility of soil.\n\n"
              "• Public education: The public must be educated on the causes and effects associated with environmental degradation through the mass media. This will help to reduce practices such as improper fishing, improper farming, illegal mining, deforestation, indiscriminate disposal of waste materials from homes and industries into gutters or water bodies and other activities that degrade the environment.\n\n"
              "• Practice of afforestation: Trees must be planted regularly in some areas to safeguard the physical environment against degradation.\n\n"),
      PracticeQuestion(
        scenario: "Question 4 (BECE 2015 Q1)\n"
            "(a) Describe four bad effects of deforestation.\n"
            "(b) In what four ways can deforestation be minimized in Ghana?",
        answer: "Corrected Answers:\n\n(a) Bad effects of deforestation:\n\n"
            "• Exposes water bodies to excessive evaporation.\n"
            "• Exposes the land to erosion/Reduction in soil fertility.\n"
            "• It destroys medicinal plants.\n"
            "• Destruction of habitat of wildlife.\n\n"
            "(b) Ways deforestation can be minimized in Ghana:\n\n"
            "   • Practice of afforestation.\n"
            "   • Practice of re-afforestation.\n"
            "   • Public education.\n"
            "   • Creation of forest reserves",
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
          scenario: "Question 5 (BECE 2018 Q1)\n"
              "(a) List five examples of natural disasters.\n"
              "(b) Outline five ways by which the physical environment can be protected from degradation.",
          answer: "Corrected Answers:\n\n(a) Examples of natural disasters:\n\n"
              "• Flood / torrential rain.\n"
              "• Hurricane / typhoon.\n"
              "• Tsunamis / tidal waves.\n"
              "• Volcanic eruption.\n"
              "• Landslides / mud flow.\n\n"
              "(b) Ways by which the environment can be protected from degradation:\n\n"
              "   • Creation of fire belts around forest.\n"
              "   • Enforcement of environmental laws.\n"
              "   • Adoption of sedentary agricultural practices.\n"
              "   • Finding alternative sources of fuel.\n"
              "   • Finding substitute for wood for construction purposes.",
          explanation:
              "Explanation: \n\n **Ways by which the environment can be protected from degradation:**\n\n"
              "• Creation of fire belts around forest: There must be creation of fire belts around forests to prevent them from being destroyed through bush burning.\n\n"
              "• Enforcement of environmental laws: Environmental laws against deforestation must be enforced by Environmental Protection Agency and Forestry Commission to ensure protection and preservation of forests in the country.\n\n"
              "• Adoption of sedentary agricultural practices: Farmers must adopt sedentary agricultural practices that prevent rotation of farmlands. These include practices such as crop rotation, mixed cropping, cover cropping, etc.\n\n"
              "• Finding alternative sources of fuel: People must be encouraged to use alternative energy sources such as LPG gas. This will minimize the use of charcoal and firewood that results in deforestation.\n\n"
              "• Finding substitute for wood for construction purposes: People must be encouraged to find substitute for wood for building and construction purposes. For instance, metals can be used for roofing houses, making pillars and window or door frames in buildings instead of pieces of timber."),
      PracticeQuestion(
          scenario: "Question 6 (BECE 2024 Q1a)\n"
              "How will you explain the term environment to your study group?",
          answer:
              "Corrected Answers:\n\nThe environment refers to both the physical and social surroundings. The physical surroundings include natural elements like climate, mountains, rivers, and vegetation. The social surroundings include man-made cultural, political, and religious beliefs and structures.",
         explanation:
    "The environment refers to everything that surrounds human beings and influences their lives. It consists of both physical and social surroundings. The physical environment includes natural features such as climate, mountains, rivers, land, air and vegetation. The social environment includes human-made institutions, beliefs and structures, such as culture, politics, religion, settlements and social relationships."),
    ],
  ),

  // ─── RELIGIOUS & MORAL EDUCATION ──────────────────────────────────────
  "Mapping Skills (Concept of Maps)": PracticeModel(
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
            " • A scale can be expressed in three main forms: linear form, statement form, or any fractional form (representative fraction)."
            ,
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
