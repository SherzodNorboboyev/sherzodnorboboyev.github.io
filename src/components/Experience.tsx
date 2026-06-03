import { BriefcaseBusiness, CheckCircle2 } from 'lucide-react';

import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Badge } from './Badge';
import { Section } from './Section';

export function Experience() {
  const { t } = useI18n();

  return (
    <Section
      id="experience"
      eyebrow={t.experienceSection.eyebrow}
      title={t.experienceSection.title}
      description={t.experienceSection.description}
    >
      <div className="grid gap-6 lg:grid-cols-[1.15fr_0.85fr]">
        <AnimatedSection>
          {t.experienceSection.items.map((item) => (
            <article key={`${item.company}-${item.role}`} className="quiet-panel rounded-[1.75rem] p-6 sm:p-8">
              <div className="flex flex-col gap-5 sm:flex-row sm:items-start sm:justify-between">
                <div className="flex items-start gap-4">
                  <div className="flex size-11 shrink-0 items-center justify-center rounded-2xl bg-ink-950 text-white dark:bg-white dark:text-ink-950">
                    <BriefcaseBusiness aria-hidden="true" size={21} />
                  </div>
                  <div>
                    <h3 className="text-2xl font-semibold tracking-tight text-ink-950 dark:text-white">{item.role}</h3>
                    <p className="mt-1 font-semibold text-accent-blue">{item.company}</p>
                    <p className="mt-1 text-sm text-ink-500 dark:text-ink-400">{item.location}</p>
                  </div>
                </div>
                <Badge tone="neutral">{item.period}</Badge>
              </div>

              <p className="mt-6 text-base leading-8 text-ink-600 dark:text-ink-300">{item.summary}</p>

              <ul className="mt-7 space-y-4">
                {item.bullets.map((bullet) => (
                  <li key={bullet} className="flex gap-3 text-sm leading-7 text-ink-700 dark:text-ink-300">
                    <CheckCircle2 aria-hidden="true" size={18} className="mt-1 shrink-0 text-accent-teal" />
                    <span>{bullet}</span>
                  </li>
                ))}
              </ul>
            </article>
          ))}
        </AnimatedSection>

        <AnimatedSection delay={0.08}>
          <aside className="quiet-panel rounded-[1.75rem] p-6 sm:p-8">
            <h3 className="text-xl font-semibold tracking-tight text-ink-950 dark:text-white">
              {t.experienceSection.transferableTitle}
            </h3>
            <div className="mt-5 grid gap-4">
              {t.experienceSection.transferableSignals.map((item) => (
                <div key={item.label} className="flex items-start gap-3 rounded-2xl border border-ink-200 bg-white/55 p-4 dark:border-white/10 dark:bg-white/[0.04]">
                  <CheckCircle2 aria-hidden="true" size={18} className="mt-1 shrink-0 text-accent-teal" />
                  <div>
                    <p className="font-semibold text-ink-950 dark:text-white">{item.label}</p>
                    <p className="mt-1 text-sm leading-6 text-ink-600 dark:text-ink-300">{item.detail}</p>
                  </div>
                </div>
              ))}
            </div>
          </aside>
        </AnimatedSection>
      </div>
    </Section>
  );
}
