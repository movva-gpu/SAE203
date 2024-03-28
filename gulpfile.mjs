import fs from 'node:fs';
import uglifyEs from 'uglify-es';
import gulp from 'gulp';
import header from 'gulp-header';

import composer from 'gulp-uglify/composer.js';
import babel from 'gulp-babel';
import phpMinifier from '@cedx/php-minifier';

import postcss from 'gulp-postcss';
import postcssNested from 'postcss-nested';

import autoprefixer from 'autoprefixer';
import cssnano from 'cssnano';

import * as child_process from 'node:child_process';
import * as config from './conf/conf.json' assert { type: 'json' };

const { series, parallel, src, dest, task } = gulp;

const exec = child_process.exec;

const conf = config.default;

const uglify = composer(uglifyEs, console);

task('cleanBuild', cb => {
    try {
        fs.accessSync(import.meta.dirname + '/build');
        fs.rmSync(import.meta.dirname + '/build/', {
            recursive: true,
            force: true
        });

        cb();
    } catch (e) {
        cb(e);
    }
});

task('minifyCSS', () => {
    const plugins = [autoprefixer(), postcssNested(), cssnano()];
    return src(['assets/css/*.css', '!*.min.css'])
        .pipe(postcss(plugins))
        .pipe(header('/* minified */\n'))
        .pipe(dest('build/assets/css'));
});

task('minifyPHP', () => {
    return src(['**/*.php', '**/*.inc', '**/*.module', '!node_modules/**/*', '!vendor/**/*'])
        .pipe(phpMinifier({ mode: 'safe', binary: 'C:\\php-8.3.2\\php.exe', silent: false }))
        .pipe(dest('build/'));
});

task('minifyJS', () => {
    return src(['assets/js/*.js', '!*.min.js', '!node_modules/**/*'])
        .pipe(
            babel({
                presets: ['@babel/env']
            })
        )
        .pipe(
            uglify({
                toplevel: true,
                compress: {
                    global_defs: {
                        '@console.log': 'alert'
                    },
                    passes: 2
                },
                output: {
                    beautify: false,
                    preamble: '/* uglified */'
                }
            })
        )
        .pipe(dest('build/assets/js'));
});

task('copyImages', () => {
    return src('assets/img/**/*').pipe(dest('build/assets/img/'));
});

task('copyFavicon', () => {
    return src('favicon.ico').pipe(dest('build/'));
});
task('copyHtaccess', () => {
    return src('**/.htaccess').pipe(dest('build/'));
});

task('upload', cb => {
    const command = 'pscp -r -pw ' + conf.passwd + ' build/* ' + conf.dest;
    exec(command, (error, stdout, stderr) => {
        console.log(stdout);
        console.log(stderr);
        cb(error);
    });
});

task(
    'default',
    series(
        'cleanBuild',
        parallel('minifyCSS', 'minifyJS', 'minifyPHP', 'copyImages', 'copyFavicon', 'copyHtaccess'),
        'upload'
    )
);
