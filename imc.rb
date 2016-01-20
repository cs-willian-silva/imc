#!/usr/bin/env ruby 
#####################################################################
# encoding: utf-8
# vim: ft=ruby 
# Program: imc 
# Description: Calcule IMC
#
# Author: Willian Martins <willian.martins@msn.com>
#
#####################################################################

puts "\n\n\nEste programa fara o calculo do seu IMC. \n"
puts "\nInforme sua altura em centimetros (Ex: 1,80 --> 180)"
altura = gets.chomp.to_f
altura = (altura * altura) / 10000

puts "\nInforme seu peso"
peso = gets.chomp.to_f

imc =  peso / altura
puts "\nSeu IMC é #{imc.round(2)} \n \n"

puts "Voce esta muito abaixo do peso" if imc < 17
puts "Voce esta abaixo do peso" if (imc > 17) && (imc < 18.49)
puts "Voce esta no peso ideal" if (imc >18.50) && (imc < 24.99)
puts "Voce esta acima do peso" if (imc > 25) && (imc < 29.99)
puts "Voce esta com obesidade I" if (imc > 30) && (imc < 34.99)
puts "Voce esta com obesidade II (Severa)" if (imc > 35) && (imc < 39.99)
puts "Voce esta com obesidade III (Morbida)" if imc >40
puts "\n \n \n "
