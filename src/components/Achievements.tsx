import { Award } from 'lucide-react';

import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Section } from './Section';

export function Achievements() {
  const { t } = useI18n();

  return (
    <Section
      id="achievements"
      eyebrow={t.achievementsSection.eyebrow}
      title={t.achievementsSection.title}
      description={t.achievementsSection.description}
    >
      <div className="grid gap-6 md:grid-cols-3">
        {t.achievementsSection.items.map((achievement, index) => (
          <AnimatedSection key={achievement.title} delay={index * 0.04}>
            <article className="quiet-panel h-full rounded-[1.75rem] p-6 sm:p-8">
              <div className="flex size-11 items-center justify-center rounded-2xl bg-ink-950 text-white dark:bg-white dark:text-ink-950">
                <Award aria-hidden="true" size={21} />
              </div>
              <h3 className="mt-6 text-xl font-semibold tracking-tight text-ink-950 dark:text-white">{achievement.title}</h3>
              <p className="mt-2 text-sm font-semibold text-accent-blue">{achievement.subtitle}</p>
              <p className="mt-4 text-sm leading-7 text-ink-600 dark:text-ink-300">{achievement.detail}</p>
            </article>
          </AnimatedSection>
        ))}
      </div>
    </Section>
  );
}
