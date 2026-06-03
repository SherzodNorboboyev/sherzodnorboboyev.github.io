import { Menu, X } from 'lucide-react';
import { useEffect, useState } from 'react';

import { resumeHref } from '../data/profile';
import { useI18n } from '../i18n/I18nProvider';
import { cn } from '../lib/utils';
import { ButtonLink } from './ButtonLink';
import { LanguageSwitcher } from './LanguageSwitcher';
import { ThemeToggle } from './ThemeToggle';

export function SiteHeader() {
  const { t } = useI18n();
  const [open, setOpen] = useState(false);

  useEffect(() => {
    if (!open) {
      return undefined;
    }

    const onKeyDown = (event: KeyboardEvent) => {
      if (event.key === 'Escape') {
        setOpen(false);
      }
    };

    window.addEventListener('keydown', onKeyDown);
    return () => window.removeEventListener('keydown', onKeyDown);
  }, [open]);

  return (
    <header className="fixed inset-x-0 top-0 z-50 border-b border-ink-200/70 bg-white/[0.82] backdrop-blur-xl dark:border-white/10 dark:bg-ink-950/[0.72]">
      <nav className="mx-auto flex h-16 max-w-7xl items-center justify-between px-4 sm:px-6 lg:px-8" aria-label="Primary navigation">
        <a
          href="#home"
          className="group inline-flex items-center gap-3 rounded-full outline-none focus-visible:ring-2 focus-visible:ring-accent-blue focus-visible:ring-offset-2 focus-visible:ring-offset-white dark:focus-visible:ring-offset-ink-950"
        >
          <span className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-ink-950 text-sm font-bold leading-none text-white shadow-sm dark:bg-white dark:text-ink-950">
            SN
          </span>
          <span className="hidden text-sm font-semibold tracking-tight text-ink-950 dark:text-white sm:inline">
            {t.profile.name}
          </span>
        </a>

        <div className="hidden items-center gap-1 xl:flex">
          {t.navigation.map((item) => (
            <a
              key={item.href}
              href={item.href}
              className="rounded-full px-3 py-2 text-sm font-medium text-ink-600 transition hover:bg-ink-900/5 hover:text-ink-950 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent-blue dark:text-ink-300 dark:hover:bg-white/[0.08] dark:hover:text-white"
            >
              {item.label}
            </a>
          ))}
        </div>

        <div className="hidden items-center gap-3 lg:flex">
          <LanguageSwitcher />
          <ThemeToggle />
          <ButtonLink href={resumeHref} variant="secondary">
            {t.common.resume}
          </ButtonLink>
          <ButtonLink href="#contact" variant="primary">
            {t.common.contact}
          </ButtonLink>
        </div>

        <div className="flex items-center gap-2 lg:hidden">
          <LanguageSwitcher />
          <ThemeToggle />
          <button
            type="button"
            aria-label={open ? t.common.closeMenu : t.common.openMenu}
            aria-expanded={open}
            onClick={() => setOpen((value) => !value)}
            className="inline-flex size-10 items-center justify-center rounded-full border border-ink-200 bg-white/80 text-ink-800 outline-none transition hover:border-ink-300 focus-visible:ring-2 focus-visible:ring-accent-blue dark:border-white/10 dark:bg-white/[0.06] dark:text-ink-100"
          >
            {open ? <X aria-hidden="true" size={19} /> : <Menu aria-hidden="true" size={19} />}
          </button>
        </div>
      </nav>

      <div
        className={cn(
          'grid overflow-hidden border-t border-ink-200/70 bg-white/[0.96] backdrop-blur-xl transition-all duration-200 dark:border-white/10 dark:bg-ink-950/95 lg:hidden',
          open ? 'grid-rows-[1fr] opacity-100' : 'grid-rows-[0fr] opacity-0'
        )}
      >
        <div className="min-h-0">
          <div className="mx-auto flex max-w-7xl flex-col gap-1 px-4 py-4 sm:px-6">
            {t.navigation.map((item) => (
              <a
                key={item.href}
                href={item.href}
                onClick={() => setOpen(false)}
                className="rounded-2xl px-4 py-3 text-base font-semibold text-ink-700 transition hover:bg-ink-900/5 dark:text-ink-200 dark:hover:bg-white/[0.08]"
              >
                {item.label}
              </a>
            ))}
            <div className="mt-3 grid grid-cols-2 gap-3">
              <ButtonLink href={resumeHref} variant="secondary" onClick={() => setOpen(false)}>
                {t.common.resume}
              </ButtonLink>
              <ButtonLink href="#contact" variant="primary" onClick={() => setOpen(false)}>
                {t.common.contact}
              </ButtonLink>
            </div>
          </div>
        </div>
      </div>
    </header>
  );
}
