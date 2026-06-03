import { About } from './components/About';
import { AcademicProjects } from './components/AcademicProjects';
import { Achievements } from './components/Achievements';
import { Certifications } from './components/Certifications';
import { Contact } from './components/Contact';
import { Education } from './components/Education';
import { Experience } from './components/Experience';
import { Hero } from './components/Hero';
import { JsonLd } from './components/JsonLd';
import { SiteFooter } from './components/SiteFooter';
import { SiteHeader } from './components/SiteHeader';
import { Skills } from './components/Skills';
import { I18nProvider, useI18n } from './i18n/I18nProvider';

function PortfolioShell() {
  const { t } = useI18n();

  return (
    <div className="min-h-screen text-ink-950 dark:text-white">
      <JsonLd />
      <a className="skip-link" href="#main-content">
        {t.common.skipToContent}
      </a>
      <SiteHeader />
      <main id="main-content">
        <Hero />
        <About />
        <AcademicProjects />
        <Experience />
        <Education />
        <Skills />
        <Achievements />
        <Certifications />
        <Contact />
      </main>
      <SiteFooter />
    </div>
  );
}

export default function App() {
  return (
    <I18nProvider>
      <PortfolioShell />
    </I18nProvider>
  );
}
