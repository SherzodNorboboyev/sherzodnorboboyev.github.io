import { cn } from '../lib/utils';

type StatCardProps = {
  value: string;
  label: string;
  detail: string;
  className?: string;
};

export function StatCard({ value, label, detail, className }: StatCardProps) {
  return (
    <div className={cn('rounded-2xl border border-ink-200 bg-white/55 p-4 dark:border-white/10 dark:bg-white/[0.04]', className)}>
      <p className="text-2xl font-semibold tracking-tight text-ink-950 dark:text-white">{value}</p>
      <p className="mt-1 text-sm font-semibold text-ink-800 dark:text-ink-100">{label}</p>
      <p className="mt-3 text-sm leading-6 text-ink-600 dark:text-ink-400">{detail}</p>
    </div>
  );
}
