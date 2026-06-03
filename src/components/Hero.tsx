import { ArrowDown, ArrowUpRight, BookOpen, Brain, Download, Mail, Server } from 'lucide-react';

import { resumeHref, socials } from '../data/profile';
import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { Badge } from './Badge';
import { ButtonLink } from './ButtonLink';
import { StatCard } from './StatCard';

const smallIcons = [Brain, Server, BookOpen, Brain];

export function Hero() {
  const { t } = useI18n();
  const emailLink = socials.find((item) => item.label === 'Email')?.href ?? `mailto:${t.profile.email}`;

  return (
    <section id="home" className="relative mx-auto w-full max-w-7xl px-4 pb-14 pt-28 sm:px-6 lg:px-8 lg:pb-20 lg:pt-32">
      <div className="grid items-center gap-10 lg:grid-cols-[1.05fr_0.95fr] lg:gap-12">
        <AnimatedSection>
          <div className="max-w-4xl">
            <div className="mb-6 flex flex-wrap gap-2">
              {t.hero.eyebrowBadges.map((badge, index) => (
                <Badge key={badge} tone={index === 0 ? 'blue' : index === 1 ? 'teal' : 'neutral'}>
                  {badge}
                </Badge>
              ))}
            </div>

            <h1 className="max-w-4xl text-balance text-4xl font-semibold tracking-[-0.045em] text-ink-950 dark:text-white sm:text-6xl lg:text-[4.65rem] lg:leading-[0.95]">
              {t.profile.headline}
            </h1>

            <p className="mt-6 max-w-3xl text-lg leading-8 text-ink-600 dark:text-ink-300 sm:text-xl sm:leading-9">
              {t.hero.intro}
            </p>

            <p className="mt-4 max-w-3xl text-base leading-8 text-ink-600 dark:text-ink-400">{t.hero.note}</p>

            <div className="mt-8 flex flex-col gap-3 sm:flex-row sm:flex-wrap">
              <ButtonLink href="#academic-projects" variant="primary">
                {t.common.viewProjects}
                <ArrowDown aria-hidden="true" size={17} />
              </ButtonLink>

              <ButtonLink href={resumeHref} variant="secondary">
                {t.common.downloadResume}
                <Download aria-hidden="true" size={17} />
              </ButtonLink>

              <ButtonLink href={emailLink} variant="ghost">
                {t.common.emailMe}
                <Mail aria-hidden="true" size={17} />
              </ButtonLink>
            </div>

            <div className="mt-8">
              <p className="mb-3 text-xs font-bold uppercase tracking-[0.22em] text-ink-500 dark:text-ink-400">
                {t.hero.focusLabel}
              </p>
              <div className="flex flex-wrap gap-2" aria-label={t.hero.focusLabel}>
                {t.about.focusAreas.map((area) => (
                  <span
                    key={area}
                    className="rounded-full border border-ink-200 bg-white/70 px-3 py-1.5 text-xs font-medium text-ink-600 dark:border-white/10 dark:bg-white/[0.05] dark:text-ink-300"
                  >
                    {area}
                  </span>
                ))}
              </div>
            </div>
          </div>
        </AnimatedSection>

        <AnimatedSection delay={0.1}>
          <div className="relative">
            <div className="quiet-panel rounded-[1.75rem] p-5 sm:p-6 lg:p-7">
              <div className="mb-6 flex items-start justify-between gap-4">
                <div>
                  <p className="text-xs font-bold uppercase tracking-[0.22em] text-accent-blue">{t.profile.role}</p>
                  <h2 className="mt-2 text-2xl font-semibold tracking-tight text-ink-950 dark:text-white">
                    {t.hero.currentDirectionTitle}
                  </h2>
                </div>
              </div>

              <p className="mb-6 text-sm leading-7 text-ink-600 dark:text-ink-300">{t.hero.currentDirectionText}</p>

              <div className="grid gap-3 sm:grid-cols-2">
                {t.hero.metrics.map((metric) => (
                  <StatCard key={`${metric.value}-${metric.label}`} {...metric} />
                ))}
              </div>

              <div className="mt-5 grid grid-cols-2 gap-3">
                {t.hero.orbitItems.map((item, index) => {
                  const Icon = smallIcons[index % smallIcons.length];

                  return (
                    <div key={item} className="rounded-2xl border border-ink-200 bg-white/55 p-3 dark:border-white/10 dark:bg-white/[0.04]">
                      <Icon aria-hidden="true" size={17} className="text-accent-blue" />
                      <p className="mt-2 text-sm font-semibold text-ink-900 dark:text-white">{item}</p>
                    </div>
                  );
                })}
              </div>
            </div>

            <a
              href="https://github.com/SherzodNorboboyev"
              className="group mt-4 flex items-center justify-between rounded-3xl border border-ink-200 bg-white/80 p-5 text-sm font-semibold text-ink-800 shadow-sm outline-none transition hover:-translate-y-0.5 hover:border-ink-300 focus-visible:ring-2 focus-visible:ring-accent-blue dark:border-white/10 dark:bg-white/[0.05] dark:text-ink-100 dark:hover:bg-white/[0.08]"
              target="_blank"
              rel="noreferrer"
            >
              <span>{t.hero.githubCta}</span>
              <ArrowUpRight aria-hidden="true" size={18} className="transition group-hover:translate-x-0.5 group-hover:-translate-y-0.5" />
            </a>
          </div>
        </AnimatedSection>
      </div>
    </section>
  );
}
