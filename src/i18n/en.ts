import type { Translation } from './types';

export const en: Translation = {
  metadata: {
    title: 'Sherzod Norboboev | AI/NLP MSc Student & ML Engineer',
    description:
      'MSc Natural Language Processing student at MBZUAI, AI/NLP internship candidate, and former backend developer interested in LLMs, RAG, ASR, AST, speech processing, and applied AI systems.',
    keywords:
      'Sherzod Norboboev, MBZUAI, NLP, Machine Learning, LLMs, RAG, ASR, AST, Speech Processing, ML Engineer, AI internship'
  },
  common: {
    resume: 'Resume',
    contact: 'Contact',
    emailMe: 'Email me',
    viewProjects: 'View projects',
    downloadResume: 'Download resume',
    viewResume: 'View resume',
    githubProfile: 'GitHub profile',
    skipToContent: 'Skip to main content',
    openMenu: 'Open navigation menu',
    closeMenu: 'Close navigation menu',
    switchToLight: 'Switch to light theme',
    switchToDark: 'Switch to dark theme',
    language: 'Language'
  },
  profile: {
    name: 'Sherzod Norboboev',
    role: 'AI/NLP MSc Student & ML Engineer',
    location: 'Abu Dhabi, United Arab Emirates',
    email: '99sherzod786@gmail.com',
    headline: 'I study NLP at MBZUAI and build practical ML systems.',
    shortBio:
      'I am an MSc student in Natural Language Processing at MBZUAI with a background in backend engineering, mathematics, and applied machine learning.',
    availability:
      'I am looking for AI/NLP internship opportunities where I can contribute to model evaluation, NLP experiments, speech processing, RAG workflows, and applied AI systems.'
  },
  navigation: [
    { label: 'Home', href: '#home' },
    { label: 'About', href: '#about' },
    { label: 'Projects', href: '#academic-projects' },
    { label: 'Experience', href: '#experience' },
    { label: 'Education', href: '#education' },
    { label: 'Skills', href: '#skills' },
    { label: 'Achievements', href: '#achievements' },
    { label: 'Certifications', href: '#certifications' },
    { label: 'Contact', href: '#contact' }
  ],
  hero: {
    eyebrowBadges: ['MSc NLP at MBZUAI', 'AI/NLP internship candidate', 'Former backend developer'],
    intro:
      'I am Sherzod Norboboev, an MSc student in Natural Language Processing at MBZUAI. My current interests are LLMs, RAG systems, controllable text generation, ASR, AST, speech processing, and practical AI products.',
    note:
      'Before graduate school, I spent more than three years building backend modules for enterprise systems. That experience still shapes how I think about data, reliability, and ML systems.',
    focusLabel: 'Areas I am learning and exploring',
    currentDirectionTitle: 'Current direction',
    currentDirectionText:
      'I am preparing for AI/NLP internship roles where careful experiments, readable code, and engineering judgment matter as much as model choice.',
    githubCta: 'View code and project work on GitHub',
    metrics: [
      {
        value: 'MBZUAI',
        label: 'MSc in NLP',
        detail: 'Graduate coursework in NLP, machine learning, deep learning, probability, and speech processing.'
      },
      {
        value: 'A+',
        label: 'ML and PSI',
        detail: 'A+ in Machine Learning with Python and Probabilistic & Statistical Inference.'
      },
      {
        value: '3+',
        label: 'Years backend',
        detail: 'Enterprise work with Oracle Database, SQL, PL/SQL, HR, ERP, licensing, and telecom systems.'
      },
      {
        value: '500',
        label: 'Summarization samples',
        detail: 'CNN/DailyMail validation samples used in a length-control summarization project.'
      }
    ],
    orbitItems: ['NLP', 'ML', 'LLMs', 'Speech']
  },
  about: {
    eyebrow: 'About',
    title: 'A practical path into NLP: math, backend systems, and graduate ML training.',
    description:
      'I like work that sits between experiments and systems: understanding a model, testing it carefully, and making the implementation reliable enough for real use.',
    cardTitle: 'Current profile',
    paragraphs: [
      'I am currently pursuing an MSc in Natural Language Processing at Mohamed bin Zayed University of Artificial Intelligence. My coursework has strengthened my foundations in machine learning, probabilistic inference, deep learning, NLP, and speech processing.',
      'My earlier work was in backend development. I worked on enterprise HR and ERP systems, a government pharmacy licensing system, and a telecom module migration using Oracle Database, SQL, and PL/SQL.',
      'That mix is important to me. I am not only interested in models as isolated experiments; I am also interested in the data, evaluation, business rules, and engineering details around them.'
    ],
    principles: [
      'Be clear about what a project actually proves.',
      'Prefer simple, reproducible experiments before adding complexity.',
      'Write code that another engineer can read and run.',
      'Treat evaluation and limitations as part of the work, not an afterthought.'
    ],
    interestsEyebrow: 'Research interests',
    interestsTitle: 'Topics I am actively learning',
    interestsText:
      'These are interests and directions I want to grow in through internships, coursework, and project work. They are not presented as completed research expertise.',
    interestsCta: 'See related academic projects',
    focusAreas: [
      'Large Language Models',
      'Retrieval-Augmented Generation',
      'Controllable Text Generation',
      'NLP Evaluation',
      'ASR',
      'AST',
      'Speech Processing',
      'ML Systems',
      'Applied AI Products'
    ]
  },
  academicProjects: {
    eyebrow: 'Academic projects',
    title: 'Small but honest project work in NLP, speech, and applied ML.',
    description:
      'These projects are presented as coursework, learning, and portfolio work. They show how I approach experiments and engineering without overstating the scope.',
    projects: [
      {
        title: 'Length-Controlled Abstractive Summarization with BART',
        label: 'Academic NLP project',
        status: 'Course-style experiment',
        summary:
          'Explored ways to control summary length when using BART for abstractive summarization on CNN/DailyMail samples.',
        contextTitle: 'Context',
        context:
          'Summaries often need to fit a product constraint: a short preview, a medium briefing, or a longer explanation. This project looked at length control as a practical generation problem rather than as a new model claim.',
        exploredTitle: 'What I explored',
        explored:
          'I compared soft control tokens with hard decoding caps and looked at how each choice affected output length and summary quality.',
        methodsTitle: 'Methods used',
        methods: [
          'Used BART for abstractive summarization on 500 CNN/DailyMail validation samples.',
          'Compared control tokens such as SHORT, MEDIUM, and LONG with explicit max-token decoding caps.',
          'Measured summary quality with ROUGE and BARTScore.',
          'Checked length-control behavior across different generation settings.',
          'Used paired tests and bootstrap resampling to better understand whether differences were stable.'
        ],
        takeawaysTitle: 'Key takeaways',
        keyTakeaways: [
          'Hard decoding caps were easier to rely on than token-based steering in this setup.',
          'A 64-token cap gave a useful quality-control balance in the evaluated samples.',
          'A summarization system should be judged on both quality and whether it follows the requested constraint.',
          'This project helped me understand why evaluation design matters in controllable generation.'
        ],
        technologiesTitle: 'Technologies',
        technologies: [
          'Python',
          'PyTorch',
          'Hugging Face Transformers',
          'BART',
          'CNN/DailyMail',
          'ROUGE',
          'BARTScore',
          'Bootstrap resampling'
        ],
        improvementsTitle: 'What I would improve next',
        improvements: [
          'Add readable examples for short, medium, and long summaries.',
          'Compare the same task with instruction-tuned LLMs.',
          'Add factuality checks and a clearer error analysis section.',
          'Write a short technical report with final tables, examples, and limitations.'
        ],
        links: [
          {
            label: 'GitHub repository',
            href: 'https://github.com/SherzodNorboboyev/length_control_summarization'
          }
        ]
      },
      {
        title: 'ASR Performance Under Noise and Denoising',
        label: 'Speech processing project',
        status: 'Experimental notebook',
        summary:
          'Studied how noise and denoising steps can affect speech recognition output quality in a controlled notebook experiment.',
        contextTitle: 'Context',
        context:
          'ASR systems can work well on clean audio but behave differently in noisy conditions. I used this project to practice controlled evaluation for speech models.',
        exploredTitle: 'What I explored',
        explored:
          'The notebook adds noise, applies denoising, runs ASR models, and compares transcription quality using word and character error rates.',
        methodsTitle: 'Methods used',
        methods: [
          'Prepared clean speech samples and introduced controlled noise settings.',
          'Compared ASR behavior across Whisper and Wav2Vec2-style model families.',
          'Applied denoising before transcription to compare the effect on output quality.',
          'Measured results with WER and CER.',
          'Used the project to practice speech-processing evaluation rather than build a production ASR service.'
        ],
        takeawaysTitle: 'Key takeaways',
        keyTakeaways: [
          'Speech evaluation should include noisy conditions, not only clean examples.',
          'WER and CER make model behavior easier to discuss and compare.',
          'The next version should include cleaner result tables, plots, and transcript examples.',
          'This project made ASR, AST, and speech processing more concrete for me.'
        ],
        technologiesTitle: 'Technologies',
        technologies: ['Python', 'Jupyter Notebook', 'Whisper', 'Wav2Vec2', 'WER', 'CER', 'Audio preprocessing'],
        improvementsTitle: 'What I would improve next',
        improvements: [
          'Publish final WER and CER tables in the README.',
          'Add plots for noise levels and denoising methods.',
          'Include sample transcripts before and after denoising.',
          'Move reusable code from notebook cells into small scripts.'
        ],
        links: [
          {
            label: 'GitHub repository',
            href: 'https://github.com/SherzodNorboboyev/asr_noise_reduction_project'
          }
        ]
      },
      {
        title: 'Machine Learning and Data Projects',
        label: 'Applied ML practice',
        status: 'Learning archive',
        summary:
          'A group of earlier projects where I practiced data cleaning, feature engineering, classification workflows, and visual analysis.',
        contextTitle: 'Context',
        context:
          'These projects helped me build practical habits before moving deeper into NLP and speech: inspect the data, clean it carefully, choose baselines, and explain results clearly.',
        exploredTitle: 'What I explored',
        explored:
          'The work covers classification-style workflows, exploratory analysis, feature construction, preprocessing, and plotting.',
        methodsTitle: 'Methods used',
        methods: [
          'Performed exploratory data analysis with Pandas, NumPy, and Matplotlib.',
          'Built feature engineering and preprocessing steps for model-ready data.',
          'Used classification workflows and evaluation metrics for applied ML practice.',
          'Created visualizations with Matplotlib and Plotly.',
          'Used GitHub and Kaggle-style notebooks to organize learning work.'
        ],
        takeawaysTitle: 'Key takeaways',
        keyTakeaways: [
          'Good ML work starts with understanding the data.',
          'Feature engineering and validation are often more important than trying many models.',
          'Readable notebooks still need clear explanations and final metrics.',
          'Some older projects belong in an archive rather than on the main homepage.'
        ],
        technologiesTitle: 'Technologies',
        technologies: ['Python', 'Pandas', 'NumPy', 'Scikit-learn', 'Matplotlib', 'Plotly', 'Jupyter Notebook'],
        improvementsTitle: 'What I would improve next',
        improvements: [
          'Add short READMEs to the strongest projects.',
          'Document metrics and limitations more clearly.',
          'Keep early learning projects separate from featured work.',
          'Use consistent folder structure and environment files.'
        ],
        links: [
          {
            label: 'GitHub profile',
            href: 'https://github.com/SherzodNorboboyev'
          }
        ]
      }
    ]
  },
  experienceSection: {
    eyebrow: 'Experience',
    title: 'Backend engineering experience that helps me think about ML systems more carefully.',
    description:
      'Before focusing on NLP, I worked on database-backed enterprise systems. That experience taught me to care about data integrity, business rules, review quality, and long-term maintainability.',
    transferableTitle: 'What transfers to ML work',
    transferableSignals: [
      { label: 'Data integrity', detail: 'Careful handling of migrations, schemas, and production data.' },
      { label: 'Business logic', detail: 'Turning real requirements into reliable backend behavior.' },
      { label: 'System thinking', detail: 'Understanding how code, data, users, and constraints interact.' }
    ],
    items: [
      {
        role: 'Backend Developer',
        company: 'Green White Solutions',
        location: 'Tashkent, Uzbekistan',
        period: '2020 - 2023',
        summary:
          'Worked on backend modules for enterprise HR, ERP, government licensing, and telecom systems using Oracle Database, SQL, and PL/SQL.',
        bullets: [
          'Contributed to enterprise HR and ERP systems used by multiple organizations, mainly on backend logic and database workflows.',
          'Implemented PL/SQL and Oracle Database modules for HR system features and business rules.',
          'Reviewed pull requests to help maintain code quality, correctness, and architectural consistency.',
          'Co-developed a government pharmacy licensing system with the team lead, including backend modules and regulatory business rules.',
          'Led migration of a legacy telecom module to a new system architecture while focusing on data integrity and system stability.',
          'Built engineering habits around debugging, schema design, migration safety, and system-level reasoning that are useful for ML systems work.'
        ]
      }
    ]
  },
  educationSection: {
    eyebrow: 'Education',
    title: 'Graduate NLP study with a strong quantitative base.',
    description:
      'My current academic focus is NLP at MBZUAI. The coursework gives me a stronger foundation for ML experiments, speech processing, and applied AI systems.',
    courseworkLabel: 'Selected coursework',
    items: [
      {
        institution: 'Mohamed bin Zayed University of Artificial Intelligence',
        degree: 'MSc in Natural Language Processing',
        location: 'Abu Dhabi, United Arab Emirates',
        period: '2025 - Present',
        grade: 'GPA: 3.37 / 4.00',
        summary:
          'Graduate study focused on NLP, machine learning, probabilistic inference, deep learning, mathematical foundations of AI, and speech processing.',
        coursework: [
          'Machine Learning with Python - A+',
          'Probabilistic & Statistical Inference - A+',
          'Mathematical Foundations of AI - A',
          'Introduction to Deep Learning - A-',
          'Natural Language Processing - B+',
          'Speech Processing - B+'
        ]
      },
      {
        institution: 'Tashkent State University of Economics',
        degree: 'BSc in Information & Communication Technologies',
        location: 'Tashkent, Uzbekistan',
        period: '2016 - 2020',
        grade: 'Grade: 87.8 / 100',
        summary:
          'Undergraduate study in information and communication technologies, followed by professional backend engineering work.'
      }
    ]
  },
  skillsSection: {
    eyebrow: 'Skills',
    title: 'Tools and foundations I use across coursework, projects, and engineering work.',
    description:
      'This section separates core skills from areas I am still growing into through academic projects and internship preparation.',
    groups: [
      {
        title: 'ML and NLP',
        description: 'Core graduate and project skills.',
        skills: [
          'Machine Learning',
          'Natural Language Processing',
          'Deep Learning',
          'Statistical Inference',
          'PyTorch',
          'Hugging Face Transformers',
          'Scikit-learn',
          'Transformer-based NLP',
          'ROUGE',
          'BARTScore'
        ]
      },
      {
        title: 'Current AI interests',
        description: 'Areas I am actively studying and building toward.',
        skills: [
          'Large Language Models',
          'Retrieval-Augmented Generation',
          'Controllable Text Generation',
          'NLP Evaluation',
          'ASR',
          'AST',
          'Speech Processing',
          'ML Systems',
          'Applied AI Products'
        ]
      },
      {
        title: 'Programming and data',
        description: 'Everyday tools for experiments and data work.',
        skills: ['Python', 'SQL', 'PL/SQL', 'C++', 'JavaScript', 'Pandas', 'NumPy', 'Matplotlib', 'Plotly']
      },
      {
        title: 'Backend and tools',
        description: 'Production engineering background and development workflow.',
        skills: ['Oracle Database', 'Database-backed systems', 'Data migration', 'Code review', 'Git', 'GitHub', 'Jupyter Notebook', 'VS Code']
      }
    ]
  },
  achievementsSection: {
    eyebrow: 'Achievements',
    title: 'Mathematics has been part of my path for a long time.',
    description:
      'The mathematics background is not a decoration for me. It supports how I approach probability, optimization, evaluation, and careful problem solving in ML.',
    items: [
      {
        title: '1st Place - District Mathematics Olympiad',
        subtitle: 'Grade 11',
        detail: 'Advanced to the regional stage after district-level competition.'
      },
      {
        title: 'Regional Mathematics Competitions',
        subtitle: 'Award recognition',
        detail: 'Earned regional-level recognition in mathematics competitions.'
      },
      {
        title: 'IMO Qualification Round',
        subtitle: 'Regional selection level',
        detail: 'Selected for an International Mathematics Olympiad qualification round at the regional level.'
      }
    ]
  },
  certificationsSection: {
    eyebrow: 'Certifications',
    title: 'Additional credentials.',
    description:
      'These complement the main evidence on the site: graduate study, project work, backend experience, and mathematics background.',
    items: [
      { title: 'Oracle Certified Associate', issuer: 'Oracle' },
      { title: 'Python (Basic)', issuer: 'HackerRank' },
      { title: 'Problem Solving (Basic)', issuer: 'HackerRank' }
    ]
  },
  contactSection: {
    eyebrow: 'Contact',
    title: 'Open to AI/NLP internship conversations.',
    description:
      'The best fit is a team working on NLP, speech, RAG, evaluation, ML systems, or applied AI products.',
    availabilityBadge: 'Available for internship conversations',
    cardTitle: 'The easiest way to reach me is by email.',
    cardText:
      'Please include the role, project area, timeline, and any technical expectations. I am happy to share more detail about coursework, projects, and backend experience.',
    locationLabel: 'Location',
    socialLabels: {
      Email: 'Email',
      LinkedIn: 'LinkedIn',
      GitHub: 'GitHub'
    }
  },
  footer: {
    tagline: 'AI/NLP MSc student, ML learner, and former backend developer.'
  }
};
