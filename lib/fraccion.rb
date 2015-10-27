#
# File: fraccion.rb
# Operaciones con Números Fraccionarios:
# Suma, Resta, Multiplicación y División
# 

class Fraccion
  attr_reader :n, :d, :signo

  # Constructor
  # Parámetros:
  #    n para valor de numerador
  #    d para valor de denominador
  def initialize(n, d=1)
    raise ArgumentError, "Ambos parámetros pasados han de ser Numéricos" unless (n.is_a? Numeric) && (d.is_a? Numeric)
    raise ArgumentError, "El denominador no puede ser Cero" unless (d != 0)
    @n, @d = n, d
    @signo = 1
    if "#{@n}"[0] == "-" && "#{@d}"[0] == "-" then
      @signo = 1
      @n = -@n
      @d = -@d
    end
    if "#{@n}"[0] == "-" then
      @signo = -1
      @n = -@n
    end
    if "#{@d}"[0] == "-" then
      @signo = -1
      @d = -@d
    end
  end

  # Convierte a cadena respetando el signo de la fracción
  def to_s
    if @signo == 1
      signo = ""
    else
      signo = "-"
    end
    if @n == 0 && @d == 0
      "0"
    elsif @n == 0 && @d == 1
      "0"
    elsif @n != 0 && @d == 0
      "infinito"
    elsif @d == 1
      "#{signo}#{@n}"
    else
      "#{signo}#{@n}/#{@d}"
    end
  end

  # Suma otra fracción con ésta
  # Parámetros:
  #   other con fracción a sumar
  def + (other)
    num = (@signo * @n * other.d) + (other.signo * other.n * @d)
    den = @d * other.d
    g = num.gcd(den)
    Fraccion.new(num/g, den/g)
  end

  # Resta otra fracción de ésta
  # Parámetros:
  #   other con fracción a restar
  def - (other)
    num = (@signo * @n * other.d) - (other.signo * other.n * @d)
    den = @d * other.d
    g = num.gcd(den)
    Fraccion.new(num/g, den/g)
  end
  
  # Multiplica otra fracción por ésta
  # Parámetros:
  #   other con fracción a multiplicar
  def * (other)
    num = (@signo * @n * other.signo * other.n)
    den = @d * other.d
    g = num.gcd(den)
    Fraccion.new(num/g, den/g)
  end

  # Divide otra fracción de ésta
  # Parámetros:
  #   other con fracción a dividir
  def / (other)
    num = (@signo * @n * other.d)
    den = @d * other.n * other.signo
    g = num.gcd(den)
    Fraccion.new(num/g, den/g)
  end

end
