program AvgMainDiagonal;

const
  n = 5;

var
  a: array[1..n,1..n] of integer;
  i, j, sum: integer;
  avg: real;

begin
  writeln('Введіть елементи масиву ', n, 'x', n, ':');

  for i := 1 to n do
    for j := 1 to n do
    begin
      write('a[', i, ',', j, '] = ');
      readln(a[i, j]);  // readln не дає FormatException
    end;

  // сума головної діагоналі
  sum := 0;
  for i := 1 to n do
    sum := sum + a[i, i];

  avg := sum / n;

  writeln('Середнє арифметичне головної діагоналі = ', avg:0:2);
end.
