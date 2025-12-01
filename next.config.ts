import { defineConfig } from '@archoleat/next-define-config';

export default defineConfig({
  output: 'standalone',
  typescript: {
    ignoreBuildErrors: true,
  },
  images: {
    formats: ['image/webp'],
    remotePatterns: [
      {
        hostname: '',
        pathname: '/**',
        protocol: 'https',
      },
    ],
  },
});
