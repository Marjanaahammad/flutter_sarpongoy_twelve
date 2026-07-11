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
  "Fractions, Decimals, and Percentages": PracticeModel(
    audioPath: '',
    questions: [
      PracticeQuestion(
        scenario: "BECE Theory Question 1\n\nSolve the following:\n(a) Convert 7/8 to a decimal and a percentage.\n(b) Convert 0.35 to a fraction in its lowest terms.\n(c) What is 40% of 250?",
        answer: "(a) 7 ÷ 8 = 0.875; 0.875 × 100 = 87.5%.\n(b) 0.35 = 35/100 = 7/20 (dividing by 5).\n(c) 40% of 250 = 0.4 × 250 = 100.",
        explanation: "Converting between fractions, decimals, and percentages requires dividing, multiplying, and simplifying using HCF.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 2\n\nA student scored 48 out of 80 in a maths test.\n(a) Express her score as a fraction in its lowest terms.\n(b) Convert this fraction to a percentage.\n(c) If the passing mark was 65%, did she pass?",
        answer: "(a) 48/80 = 3/5 (dividing both by 16).\n(b) 3/5 = 0.6 = 60%.\n(c) 60% < 65%, so she did NOT pass the test.",
        explanation: "Real-life contexts require converting between forms and comparing values to make decisions.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 3\n\nAn item costs GH₵150. The price is increased by 20%, then reduced by 10%. What is the final price?",
        answer: "Step 1: 20% increase → 20% of 150 = 30. New price = 150 + 30 = GH₵180.\nStep 2: 10% reduction → 10% of 180 = 18. Final price = 180 − 18 = GH₵162.",
        explanation: "Percentage problems must be applied sequentially and always to the current value, not the original.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 4\n\nArrange these values in DESCENDING ORDER (largest to smallest):\n3/5, 0.62, 65%, 0.6, 3/4",
        answer: "Convert all to decimals:\n3/5 = 0.60\n0.62 = 0.62\n65% = 0.65\n0.6 = 0.60\n3/4 = 0.75\n\nDescending order: 3/4, 65%, 0.62, 3/5, 0.6\nor: 0.75, 0.65, 0.62, 0.60, 0.60",
        explanation: "Converting all values to the same form (decimals) allows direct comparison.",
      ),
      PracticeQuestion(
        scenario: "BECE Theory Question 5\n\nKwame earns GH₵3,600 per month. He spends 25% on rent, 15% on food, and saves the rest.\n(a) How much does he spend on rent?\n(b) How much does he spend on food?\n(c) How much does he save each month?",
        answer: "(a) Rent: 25% of 3,600 = 0.25 × 3,600 = GH₵900.\n(b) Food: 15% of 3,600 = 0.15 × 3,600 = GH₵540.\n(c) Total spent = 900 + 540 = GH₵1,440. Savings = 3,600 − 1,440 = GH₵2,160.",
        explanation: "Budgeting problems apply percentage calculations to practical financial situations.",
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
};
