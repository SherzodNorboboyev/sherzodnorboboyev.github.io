import { ChevronDown, Languages } from 'lucide-react';
import { useId } from 'react';

import { languages, type Language } from '../i18n';
import { useI18n } from '../i18n/I18nProvider';

export function LanguageSwitcher() {
  const { language, setLanguage, t } = useI18n();
  const selectId = useId();

  return (
    <div className="relative inline-flex items-center">
      <label htmlFor={selectId} className="sr-only">
        {t.common.language}
      </label>

      <Languages
        aria-hidden="true"
        size={16}
        className="pointer-events-none absolute left-3 text-ink-500 dark:text-ink-400"
      />

      <select
        id={selectId}
        value={language}
        aria-label={t.common.language}
        onChange={(event) => setLanguage(event.target.value as Language)}
        className="h-10 appearance-none rounded-full border border-ink-200 bg-white/85 py-0 pl-9 pr-9 text-sm font-semibold text-ink-800 shadow-sm outline-none transition hover:border-ink-300 hover:bg-white focus:border-accent-blue focus:ring-2 focus:ring-accent-blue/35 dark:border-white/10 dark:bg-white/[0.06] dark:text-ink-100 dark:hover:border-white/20 dark:hover:bg-white/[0.09]"
      >
        {languages.map((item) => (
          <option key={item.code} value={item.code}>
            {item.label}
          </option>
        ))}
      </select>

      <ChevronDown
        aria-hidden="true"
        size={16}
        className="pointer-events-none absolute right-3 text-ink-500 dark:text-ink-400"
      />
    </div>
  );
}