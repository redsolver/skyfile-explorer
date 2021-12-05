const folderIcons = <String, dynamic>{
  "name": 'specific',
  "defaultIcon": {"name": 'folder'},
  "rootFolder": {"name": 'folder-root'},
  "icons": [
    {
      "name": 'folder-src',
      "folderNames": ['src', 'source', 'sources', 'code']
    },
    {
      "name": 'folder-dist',
      "folderNames": ['dist', 'out', 'build', 'release', 'bin'],
    },
    {
      "name": 'folder-css',
      "folderNames": ['css', 'stylesheet', 'stylesheets', 'style', 'styles'],
    },
    {
      "name": 'folder-sass',
      "folderNames": ['sass', '_sass', 'scss', '_scss']
    },
    {
      "name": 'folder-images',
      "folderNames": [
        'images',
        'image',
        'img',
        'icons',
        'icon',
        'ico',
        'screenshot',
        'screenshots',
        'picture',
        'pictures',
      ],
    },
    {
      "name": 'folder-scripts',
      "folderNames": ['script', 'scripts']
    },
    {
      "name": 'folder-node',
      "folderNames": ['node_modules']
    },
    {
      "name": 'folder-javascript',
      "folderNames": ['js', 'javascript', 'javascripts'],
    },
    {
      "name": 'folder-json',
      "folderNames": ['json']
    },
    {
      "name": 'folder-font',
      "folderNames": ['font', 'fonts']
    },
    {
      "name": 'folder-bower',
      "folderNames": ['bower_components']
    },
    {
      "name": 'folder-test',
      "folderNames": [
        'test',
        'tests',
        'testing',
        '__tests__',
        '__snapshots__',
        '__mocks__',
        '__test__',
        'spec',
        'specs',
      ],
    },
    {
      "name": 'folder-jinja',
      "folderNames": ['jinja', 'jinja2', 'j2'],
      "light": true,
    },
    {
      "name": 'folder-markdown',
      "folderNames": ['markdown', 'md']
    },
    {
      "name": 'folder-php',
      "folderNames": ['php']
    },
    {
      "name": 'folder-phpmailer',
      "folderNames": ['phpmailer']
    },
    {
      "name": 'folder-sublime',
      "folderNames": ['sublime']
    },
    {
      "name": 'folder-docs',
      "folderNames": [
        'doc',
        'docs',
        'document',
        'documents',
        'documentation',
        'post',
        'posts',
        'article',
        'articles',
      ],
    },
    {
      "name": 'folder-git',
      "folderNames": [
        '.git',
        'githooks',
        '.githooks',
        'submodules',
        '.submodules',
      ],
    },
    {
      "name": 'folder-github',
      "folderNames": ['.github']
    },
    {
      "name": 'folder-gitlab',
      "folderNames": ['.gitlab']
    },
    {
      "name": 'folder-vscode',
      "folderNames": ['.vscode', '.vscode-test']
    },
    {
      "name": 'folder-views',
      "folderNames": [
        'view',
        'views',
        'screen',
        'screens',
        'page',
        'pages',
        'html',
      ],
    },
    {
      "name": 'folder-vue',
      "folderNames": ['vue']
    },
    {
      "name": 'folder-vuepress',
      "folderNames": ['.vuepress']
    },
    {
      "name": 'folder-expo',
      "folderNames": ['.expo', '.expo-shared']
    },
    {
      "name": 'folder-config',
      "folderNames": [
        'config',
        'configs',
        'configuration',
        'configurations',
        'setting',
        '.setting',
        'settings',
        '.settings',
        'META-INF',
      ],
    },
    {
      "name": 'folder-i18n',
      "folderNames": [
        'i18n',
        'internationalization',
        'lang',
        'language',
        'languages',
        'locale',
        'locales',
        'l10n',
        'localization',
        'translation',
        'translate',
        'translations',
        '.tx',
      ],
    },
    {
      "name": 'folder-components',
      "folderNames": ['components', 'widget', 'widgets'],
    },
    {
      "name": 'folder-aurelia',
      "folderNames": ['aurelia_project']
    },
    {
      "name": 'folder-resource',
      "folderNames": [
        'resource',
        'resources',
        'res',
        'asset',
        'assets',
        'static',
        'report',
        'reports',
      ],
    },
    {
      "name": 'folder-lib',
      "folderNames": [
        'lib',
        'libs',
        'library',
        'libraries',
        'vendor',
        'vendors',
        'third-party',
      ],
    },
    {
      "name": 'folder-theme',
      "folderNames": [
        'themes',
        'theme',
        'color',
        'colors',
        'design',
        'designs',
      ],
    },
    {
      "name": 'folder-webpack',
      "folderNames": ['webpack', '.webpack']
    },
    {
      "name": 'folder-global',
      "folderNames": ['global']
    },
    {
      "name": 'folder-public',
      "folderNames": ['public', 'www', 'wwwroot', 'web', 'website'],
    },
    {
      "name": 'folder-include',
      "folderNames": ['include', 'includes', '_includes', 'inc'],
    },
    {
      "name": 'folder-docker',
      "folderNames": ['docker', 'dockerfiles', '.docker'],
    },
    {
      "name": 'folder-database',
      "folderNames": ['db', 'database', 'databases', 'sql', 'data', '_data'],
    },
    {
      "name": 'folder-log',
      "folderNames": ['log', 'logs']
    },
    {
      "name": 'folder-temp',
      "folderNames": [
        'temp',
        '.temp',
        'tmp',
        '.tmp',
        'cached',
        'cache',
        '.cache',
      ],
    },
    {
      "name": 'folder-aws',
      "folderNames": ['aws', '.aws']
    },
    {
      "name": 'folder-audio',
      "folderNames": ['audio', 'audios', 'music', 'musics', 'sound', 'sounds'],
    },
    {
      "name": 'folder-video',
      "folderNames": ['video', 'videos', 'movie', 'movies'],
    },
    {
      "name": 'folder-kubernetes',
      "folderNames": ['kubernetes', 'k8s']
    },
    {
      "name": 'folder-import',
      "folderNames": ['import', 'imports', 'imported']
    },
    {
      "name": 'folder-export',
      "folderNames": ['export', 'exports', 'exported']
    },
    {
      "name": 'folder-wakatime',
      "folderNames": ['wakatime']
    },
    {
      "name": 'folder-circleci',
      "folderNames": ['.circleci']
    },
    {
      "name": 'folder-wordpress',
      "folderNames": ['wp-content']
    },
    {
      "name": 'folder-gradle',
      "folderNames": ['gradle', '.gradle']
    },
    {
      "name": 'folder-coverage',
      "folderNames": [
        'coverage',
        '.nyc-output',
        '.nyc_output',
        'e2e',
        'it',
        'integration-test',
        'integration-tests',
      ],
    },
    {
      "name": 'folder-class',
      "folderNames": [
        'class',
        'classes',
        'model',
        'models',
        'schemes',
        'schema',
      ],
    },
    {
      "name": 'folder-other',
      "folderNames": [
        'other',
        'others',
        'misc',
        'miscellaneous',
        'extra',
        'extras',
      ],
    },
    {
      "name": 'folder-typescript',
      "folderNames": ['typescript', 'ts', 'typings', '@types', 'types'],
    },
    {
      "name": 'folder-graphql',
      "folderNames": ['graphql', 'gql']
    },
    {
      "name": 'folder-routes',
      "folderNames": ['routes', 'router', 'routers']
    },
    {
      "name": 'folder-ci',
      "folderNames": ['.ci', 'ci']
    },
    {
      "name": 'folder-benchmark',
      "folderNames": [
        'benchmark',
        'benchmarks',
        'performance',
        'measure',
        'measures',
        'measurement',
      ],
    },
    {
      "name": 'folder-messages',
      "folderNames": [
        'messages',
        'messaging',
        'forum',
        'chat',
        'chats',
        'conversation',
        'conversations',
      ],
    },
    {
      "name": 'folder-less',
      "folderNames": ['less']
    },
    {
      "name": 'folder-gulp',
      "folderNames": ['gulp'],
    },
    {
      "name": 'folder-python',
      "folderNames": ['python', '__pycache__', '.pytest_cache'],
    },
    {
      "name": 'folder-debug',
      "folderNames": ['debug', 'debugging']
    },
    {
      "name": 'folder-fastlane',
      "folderNames": ['fastlane']
    },
    {
      "name": 'folder-plugin',
      "folderNames": [
        'plugin',
        'plugins',
        '_plugins',
        'extension',
        'extensions',
        'addon',
        'addons',
      ],
    },
    {
      "name": 'folder-middleware',
      "folderNames": ['middleware', 'middlewares']
    },
    {
      "name": 'folder-controller',
      "folderNames": [
        'controller',
        'controllers',
        'service',
        'services',
        'provider',
        'providers',
      ],
    },
    {
      "name": 'folder-ansible',
      "folderNames": ['ansible']
    },
    {
      "name": 'folder-server',
      "folderNames": ['server', 'servers', 'backend']
    },
    {
      "name": 'folder-client',
      "folderNames": ['client', 'clients', 'frontend', 'pwa'],
    },
    {
      "name": 'folder-tasks',
      "folderNames": ['tasks', 'tickets']
    },
    {
      "name": 'folder-android',
      "folderNames": ['android']
    },
    {
      "name": 'folder-ios',
      "folderNames": ['ios']
    },
    {
      "name": 'folder-upload',
      "folderNames": ['uploads', 'upload']
    },
    {
      "name": 'folder-download',
      "folderNames": ['downloads', 'download']
    },
    {
      "name": 'folder-tools',
      "folderNames": ['tools']
    },
    {
      "name": 'folder-helper',
      "folderNames": ['helpers', 'helper']
    },
    {
      "name": 'folder-serverless',
      "folderNames": ['.serverless', 'serverless']
    },
    {
      "name": 'folder-api',
      "folderNames": ['api', 'apis']
    },
    {
      "name": 'folder-app',
      "folderNames": ['app', 'apps']
    },
    {
      "name": 'folder-apollo',
      "folderNames": [
        'apollo',
        'apollo-client',
        'apollo-cache',
        'apollo-config',
      ],
    },
    {
      "name": 'folder-archive',
      "folderNames": [
        'archive',
        'archives',
        'archival',
        'backup',
        'backups',
        'back-up',
        'back-ups',
      ],
    },
    {
      "name": 'folder-batch',
      "folderNames": ['batch', 'batchs', 'batches']
    },
    {
      "name": 'folder-cluster',
      "folderNames": ['cluster', 'clusters']
    },
    {
      "name": 'folder-command',
      "folderNames": ['command', 'commands', 'cli', 'clis'],
    },
    {
      "name": 'folder-constant',
      "folderNames": ['constant', 'constants']
    },
    {
      "name": 'folder-container',
      "folderNames": ['container', 'containers', '.devcontainer'],
    },
    {
      "name": 'folder-content',
      "folderNames": ['content', 'contents']
    },
    {
      "name": 'folder-core',
      "folderNames": ['core']
    },
    {
      "name": 'folder-delta',
      "folderNames": ['delta', 'deltas', 'changes']
    },
    {
      "name": 'folder-dump',
      "folderNames": ['dump', 'dumps']
    },
    {
      "name": 'folder-examples',
      "folderNames": [
        'example',
        'examples',
        'sample',
        'samples',
        'demo',
        'demos',
      ],
    },
    {
      "name": 'folder-environment',
      "folderNames": [
        '.env',
        '.environment',
        'env',
        'envs',
        'environment',
        'environments',
        '.venv',
      ],
    },
    {
      "name": 'folder-functions',
      "folderNames": [
        'function',
        'functions',
        'lambda',
        'lambdas',
        'logic',
        'math',
        'calc',
        'calculation',
        'calculations',
      ],
    },
    {
      "name": 'folder-generator',
      "folderNames": [
        'generator',
        'generators',
        'generated',
        'cfn-gen',
        'gen',
        'gens',
        'auto',
      ],
    },
    {
      "name": 'folder-hook',
      "folderNames": ['hook', 'hooks', 'trigger', 'triggers'],
    },
    {
      "name": 'folder-job',
      "folderNames": ['job', 'jobs']
    },
    {
      "name": 'folder-keys',
      "folderNames": ['keys', 'key', 'token', 'tokens']
    },
    {
      "name": 'folder-layout',
      "folderNames": ['layout', 'layouts']
    },
    {
      "name": 'folder-mail',
      "folderNames": ['mail', 'mails', 'email', 'emails', 'smtp'],
    },
    {
      "name": 'folder-mappings',
      "folderNames": ['mappings', 'mapping']
    },
    {
      "name": 'folder-meta',
      "folderNames": ['meta']
    },
    {
      "name": 'folder-packages',
      "folderNames": ['package', 'packages']
    },
    {
      "name": 'folder-shared',
      "folderNames": ['shared', 'common']
    },
    {
      "name": 'folder-stack',
      "folderNames": ['stack', 'stacks']
    },
    {
      "name": 'folder-template',
      "folderNames": ['template', 'templates']
    },
    {
      "name": 'folder-utils',
      "folderNames": ['util', 'utils', 'utility', 'utilities'],
    },
    {
      "name": 'folder-private',
      "folderNames": ['private', '.private']
    },
    {
      "name": 'folder-error',
      "folderNames": ['error', 'errors', 'err']
    },
    {
      "name": 'folder-event',
      "folderNames": ['event', 'events']
    },
    {
      "name": 'folder-secure',
      "folderNames": [
        'auth',
        'authentication',
        'secure',
        'security',
        'cert',
        'certs',
        'certificate',
        'certificates',
        'ssl',
      ],
    },
    {
      "name": 'folder-custom',
      "folderNames": ['custom', 'customs']
    },
    {
      "name": 'folder-mock',
      "folderNames": [
        'mock',
        'mocks',
        'draft',
        'drafts',
        'concept',
        'concepts',
        'sketch',
        'sketches',
      ],
    },
    {
      "name": 'folder-syntax',
      "folderNames": ['syntax', 'syntaxes', 'spellcheck'],
    },
    {
      "name": 'folder-vm',
      "folderNames": ['vm', 'vms']
    },
    {
      "name": 'folder-stylus',
      "folderNames": ['stylus']
    },
    {
      "name": 'folder-flow',
      "folderNames": ['flow-typed']
    },
    {
      "name": 'folder-rules',
      "folderNames": [
        'rule',
        'rules',
        'validation',
        'validations',
        'validator',
        'validators',
      ],
    },
    {
      "name": 'folder-review',
      "folderNames": ['review', 'reviews', 'revisal', 'revisals', 'reviewed'],
    },
    {
      "name": 'folder-animation',
      "folderNames": ['animation', 'animations', 'animated'],
    },
    {
      "name": 'folder-guard',
      "folderNames": ['guard', 'guards']
    },
    {
      "name": 'folder-prisma',
      "folderNames": ['prisma']
    },
    {
      "name": 'folder-pipe',
      "folderNames": ['pipe', 'pipes']
    },
    {
      "name": 'folder-svg',
      "folderNames": ['svg', 'svgs']
    },
    {
      "name": 'folder-terraform',
      "folderNames": ['terraform', '.terraform']
    },
    {
      "name": 'folder-mobile',
      "folderNames": ['mobile', 'mobiles', 'portable', 'portability'],
    },
    {
      "name": 'folder-stencil',
      "folderNames": ['.stencil']
    },
    {
      "name": 'folder-firebase',
      "folderNames": ['.firebase']
    },
    {
      "name": 'folder-svelte',
      "folderNames": ['svelte']
    },
    {
      "name": 'folder-update',
      "folderNames": ['update', 'updates', 'upgrade', 'upgrades'],
    },
    {
      "name": 'folder-intellij',
      "folderNames": ['.idea'],
      "light": true
    },
    {
      "name": 'folder-azure-pipelines',
      "folderNames": ['.azure-pipelines', '.azure-pipelines-ci'],
    },
    {
      "name": 'folder-mjml',
      "folderNames": ['mjml']
    },
    {
      "name": 'folder-admin',
      "folderNames": ['admin']
    },
    {
      "name": 'folder-scala',
      "folderNames": ['scala']
    },
    {
      "name": 'folder-connection',
      "folderNames": ['connection', 'connections']
    },
    {
      "name": 'folder-quasar',
      "folderNames": ['.quasar']
    },
    {
      "name": 'folder-cobol',
      "folderNames": ['cobol']
    },
    {
      "name": 'folder-husky',
      "folderNames": ['husky', '.husky']
    },
    {
      "name": 'folder-storybook',
      "folderNames": ['.storybook', 'stories', '__stories__'],
    },
    {
      "name": 'folder-base',
      "folderNames": ['base', '.base']
    },
    {
      "name": 'folder-cart',
      "folderNames": ['cart', 'shopping-cart', 'shopping', 'shop'],
    },
    {
      "name": 'folder-home',
      "folderNames": ['home', '.home', 'start', '.start'],
    },
    {
      "name": 'folder-project',
      "folderNames": ['project', 'projects', '.project', '.projects'],
    },
    {
      "name": 'folder-contract',
      "folderNames": [
        'pact',
        'pacts',
        'contract',
        '.contract',
        'contracts',
        'contract-testing',
        'contract-test',
        'contract-tests',
      ],
    },
  ],
};
