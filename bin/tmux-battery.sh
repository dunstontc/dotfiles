current_charge=$(battstat {p} | sed "s/[^0-9]//g")
is_charging=$(battstat -c ⚡ -d  '   ' {i})
charge_attr=''

if (( current_charge == 100)); then
  charge_attr='#[fg=#4ec9b0,italics,bg=#303030]'
elif (( current_charge < 10)); then
  charge_attr='#[fg=#d16969,italics,bg=#303030]'
elif (( current_charge < 20)); then
  charge_attr='#[fg=#ce9178,italics,bg=#303030]'
elif (( current_charge < 25)); then
  charge_attr='#[fg=#d7ba7d,italics,bg=#303030]'
elif (( current_charge < 35)); then
  charge_attr='#[fg=#b5cea8,italics,bg=#303030]'
else
  charge_attr='#[fg=#608b4e,italics,bg=#303030]'
fi

printf "%s%s%s%%" "$charge_attr" "$is_charging" "$current_charge"
