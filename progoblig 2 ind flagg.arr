use context essentials2021
include color
include image
fun nordic-flag(front, middle, back):
  frame(
    overlay-align("left","top",rectangle(60,60,"solid",front),
      overlay-align("left","bottom",rectangle(60,60,"solid",front),
        overlay-align("right","bottom",rectangle(120,60,"solid",front),
          overlay-align("right","top",rectangle(120,60,"solid",front),
            overlay-align("right","bottom",rectangle(130,70,"solid",middle),
              overlay-align("right","top",rectangle(130,70,"solid",middle),
                overlay-align("left","bottom",rectangle(70,70,"solid",middle),
                  overlay-align("left","top",rectangle(70,70, "solid",middle),
                    rectangle(220,160, "solid",back))))))))))
  #Selve funksjonen for hvordan flaggene er formet
end
Norway = nordic-flag(color(186, 12, 47, 1), color(255, 255, 255, 1), color(0, 32, 91, 1))
#norske flagget
Sweden = nordic-flag(color(0, 106, 167, 1), color(254, 204, 2, 1), color(254, 204, 2, 1))
#svenske flagget
Denmark = nordic-flag(color(200, 16, 46, 1), color(200, 16, 46, 1), color(255, 255, 255, 1))
#danmark flagget
Finland = nordic-flag(color(255, 255, 255, 1), color(0, 47, 108, 1), color(0, 47, 108, 1))
#finlands flagg
Iceland = nordic-flag(color(2, 82, 156, 1), color(255, 255, 255, 1), color(220, 30, 53, 1))
#islands flagg
Faroe-islands = nordic-flag(color(255, 255, 255, 1), color(0, 101, 189, 1), color(237, 41, 57, 1))
#færøyene sitt flagg
Norway
Sweden
Denmark
Finland
Iceland
Faroe-islands