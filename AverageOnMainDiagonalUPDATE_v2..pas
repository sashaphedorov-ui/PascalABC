program AvgMainDiagonal;

const
  n = 5;

var
  a: array[1..n,1..n] of integer;
  i, j, sum: integer;
  avg: real;
  minVal, maxVal: integer;

begin
  Randomize;

  writeln('Введите нижнюю границу диапазона:');
  readln(minVal);

  writeln('Введите верхнюю границу диапазона:');
  readln(maxVal);

  // Проверка и автоматическая корректировка диапазона
  if minVal > maxVal then
  begin
    writeln('Внимание! Минимум больше максимума. Значения поменяны местами.');
    i := minVal;
    minVal := maxVal;
    maxVal := i;
  end;

  writeln;
  writeln('Сгенерированный массив ', n, 'x', n, ':');

  // Генерация массива
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      a[i, j] := Random(minVal, maxVal + 1);  // случайные числа в диапазоне min..max
      write(a[i, j]:6);
    end;
    writeln;
  end;

  // Сумма главной диагонали
  sum := 0;
  for i := 1 to n do
    sum := sum + a[i, i];

  // Среднее арифметическое
  avg := sum / n;

  writeln;
  writeln('Среднее арифметическое главной диагонали = ', avg:0:2);
end.
