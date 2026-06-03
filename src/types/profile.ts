export type NavItem = {
  label: string;
  href: string;
};

export type SocialLink = {
  label: string;
  href: string;
};

export type Metric = {
  value: string;
  label: string;
  detail: string;
};

export type Education = {
  institution: string;
  degree: string;
  location: string;
  period: string;
  grade?: string;
  summary: string;
  coursework?: string[];
};

export type Experience = {
  role: string;
  company: string;
  location?: string;
  period: string;
  summary: string;
  bullets: string[];
};

export type Project = {
  title: string;
  label: string;
  status: string;
  summary: string;
  contextTitle: string;
  context: string;
  exploredTitle: string;
  explored: string;
  methodsTitle: string;
  methods: string[];
  takeawaysTitle: string;
  keyTakeaways: string[];
  technologiesTitle: string;
  technologies: string[];
  improvementsTitle: string;
  improvements: string[];
  links?: SocialLink[];
};

export type SkillGroup = {
  title: string;
  description: string;
  skills: string[];
};

export type Achievement = {
  title: string;
  subtitle: string;
  detail: string;
};

export type Certification = {
  title: string;
  issuer: string;
};
