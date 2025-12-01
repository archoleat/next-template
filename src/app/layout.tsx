import './styles/global.css';

import type { PropsWithChildren } from 'react';

const RootLayout = async (properties: PropsWithChildren) => {
  const { children } = properties;

  return (
    <html lang='en'>
      <body>{children}</body>
    </html>
  );
};

export { metadata } from '@/config/metadata';
export default RootLayout;
