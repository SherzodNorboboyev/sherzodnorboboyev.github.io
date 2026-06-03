import { ArrowUpRight, Check, Lightbulb, Microscope, Wrench } from 'lucide-react';

import type { Project } from '../types/profile';
import { AnimatedSection } from './AnimatedSection';
import { Badge } from './Badge';

const toneByIndex = ['blue', 'violet', 'teal', 'amber'] as const;

type ProjectCardProps = {
  project: Project;
  index: number;
};

export function ProjectCard({ project, index }: ProjectCardProps) {
  return (
    <AnimatedSection delay={Math.min(index * 0.05, 0.14)}>
      <article className="quiet-panel overflow-hidden rounded-[1.75rem]">
        <div className="grid gap-0 lg:grid-cols-[0.9fr_1.1fr]">
          <div className="border-b border-ink-200/70 p-6 dark:border-white/10 sm:p-8 lg:border-b-0 lg:border-r">
            <div className="flex flex-wrap gap-2">
              <Badge tone={toneByIndex[index % toneByIndex.length]}>{project.label}</Badge>
              <Badge tone="neutral">{project.status}</Badge>
            </div>

            <h3 className="mt-5 text-2xl font-semibold tracking-tight text-ink-950 dark:text-white sm:text-3xl">
              {project.title}
            </h3>

            <p className="mt-4 text-base leading-8 text-ink-600 dark:text-ink-300">{project.summary}</p>

            <div className="mt-6 rounded-2xl border border-ink-200 bg-white/55 p-5 dark:border-white/10 dark:bg-white/[0.04]">
              <div className="flex items-center gap-2 text-sm font-semibold text-ink-950 dark:text-white">
                <Microscope aria-hidden="true" size={17} />
                {project.contextTitle}
              </div>
              <p className="mt-3 text-sm leading-7 text-ink-600 dark:text-ink-300">{project.context}</p>
            </div>

            <div className="mt-5 rounded-2xl border border-ink-200 bg-white/55 p-5 dark:border-white/10 dark:bg-white/[0.04]">
              <div className="flex items-center gap-2 text-sm font-semibold text-ink-950 dark:text-white">
                <Lightbulb aria-hidden="true" size={17} />
                {project.exploredTitle}
              </div>
              <p className="mt-3 text-sm leading-7 text-ink-600 dark:text-ink-300">{project.explored}</p>
            </div>
          </div>

          <div className="p-6 sm:p-8">
            <div className="grid gap-7 xl:grid-cols-2">
              <div>
                <h4 className="flex items-center gap-2 text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                  <Wrench aria-hidden="true" size={16} />
                  {project.methodsTitle}
                </h4>

                <ul className="mt-4 space-y-3">
                  {project.methods.map((method) => (
                    <li key={method} className="flex gap-3 text-sm leading-6 text-ink-700 dark:text-ink-300">
                      <Check aria-hidden="true" size={16} className="mt-1 shrink-0 text-accent-teal" />
                      <span>{method}</span>
                    </li>
                  ))}
                </ul>
              </div>

              <div>
                <h4 className="text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                  {project.takeawaysTitle}
                </h4>

                <ul className="mt-4 space-y-3">
                  {project.keyTakeaways.map((takeaway) => (
                    <li key={takeaway} className="flex gap-3 text-sm leading-6 text-ink-700 dark:text-ink-300">
                      <Check aria-hidden="true" size={16} className="mt-1 shrink-0 text-accent-blue" />
                      <span>{takeaway}</span>
                    </li>
                  ))}
                </ul>
              </div>
            </div>

            <div className="mt-7 grid gap-6 xl:grid-cols-2">
              <div>
                <h4 className="text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                  {project.technologiesTitle}
                </h4>
                <div className="mt-4 flex flex-wrap gap-2">
                  {project.technologies.map((technology) => (
                    <span
                      key={technology}
                      className="rounded-full border border-ink-200 bg-white/70 px-3 py-1.5 text-xs font-semibold text-ink-700 dark:border-white/10 dark:bg-white/[0.06] dark:text-ink-200"
                    >
                      {technology}
                    </span>
                  ))}
                </div>
              </div>

              <div>
                <h4 className="text-sm font-bold uppercase tracking-[0.18em] text-ink-500 dark:text-ink-400">
                  {project.improvementsTitle}
                </h4>
                <ul className="mt-4 space-y-3">
                  {project.improvements.map((improvement) => (
                    <li key={improvement} className="text-sm leading-6 text-ink-700 dark:text-ink-300">
                      {improvement}
                    </li>
                  ))}
                </ul>
              </div>
            </div>

            {project.links && project.links.length > 0 ? (
              <div className="mt-7 flex flex-wrap gap-3">
                {project.links.map((link) => (
                  <a
                    key={link.href}
                    href={link.href}
                    target="_blank"
                    rel="noreferrer"
                    className="group inline-flex items-center gap-2 rounded-full border border-ink-300/70 bg-white/75 px-4 py-2.5 text-sm font-semibold text-ink-900 outline-none transition hover:-translate-y-0.5 hover:border-ink-400 focus-visible:ring-2 focus-visible:ring-accent-blue dark:border-white/10 dark:bg-white/[0.06] dark:text-white dark:hover:bg-white/[0.1]"
                  >
                    {link.label}
                    <ArrowUpRight aria-hidden="true" size={16} className="transition group-hover:translate-x-0.5 group-hover:-translate-y-0.5" />
                  </a>
                ))}
              </div>
            ) : null}
          </div>
        </div>
      </article>
    </AnimatedSection>
  );
}
