
output "public-sub1-id" {
  value = aws_subnet.public_subnet1
}
output "public-sub2-id" {
  value = aws_subnet.public_subnet2
}
output "private-sub1-id" {
  value = aws_subnet.private_subnet1
}
output "private-subnet2-id" {
  value = aws_subnet.private_subnet2
}
output "myvpc-id" {
  value = aws_vpc.myvpc.id
}