import { CheckCircle2 } from 'lucide-react';

import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Section } from './Section';

export function Certifications() {
  const { t } = useI18n();

  return (
    <Section
      id="certifications"
      eyebrow={t.certificationsSection.eyebrow}
      title={t.certificationsSection.title}
      description={t.certificationsSection.description}
      className="pt-8 lg:pt-12"
    >
      <div className="grid gap-4 sm:grid-cols-3">
        {t.certificationsSection.items.map((certification, index) => (
          <AnimatedSection key={`${certification.issuer}-${certification.title}`} delay={index * 0.04}>
            <article className="quiet-panel h-full rounded-[1.75rem] p-6">
              <CheckCircle2 aria-hidden="true" size={22} className="text-accent-teal" />
              <h3 className="mt-5 text-lg font-semibold text-ink-950 dark:text-white">{certification.title}</h3>
              <p className="mt-2 text-sm font-medium uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                {certification.issuer}
              </p>
            </article>
          </AnimatedSection>
        ))}
      </div>
    </Section>
  );
}
