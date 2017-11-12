function WHEN_IT_BE() {
    echo date +%k
    date +%k
}

case (date +%k) in
  '0')
    WWP='12-Late-Night.png' ;;
  '1')
    WWP='12-Late-Night.png' ;;
  '2')
    WWP='02-Mid-Morning.png' ;;
  '3')
    WWP='02-Mid-Morning.png' ;;
  '4')
    WWP='03-Late-Morning.png' ;;
  '5')
    WWP='03-Late-Morning.png' ;;
  '6')
    WWP='04-Early-Afternoon.png' ;;
  '7')
    WWP='04-Early-Afternoon.png' ;;
  '8')
    WWP='05-Mid-Afternoon.png' ;;
  '9')
    WWP='05-Mid-Afternoon.png' ;;
  '10')
    WWP='06-Late-Afternoon.png' ;;
  '11')
    WWP='06-Late-Afternoon.png' ;;
  '12')
    WWP='07-Early-Evening.png' ;;
  '13')
    WWP='07-Early-Evening.png' ;;
  '14')
    WWP='08-Mid-Evening.png' ;;
  '15')
    WWP='08-Mid-Evening.png' ;;
  '16')
    WWP='09-Late-Evening.png' ;;
  '17')
    WWP='10-Early-Night.png' ;;
  '18')
    WWP='11-Mid-Night.png' ;;
  '19')
    WWP='12-Late-Night.png' ;;
  '20')
    WWP='12-Late-Night.png' ;;
  '21')
    WWP='12-Late-Night.png' ;;
  '22')
    WWP='12-Late-Night.png' ;;
  '23')
    WWP='12-Late-Night.png' ;;
esac


echo $WWP

# wallpaper $HOME/8bitday/images/$WWP
