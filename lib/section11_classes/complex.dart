class Complex {
  final double Real;
  final double Imaginary;

  const Complex(this.Real, this.Imaginary);

  const Complex.zero()
      : Real = 0,
        Imaginary = 0;
}
