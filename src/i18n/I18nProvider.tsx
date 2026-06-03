import { createContext, useContext, useEffect, useMemo, useState } from 'react';
import type { ReactNode } from 'react';

import { translations } from './index';
import type { Language, Translation } from './types';

type I18nContextValue = {
  language: Language;
  setLanguage: (language: Language) => void;
  t: Translation;
};

const defaultLanguage: Language = 'en';
const storageKey = 'portfolio-language';
const I18nContext = createContext<I18nContextValue | null>(null);

function getInitialLanguage(): Language {
  if (typeof window === 'undefined') {
    return defaultLanguage;
  }

  const saved = window.localStorage.getItem(storageKey);
  return saved === 'ru' || saved === 'uz' || saved === 'en' ? saved : defaultLanguage;
}

function updateMeta(name: string, content: string) {
  let tag = document.querySelector<HTMLMetaElement>(`meta[name="${name}"]`);

  if (!tag) {
    tag = document.createElement('meta');
    tag.name = name;
    document.head.appendChild(tag);
  }

  tag.content = content;
}

function updateOg(property: string, content: string) {
  let tag = document.querySelector<HTMLMetaElement>(`meta[property="${property}"]`);

  if (!tag) {
    tag = document.createElement('meta');
    tag.setAttribute('property', property);
    document.head.appendChild(tag);
  }

  tag.content = content;
}

export function I18nProvider({ children }: { children: ReactNode }) {
  const [language, setLanguageState] = useState<Language>(getInitialLanguage);
  const t = translations[language];

  const setLanguage = (nextLanguage: Language) => {
    setLanguageState(nextLanguage);
  };

  useEffect(() => {
    document.documentElement.lang = language;
    document.title = t.metadata.title;
    updateMeta('description', t.metadata.description);
    updateMeta('keywords', t.metadata.keywords);
    updateOg('og:title', t.metadata.title);
    updateOg('og:description', t.metadata.description);
    updateMeta('twitter:title', t.metadata.title);
    updateMeta('twitter:description', t.metadata.description);
    window.localStorage.setItem(storageKey, language);
  }, [language, t.metadata.description, t.metadata.keywords, t.metadata.title]);

  const value = useMemo<I18nContextValue>(() => ({ language, setLanguage, t }), [language, t]);

  return <I18nContext.Provider value={value}>{children}</I18nContext.Provider>;
}

export function useI18n() {
  const context = useContext(I18nContext);

  if (!context) {
    throw new Error('useI18n must be used inside I18nProvider.');
  }

  return context;
}
