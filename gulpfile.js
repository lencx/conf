'use strict';

// 初始化变量应该分别声明，具体规则可参考jsline
// http://eslint.org/
const gulp = require('gulp'),
    $ = require('gulp-load-plugins')({
        // DEBUG: true,
        pattern: '*',
        rename: {
            'gulp-sass-glob': 'sassGlob',
            'postcss-cssnext': 'cssnext',
            'rucksack-css': 'rucksack'
            // 'postcss-minify-font-values': 'minfont'
        }
    }),
    pump = require('pump'),
    browserSync = require('browser-sync'),
    reload = browserSync.reload,
    nodemon = require('gulp-nodemon'),
    sass = require('gulp-sass'),

    BROWSER_SYNC_RELOAD_DELAY = 500,
    PROXY = 'http://localhost:4000',
    PORT = 333

const paths = {
    dev: './src/',
    assets: './assets/',
    pubPath: './public/',

    // dev
    sass: './src/**/*.scss',
    js: './src/js/**/*.js',
    img: './src/img/**/*',

    // build
    css: './public/dist/css',
    jsMin: './public/dist/js',
    imgMin: './public/dist/img'
    // TODO
    // ...
}

function logError(error) {
    console.log(error.toString())
    this.emit('end')
}


// srever
gulp.task('nodemon', (cb) => {
    let called = false
    return nodemon({
        script: 'entry.js'
    }).on('start', () => {
        if(!called) cb()
        called = true
    }).on('reStart', () => {
        setTimeout(() => {
            reload({stream: false})
        }, BROWSER_SYNC_RELOAD_DELAY)
    })
})

gulp.task('browser-sync', ['nodemon'], () => {
    browserSync({
        proxy: PROXY,
        port: PORT
    })
})

// sass => css
gulp.task('sass', () => {
    let processors = [
            // lost
            $.lost,
            // rucksack-css
            $.rucksack,
            // postcss-cssnext
            $.cssnext({browsers: ['last 2 version']})

            // ...
        ],
        // nested | expanded | compact | compressed
        style = {outputStyle: 'expanded'}

    return gulp.src(paths.sass)
        // gulp-sourcemaps
        .pipe($.sourcemaps.init())
        // gulp-sass-glob
        .pipe($.sassGlob())
        .pipe(sass(style).on('error'), sass.logError)
        .pipe($.postcss(processors))
        .pipe($.sourcemaps.wirte('.map'))
        .pipe(gulp.dest(paths.css))
        .pipe(reload({stream: true}))
})

// js => minJs
gulp.task('js-min', () => {
    return pump([
        gulp.src(paths.js),
        $.sourcempas.init(),
        // gulp-concat 
        $concat('main.min.js'),
        // gulp-uglify 
        $.uglify(),
        $.sourcemaps.write('.map'),
        gulp.dest(paths.jsMin)
    ])
})

// img => minImg
gulp.task('img-min', () => {
    return pump([
        gulp.src(paths.img),
        $imagemin(),
        gulp.dest(paths.imgMin)
    ])
})

// watch file change
gulp.task('watch', () => {
    gulp.watch(paths.sass, ['sass'])
    gulp.watch(paths.js, ['js-min', 'nodemon'])
    gulp.watch(patchs.img, ['img-min'])
})

gulp.task('default', ['sass', 'js-min', 'img-min', 'watch', 'browser-sync'])