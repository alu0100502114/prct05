# Fraccion

Lenguajes y Paradigmas de Programación
Práctica de laboratorio #5

Representar números fraccionarios y realizar operaciones aritméticas básicas con ellos

## Instalación

Añada esta línea a su Gemfile de aplicación:

```ruby
gem 'fraccion'
```

Y luego ejecute:

    $ bundle

O haga su propia instalación mediante:

    $ gem install fraccion

## Uso

# Esta Clase le permite crear una Fracción pasándole el Numerador y Denominador al constructor
a = Fraccion.new(3,5)
b = Fraccion.new(4,3)
# para opera con Fraccion
puts a + b
puts a - b
puts a * b
puts a / b

## Contribuyendo

1. Duplicar ( https://github.com/[mi-nombre-de-usuario-en-github]/fraccion/fork )
2. Crear tu propia rama (`git checkout -b mi-nueva-característica`)
3. Acometer cambios (`git commit -am 'Añadir característica'`)
4. Empujar a la rama (`git push origin mi-nuemva-característica )
5. Crear un nuevo Requerimiento de Recogida (Pull)
