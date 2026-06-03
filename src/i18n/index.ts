import { en } from './en';
import { ru } from './ru';
import type { Language, Translation } from './types';
import { uz } from './uz';

export const languages: Array<{ code: Language; label: string; shortLabel: string }> = [
  { code: 'en', label: 'English', shortLabel: 'EN' },
  { code: 'ru', label: 'Русский', shortLabel: 'RU' },
  { code: 'uz', label: "O'zbekcha", shortLabel: 'UZ' }
];

export const translations: Record<Language, Translation> = {
  en,
  ru,
  uz
};

export type { Language, Translation } from './types';