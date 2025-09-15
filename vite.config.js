import glsl from "vite-plugin-glsl";
import { defineConfig } from "vite";

export default defineConfig({
  plugins: [glsl()],
  build: {
    rollupOptions: {
      output: {
        manualChunks: undefined,
      },
    },
  },
  esbuild: {
    drop: ['console', 'debugger'],
  },
  // Disable linting to prevent Vercel deployment failures
  define: {
    'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV || 'production'),
  },
});
