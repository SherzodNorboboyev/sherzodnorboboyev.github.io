import type { AnchorHTMLAttributes, ReactNode } from 'react';

import { cn } from '../lib/utils';

type ButtonVariant = 'primary' | 'secondary' | 'ghost';

type ButtonLinkProps = AnchorHTMLAttributes<HTMLAnchorElement> & {
  children: ReactNode;
  variant?: ButtonVariant;
};

const variants: Record<ButtonVariant, string> = {
  primary:
    'bg-ink-950 text-white shadow-sm hover:-translate-y-0.5 hover:bg-ink-800 dark:bg-white dark:text-ink-950 dark:hover:bg-ink-200',
  secondary:
    'border border-ink-300/80 bg-white/75 text-ink-900 hover:-translate-y-0.5 hover:border-ink-400 dark:border-white/[0.15] dark:bg-white/[0.06] dark:text-white dark:hover:bg-white/[0.1]',
  ghost:
    'text-ink-700 hover:bg-ink-900/5 dark:text-ink-200 dark:hover:bg-white/[0.08]'
};

export function ButtonLink({ children, className, variant = 'secondary', ...props }: ButtonLinkProps) {
  return (
    <a
      className={cn(
        'inline-flex min-h-11 items-center justify-center gap-2 rounded-full px-5 py-2.5 text-sm font-semibold outline-none transition duration-200 focus-visible:ring-2 focus-visible:ring-accent-blue focus-visible:ring-offset-2 focus-visible:ring-offset-white dark:focus-visible:ring-offset-ink-950',
        variants[variant],
        className
      )}
      {...props}
    >
      {children}
    </a>
  );
}
