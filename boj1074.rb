=begin
너무 느린데 루비;;
89364kb	124ms
=end
#input 2 3 1
input = gets.chomp().split()

# 2*2 -> 2^2*2^2 -> 2^3 * 2^3
N = input[0].to_i
r = input[1].to_i
c = input[2].to_i

# puts N, r, c
=begin
r에 대해서 2^n 으로 나눠가면 될거같은데
맵 4배 만큼 커짐
=end
ans = 0
cnt = 0
Z = [[0,1],[2,3]]
while !(r<=0 && c<=0)
    ans += Z[r&1][c&1]*(1<<cnt)
    r=r>>1;
    c=c>>1;
    cnt+=2;
end

print ans