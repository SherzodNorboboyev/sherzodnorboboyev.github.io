import { siteUrl, socials } from '../data/profile';
import { en } from '../i18n/en';

export const metadata = {
  title: en.metadata.title,
  description: en.metadata.description,
  url: siteUrl,
  image: `${siteUrl}og-image.svg`
};

export const personStructuredData = {
  '@context': 'https://schema.org',
  '@type': 'Person',
  name: en.profile.name,
  url: siteUrl,
  email: `mailto:${en.profile.email}`,
  jobTitle: en.profile.role,
  address: {
    '@type': 'PostalAddress',
    addressLocality: 'Abu Dhabi',
    addressCountry: 'United Arab Emirates'
  },
  alumniOf: [
    {
      '@type': 'CollegeOrUniversity',
      name: 'Mohamed bin Zayed University of Artificial Intelligence'
    },
    {
      '@type': 'CollegeOrUniversity',
      name: 'Tashkent State University of Economics'
    }
  ],
  knowsAbout: en.about.focusAreas,
  sameAs: socials.filter((item) => item.label !== 'Email').map((item) => item.href)
};

export const websiteStructuredData = {
  '@context': 'https://schema.org',
  '@type': 'WebSite',
  name: `${en.profile.name} Portfolio`,
  url: siteUrl,
  description: metadata.description,
  inLanguage: ['en', 'ru', 'uz']
};
