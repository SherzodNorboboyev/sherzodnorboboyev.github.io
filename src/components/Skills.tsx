import { Code2 } from 'lucide-react';

import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Section } from './Section';

export function Skills() {
  const { t } = useI18n();

  return (
    <Section id="skills" eyebrow={t.skillsSection.eyebrow} title={t.skillsSection.title} description={t.skillsSection.description}>
      <div className="grid gap-6 lg:grid-cols-2">
        {t.skillsSection.groups.map((group, index) => (
          <AnimatedSection key={group.title} delay={index * 0.04}>
            <article className="quiet-panel h-full rounded-[1.75rem] p-6 sm:p-8">
              <div className="flex items-start gap-4">
                <div className="flex size-11 shrink-0 items-center justify-center rounded-2xl bg-ink-950 text-white dark:bg-white dark:text-ink-950">
                  <Code2 aria-hidden="true" size={21} />
                </div>
                <div>
                  <h3 className="text-2xl font-semibold tracking-tight text-ink-950 dark:text-white">{group.title}</h3>
                  <p className="mt-3 text-sm leading-7 text-ink-600 dark:text-ink-300">{group.description}</p>
                </div>
              </div>

              <div className="mt-6 flex flex-wrap gap-2">
                {group.skills.map((skill) => (
                  <span
                    key={skill}
                    className="rounded-full border border-ink-200 bg-white/70 px-3 py-1.5 text-sm font-semibold text-ink-700 dark:border-white/10 dark:bg-white/[0.06] dark:text-ink-200"
                  >
                    {skill}
                  </span>
                ))}
              </div>
            </article>
          </AnimatedSection>
        ))}
      </div>
    </Section>
  );
}
