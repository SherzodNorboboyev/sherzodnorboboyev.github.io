import { Moon, Sun } from 'lucide-react';
import { useEffect, useState } from 'react';

import { useI18n } from '../i18n/I18nProvider';

type Theme = 'dark' | 'light';

function getInitialTheme(): Theme {
  if (typeof window === 'undefined') {
    return 'dark';
  }

  const savedTheme = window.localStorage.getItem('theme');

  if (savedTheme === 'dark' || savedTheme === 'light') {
    return savedTheme;
  }

  return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
}

export function ThemeToggle() {
  const { t } = useI18n();
  const [theme, setTheme] = useState<Theme>(getInitialTheme);

  useEffect(() => {
    const root = document.documentElement;
    root.classList.toggle('dark', theme === 'dark');
    root.classList.toggle('light', theme === 'light');
    window.localStorage.setItem('theme', theme);
  }, [theme]);

  const label = theme === 'dark' ? t.common.switchToLight : t.common.switchToDark;

  return (
    <button
      type="button"
      aria-label={label}
      title={label}
      onClick={() => setTheme((current) => (current === 'dark' ? 'light' : 'dark'))}
      className="inline-flex size-10 items-center justify-center rounded-full border border-ink-200 bg-white/80 text-ink-800 shadow-sm outline-none transition hover:-translate-y-0.5 hover:border-ink-300 focus-visible:ring-2 focus-visible:ring-accent-blue focus-visible:ring-offset-2 focus-visible:ring-offset-white dark:border-white/10 dark:bg-white/[0.06] dark:text-ink-100 dark:hover:bg-white/[0.1] dark:focus-visible:ring-offset-ink-950"
    >
      {theme === 'dark' ? <Sun aria-hidden="true" size={18} /> : <Moon aria-hidden="true" size={18} />}
    </button>
  );
}
