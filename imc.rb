#!/usr/bin/env ruby 
#####################################################################
# encoding: utf-8
# vim: ft=ruby 
# Program: imc 
# Description: Calculo do IMC
# Author: Willian Martins <willian.martins@msn.com>
#####################################################################


def calc_imc(a, p)
	aqd = (a * a) / 10000
	imc = p / aqd
	r_imc(imc)
end 

def r_imc(i)
	print "\nSeu IMC é #{i.round(2)} - "
	puts "Voce esta muito abaixo do peso" if i < 17
	puts "Voce esta abaixo do peso" if (i > 17) && (i < 18.49)
	puts "Voce esta no peso ideal" if (i >18.50) && (i < 24.99)
	puts "Voce esta acima do peso" if (i > 25) && (i < 29.99)
	puts "Voce esta com obesidade I" if (i > 30) && (i < 34.99)
	puts "Voce esta com obesidade II (Severa)" if (i > 35) && (i < 39.99)
	puts "Voce esta com obesidade III (Morbida)" if i >40
end

puts "\nEste programa fara o calculo do seu IMC. \n"

puts "\nInforme sua altura em centimetros (Ex: 1,80 --> 180)"
altura = gets.chomp.to_f
puts "Altura não informada/Incorreta" if altura == nil || altura == 0

puts "\nInforme seu peso"
peso = gets.chomp.to_f
puts "Peso nao informado/Incorreto" if peso == nil || peso == 0

calc_imc(altura, peso)
