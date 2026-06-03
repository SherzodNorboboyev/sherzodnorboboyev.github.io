import { personStructuredData, websiteStructuredData } from '../lib/metadata';

export function JsonLd() {
  const graph = {
    '@context': 'https://schema.org',
    '@graph': [personStructuredData, websiteStructuredData]
  };

  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(graph) }} />;
}
