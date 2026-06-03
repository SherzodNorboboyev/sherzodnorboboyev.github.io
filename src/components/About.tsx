import { ArrowUpRight, CheckCircle2, Compass, ListChecks } from 'lucide-react';

import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Badge } from './Badge';
import { Section } from './Section';

export function About() {
  const { t } = useI18n();

  return (
    <Section id="about" eyebrow={t.about.eyebrow} title={t.about.title} description={t.about.description}>
      <div className="grid gap-6 lg:grid-cols-[1.08fr_0.92fr]">
        <AnimatedSection>
          <div className="quiet-panel rounded-[1.75rem] p-6 sm:p-8">
            <div className="flex items-start gap-4">
              <div className="flex size-11 shrink-0 items-center justify-center rounded-2xl bg-ink-950 text-white dark:bg-white dark:text-ink-950">
                <Compass aria-hidden="true" size={21} />
              </div>

              <div>
                <h3 className="text-2xl font-semibold tracking-tight text-ink-950 dark:text-white">{t.about.cardTitle}</h3>
                <div className="mt-4 space-y-4 text-base leading-8 text-ink-600 dark:text-ink-300">
                  {t.about.paragraphs.map((paragraph) => (
                    <p key={paragraph}>{paragraph}</p>
                  ))}
                </div>
              </div>
            </div>

            <div className="mt-8 grid gap-3 sm:grid-cols-2">
              {t.about.principles.map((principle) => (
                <div key={principle} className="rounded-2xl border border-ink-200 bg-white/55 p-4 dark:border-white/10 dark:bg-white/[0.04]">
                  <CheckCircle2 aria-hidden="true" className="text-accent-teal" size={18} />
                  <p className="mt-3 text-sm leading-6 text-ink-700 dark:text-ink-300">{principle}</p>
                </div>
              ))}
            </div>
          </div>
        </AnimatedSection>

        <AnimatedSection delay={0.08}>
          <aside className="quiet-panel h-full rounded-[1.75rem] p-6 sm:p-8">
            <div className="flex items-center gap-3">
              <div className="flex size-11 items-center justify-center rounded-2xl border border-ink-200 bg-white text-ink-900 dark:border-white/10 dark:bg-white/[0.06] dark:text-white">
                <ListChecks aria-hidden="true" size={20} />
              </div>

              <div>
                <p className="text-xs font-bold uppercase tracking-[0.22em] text-accent-blue">{t.about.interestsEyebrow}</p>
                <h3 className="mt-1 text-xl font-semibold text-ink-950 dark:text-white">{t.about.interestsTitle}</h3>
              </div>
            </div>

            <p className="mt-5 text-sm leading-7 text-ink-600 dark:text-ink-300">{t.about.interestsText}</p>

            <div className="mt-6 flex flex-wrap gap-2">
              {t.about.focusAreas.map((area, index) => (
                <Badge key={area} tone={index % 3 === 0 ? 'blue' : index % 3 === 1 ? 'violet' : 'teal'}>
                  {area}
                </Badge>
              ))}
            </div>

            <a
              href="#academic-projects"
              className="group mt-8 inline-flex items-center gap-2 rounded-full text-sm font-semibold text-ink-950 outline-none transition hover:text-accent-blue focus-visible:ring-2 focus-visible:ring-accent-blue dark:text-white"
            >
              {t.about.interestsCta}
              <ArrowUpRight aria-hidden="true" size={17} className="transition group-hover:translate-x-0.5 group-hover:-translate-y-0.5" />
            </a>
          </aside>
        </AnimatedSection>
      </div>
    </Section>
  );
}
