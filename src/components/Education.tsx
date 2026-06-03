import { GraduationCap } from 'lucide-react';

import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Badge } from './Badge';
import { Section } from './Section';

export function Education() {
  const { t } = useI18n();

  return (
    <Section
      id="education"
      eyebrow={t.educationSection.eyebrow}
      title={t.educationSection.title}
      description={t.educationSection.description}
    >
      <div className="grid gap-6 lg:grid-cols-2">
        {t.educationSection.items.map((item, index) => (
          <AnimatedSection key={item.institution} delay={index * 0.06}>
            <article className="quiet-panel h-full rounded-[1.75rem] p-6 sm:p-8">
              <div className="flex items-start gap-4">
                <div className="flex size-11 shrink-0 items-center justify-center rounded-2xl bg-ink-950 text-white dark:bg-white dark:text-ink-950">
                  <GraduationCap aria-hidden="true" size={22} />
                </div>
                <div>
                  <h3 className="text-2xl font-semibold tracking-tight text-ink-950 dark:text-white">{item.institution}</h3>
                  <p className="mt-2 font-semibold text-accent-blue">{item.degree}</p>
                  <p className="mt-1 text-sm text-ink-500 dark:text-ink-400">
                    {item.period} · {item.location}
                  </p>
                </div>
              </div>

              <p className="mt-6 text-base leading-8 text-ink-600 dark:text-ink-300">{item.summary}</p>

              {item.grade ? (
                <div className="mt-5 inline-flex rounded-full border border-ink-200 bg-white/55 px-4 py-2 text-sm font-semibold text-ink-700 dark:border-white/10 dark:bg-white/[0.04] dark:text-ink-200">
                  {item.grade}
                </div>
              ) : null}

              {item.coursework ? (
                <div className="mt-7">
                  <h4 className="text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                    {t.educationSection.courseworkLabel}
                  </h4>
                  <div className="mt-4 flex flex-wrap gap-2">
                    {item.coursework.map((course, courseIndex) => (
                      <Badge key={course} tone={courseIndex < 2 ? 'teal' : 'neutral'}>
                        {course}
                      </Badge>
                    ))}
                  </div>
                </div>
              ) : null}
            </article>
          </AnimatedSection>
        ))}
      </div>
    </Section>
  );
}
