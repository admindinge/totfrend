#!/bin/bash


# ვქმნით ყველა საჭირო ფაილს და კატალოგს
mkdir css js images fonts
touch index.html css/style.css js/main.js

# npm-ს ინიციალიზაცია
npm init -y

# ვაყენებთ ყველა საჭირო 
# პაკეტს და ვამატებთ მათ დეპენდენს
npm install gulp gulp-autoprefixer gulp-clean-css gulp-concat gulp-imagemin gulp-rename gulp-sass gulp-uglify browser-sync --save-dev

# ვქმნით საკონფიგურაციო ფაილებს
touch gulpfile.js .gitignore

# ვავსებთ ფაილს .gitignore
echo "node_modules/" >> .gitignore
echo ".DS_Store" >> .gitignore

# ვავსებთ ფაილს gulpfile.js
echo "const gulp = require('gulp');" >> gulpfile.js
echo "const autoprefixer = require('gulp-autoprefixer');" >> gulpfile.js
echo "const cleanCSS = require('gulp-clean-css');" >> gulpfile.js
echo "const concat = require('gulp-concat');" >> gulpfile.js
echo "const imagemin = require('gulp-imagemin');" >> gulpfile.js
echo "const rename = require('gulp-rename');" >> gulpfile.js
# echo "const sass = require('gulp-sass');" >> gulpfile.js
echo "const uglify = require('gulp-uglify');" >> gulpfile.js
echo "const browserSync = require('browser-sync').create();" >> gulpfile.js
echo "" >> gulpfile.js
echo "function style() {" >> gulpfile.js
echo "  return gulp.src('css/*.css')" >> gulpfile.js
echo "    .pipe(concat('style.css'))" >> gulpfile.js
echo "    .pipe(autoprefixer({ cascade: false }))" >> gulpfile.js
echo "    .pipe(cleanCSS({ compatibility: 'ie8' }))" >> gulpfile.js
echo "    .pipe(gulp.dest('css'))" >> gulpfile.js
echo "    .pipe(browserSync.stream());" >> gulpfile.js
echo "}" >> gulpfile.js
echo "" >> gulpfile.js
echo "function script() {" >> gulpfile.js
echo "  return gulp.src('js/*.js')" >> gulpfile.js
echo "    .pipe(concat('main.js'))" >> gulpfile.js
echo "    .pipe(uglify())" >> gulpfile.js
echo "    .pipe(gulp.dest('js'))" >> gulpfile.js
echo "    .pipe(browserSync.stream());" >> gulpfile.js
echo "}" >> gulpfile.js
echo "" >> gulpfile.js
echo "function image() {" >> gulpfile.js
echo "  return gulp.src('images/*')" >> gulpfile.js
echo "    .pipe(imagemin())" >> gulpfile.js
echo "    .pipe(gulp.dest('images'))" >> gulpfile.js
echo "}" >> gulpfile.js
echo "" >> gulpfile.js
echo "function watch() {" >> gulpfile.js
echo "  browserSync.init({" >> gulpfile.js
echo "    server: {" >> gulpfile.js
echo "      baseDir: './'" >> gulpfile.js
echo "    }," >> gulpfile.js
echo "    port: 3000" >> gulpfile.js
