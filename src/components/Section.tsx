import type { ReactNode } from 'react';

import { cn } from '../lib/utils';
import { AnimatedSection } from './AnimatedSection';

type SectionProps = {
  id: string;
  eyebrow?: string;
  title: string;
  description?: string;
  children: ReactNode;
  className?: string;
};

export function Section({ id, eyebrow, title, description, children, className }: SectionProps) {
  return (
    <section id={id} className={cn('mx-auto w-full max-w-7xl px-4 py-16 sm:px-6 lg:px-8 lg:py-24', className)}>
      <AnimatedSection>
        <div className="mb-10 max-w-3xl lg:mb-14">
          {eyebrow ? (
            <p className="mb-3 text-xs font-bold uppercase tracking-[0.28em] text-accent-blue">{eyebrow}</p>
          ) : null}
          <h2 className="text-3xl font-semibold tracking-tight text-ink-950 dark:text-white sm:text-4xl lg:text-5xl">
            {title}
          </h2>
          {description ? (
            <p className="mt-5 text-base leading-8 text-ink-600 dark:text-ink-300 sm:text-lg">{description}</p>
          ) : null}
        </div>
      </AnimatedSection>
      {children}
    </section>
  );
}
