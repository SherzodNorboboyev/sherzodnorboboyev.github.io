import { ArrowUpRight, Github, Linkedin, Mail, MapPin } from 'lucide-react';

import { resumeHref, socials } from '../data/profile';
import { useI18n } from '../i18n/I18nProvider';
import { AnimatedSection } from './AnimatedSection';
import { ButtonLink } from './ButtonLink';
import { Section } from './Section';

const iconMap = {
  Email: Mail,
  LinkedIn: Linkedin,
  GitHub: Github
};

export function Contact() {
  const { t } = useI18n();

  return (
    <Section
      id="contact"
      eyebrow={t.contactSection.eyebrow}
      title={t.contactSection.title}
      description={t.contactSection.description}
      className="pb-24"
    >
      <AnimatedSection>
        <div className="quiet-panel overflow-hidden rounded-[1.75rem]">
          <div className="grid gap-0 lg:grid-cols-[1.05fr_0.95fr]">
            <div className="border-b border-ink-200/70 p-6 dark:border-white/10 sm:p-8 lg:border-b-0 lg:border-r">
              <div className="inline-flex items-center gap-2 rounded-full border border-accent-teal/30 bg-accent-teal/10 px-4 py-2 text-sm font-semibold text-teal-700 dark:text-teal-200">
                <span className="size-2 rounded-full bg-accent-teal" aria-hidden="true" />
                {t.contactSection.availabilityBadge}
              </div>

              <h3 className="mt-6 text-3xl font-semibold tracking-tight text-ink-950 dark:text-white">
                {t.contactSection.cardTitle}
              </h3>

              <p className="mt-4 max-w-2xl text-base leading-8 text-ink-600 dark:text-ink-300">{t.contactSection.cardText}</p>

              <div className="mt-8 flex flex-col gap-3 sm:flex-row sm:flex-wrap">
                <ButtonLink href={`mailto:${t.profile.email}`} variant="primary">
                  {t.common.emailMe}
                  <Mail aria-hidden="true" size={17} />
                </ButtonLink>

                <ButtonLink href={resumeHref} variant="secondary">
                  {t.common.viewResume}
                  <ArrowUpRight aria-hidden="true" size={17} />
                </ButtonLink>
              </div>
            </div>

            <div className="p-6 sm:p-8">
              <div className="rounded-2xl border border-ink-200 bg-white/55 p-5 dark:border-white/10 dark:bg-white/[0.04]">
                <div className="flex items-start gap-3">
                  <MapPin aria-hidden="true" size={19} className="mt-1 text-accent-blue" />
                  <div>
                    <p className="text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                      {t.contactSection.locationLabel}
                    </p>
                    <p className="mt-2 font-semibold text-ink-950 dark:text-white">{t.profile.location}</p>
                  </div>
                </div>
              </div>

              <div className="mt-4 space-y-3">
                {socials.map((item) => {
                  const Icon = iconMap[item.label as keyof typeof iconMap];
                  const label = t.contactSection.socialLabels[item.label as keyof typeof t.contactSection.socialLabels];
                  const value = item.label === 'Email' ? t.profile.email : item.href.replace('https://', '');

                  return (
                    <a
                      key={item.href}
                      href={item.href}
                      target={item.label === 'Email' ? undefined : '_blank'}
                      rel={item.label === 'Email' ? undefined : 'noreferrer'}
                      className="group flex items-center justify-between rounded-2xl border border-ink-200 bg-white/55 p-5 outline-none transition hover:-translate-y-0.5 hover:border-ink-300 focus-visible:ring-2 focus-visible:ring-accent-blue dark:border-white/10 dark:bg-white/[0.04] dark:hover:bg-white/[0.08]"
                    >
                      <span className="flex items-center gap-3">
                        <Icon aria-hidden="true" size={19} className="text-accent-blue" />
                        <span>
                          <span className="block text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                            {label}
                          </span>
                          <span className="mt-1 block text-sm font-semibold text-ink-950 dark:text-white">{value}</span>
                        </span>
                      </span>

                      <ArrowUpRight aria-hidden="true" size={18} className="text-ink-500 transition group-hover:translate-x-0.5 group-hover:-translate-y-0.5 dark:text-ink-400" />
                    </a>
                  );
                })}
              </div>
            </div>
          </div>
        </div>
      </AnimatedSection>
    </Section>
  );
}
