import { useI18n } from '../i18n/I18nProvider';
import { ProjectCard } from './ProjectCard';
import { Section } from './Section';

export function AcademicProjects() {
  const { t } = useI18n();

  return (
    <Section
      id="academic-projects"
      eyebrow={t.academicProjects.eyebrow}
      title={t.academicProjects.title}
      description={t.academicProjects.description}
    >
      <div className="space-y-6">
        {t.academicProjects.projects.map((project, index) => (
          <ProjectCard key={project.title} project={project} index={index} />
        ))}
      </div>
    </Section>
  );
}
