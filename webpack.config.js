'use strict';
const Webpack = require('webpack')
const path = require('path')
const ExtractTextPlugin = require('extract-text-webpack-plugin')
const HtmlWebpackPlugin = require('html-webpack-plugin')
let ExtractPlugin = new ExtractTextPlugin({
    filename: 'main.css'
})

module.exports = {
    entry: './src/js/app.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'bundle.js'
    },
    module: {
        rules: [{
                test: /\.js$/,
                use: [{
                    loader: 'babel-loader',
                    options: {
                        presets: ['es2015']
                    }
                }]
            }, {
                test: /\.scss$/,
                use: ExtractTextPlugin.extract({
                    use: ['css-loader', 'sass-loader', 'postcss-loader']
                })
            }, {
                test: /\.html$/,
                use: ['html-loader']
            }, {
                test: /\.(png|jpe?g|gif|svg)$/,
                use: [{
                    loader: 'file-loader',
                    options: {
                        name: '[name].[ext]',
                        outputPath: 'img/',
                        publicPath: 'img/'
                    }
                }]
            }, {
                test: /\.html$/,
                use: [{
                    loader: 'file-loader',
                    options: {
                        name: '[name].[ext]'
                    }
                }],
                exclude: path.resolve(__dirname, './src/index.html')
            }
        ]
    },
    plugins: [
        new Webpack.ProvidePlugin({
            $: 'jquery',
            jQuery: 'jquery'
        }),
        ExtractPlugin,
        new HtmlWebpackPlugin({
            template: 'src/index.html'
        })
    ]
}