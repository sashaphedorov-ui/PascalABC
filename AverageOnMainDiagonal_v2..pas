program AvgMainDiagonal;

const
  n = 5;

var
  a: array[1..n,1..n] of integer;
  i, j, sum: integer;
  avg: real;

begin
  Randomize;  // ініціалізація генератора випадкових чисел

  writeln('Згенерований масив ', n, 'x', n, ':');

  // автоматична генерація значень
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      a[i, j] := Random(-100, 101); // числа від -100 до 100
      write(a[i, j]:5);             // красиво виводимо
    end;
    writeln;
  end;

  // обчислення суми головної діагоналі
  sum := 0;
  for i := 1 to n do
    sum := sum + a[i, i];

  // середнє арифметичне
  avg := sum / n;

  writeln;
  writeln('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.