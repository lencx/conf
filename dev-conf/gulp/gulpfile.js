const gulp = require("gulp")
const pump = require('pump')

const sass = require("gulp-sass")
const autoprefixer = require('gulp-autoprefixer')
const cleanCSS = require('gulp-clean-css')

const pug = require('gulp-pug')
// const imgmin = require('gulp-imagemin')
const babel = require('gulp-babel')
const uglify = require('gulp-uglify')
const proxyMiddleware = require('http-proxy-middleware')
const connect = require('gulp-connect')

const hostname = {
    ip: 'http://www.example.com',
    local: 'localhost'
}
const proxy = proxyMiddleware('/api/', {
    target: hostname.ip,
    changeOrigin: true
})

gulp.task('sass', () => {
    return pump([
        gulp.src(['./src/sass/**/*.scss']),
        sass(),
        autoprefixer({
            browsers: ['last 5 versions']
        }),
        cleanCSS({compatibility: 'ie8'}),
        gulp.dest('./dist/css'),
        connect.reload()
    ])
})

gulp.task('views', () => {
    return pump([
        gulp.src(['./src/**/*.pug', '!./src/**/_*.pug']),
        pug(),
        gulp.dest('./dist'),
        connect.reload()
    ])
})

gulp.task('connect', () => {
    connect.server({
        root: './dist',
        livereload: true,
        host: hostname.local,
        port: 8089,
        middleware: (connect, opt) => [proxy]
    })
})

gulp.task('js', () => {
    return pump([
        gulp.src('./src/js/**/*.js'),
        babel({presets: ['env']}),
        uglify(),
        gulp.dest('./dist/js'),
        connect.reload()
    ])
})

gulp.task('copy', () => {
    return pump([
        gulp.src('./static/**/*', {base: '.'}),
        gulp.dest('./dist')
    ])
})

gulp.task('watch', () => {
    gulp.watch('./src/sass/**/*.scss', ['sass'])
    gulp.watch('./src/js/**/*.js', ['js'])
    gulp.watch('./src/**/*.pug', ['views'])
    gulp.watch('./static/**/*', ['copy'])
})

gulp.task('default', ['views', 'connect', 'sass', 'js', 'watch', 'copy'])
