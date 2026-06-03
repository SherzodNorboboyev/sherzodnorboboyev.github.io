# Sherzod Norboboev Portfolio Website

A personal portfolio website built for GitHub Pages. The site presents Sherzod Norboboev as an MSc student in Natural Language Processing at MBZUAI, an AI/NLP internship candidate, and a former backend developer with enterprise systems experience.

The project is a static React application built with Vite, TypeScript, Tailwind CSS, Framer Motion, and Lucide Icons. It is designed to be lightweight, easy to maintain, multilingual, and deployable without a backend.

---

## Project Overview

This repository contains the source code for my personal portfolio website:

```txt
https://sherzodnorboboyev.github.io/
```

The website was built to provide a clearer and more professional online profile for recruiters, research-oriented teams, startup founders, hiring managers, and collaborators.

The content focuses on:

- MSc in Natural Language Processing at MBZUAI
- AI/NLP internship readiness
- Machine Learning and NLP foundations
- Academic projects
- Backend engineering experience
- Oracle Database and PL/SQL experience
- Mathematics background
- Research interests in LLMs, RAG, ASR, AST, speech processing, AI agents, and applied AI systems

The site intentionally avoids overclaiming. Academic projects are presented as coursework, learning, and portfolio work rather than publications or completed research papers.

---

## Main Goals

The main goals of this project are:

1. Present a clean and honest personal portfolio.
2. Make academic projects easy to understand.
3. Highlight the connection between backend engineering and ML systems.
4. Support English, Russian, and Uzbek.
5. Keep the site static and easy to deploy on GitHub Pages.
6. Make future content updates simple through centralized data and translation files.

---

## Target Audience

The website is written for:

- AI/NLP internship recruiters
- ML engineering teams
- Research-oriented startup teams
- Hiring managers
- Technical interviewers
- Academic collaborators
- Future maintainers of this project

---

## Features

### Portfolio Features

- Responsive single-page portfolio
- Fixed navigation header
- Mobile navigation menu
- Hero section with profile summary
- About section
- Academic projects section
- Experience section
- Education section
- Skills section
- Mathematics achievements section
- Certifications section
- Contact section
- Resume link from `public/resume.pdf`
- GitHub, LinkedIn, and email links

### Internationalization

- English support
- Russian support
- Uzbek support in Latin script
- Language preference saved in `localStorage`
- Default language: English
- Translatable navigation, content, buttons, metadata, project descriptions, and footer text

### UI and UX

- Mobile-first responsive layout
- Dark mode and light mode
- Theme preference saved in `localStorage`
- Smooth but restrained animations
- Accessible skip link
- Keyboard-friendly navigation
- Semantic section structure
- Reusable layout and UI components

### SEO and Static Assets

- Static metadata in `index.html`
- Client-side metadata updates when language changes
- Open Graph image
- Favicon
- `robots.txt`
- `sitemap.xml`
- JSON-LD structured data for `Person` and `WebSite`

### Deployment

- Static Vite build
- GitHub Pages compatible
- GitHub Actions deployment workflow
- Vite base path configured for root user site deployment

---

## Tech Stack

### React

React is used to build the component-based UI. The site is a client-rendered static application with reusable sections and UI components.

### TypeScript

TypeScript is used for safer development and clearer data contracts. Translation content, profile data, projects, education, experience, and reusable component props are typed.

### Vite

Vite is used as the development server and build tool. It provides fast local development and outputs a static production build to `dist/`.

### Tailwind CSS

Tailwind CSS is used for styling. The design system is based on utility classes, custom color tokens, responsive breakpoints, and dark mode variants.

### Framer Motion

Framer Motion is used for small section entrance animations. Motion is intentionally limited so the website feels professional and does not distract from the content.

### Lucide Icons

Lucide Icons provides lightweight SVG icons for navigation, sections, contact links, cards, and interface controls.

### GitHub Pages

The site is deployed as a static website through GitHub Pages. No backend, database, server-side rendering, or dynamic route server is required.

---

## Project Architecture

This is a static single-page React application.

The application is rendered into the root DOM node from `index.html`. React mounts the app, wraps it with the i18n provider, and renders the portfolio sections in order.

```txt
index.html
  └── src/main.tsx
        └── <App />
              └── <I18nProvider>
                    └── <PortfolioShell>
                          ├── <JsonLd />
                          ├── <SiteHeader />
                          ├── <Hero />
                          ├── <About />
                          ├── <AcademicProjects />
                          ├── <Experience />
                          ├── <Education />
                          ├── <Skills />
                          ├── <Achievements />
                          ├── <Certifications />
                          ├── <Contact />
                          └── <SiteFooter />
```

The site does not use route-based navigation. Navigation links point to section anchors such as:

```txt
#about
#academic-projects
#experience
#education
#skills
#contact
```

This makes the site simple and safe for GitHub Pages because browser refreshes do not depend on server-side route handling.

---

## Rendering Flow

The rendering flow is:

1. `index.html` loads the root container:

```html
<div id="root"></div>
```

2. `src/main.tsx` finds the root element and renders the React app.

3. `src/App.tsx` wraps the site with `I18nProvider`.

4. `PortfolioShell` renders the header, page sections, footer, and JSON-LD structured data.

5. Each section component reads the active translation object through `useI18n()`.

6. UI components such as `ButtonLink`, `Badge`, `Section`, and `AnimatedSection` provide reusable styling and behavior.

---

## State Flow

The project has two main pieces of client-side state:

### 1. Language State

Language state is managed in:

```txt
src/i18n/I18nProvider.tsx
```

The provider stores:

```ts
language
setLanguage
t
```

Where:

- `language` is the active language code.
- `setLanguage` changes the active language.
- `t` is the active translation object.

The language is saved in `localStorage` using this key:

```ts
portfolio-language
```

### 2. Theme State

Theme state is managed in:

```txt
src/components/ThemeToggle.tsx
```

The theme is saved in `localStorage` using this key:

```ts
theme
```

Supported values are:

```ts
'dark' | 'light'
```

When the theme changes, the app updates the root HTML class:

```txt
dark
light
```

Tailwind uses these classes for dark mode styling.

---

## Language Switching Flow

The language switching flow works like this:

```txt
LanguageSwitcher
  └── calls setLanguage(languageCode)
        └── I18nProvider updates language state
              ├── selects translations[language]
              ├── updates document.documentElement.lang
              ├── updates document.title
              ├── updates meta description
              ├── updates keywords
              ├── updates Open Graph metadata
              ├── updates Twitter metadata
              └── saves language to localStorage
```

The default language is English.

If a saved language exists in `localStorage`, the provider uses it on page load. If no saved language exists, English is used.

---

## Folder Structure

```txt
.
├── .github/
│   └── workflows/
│       └── deploy.yml
├── public/
│   ├── favicon.svg
│   ├── og-image.svg
│   ├── resume.pdf
│   ├── robots.txt
│   └── sitemap.xml
├── src/
│   ├── components/
│   │   ├── About.tsx
│   │   ├── AcademicProjects.tsx
│   │   ├── Achievements.tsx
│   │   ├── AnimatedSection.tsx
│   │   ├── Badge.tsx
│   │   ├── ButtonLink.tsx
│   │   ├── Certifications.tsx
│   │   ├── Contact.tsx
│   │   ├── Education.tsx
│   │   ├── Experience.tsx
│   │   ├── Hero.tsx
│   │   ├── JsonLd.tsx
│   │   ├── LanguageSwitcher.tsx
│   │   ├── ProjectCard.tsx
│   │   ├── Section.tsx
│   │   ├── SiteFooter.tsx
│   │   ├── SiteHeader.tsx
│   │   ├── Skills.tsx
│   │   ├── StatCard.tsx
│   │   └── ThemeToggle.tsx
│   ├── data/
│   │   └── profile.ts
│   ├── i18n/
│   │   ├── I18nProvider.tsx
│   │   ├── en.ts
│   │   ├── index.ts
│   │   ├── ru.ts
│   │   ├── types.ts
│   │   └── uz.ts
│   ├── lib/
│   │   ├── metadata.ts
│   │   └── utils.ts
│   ├── types/
│   │   └── profile.ts
│   ├── App.tsx
│   ├── index.css
│   ├── main.tsx
│   └── vite-env.d.ts
├── .gitignore
├── index.html
├── package.json
├── postcss.config.js
├── tailwind.config.ts
├── tsconfig.json
└── vite.config.ts
```

---

## Folder Responsibilities

### `.github/workflows/`

Contains GitHub Actions workflow files.

The current workflow builds the Vite project and deploys the `dist/` output to GitHub Pages.

### `public/`

Contains static public assets that are copied directly into the build output.

Important files:

- `resume.pdf` — resume file linked from the website.
- `favicon.svg` — browser favicon.
- `og-image.svg` — social sharing preview image.
- `robots.txt` — crawler instructions.
- `sitemap.xml` — sitemap for the root website.

### `src/components/`

Contains all React UI components.

Most components are section-level components, such as `Hero`, `About`, `Experience`, and `Contact`. Some components are reusable UI primitives, such as `Badge`, `ButtonLink`, `Section`, and `AnimatedSection`.

### `src/data/`

Contains language-independent profile constants.

Currently this includes:

- website URL
- resume path
- email
- social links

Most visible text is not stored here because it needs to be translated.

### `src/i18n/`

Contains the internationalization system.

This folder includes:

- translation types
- translation files
- language list
- i18n context provider
- localStorage language persistence
- client-side metadata updates

### `src/lib/`

Contains small shared utilities and metadata helpers.

### `src/types/`

Contains reusable TypeScript types for profile-related data structures.

### Root config files

Root config files control the development environment, build process, TypeScript behavior, Tailwind setup, and Vite deployment settings.

---

## Component Breakdown

### `App.tsx`

Purpose:

- Defines the top-level application structure.
- Wraps the site in `I18nProvider`.
- Renders the complete portfolio shell.

Main responsibilities:

- Initialize i18n context.
- Render global layout.
- Render all portfolio sections in order.
- Include skip link for accessibility.
- Include JSON-LD structured data.

Inputs:

- None directly.

Outputs:

- The complete React application.

---

### `SiteHeader.tsx`

Purpose:

- Renders the fixed top navigation bar.

Main responsibilities:

- Display logo/name.
- Render desktop navigation.
- Render mobile navigation menu.
- Include language selector.
- Include theme toggle.
- Link to resume and contact section.
- Close mobile menu when a link is clicked.
- Close mobile menu with the Escape key.

Inputs:

- Translation data from `useI18n()`.
- Resume path from `src/data/profile.ts`.

Outputs:

- Responsive header and navigation menu.

---

### `LanguageSwitcher.tsx`

Purpose:

- Allows the user to switch between supported languages.

Main responsibilities:

- Read current language from `I18nProvider`.
- Display available languages from `src/i18n/index.ts`.
- Call `setLanguage()` when the user selects a language.
- Preserve existing i18n behavior.

Inputs:

- `language`
- `setLanguage`
- `t.common.language`
- `languages`

Outputs:

- Language selection UI.

---

### `ThemeToggle.tsx`

Purpose:

- Allows the user to switch between dark and light mode.

Main responsibilities:

- Detect saved theme from `localStorage`.
- Fall back to system color preference when no saved theme exists.
- Toggle `dark` and `light` classes on the root HTML element.
- Save selected theme to `localStorage`.
- Provide accessible labels from translations.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- Theme toggle button.

---

### `Hero.tsx`

Purpose:

- Renders the first impression of the website.

Main responsibilities:

- Introduce Sherzod’s current positioning.
- Show key badges and metrics.
- Provide primary calls to action.
- Link to academic projects, resume, and contact.
- Show current AI/NLP interests in a concise way.

Inputs:

- Translation data from `useI18n()`.
- Resume and social links from `src/data/profile.ts`.

Outputs:

- Hero section.

---

### `About.tsx`

Purpose:

- Gives a more personal and professional explanation of the profile.

Main responsibilities:

- Explain the path from mathematics and backend systems to NLP.
- Present research interests as growing interests, not completed expertise.
- Show principles and focus areas.
- Link to academic projects.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- About section and research interests subsection.

---

### `AcademicProjects.tsx`

Purpose:

- Displays academic and learning projects.

Main responsibilities:

- Render translated project data.
- Present projects honestly as coursework, learning, and portfolio work.
- Delegate project layout to `ProjectCard`.

Inputs:

- `t.academicProjects`

Outputs:

- Academic projects section.

---

### `ProjectCard.tsx`

Purpose:

- Renders one project case-study card.

Main responsibilities:

- Show project title, label, status, and summary.
- Show context and what the project explored.
- Show methods used.
- Show key takeaways.
- Show technologies.
- Show what could be improved next.
- Render project links when available.

Inputs:

```ts
project: Project
index: number
```

Outputs:

- A single project card.

---

### `Experience.tsx`

Purpose:

- Shows backend engineering experience.

Main responsibilities:

- Present backend experience in a concrete and honest way.
- Highlight Oracle Database, SQL, PL/SQL, enterprise systems, code review, business logic, and migration work.
- Show transferable engineering skills for ML systems.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- Experience section.

---

### `Education.tsx`

Purpose:

- Shows academic background.

Main responsibilities:

- Display MBZUAI MSc in Natural Language Processing.
- Display BSc background.
- Show selected coursework.
- Keep education content translated.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- Education section.

---

### `Skills.tsx`

Purpose:

- Displays technical skills grouped by topic.

Main responsibilities:

- Group skills into readable categories.
- Avoid one long unstructured skill list.
- Present ML/NLP, AI interests, programming/data, and backend/tools separately.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- Skills section.

---

### `Achievements.tsx`

Purpose:

- Displays mathematics achievements.

Main responsibilities:

- Highlight math background.
- Keep the section compact.
- Connect achievements to the broader AI/ML profile indirectly through surrounding content.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- Achievements section.

---

### `Certifications.tsx`

Purpose:

- Displays certifications.

Main responsibilities:

- Show Oracle and HackerRank certifications.
- Keep certifications secondary to education, projects, and experience.

Inputs:

- Translation data from `useI18n()`.

Outputs:

- Certifications section.

---

### `Contact.tsx`

Purpose:

- Provides contact information and direct calls to action.

Main responsibilities:

- Show availability for AI/NLP internship conversations.
- Provide email, LinkedIn, and GitHub links.
- Link to resume.
- Show location.

Inputs:

- Translation data from `useI18n()`.
- Social links and resume path from `src/data/profile.ts`.

Outputs:

- Contact section.

---

### `SiteFooter.tsx`

Purpose:

- Renders the website footer.

Main responsibilities:

- Show name and short tagline.
- Provide social/contact links.
- Use translated footer text.

Inputs:

- Translation data from `useI18n()`.
- Social links from `src/data/profile.ts`.

Outputs:

- Footer.

---

### `Section.tsx`

Purpose:

- Provides a reusable section layout.

Main responsibilities:

- Apply consistent spacing.
- Render eyebrow, title, and description.
- Wrap heading area in `AnimatedSection`.

Inputs:

```ts
id: string
eyebrow?: string
title: string
description?: string
children: ReactNode
className?: string
```

Outputs:

- Consistent section container.

---

### `AnimatedSection.tsx`

Purpose:

- Provides reusable entrance animation.

Main responsibilities:

- Animate content when it enters the viewport.
- Respect reduced-motion preferences.

Inputs:

```ts
children: ReactNode
className?: string
delay?: number
```

Outputs:

- Animated wrapper.

---

### `Badge.tsx`

Purpose:

- Provides small labeled chips.

Main responsibilities:

- Render a styled label.
- Support several color tones.

Inputs:

```ts
tone?: 'blue' | 'violet' | 'teal' | 'amber' | 'neutral'
```

Outputs:

- Styled badge.

---

### `ButtonLink.tsx`

Purpose:

- Provides reusable button-styled links.

Main responsibilities:

- Render accessible anchor elements.
- Support primary, secondary, and ghost variants.
- Keep button styling consistent.

Inputs:

```ts
variant?: 'primary' | 'secondary' | 'ghost'
```

Outputs:

- Styled link button.

---

### `StatCard.tsx`

Purpose:

- Renders small metric cards in the hero section.

Main responsibilities:

- Display value, label, and detail.
- Use consistent card styling.

Inputs:

```ts
value: string
label: string
detail: string
className?: string
```

Outputs:

- Hero metric card.

---

### `JsonLd.tsx`

Purpose:

- Injects structured data into the page.

Main responsibilities:

- Render JSON-LD for `Person`.
- Render JSON-LD for `WebSite`.

Inputs:

- Structured data from `src/lib/metadata.ts`.

Outputs:

- `<script type="application/ld+json">`

---

## Internationalization

The project uses a custom lightweight i18n setup. It does not depend on external i18n libraries.

### Supported Languages

```ts
export type Language = 'en' | 'ru' | 'uz';
```

Current languages:

- English
- Russian
- Uzbek

Language definitions are stored in:

```txt
src/i18n/index.ts
```

Example:

```ts
export const languages = [
  { code: 'en', label: 'English', shortLabel: 'EN' },
  { code: 'ru', label: 'Русский', shortLabel: 'RU' },
  { code: 'uz', label: "O'zbekcha", shortLabel: 'UZ' }
];
```

### Translation Files

Translations are stored in:

```txt
src/i18n/en.ts
src/i18n/ru.ts
src/i18n/uz.ts
```

Each translation file exports a translation object that must match the `Translation` type from:

```txt
src/i18n/types.ts
```

The translation files include:

- metadata
- common labels
- profile text
- navigation
- hero content
- about content
- academic projects
- experience
- education
- skills
- achievements
- certifications
- contact content
- footer text

### Translation Type Safety

The translation object shape is defined in:

```txt
src/i18n/types.ts
```

This helps make sure every language has the same required fields.

If a field is missing from one language, TypeScript should report an error during:

```bash
npm run check
```

or:

```bash
npm run build
```

### Using Translations in Components

Components access the current translation object with:

```ts
const { t } = useI18n();
```

Example:

```tsx
<h2>{t.about.title}</h2>
<p>{t.about.description}</p>
```

### Language Persistence

Language persistence is handled by `I18nProvider`.

The selected language is saved to:

```ts
localStorage.setItem('portfolio-language', language);
```

On page load, the provider checks `localStorage`. If a valid language exists, it is used. Otherwise, the default language is English.

### Metadata Updates

When the language changes, `I18nProvider` updates:

- `document.documentElement.lang`
- `document.title`
- meta description
- meta keywords
- Open Graph title
- Open Graph description
- Twitter title
- Twitter description

This keeps the page metadata aligned with the selected language on the client side.

### Adding a New Language

To add a new language, follow these steps.

#### 1. Update the Language Type

Edit:

```txt
src/i18n/types.ts
```

Change:

```ts
export type Language = 'en' | 'ru' | 'uz';
```

For example, to add French:

```ts
export type Language = 'en' | 'ru' | 'uz' | 'fr';
```

#### 2. Create a New Translation File

Create:

```txt
src/i18n/fr.ts
```

Use an existing translation file as a template:

```ts
import type { Translation } from './types';

export const fr: Translation = {
  // translated content here
};
```

#### 3. Register the Language

Edit:

```txt
src/i18n/index.ts
```

Import the new translation:

```ts
import { fr } from './fr';
```

Add it to the language list:

```ts
{ code: 'fr', label: 'Français', shortLabel: 'FR' }
```

Add it to the translation map:

```ts
export const translations: Record<Language, Translation> = {
  en,
  ru,
  uz,
  fr
};
```

#### 4. Update the Initial Language Validation

Edit:

```txt
src/i18n/I18nProvider.tsx
```

The current language validation checks allowed values manually. Add the new language there as well.

Example:

```ts
return saved === 'ru' || saved === 'uz' || saved === 'en' || saved === 'fr'
  ? saved
  : defaultLanguage;
```

#### 5. Run Type Check

```bash
npm run check
```

Then build:

```bash
npm run build
```

---

## Styling System

### Tailwind CSS

Tailwind is configured in:

```txt
tailwind.config.ts
```

The project uses Tailwind for:

- layout
- spacing
- typography
- responsive design
- colors
- dark mode
- borders
- hover states
- focus states

### Custom Theme Tokens

The Tailwind config defines custom colors:

```ts
ink
accent.blue
accent.violet
accent.teal
accent.amber
```

The `ink` scale is used for neutral text, borders, and backgrounds.

The accent colors are used for highlights, badges, icons, and calls to action.

### Global CSS

Global styles live in:

```txt
src/index.css
```

This file includes:

- Tailwind base layers
- root light/dark color settings
- body background
- text rendering improvements
- smooth scrolling
- skip link styles
- reusable `.quiet-panel` card style
- reduced motion support

### Dark Mode

Dark mode uses Tailwind’s class strategy:

```ts
darkMode: 'class'
```

The root HTML element receives either:

```txt
dark
```

or:

```txt
light
```

The toggle logic lives in:

```txt
src/components/ThemeToggle.tsx
```

### Responsive Design

The layout is mobile-first.

Common responsive patterns include:

- one-column layouts on small screens
- two-column layouts on larger screens
- mobile menu under `lg`
- desktop navigation shown at larger breakpoints
- spacing increased on `sm`, `lg`, and `xl` breakpoints

Example:

```tsx
<div className="grid gap-6 lg:grid-cols-2">
```

### Animations

Animations are handled by:

```txt
src/components/AnimatedSection.tsx
```

The animation is simple:

- fade in
- slight upward movement
- run once when content enters the viewport

The component uses `useReducedMotion()` from Framer Motion, so users who prefer reduced motion are respected.

---

## Content Management

Most public-facing content is stored in translation files because the site is multilingual.

### Translatable Content

Edit these files:

```txt
src/i18n/en.ts
src/i18n/ru.ts
src/i18n/uz.ts
```

Use these files to update:

- navigation labels
- hero text
- about text
- research interests subsection
- academic projects
- experience
- education
- skills
- achievements
- certifications
- contact copy
- footer copy
- metadata

### Language-Independent Content

Edit:

```txt
src/data/profile.ts
```

Use this file to update:

- site URL
- resume path
- email
- social links

Current constants include:

```ts
export const siteUrl = 'https://sherzodnorboboyev.github.io/';
export const resumeHref = '/resume.pdf';
export const email = '99sherzod786@gmail.com';
```

### Resume

The resume is stored at:

```txt
public/resume.pdf
```

To update the resume:

1. Replace `public/resume.pdf`.
2. Keep the filename the same.
3. Run the build.
4. Deploy.

If the filename changes, update:

```ts
export const resumeHref = '/resume.pdf';
```

in:

```txt
src/data/profile.ts
```

---

## Adding New Projects

Projects are stored inside each translation file under:

```ts
academicProjects.projects
```

Because projects are visible UI content, each language needs its own translated project entry.

### Step 1: Add the Project Type Shape

Use the existing `Project` shape from:

```txt
src/types/profile.ts
```

A project requires:

```ts
{
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
}
```

### Step 2: Add the Project to English

Edit:

```txt
src/i18n/en.ts
```

Add the new project to:

```ts
academicProjects.projects
```

### Step 3: Add the Project to Russian

Edit:

```txt
src/i18n/ru.ts
```

Add the same project in Russian.

### Step 4: Add the Project to Uzbek

Edit:

```txt
src/i18n/uz.ts
```

Add the same project in Uzbek.

### Step 5: Keep the Wording Honest

For academic or learning projects, use modest language such as:

- “Explored”
- “Implemented”
- “Compared”
- “Practiced”
- “Observed”
- “This helped me understand”

Avoid language that suggests publication, production deployment, or major research contribution unless that is true.

### Step 6: Test

Run:

```bash
npm run check
npm run build
```

---

## Adding New Sections

To add a new website section, follow these steps.

### Step 1: Add Translation Fields

Edit:

```txt
src/i18n/types.ts
```

Add a new section type to the `Translation` type.

Example:

```ts
writingSection: {
  eyebrow: string;
  title: string;
  description: string;
};
```

### Step 2: Add Content to Every Language

Edit:

```txt
src/i18n/en.ts
src/i18n/ru.ts
src/i18n/uz.ts
```

Add the new section content to all three files.

### Step 3: Create the Component

Create a new component in:

```txt
src/components/
```

Example:

```txt
src/components/Writing.tsx
```

Use `useI18n()`:

```tsx
import { useI18n } from '../i18n/I18nProvider';
import { Section } from './Section';

export function Writing() {
  const { t } = useI18n();

  return (
    <Section
      id="writing"
      eyebrow={t.writingSection.eyebrow}
      title={t.writingSection.title}
      description={t.writingSection.description}
    >
      {/* section content */}
    </Section>
  );
}
```

### Step 4: Add the Section to `App.tsx`

Import and render the component in the desired order.

### Step 5: Add Navigation

Add a navigation item in every translation file:

```ts
navigation: [
  { label: 'Writing', href: '#writing' }
]
```

### Step 6: Test

Run:

```bash
npm run check
npm run build
```

---

## Deployment

### Local Development

Install dependencies:

```bash
npm install
```

Start the development server:

```bash
npm run dev
```

The Vite dev server will print a local URL, usually:

```txt
http://localhost:5173/
```

The configured server port is:

```ts
5173
```

### Type Checking

Run:

```bash
npm run check
```

This runs:

```bash
tsc -b --pretty false
```

### Production Build

Run:

```bash
npm run build
```

This runs:

```bash
tsc -b && vite build
```

The production output is generated in:

```txt
dist/
```

### Preview Production Build

Run:

```bash
npm run preview
```

This serves the built output locally.

### GitHub Pages Deployment

The site is designed for the user GitHub Pages root URL:

```txt
https://sherzodnorboboyev.github.io/
```

Because it is deployed at the root of a user site, the Vite base path is:

```ts
base: '/'
```

This is configured in:

```txt
vite.config.ts
```

### GitHub Actions Workflow

Deployment is handled by:

```txt
.github/workflows/deploy.yml
```

The workflow:

1. Runs on push to `main`.
2. Installs dependencies.
3. Builds the Vite app.
4. Uploads the `dist/` folder as a Pages artifact.
5. Deploys it to GitHub Pages.

### GitHub Pages Settings

In the GitHub repository:

1. Go to **Settings**.
2. Open **Pages**.
3. Under **Build and deployment**, select **GitHub Actions**.
4. Push changes to the `main` branch.

---

## Static Rendering and Routing

This project does not use:

- Next.js
- server-side rendering
- backend APIs
- dynamic server routes
- client-side route pages

It is a single static page with anchor navigation.

This helps avoid common GitHub Pages refresh issues because the browser always loads:

```txt
/
```

and section links use hashes such as:

```txt
#skills
```

---

## SEO Notes

The project includes SEO support through several files.

### Static Metadata

Base metadata is defined in:

```txt
index.html
```

This includes:

- page title
- description
- keywords
- canonical URL
- Open Graph tags
- Twitter tags
- theme color
- favicon

### Client-Side Metadata Updates

When the selected language changes, `I18nProvider` updates the title and metadata on the client side.

### Structured Data

Structured data is generated in:

```txt
src/lib/metadata.ts
```

and rendered by:

```txt
src/components/JsonLd.tsx
```

The current structured data includes:

- `Person`
- `WebSite`

### Sitemap and Robots

Static crawler files are in:

```txt
public/sitemap.xml
public/robots.txt
```

---

## Performance Considerations

The project is intentionally simple and static.

Current performance choices include:

- Vite static build
- no backend calls
- no runtime data fetching
- no heavy UI framework
- SVG icons from Lucide
- limited animations
- reduced-motion support
- no route-based code splitting because the site is a single page
- static assets served from `public/`

### Bundle Size

The main bundle depends on:

- React
- React DOM
- Framer Motion
- Lucide Icons

If bundle size becomes a concern later, the first area to review is animation usage and icon imports.

### Images

The project currently uses SVG assets for favicon and Open Graph image. The resume is a PDF file in `public/`.

### Lazy Loading

There is no explicit lazy loading in the current codebase. Since the website is a compact single-page portfolio, this is acceptable. If future sections become heavier, React lazy loading could be added for lower-priority sections.

---

## Accessibility Notes

The project includes several accessibility-conscious details:

- Skip link for keyboard users
- Semantic section structure
- Focus-visible states on interactive elements
- ARIA labels for menu and theme controls
- Escape key handling for the mobile menu
- Reduced motion support
- Native links for navigation and contact
- Responsive layout for mobile and desktop

When adding new components, keep these patterns:

- Use semantic HTML where possible.
- Add `aria-label` only when visible text is not enough.
- Keep focus states visible.
- Do not rely only on color to communicate meaning.
- Respect reduced motion preferences.

---

## Future Improvements

Realistic future improvements include:

### Content Improvements

- Add screenshots or diagrams for academic projects.
- Add final tables and examples for the summarization project.
- Add clearer result summaries for ASR experiments.
- Add a small writing section for technical notes.
- Add a “last updated” note to project cards.

### Technical Improvements

- Add ESLint and Prettier.
- Add automated formatting checks.
- Add basic unit tests for i18n utilities.
- Move repeated section/card patterns into smaller reusable components.
- Add a typed helper for validating supported languages.
- Generate `sitemap.xml` from constants instead of editing it manually.

### UX Improvements

- Improve language selector UI further if needed.
- Add active section highlighting in navigation.
- Add print-friendly resume/contact styling.
- Add better mobile spacing for very small screens.
- Add project filtering if the project list grows.

### SEO Improvements

- Add localized alternate links if separate localized URLs are introduced.
- Generate per-language metadata more formally.
- Add richer structured data for projects if the content becomes more complete.

---

## Maintenance Guide

### Updating Text Content

Most text lives in:

```txt
src/i18n/en.ts
src/i18n/ru.ts
src/i18n/uz.ts
```

When updating content, update all language files.

Then run:

```bash
npm run check
npm run build
```

### Updating Contact Links

Edit:

```txt
src/data/profile.ts
```

Update:

```ts
email
socials
resumeHref
siteUrl
```

### Updating Resume

Replace:

```txt
public/resume.pdf
```

Keep the filename the same unless you also update `resumeHref`.

### Updating Skills

Edit the `skillsSection.groups` array in each translation file.

### Updating Projects

Edit the `academicProjects.projects` array in each translation file.

### Updating Dependencies

Check outdated packages:

```bash
npm outdated
```

Update carefully:

```bash
npm update
```

Then run:

```bash
npm run check
npm run build
npm run preview
```

For major version upgrades, review changelogs before updating.

### Safe Development Workflow

Recommended workflow:

```bash
git checkout -b feature/update-content
npm install
npm run dev
npm run check
npm run build
git status
git add .
git commit -m "Update portfolio content"
git push origin feature/update-content
```

Then merge after checking the preview.

---

## Troubleshooting

### `npm install` fails

Try:

```bash
rm -rf node_modules
npm install
```

If dependency resolution still fails, check your Node.js version.

The project expects:

```txt
Node.js >= 20.19.0
```

### `npm run build` fails with TypeScript errors

Run:

```bash
npm run check
```

Common causes:

- A translation field exists in one language but not another.
- A project object is missing a required property.
- A component imports a file that was renamed or moved.
- A type was changed in `src/types/profile.ts` but translation files were not updated.

### Missing translation content

If part of the website renders incorrectly after adding content, check:

```txt
src/i18n/types.ts
src/i18n/en.ts
src/i18n/ru.ts
src/i18n/uz.ts
```

Every language must match the same `Translation` structure.

### Language does not persist after refresh

Check the browser console for errors.

Also verify that `localStorage` is not disabled.

The language key is:

```txt
portfolio-language
```

You can manually inspect it in the browser DevTools under:

```txt
Application → Local Storage
```

### Dark mode does not persist after refresh

Check the localStorage key:

```txt
theme
```

Valid values are:

```txt
dark
light
```

### GitHub Pages shows an old version

Possible causes:

1. GitHub Actions has not finished yet.
2. Browser cache is showing an older build.
3. GitHub Pages source is not set to GitHub Actions.
4. The workflow failed.

Check:

```txt
GitHub repository → Actions
```

Then check:

```txt
Settings → Pages
```

The source should be GitHub Actions.

### GitHub Actions deployment fails

Open the failed workflow and check the logs.

Common causes:

- `npm install` failed.
- `npm run build` failed.
- `dist/` was not created.
- GitHub Pages permissions are not enabled.

The workflow requires these permissions:

```yaml
permissions:
  contents: read
  pages: write
  id-token: write
```

### Assets do not load on GitHub Pages

Check `vite.config.ts`.

For this repository URL:

```txt
https://sherzodnorboboyev.github.io/
```

the base path should be:

```ts
base: '/'
```

If this project is ever deployed under a repository subpath instead of a user root site, the base path would need to change.

### Resume link does not work

Check that this file exists:

```txt
public/resume.pdf
```

Then check:

```txt
src/data/profile.ts
```

The resume path should be:

```ts
export const resumeHref = '/resume.pdf';
```

### Mobile menu does not close

Check `SiteHeader.tsx`.

The menu should close when:

- the menu button is clicked
- Escape is pressed
- a mobile navigation link is clicked

### Section links do not scroll correctly

Check that the target section has the correct `id`.

Example:

```tsx
<Section id="skills" ...>
```

The navigation link should match:

```ts
{ label: 'Skills', href: '#skills' }
```

---

## Useful Commands

Install dependencies:

```bash
npm install
```

Run development server:

```bash
npm run dev
```

Type check:

```bash
npm run check
```

Build production site:

```bash
npm run build
```

Preview production build:

```bash
npm run preview
```

---

## Repository Notes

Files that should not be committed:

```txt
node_modules/
dist/
.vite/
.env
.env.local
*.tsbuildinfo
```

These should be covered by `.gitignore`.

Files that should be committed:

```txt
src/
public/
index.html
package.json
vite.config.ts
tsconfig.json
tailwind.config.ts
postcss.config.js
.github/workflows/deploy.yml
README.md
```

---

## License

This is a personal portfolio project. If you reuse the structure, replace personal information, resume files, links, and project descriptions with your own content.
