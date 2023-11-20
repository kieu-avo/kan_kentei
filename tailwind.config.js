module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['ui-sans-serif', 'system-ui'],
        'yomogi': ['Yomogi', 'cursive'],
      },
      colors: {
        color: {
          400: '#2E97A7',
        },
      },
    },
  },
  plugins: [require("daisyui")]
}

