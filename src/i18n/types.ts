import type { Achievement, Certification, Education, Experience, Metric, NavItem, Project, SkillGroup } from '../types/profile';

export type Language = 'en' | 'ru' | 'uz';

export type Translation = {
  metadata: {
    title: string;
    description: string;
    keywords: string;
  };
  common: {
    resume: string;
    contact: string;
    emailMe: string;
    viewProjects: string;
    downloadResume: string;
    viewResume: string;
    githubProfile: string;
    skipToContent: string;
    openMenu: string;
    closeMenu: string;
    switchToLight: string;
    switchToDark: string;
    language: string;
  };
  profile: {
    name: string;
    role: string;
    location: string;
    email: string;
    headline: string;
    shortBio: string;
    availability: string;
  };
  navigation: NavItem[];
  hero: {
    eyebrowBadges: string[];
    intro: string;
    note: string;
    focusLabel: string;
    currentDirectionTitle: string;
    currentDirectionText: string;
    githubCta: string;
    metrics: Metric[];
    orbitItems: string[];
  };
  about: {
    eyebrow: string;
    title: string;
    description: string;
    cardTitle: string;
    paragraphs: string[];
    principles: string[];
    interestsEyebrow: string;
    interestsTitle: string;
    interestsText: string;
    interestsCta: string;
    focusAreas: string[];
  };
  academicProjects: {
    eyebrow: string;
    title: string;
    description: string;
    projects: Project[];
  };
  experienceSection: {
    eyebrow: string;
    title: string;
    description: string;
    transferableTitle: string;
    transferableSignals: Array<{ label: string; detail: string }>;
    items: Experience[];
  };
  educationSection: {
    eyebrow: string;
    title: string;
    description: string;
    courseworkLabel: string;
    items: Education[];
  };
  skillsSection: {
    eyebrow: string;
    title: string;
    description: string;
    groups: SkillGroup[];
  };
  achievementsSection: {
    eyebrow: string;
    title: string;
    description: string;
    items: Achievement[];
  };
  certificationsSection: {
    eyebrow: string;
    title: string;
    description: string;
    items: Certification[];
  };
  contactSection: {
    eyebrow: string;
    title: string;
    description: string;
    availabilityBadge: string;
    cardTitle: string;
    cardText: string;
    locationLabel: string;
    socialLabels: {
      Email: string;
      LinkedIn: string;
      GitHub: string;
    };
  };
  footer: {
    tagline: string;
  };
};
