import { socials } from '../data/profile';
import { useI18n } from '../i18n/I18nProvider';

export function SiteFooter() {
  const { t } = useI18n();

  return (
    <footer className="border-t border-ink-200/70 bg-white/70 backdrop-blur-xl dark:border-white/10 dark:bg-ink-950/70">
      <div className="mx-auto flex max-w-7xl flex-col gap-5 px-4 py-8 sm:px-6 md:flex-row md:items-center md:justify-between lg:px-8">
        <div>
          <p className="text-sm font-semibold text-ink-950 dark:text-white">{t.profile.name}</p>
          <p className="mt-1 text-sm text-ink-500 dark:text-ink-400">{t.footer.tagline}</p>
        </div>

        <div className="flex flex-wrap gap-3">
          {socials.map((item) => (
            <a
              key={item.href}
              href={item.href}
              target={item.label === 'Email' ? undefined : '_blank'}
              rel={item.label === 'Email' ? undefined : 'noreferrer'}
              className="rounded-full px-3 py-2 text-sm font-semibold text-ink-600 transition hover:bg-ink-900/5 hover:text-ink-950 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent-blue dark:text-ink-300 dark:hover:bg-white/[0.08] dark:hover:text-white"
            >
              {t.contactSection.socialLabels[item.label as keyof typeof t.contactSection.socialLabels]}
            </a>
          ))}
        </div>
      </div>
    </footer>
  );
}
