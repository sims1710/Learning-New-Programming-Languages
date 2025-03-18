print(".------------------------.")
print("| mixtape name    90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape = [String]()
mixtape.append("Xanny Bar - Porches")
mixtape.append("Spirit Was - LVL UP")
mixtape.append("Soul Love - David Bowie")
mixtape.append("First Love / Late Spring - Mitski")

print(mixtape.count)
mixtape.remove(at: 2)
mixtape.insert("You Swan, Go On - Mount Eerie", at: 0)

for song in mixtape {
  print(song)
}

print("Side A:")
for num in 0...1{
  print("\(num + 1). \(mixtape[num])")
}

print("Side B:")
for num in 2...3{
  print("\(num + 1). \(mixtape[num])")
}
