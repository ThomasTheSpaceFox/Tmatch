#!/bin/bash
ABOUTTEXT="
Tmatch v1.2.1

-a matching game
-try to get matches by picking 2 numbers, clicking OK and seeing
if their letters match!
you will see the values of your last 2 picks below the message. 
like this: 1=A|2=B.
-needs: Gtkdialog and BASH shell.

(c) 2016 Thomas Leathers

Tmatch is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Tmatch is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Tmatch.  If not, see <http://www.gnu.org/licenses/>"

export DIALOG2='
<window title="Tmatch -about">
  <vbox space="10">
    <text>
      <label>"about"</label>
    </text>
    <hbox scrollable="true" width="500" height="400">
      <text wrap="true" width-chars="68">
        <label>"'${ABOUTTEXT}'"</label>
      </text>
    </hbox>
    <hbox>
      <button ok></button>
    </hbox>
  </vbox>
</window>'

MRAN-MATCH (){
	RANCHOOSE2=$(( $RANDOM % 9 ))
	if [ "$RANCHOOSE2" = "0" ]; then
	  MESSAGE="Cool! a match! :D"
	fi
	if [ "$RANCHOOSE2" = "1" ]; then
	  MESSAGE="Nice!"
	fi
	if [ "$RANCHOOSE2" = "2" ]; then
	  MESSAGE="Hey a match!"
	fi
	if [ "$RANCHOOSE2" = "3" ]; then
	  MESSAGE="Great! A match!"
	fi
	if [ "$RANCHOOSE2" = "4" ]; then
	  MESSAGE="wow, a match! Cool!"
	fi
	if [ "$RANCHOOSE2" = "5" ]; then
	  MESSAGE="Nice work!"
	fi
	if [ "$RANCHOOSE2" = "6" ]; then
	  MESSAGE="Great!"
	fi
	if [ "$RANCHOOSE2" = "7" ]; then
	  MESSAGE="You are good at this!"
	fi
	if [ "$RANCHOOSE2" = "8" ]; then
	  MESSAGE="Great work!"
	fi
}
MRAN-NOMATCH (){
	RANCHOOSE3=$(( $RANDOM % 9 ))
	if [ "$RANCHOOSE3" = "0" ]; then
	  MESSAGE="ehh, no."
	fi
	if [ "$RANCHOOSE3" = "1" ]; then
	  MESSAGE="Guess again!"
	fi
	if [ "$RANCHOOSE3" = "2" ]; then
	  MESSAGE="nope, that is not right."
	fi
	if [ "$RANCHOOSE3" = "3" ]; then
	  MESSAGE="nope."
	fi
	if [ "$RANCHOOSE3" = "4" ]; then
	  MESSAGE="Try again!"
	fi
	if [ "$RANCHOOSE3" = "5" ]; then
	  MESSAGE="Maybe, next try?"
	fi
	if [ "$RANCHOOSE3" = "6" ]; then
	  MESSAGE="No Match."
	fi
	if [ "$RANCHOOSE3" = "7" ]; then
	  MESSAGE="The results have
come back negative."
	fi
	if [ "$RANCHOOSE3" = "7" ]; then
	  MESSAGE="nope. Try Again!"
	fi
	if [ "$RANCHOOSE3" = "8" ]; then
	  MESSAGE="not even close. Try Again?"
	fi
}
MRAN-WIN (){
	RANCHOOSE5=$(( $RANDOM % 9 ))
	if [ "$RANCHOOSE5" = "0" ]; then
	  MESSAGE="You Win!"
	fi
	if [ "$RANCHOOSE5" = "1" ]; then
	  MESSAGE="Congrads!"
	fi
	if [ "$RANCHOOSE5" = "2" ]; then
	  MESSAGE="Yay! you won! :D"
	fi
	if [ "$RANCHOOSE5" = "3" ]; then
	  MESSAGE="Nice work, winner!"
	fi
	if [ "$RANCHOOSE5" = "4" ]; then
	  MESSAGE="You won Tmatch!"
	fi
	if [ "$RANCHOOSE5" = "5" ]; then
	  MESSAGE="Go you! you won!"
	fi
	if [ "$RANCHOOSE5" = "6" ]; then
	  MESSAGE="You won! Thank you
for playing: Tmatch!"
	fi
	if [ "$RANCHOOSE5" = "7" ]; then
	  MESSAGE="nice job! you won!"
	fi
	if [ "$RANCHOOSE5" = "8" ]; then
	  MESSAGE="You Win! ^-^"
	fi
}
MRAN-START (){
	RANCHOOSE4=$(( $RANDOM % 9 ))
	if [ "$RANCHOOSE4" = "0" ]; then
	  MESSAGE="Lets Get this party started!"
	fi
	if [ "$RANCHOOSE4" = "1" ]; then
	  MESSAGE="And our next
contestant is... You!"
	fi
	if [ "$RANCHOOSE4" = "2" ]; then
	  MESSAGE="Good luck!"
	fi
	if [ "$RANCHOOSE4" = "3" ]; then
	  MESSAGE="Hello!"
	fi
	if [ "$RANCHOOSE4" = "4" ]; then
	  MESSAGE="Lets play some Tmatch! :D"
	fi
	if [ "$RANCHOOSE4" = "5" ]; then
	  MESSAGE="Tmatch: 16 cards,
8 matches, one you."
	fi
	if [ "$RANCHOOSE4" = "6" ]; then
	  MESSAGE="Lets Begin!"
	fi
	if [ "$RANCHOOSE4" = "7" ]; then
	  MESSAGE="Party Time!"
	fi
	if [ "$RANCHOOSE4" = "8" ]; then
	  MESSAGE="Hi. welcome to Tmatch!"
	fi
}
MRAN-MATCHREP (){
	RANCHOOSE6=$(( $RANDOM % 9 ))
	if [ "$RANCHOOSE6" = "0" ]; then
	  MESSAGE="you did that already!"
	fi
	if [ "$RANCHOOSE6" = "1" ]; then
	  MESSAGE="you already matched these two!"
	fi
	if [ "$RANCHOOSE6" = "2" ]; then
	  MESSAGE="dude, this looks familiar."
	fi
	if [ "$RANCHOOSE6" = "3" ]; then
	  MESSAGE="i think we did those already!"
	fi
	if [ "$RANCHOOSE6" = "4" ]; then
	  MESSAGE="try again with
different numbers."
	fi
	if [ "$RANCHOOSE6" = "5" ]; then
	  MESSAGE="nope, thats done already!"
	fi
	if [ "$RANCHOOSE6" = "6" ]; then
	  MESSAGE="repeated matches
don't count!"
	fi
	if [ "$RANCHOOSE6" = "7" ]; then
	  MESSAGE="Choose numbers you 
haven't matched yet."
	fi
	if [ "$RANCHOOSE6" = "8" ]; then
	  MESSAGE="i don't count repeats."
	fi
}
MRAN-ONEREP (){
	RANCHOOSE7=$(( $RANDOM % 9 ))
	if [ "$RANCHOOSE7" = "0" ]; then
	  MESSAGE="Uhh.. You matched 
one of those."
	fi
	if [ "$RANCHOOSE7" = "1" ]; then
	  MESSAGE="yes i thought of
repeated matches."
	fi
	if [ "$RANCHOOSE7" = "2" ]; then
	  MESSAGE="oops... you chose one 
you already matched!"
	fi
	if [ "$RANCHOOSE7" = "3" ]; then
	  MESSAGE="you already matched
one of those!"
	fi
	if [ "$RANCHOOSE7" = "4" ]; then
	  MESSAGE="Lets try not to 
repeat matched numbers!"
	fi
	if [ "$RANCHOOSE7" = "5" ]; then
	  MESSAGE="hmm..."
	fi
	if [ "$RANCHOOSE7" = "6" ]; then
	  MESSAGE="I don't count repeats!"
	fi
	if [ "$RANCHOOSE7" = "7" ]; then
	  MESSAGE="dude, this looks familiar."
	fi
	if [ "$RANCHOOSE7" = "8" ]; then
	  MESSAGE="Choose numbers you 
haven't matched yet."
	fi
}
CARD_RESET (){
CHLBL1="1"
CHLBL2="2"
CHLBL3="3"
CHLBL4="4"
CHLBL5="5"
CHLBL6="6"
CHLBL7="7"
CHLBL8="8"
CHLBL9="9"
CHLBL10="10"
CHLBL11="11"
CHLBL12="12"
CHLBL13="13"
CHLBL14="14"
CHLBL15="15"
CHLBL16="16"
DG1=0
DG2=0
DG3=0
DG4=0
DG5=0
DG6=0
DG7=0
DG8=0
DG9=0
DG10=0
DG11=0
DG12=0
DG13=0
DG14=0
DG15=0
DG16=0
MESSAGE="New Game!"
BL1=00
BL2=01
MATCHCOUNT=0
WIN=0
}
DECK_RANDOM-2 (){
	RANCHOOSE=$(( $RANDOM % 9 ))
	#echo $RANCHOOSE
	#RANCHOOSE=TEST
	if [ "$RANCHOOSE" = "TEST" ]; then
	  C1=A
	  C2=B
	  C3=A
	  C4=B
	  C5=C
	  C6=D
	  C7=C
	  C8=D
	  C9=E
	  C10=F
	  C11=E
	  C12=F
	  C13=G
	  C14=H
	  C15=G
	  C16=H
	fi
	if [ "$RANCHOOSE" = "0" ]; then
	  C1=A
	  C2=B
	  C3=D
	  C4=C
	  C5=A
	  C6=E
	  C7=F
	  C8=B
	  C9=G
	  C10=H
	  C11=F
	  C12=C
	  C13=E
	  C14=D
	  C15=G
	  C16=H
	fi
	if [ "$RANCHOOSE" = "1" ]; then
	  C1=E
	  C2=C
	  C3=C
	  C4=D
	  C5=A
	  C6=E
	  C7=F
	  C8=H
	  C9=B
	  C10=D
	  C11=F
	  C12=A
	  C13=G
	  C14=B
	  C15=G
	  C16=H
	fi
	if [ "$RANCHOOSE" = "2" ]; then
	  C1=G
	  C2=H
	  C3=D
	  C4=B
	  C5=E
	  C6=B
	  C7=F
	  C8=G
	  C9=A
	  C10=E
	  C11=C
	  C12=F
	  C13=A
	  C14=H
	  C15=D
	  C16=C
	fi
	if [ "$RANCHOOSE" = "3" ]; then
	  C1=A
	  C2=H
	  C3=D
	  C4=F
	  C5=C
	  C6=G
	  C7=A
	  C8=F
	  C9=C
	  C10=B
	  C11=E
	  C12=D
	  C13=E
	  C14=B
	  C15=H
	  C16=G
	fi
	if [ "$RANCHOOSE" = "4" ]; then
	  C1=D
	  C2=G
	  C3=E
	  C4=E
	  C5=F
	  C6=D
	  C7=H
	  C8=C
	  C9=F
	  C10=B
	  C11=H
	  C12=G
	  C13=C
	  C14=A
	  C15=B
	  C16=A
	fi
	if [ "$RANCHOOSE" = "5" ]; then
	  C1=H
	  C2=C
	  C3=G
	  C4=C
	  C5=D
	  C6=F
	  C7=B
	  C8=G
	  C9=B
	  C10=D
	  C11=F
	  C12=A
	  C13=E
	  C14=E
	  C15=H
	  C16=A
	fi
	if [ "$RANCHOOSE" = "6" ]; then
	  C1=E
	  C2=D
	  C3=H
	  C4=B
	  C5=C
	  C6=G
	  C7=B
	  C8=D
	  C9=E
	  C10=C
	  C11=F
	  C12=A
	  C13=F
	  C14=H
	  C15=G
	  C16=A
	fi
	if [ "$RANCHOOSE" = "7" ]; then
	  C1=A
	  C2=H
	  C3=B
	  C4=C
	  C5=G
	  C6=D
	  C7=E
	  C8=A
	  C9=F
	  C10=C
	  C11=G
	  C12=B
	  C13=D
	  C14=E
	  C15=F
	  C16=H
	fi
	if [ "$RANCHOOSE" = "8" ]; then
	  C1=A
	  C2=H
	  C3=D
	  C4=B
	  C5=E
	  C6=B
	  C7=F
	  C8=A
	  C9=E
	  C10=F
	  C11=C
	  C12=D
	  C13=G
	  C14=C
	  C15=G
	  C16=H
	fi
}
WIN=0
FULLBLOCK=0

CARD_RESET
DECK_RANDOM-2
MRAN-START
OVERA=X
OVERAVAR=X
OVERB=X
OVERBVAR=X

until [[ "$EXIT" = "Cancel" || "$EXIT" = "abort" ]]; do
  FOUND1=0
  FOUND2=0
  FOUND3=0
  FOUND4=0
  FOUND5=0
  FOUND6=0
  FOUND7=0
  FOUND8=0
  FOUND9=0
  FOUND10=0
  FOUND11=0
  FOUND12=0
  FOUND13=0
  FOUND14=0
  FOUND15=0
  FOUND16=0
  export DIALOG='
<window title="Tmatch">
  <vbox>
    <text>
      <label>"Tmatch"</label>
    </text>
    <frame message>
      <text>
        <label>"'${MESSAGE}'"</label>
      </text>
    </frame>
    <frame>
      <text>
        <label>"'${OVERA}'='${OVERAVAR}'|'${OVERB}'='${OVERBVAR}'"</label>
      </text>
    </frame>
    <frame>
      <hbox>
        <checkbox>
          <label>'${CHLBL1}'</label>
          <variable>CARD1</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL2}'</label>
          <variable>CARD2</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL3}'</label>
          <variable>CARD3</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL4}'</label>
          <variable>CARD4</variable>
        </checkbox>
      </hbox>
      <hbox>
        <checkbox>
          <label>'${CHLBL5}'</label>
          <variable>CARD5</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL6}'</label>
          <variable>CARD6</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL7}'</label>
          <variable>CARD7</variable>
       </checkbox>
        <checkbox>
          <label>'${CHLBL8}'</label>
          <variable>CARD8</variable>
        </checkbox>
      </hbox>
      <hbox>
        <checkbox>
          <label>'${CHLBL9}'</label>
          <variable>CARD9</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL10}'</label>
          <variable>CARD10</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL11}'</label>
          <variable>CARD11</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL12}'</label>
          <variable>CARD12</variable>
        </checkbox>
      </hbox>
      <hbox>
        <checkbox>
          <label>'${CHLBL13}'</label>
          <variable>CARD13</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL14}'</label>
          <variable>CARD14</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL15}'</label>
          <variable>CARD15</variable>
        </checkbox>
        <checkbox>
          <label>'${CHLBL16}'</label>
          <variable>CARD16</variable>
        </checkbox>
      </hbox>
    </frame>
    <button ok></button>
    <frame>
      <hbox>
        <checkbox>
          <label>reset</label>
          <variable>CARDRESET</variable>
        </checkbox>
        <button cancel></button>
      </hbox>
    </frame>
    <hbox>
      <button>
        <label>about</label>
        <action>gtkdialog --program DIALOG2</action>
      </button>
    </hbox>
  </vbox>
</window>'


  I=$IFS; IFS=""
  for STATEMENTS in  $(gtkdialog --space-expand=true --program DIALOG); do
    eval $STATEMENTS
  done
  IFS=$I
  STATCOMP=0
  STAT=1
  BLOCK1=nul1
  BLOCK2=nul2
  BL1=nul1
  BL2=nul2
  OVERA=A
  OVERAVAR=X1
  OVERB=B
  OVERBVAR=X2
  until [ "$STATCOMP" = "1" ]; do
    if [[ "$CARD1" = "true" && "$FULLBLOCK" = "0" && "$FOUND1" = "0" ]]; then
      FULLBLOCK=1
      FOUND1=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD1
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD1
      fi
    fi
    if [[ "$CARD2" = "true" && "$FULLBLOCK" = "0" && "$FOUND2" = "0" ]]; then
      FULLBLOCK=1
      FOUND2=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD2
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD2
      fi
    fi
    if [[ "$CARD3" = "true" && "$FULLBLOCK" = "0" && "$FOUND3" = "0" ]]; then
    FULLBLOCK=1
    FOUND3=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD3
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD3
      fi
    fi
    if [[ "$CARD4" = "true" && "$FULLBLOCK" = "0" && "$FOUND4" = "0" ]]; then
      FULLBLOCK=1
      FOUND4=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD4
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD4
      fi
    fi
    if [[ "$CARD5" = "true" && "$FULLBLOCK" = "0" && "$FOUND5" = "0" ]]; then
      FULLBLOCK=1
      FOUND5=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD5
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD5
      fi
    fi
    if [[ "$CARD6" = "true" && "$FULLBLOCK" = "0" && "$FOUND6" = "0" ]]; then
      FULLBLOCK=1
      FOUND6=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD6
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD6
      fi
    fi
    if [[ "$CARD7" = "true" && "$FULLBLOCK" = "0" && "$FOUND7" = "0" ]]; then
      FULLBLOCK=1
      FOUND7=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD7
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD7
      fi
    fi
    if [[ "$CARD8" = "true" && "$FULLBLOCK" = "0" && "$FOUND8" = "0" ]]; then
      FULLBLOCK=1
      FOUND8=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD8
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD8
      fi
    fi
    if [[ "$CARD9" = "true" && "$FULLBLOCK" = "0" && "$FOUND9" = "0" ]]; then
      FULLBLOCK=1
      FOUND9=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD9
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD9
      fi
    fi
    if [[ "$CARD10" = "true" && "$FULLBLOCK" = "0" && "$FOUND10" = "0" ]]; then
      FULLBLOCK=1
      FOUND10=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD10
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD10
      fi
    fi
    if [[ "$CARD11" = "true" && "$FULLBLOCK" = "0" && "$FOUND11" = "0" ]]; then
      FULLBLOCK=1
      FOUND11=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD11
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD11
      fi
    fi
    if [[ "$CARD12" = "true" && "$FULLBLOCK" = "0" && "$FOUND12" = "0" ]]; then
      FULLBLOCK=1
      FOUND12=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD12
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD12
      fi
    fi
    if [[ "$CARD13" = "true" && "$FULLBLOCK" = "0" && "$FOUND13" = "0" ]]; then
      FULLBLOCK=1
      FOUND13=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD13
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD13
      fi
    fi
    if [[ "$CARD14" = "true" && "$FULLBLOCK" = "0" && "$FOUND14" = "0" ]]; then
      FULLBLOCK=1
      FOUND14=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD14
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD14
      fi
    fi
    if [[ "$CARD15" = "true" && "$FULLBLOCK" = "0" && "$FOUND15" = "0" ]]; then
      FULLBLOCK=1
      FOUND15=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD15
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD15
      fi
    fi
    if [[ "$CARD16" = "true" && "$FULLBLOCK" = "0" && "$FOUND16" = "0" ]]; then
      FULLBLOCK=1
      FOUND16=1
      if [ "$STAT" = "1" ]; then
        BLOCK1=CARD16
      fi
      if [ "$STAT" = "2" ]; then
        BLOCK2=CARD16
      fi
    fi
    if [ "$STAT" = "2" ]; then
      STATCOMP=1
    fi
    STAT=2
    FULLBLOCK=0
  done
  #echo "Block1= $BLOCK1 Block2= $BLOCK2"
  if [ "$BLOCK1" = "CARD1" ]; then 
    BL1=$C1
    OVERA=1
    OVERAVAR=$C1
  fi
  if [ "$BLOCK1" = "CARD2" ]; then 
    BL1=$C2
    OVERA=2
    OVERAVAR=$C2
  fi
  if [ "$BLOCK1" = "CARD3" ]; then 
    BL1=$C3
    OVERA=3
    OVERAVAR=$C3
  fi
  if [ "$BLOCK1" = "CARD4" ]; then 
    BL1=$C4
    OVERA=4
    OVERAVAR=$C4
  fi
  if [ "$BLOCK1" = "CARD5" ]; then 
    BL1=$C5
    OVERA=5
    OVERAVAR=$C5
  fi
  if [ "$BLOCK1" = "CARD6" ]; then 
    BL1=$C6
    OVERA=6
    OVERAVAR=$C6
  fi
  if [ "$BLOCK1" = "CARD7" ]; then 
    BL1=$C7
    OVERA=7
    OVERAVAR=$C7
  fi
  if [ "$BLOCK1" = "CARD8" ]; then 
    BL1=$C8
    OVERA=8
    OVERAVAR=$C8
  fi
  if [ "$BLOCK1" = "CARD9" ]; then 
    BL1=$C9
    OVERA=9
    OVERAVAR=$C9
  fi
  if [ "$BLOCK1" = "CARD10" ]; then 
    BL1=$C10
    OVERA=10
    OVERAVAR=$C10
  fi
  if [ "$BLOCK1" = "CARD11" ]; then 
    BL1=$C11
    OVERA=11
    OVERAVAR=$C11
  fi
  if [ "$BLOCK1" = "CARD12" ]; then 
    BL1=$C12
    OVERA=12
    OVERAVAR=$C12
  fi
  if [ "$BLOCK1" = "CARD13" ]; then 
    BL1=$C13
    OVERA=13
    OVERAVAR=$C13
  fi
  if [ "$BLOCK1" = "CARD14" ]; then 
    BL1=$C14
    OVERA=14
    OVERAVAR=$C14
  fi
  if [ "$BLOCK1" = "CARD15" ]; then 
    BL1=$C15
    OVERA=15
    OVERAVAR=$C15
  fi
  if [ "$BLOCK1" = "CARD16" ]; then 
    BL1=$C16
    OVERA=16
    OVERAVAR=$C16
  fi
  if [ "$BLOCK2" = "CARD1" ]; then 
    BL2=$C1
    OVERB=1
    OVERBVAR=$C1
  fi
  if [ "$BLOCK2" = "CARD2" ]; then 
    BL2=$C2
    OVERB=2
    OVERBVAR=$C2
  fi
  if [ "$BLOCK2" = "CARD3" ]; then 
    BL2=$C3
    OVERB=3
    OVERBVAR=$C3
  fi
  if [ "$BLOCK2" = "CARD4" ]; then 
    BL2=$C4
    OVERB=4
    OVERBVAR=$C4
  fi
  if [ "$BLOCK2" = "CARD5" ]; then 
    BL2=$C5
    OVERB=5
    OVERBVAR=$C5
  fi
  if [ "$BLOCK2" = "CARD6" ]; then 
    BL2=$C6
    OVERB=6
    OVERBVAR=$C6
  fi
  if [ "$BLOCK2" = "CARD7" ]; then 
    BL2=$C7
    OVERB=7
    OVERBVAR=$C7
  fi
  if [ "$BLOCK2" = "CARD8" ]; then 
    BL2=$C8
    OVERB=8
    OVERBVAR=$C8
  fi
    if [ "$BLOCK2" = "CARD9" ]; then 
    BL2=$C9
    OVERB=9
    OVERBVAR=$C9
  fi
  if [ "$BLOCK2" = "CARD10" ]; then 
    BL2=$C10
    OVERB=10
    OVERBVAR=$C10
  fi
  if [ "$BLOCK2" = "CARD11" ]; then 
    BL2=$C11
    OVERB=11
    OVERBVAR=$C11
  fi
  if [ "$BLOCK2" = "CARD12" ]; then 
    BL2=$C12
    OVERB=12
    OVERBVAR=$C12
  fi
  if [ "$BLOCK2" = "CARD13" ]; then 
    BL2=$C13
    OVERB=13
    OVERBVAR=$C13
  fi
  if [ "$BLOCK2" = "CARD14" ]; then 
    BL2=$C14
    OVERB=14
    OVERBVAR=$C14
  fi
  if [ "$BLOCK2" = "CARD15" ]; then 
    BL2=$C15
    OVERB=15
    OVERBVAR=$C15
  fi
  if [ "$BLOCK2" = "CARD16" ]; then 
    BL2=$C16
    OVERB=16
    OVERBVAR=$C16
  fi
    eval REPfixA='$'$(echo DG${OVERA})
    eval REPfixB='$'$(echo DG${OVERB})
    #echo "$REPfixA $REPfixB"
  if [[ "$BL1" = "$BL2" && "$REPfixA" = "0" && "$REPfixB" = "0" ]]; then
    eval $(echo DG${OVERA})="1"
    eval $(echo DG${OVERB})="1"
    #echo "match"
    MRAN-MATCH
    MATCHFOR=0
    if [[ "$MATCHCOUNT" = "0" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=1
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "1" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=2
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "2" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=3
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "3" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=4
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "4" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=5
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "5" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=6
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "6" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=7
      MATCHFOR=1
    fi
    if [[ "$MATCHCOUNT" = "7" && "$MATCHFOR" = "0" ]]; then
      MATCHCOUNT=8
      MATCHFOR=1
    fi
    if [ "$MATCHCOUNT" = "8" ]; then
      WIN=1
    fi
    eval $(echo CHLBL${OVERA})="${OVERAVAR}"
    eval $(echo CHLBL${OVERB})="${OVERBVAR}"
  else
    if [[ "$REPfixA" = "1" || "$REPfixB" = "1" ]]; then
      if [[ "$REPfixA" = "1" && "$REPfixB" = "1" ]]; then
        MRAN-MATCHREP
      else
        MRAN-ONEREP
      fi
    else
      MRAN-NOMATCH
    fi
  fi
  if [ "$WIN" = "1" ]; then
    MRAN-WIN
  fi
  if [ "$CARDRESET" = "true" ]; then
    CARD_RESET
    DECK_RANDOM-2
    MRAN-START
  fi
done