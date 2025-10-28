class AmigosModel {
  final int a;
  final int b;

  AmigosModel(this.a, this.b);

  int sumaDivisores(int n) {
    int suma = 0;
    for (int i = 1; i < n; i++) {
      if (n % i == 0) suma += i;
    }
    return suma;
  }

  bool sonAmigos() {
    int sumaA = sumaDivisores(a);
    int sumaB = sumaDivisores(b);
    return (sumaA == b && sumaB == a);
  }
}
