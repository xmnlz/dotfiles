return {
  cmd = { 'tailwindcss-language-server', '--stdio' },
  settings = {
    tailwindCSS = {
      classFunctions = {
        'cn',
        'tw',
        'clsx',
        'tw\\.[a-z-]+',
      },
    },
  },
}
