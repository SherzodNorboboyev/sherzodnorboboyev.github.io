import type { HTMLAttributes } from 'react';

import { cn } from '../lib/utils';

type BadgeTone = 'blue' | 'violet' | 'teal' | 'amber' | 'neutral';

type BadgeProps = HTMLAttributes<HTMLSpanElement> & {
  tone?: BadgeTone;
};

const tones: Record<BadgeTone, string> = {
  blue: 'border-blue-400/30 bg-blue-400/10 text-blue-700 dark:text-blue-200',
  violet: 'border-violet-400/30 bg-violet-400/10 text-violet-700 dark:text-violet-200',
  teal: 'border-teal-400/30 bg-teal-400/10 text-teal-700 dark:text-teal-200',
  amber: 'border-amber-400/30 bg-amber-400/10 text-amber-700 dark:text-amber-200',
  neutral: 'border-ink-300/60 bg-white/70 text-ink-700 dark:border-white/10 dark:bg-white/5 dark:text-ink-200'
};

export function Badge({ tone = 'neutral', className, ...props }: BadgeProps) {
  return (
    <span
      className={cn(
        'inline-flex items-center rounded-full border px-3 py-1 text-xs font-semibold leading-none tracking-wide',
        tones[tone],
        className
      )}
      {...props}
    />
  );
}
