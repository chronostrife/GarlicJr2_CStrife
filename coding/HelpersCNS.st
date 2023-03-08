;===========================================================================
;Garlic Jrs Helpers (Helper States)
;===========================================================================
;---------------------------------------------------------------------------
;Launcher - Arm
[StateDef 251]
type = A
physics = N
movetype = I
anim = 251
ctrl = 0
sprpriority = -1

[State 251, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 251, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 251, ChangeAnim]
type = ChangeAnim
trigger1 = parent, stateno != var(1)
value = 9999

[State 251, VarSet]
type = VarSet
trigger1 = !time
v = 38
value = 1

[State 251, AfterImageAura.Kill]
type = VarSet
triggerall = var(38) > 0
trigger1 = time = 22
v = 38
value = 0
supermovetime  = 9999999
pausemovetime  = 9999999
ignorehitpause = 1

[State 251, AfterImage.Helper]
type = Helper
triggerall = !numhelper(10250)
trigger1 = var(38) = 1
helpertype = normal
name = "AfterImage Aura"
ID = 10250
stateno = 10250
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
[State 251, AfterImage.Helper]
type = Helper
triggerall = !numhelper(10251)
trigger1 = var(38) = 1
helpertype = normal
name = "AfterImage Aura 2"
ID = 10251
stateno = 10251
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 251, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;trigger1 = parent, stateno != var(1)
;---------------------------------------------------------------------------
;Normal Aura w/ Afterimages
[StateDef 10000]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 10000
ctrl = 0
sprpriority = 4

[State 10000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 9999
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10000, BindToParent]
type = BindToParent
triggerall = parent, stateno=1701
trigger1 = 1
time = 1
pos = -5,0

[State 10000, Trans]
type = Trans
trigger1 = 1
trans = add
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10000, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10000, DestroySelf]
type = Changestate
trigger1 = (parent,stateno!=1701 && parent,stateno!=2107)
value = 10010
;---------------------------------------------------------------------------
;Angled Aura [State 1351]
[StateDef 10001]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 10000
ctrl = 0
sprpriority = 4

[State 10001, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10001, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 23,-13

[State 10001, Trans]
type = Trans
trigger1 = 1
trans = add
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10001, AngleSet]
type = AngleSet
trigger1 = 1
value = 45

[State 10001, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 10001, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10001, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10001, DestroySelf]
type = DestroySelf
trigger1 = (parent,stateno!=1351)
;---------------------------------------------------------------------------
;Steeper Angled Aura [State 1351]
[StateDef 10002]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 10000
ctrl = 0
sprpriority = 4

[State 10002, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10002, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 23,-13

[State 10002, Trans]
type = Trans
trigger1 = 1
trans = add
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10002, AngleSet]
type = AngleSet
trigger1 = 1
value = 35

[State 10002, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 10002, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10002, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10002, DestroySelf]
type = DestroySelf
trigger1 = (parent,stateno!=1351)
;---------------------------------------------------------------------------
;Steepest Angled Aura [State 1351]
[StateDef 10003]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 10000
ctrl = 0
sprpriority = 4

[State 10003, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10003, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 23,-13

[State 10003, Trans]
type = Trans
trigger1 = 1
trans = add
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10003, AngleSet]
type = AngleSet
trigger1 = 1
value = 25

[State 10003, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 10003, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10003, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10003, DestroySelf]
type = DestroySelf
trigger1 = (parent,stateno!=1351)
;---------------------------------------------------------------------------
;Big Blast Aura [State 12500]
[StateDef 10005]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 10000
ctrl = 0
sprpriority = 4

[State 10005, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10005, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10005, Trans]
type = Trans
trigger1 = 1
trans = add
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10005, AngleSet]
type = AngleSet
trigger1 = 1
value = 90

[State 10005, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 10005, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10005, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 10005, DestroySelf]
type = DestroySelf
trigger1 = (time=30)
trigger2 = (parent,stateno!=12500)
;---------------------------------------------------------------------------
;Aura die
;Dead Zone Shield Helper
[StateDef 10010]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 10010, AfterImage]
type = AfterImage
trigger1 = !time
time = 1
length = 1
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 10005, DestroySelf]
type = DestroySelf
trigger1 = time=1
;---------------------------------------------------------------------------
;Dead Zone Shield Helper
[StateDef 10030]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 10030
ctrl = 0
sprpriority = 3


[State 10030, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -10,-40

;------------------------------
;Pal Fx for Fading the Dead Zone In
[State 10030, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = -256

[State 10030, VarAdd]
type = VarAdd
trigger1 = (time = [1,25])
v = 10
value = 2

[State 10030, PalFX]
type = PalFX
trigger1 = time % 2 = 0
add = Var(10),Var(10),Var(10)
time = 2


[State 10030, VarAdd]
type = VarAdd
trigger1 = (time = [645,670])
v = 10
value = -2
;----------------------------

[State 10030, Trans]
type = Trans
trigger1 = 1
trans = add

[State 10030, AngleAdd]
type = AngleAdd
trigger1 = 1
value = -2

[State 10030, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 10030, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 10030, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 10030, DestroySelf]
type = DestroySelf
trigger1 = (parent,stateno!=[2000,2001])
;--------------------------------------------------------------------------------------
;Dash Lines-RunFwd [State 100 && 102]
[StateDef 10200]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10200, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 83

[State 10200, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10200, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10200
Postype = p1
Pos = -37+floor(Var(10)*0.5), -var(10)
velocity = 1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10200, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10200, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10200, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 100 && parent, stateno != 102)
;--------------------------------------------------------------------------------------
;Dash Lines-RunBack [States 105 && 107]
[StateDef 10201]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10201, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 82

[State 10201, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -3,0

[State 10201, DashLine]
type = Explod
trigger1 = time%2
Anim = 10201
Postype = p1
Pos = 35-floor(Var(10)*0.5), -var(10)
velocity = -1, 0
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.4,0.5

[State 10201, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10201, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10201, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 105 && parent, stateno != 107 && parent, stateno != 1332)
;--------------------------------------------------------------------------------------
;Dash Lines-RunUp [State 109]
[StateDef 10205]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10205, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10205, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10205, DashLine]
type = Explod
trigger1 = !(time%2)
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10205, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10205, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10205, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != 109)
;--------------------------------------------------------------------------------------
;Dash Lines-SuperJump [State 41]
[StateDef 10206]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999;Invisible
ctrl = 0
sprpriority = 2

[State 10206, VarSet]
type = VarRandom
trigger1 = 1
v = 10
range = 0, 30

[State 10206, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0

[State 10206, DashLine]
type = Explod
trigger1 = time%2
Anim = 10205
Postype = p1
Pos = -15+Var(10), 5-var(10)
velocity = 0, -1
Id = 10200
sprpriority = 3
removeongethit = 0
Bindtime = 1
SuperMove = 1
ownpal=0
scale = 0.5,0.4

[State 10206, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 10206, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 10206, DestroySelf]
type = DestroySelf
trigger1 = time >= 12
;--------------------------------------------------------------------------------------
; AfterImage Aura - Original Code by Roken
[Statedef 10250]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10250, VarSet-Parent State]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno

[State 10250, VarSet-Die_Timer-Init]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 10250, VarSet-Die_Timer]
type = VarAdd
trigger1 = var(3)>0
v = 3
value = 1
[State 10250, VarSet-Die_Timer-Start]
type = VarSet
triggerall = var(3) = 0
trigger1 = parent,stateno != var(1) || parent,var(38)=0
v = 3
value = 1

[State 10250, VarSet-StopSpawningImages-Init]
type = VarSet
trigger1 = !time
v = 9
value = 0
[State 10250, VarSet-StopSpawningImages]
type = VarSet
trigger1 = parent, var(38) > 0 && var(9) = 0
v = 9
value = 1

[State 10250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10250, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10250, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10250, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -3+random%5,-3+random%6
ignorehitpause = 1

[State 10250, AfterImage]
type = AfterImage
trigger1 = !time
time = 30
length = 15
palbright = -155,-155,-155
palcontrast = 255,160,100
palmul = 0.80,0.80,0.80
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10250, AfterImageTime]
type = AfterImageTime
trigger1 = 1 && var(3)=0
time = 2
ignorehitpause = 1

[State 10250, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10250, DestroySelf]
type = DestroySelf
trigger1 = var(3)>=10
;--------------------------------------------------------------------------------------
; AfterImage Aura 2 - Original Code by Roken
[Statedef 10251]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10251, VarSet-Parent State]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno
[State 10251, VarSet-Die_Timer-Init]
type = VarSet
trigger1 = !time
v = 3
value = 0
[State 10251, VarSet-Die_Timer]
type = VarAdd
trigger1 = var(3)>0
v = 3
value = 1
[State 10251, VarSet-Die_Timer-Start]
type = VarSet
triggerall = var(3) = 0
trigger1 = parent,stateno != var(1) || parent,var(38)=0
v = 3
value = 1
[State 10251, VarSet-StopSpawningImages-Init]
type = VarSet
trigger1 = !time
v = 9
value = 0
[State 10251, VarSet-StopSpawningImages]
type = VarSet
trigger1 = parent, var(38) > 0 && var(9) = 0
v = 9
value = 1

[State 10251, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10251, Invisible]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10251, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10251, BindToParent]
type =BindToParent
trigger1 =1
time =1
pos =random%3,-3+random%6
ignorehitpause =1
supermovetime = 9999
pausemovetime = 9999

[State 10251, AfterImage]
type = AfterImage
trigger1 = !time%2=0
time = 30
length = 15
palbright = -155,-155,-155
palcontrast = 255,160,60
palmul = 0.80,0.80,0.80
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10251, AfterImageTime]
type = AfterImageTime
trigger1 = 1 && var(3)=0
time = 2
ignorehitpause = 1

[State 10251, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10251, DestroySelf]
type = DestroySelf
trigger1 = var(3)>=10
;--------------------------------------------------------------------------------------
; Pulse AfterImage Aura
[Statedef 10260]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0

[State 10260, VarSet-ParentState]
type = VarSet
trigger1 = !time
v = 1
value = parent, stateno

[State 10260, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 10260, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 10260, Turn]
type = Turn
trigger1 = facing!=parent,facing
ignorehitpause = 1

[State 10260, BindToParent]
type = BindToParent
trigger1 = !time
time = 1
pos = -2+random%5,-2+random%5
ignorehitpause = 1

[State 10260, AfterImage]
type = AfterImage
trigger1 = time%2
time = 2
length = 2
;palbright = -64,-64,-64
palcontrast = 128,128,128
palmul = 0.80,0.80,0.80
palinvertall = 0
timegap = 1
framegap = 1
trans = Addalpha
alpha = 256,256
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 10260, ChangeAnim]
type = ChangeAnim
trigger1 = selfanimexist(parent,anim)
value = parent,anim
elem = parent,animelemno(0)

[State 10260, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.0+(time*0.02),1.0+(time*0.02)

[State 10260, PalFX.Var]
type = VarSet
trigger1 = !time
v = 10
value = 0
[State 10260, PalFX.VarAdd]
type = VarSet
trigger1 = time
v = 10
value = -25
[State 10260, PalFX]
type = PalFX
trigger1 = 1
time=1
add = var(10),var(10),var(10)
persistent = 1
ignorehitpause = 1

[State 10260, DestroySelf]
type = DestroySelf
trigger1 = time>=16
;---------------------------------------------------------------------------
;Particle Aura
[StateDef 10300]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0

[State 10300, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
;---------------------------------------------------------------------
[State 10300, VarSet-DefaultAura]
type = VarSet
trigger1 = 1
v = 1
value = 0
[State 10300, VarSet-NoAura]
type = VarSet
trigger1 = (parent,stateno=[190,194])
trigger2 = (parent, movetype = H) && ((parent, stateno != [5000,5099]) && (parent, stateno != [120,179]))
trigger3 = parent,power < 1000
v = 1
value = -1
[State 10300, VarSet-FullAura]
type = VarSet
trigger1 = (parent,stateno=1701) || (parent,stateno=[1800,2399])
v = 1
value = 1

[State 10300, VarAdd-PalFX - FullAura]
type = VarSet
trigger1 = var(1) = 1
trigger2 = parent,power>=3000 && (var(1) != -1)
v = 10
value = 150

[State 10300, VarAdd-PalFX - NormalAura]
type = VarSet
triggerall = var(1)= 0
trigger1 = parent,power=[1000,2999]
v = 10
value = 10+floor((parent,power-1000)/15)

[State 10300, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -255+var(10),-255+var(10),-255+var(10)
persistent = 1
ignorehitpause = 1

;--------------------------------------------------------
;Original Aura Code supplied by Camen Rider Kakuke
[State 10300, aura 1A]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=2
anim = 10300
ID = 10300
pos = -10,-24+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
random = 10,50
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = -0.04,-0.03

[State 10300, aura 1B]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=2
anim = 10300
ID = 10300
pos = 10,-24+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = -1
vfacing = 1
bindtime = 1
random = 10,50
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = 0.04,-0.03

[State 10300, aura 2A]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=0
anim = 10301
ID = 10300
pos = -15,-15+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = 1
vfacing = 1
bindtime = 1
random = 10,20
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = -0.05,0

[State 10300, aura 2B]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=0
anim = 10301
ID = 10300
pos = 15,-15+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = -1
vfacing = 1
bindtime = 1
random = 10,20
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = 0.05,0

[State 10300, aura 3]
type = Explod
triggerall = parent,alive && var(1)>=0
trigger1 = time%6=3
anim = 10302
ID = 10300
pos = 0,-40+ifelse(parent,statetype=A,-10,0)
postype = p1
facing = ifelse(random>500,-1,1)
vfacing = 1
bindtime = 1
random = 10,50
supermove = 1
scale = .3,.3
sprpriority = ifelse(random<500,-3,3)
ownpal = 0
pausemovetime   = 1000
accel = 0, -0.05
;-----------------------------------------------------------------------
[State 10300, VarSet2]
type = VarRandom
triggerall = parent, stateno = 1701
trigger1 = time%7=0
v = 24
range = -6,-1
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 10300, VarSet2]
type = VarRandom
triggerall = parent, stateno = 1701
trigger1 = time%7=0
v = 25
range = 1,25
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 10300, VarSet]
type = VarRandom
triggerall = parent, stateno = 1701
trigger1 = time%7=0
v = 26
range = -2,2
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1

[State 10300, Particles]
type = Explod
triggerall = parent, stateno = 1701
trigger1 = time%7=0
anim = 10057+(random%3)
id = 10057
postype = p1
pos = 0, 0
random = 36,4
vel = var(26)*0.75, var(24)*0.6
accel = -var(26)*0.05, 0
scale = var(25)*0.005, var(25)*0.005
supermovetime  = 9999
pausemovetime  = 9999
ignorehitpause = 1
sprpriority = ifelse(random>600,-3,3)
ontop = 0
;---------------------------------------------------------------------------
;Hit Spark Particles
[StateDef 11050]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11050
ctrl = 0
sprpriority = 3

;-----------------------
[State 11050, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 11050, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 11050, VarSet]
type = VarAdd
trigger1 = 1
v = 4
value = 25

[State 11050, PalFX]
type = PalFX
trigger1 = 1
time=1
add = -Var(4),-Var(4),-Var(4)
persistent = 1
ignorehitpause = 1
;------------------------

[State 11050, VarSet]
type = VarRandom
trigger1 = time = 0
v = 5
range = 0,359


[State 11050, FVarSet]
type = VarSet
trigger1 = time = 0
fv = 6
value = var(5)*(3.142/180)

[State 11050, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(5)

[State 11050, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11050, VelAdd]
type = VelAdd
trigger1 = 1
x = cos(fvar(6))
y = -sin(fvar(6))


[State 11050, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 11050, End]
type = DestroySelf
trigger1 = time = 10
;---------------------------------------------------------------------------
;Air Dash Upwards Effect: Used in States [109]
[StateDef 11051]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11600
ctrl = 0
sprpriority = 2
poweradd = 0

[State 11051, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 11050, VarSet]
type = VarRandom
trigger1 = time = 0
v = 5
range = 0,359

[State 11050, AngleSet]
type = AngleSet
trigger1 = time = 0
value = var(5)

[State 11050, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [0,89]
trigger1 = 1
x = 1-(var(5)*0.01)
y = 0-(var(5)*0.01)

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [90,179]
trigger1 = 1
x = 0-((var(5)-90)*0.01)
y = -1+((var(5)-90)*0.01)

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [180,269]
trigger1 = 1
x = -1+((var(5)-180)*0.01)
y = 0+((var(5)-180)*0.01)

[State 11050, VelAdd]
type = VelAdd
triggerall = var(5) = [270,359]
trigger1 = 1
x = 0+((var(5)-270)*0.01)
y = 1-((var(5)-270)*0.01)

;---------------------------------------------------------------------------
;Air Dash Upwards Effect: Used in States [109]
[StateDef 11609]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 11600
ctrl = 0
sprpriority = 2
poweradd = 0

[State 11609, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 11609, Trans]
type = Trans
trigger1 = 1
trans = add

[State 11609, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 11609, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 11609, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Strong Punch Effect: Used in States [220]
[StateDef 12301]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12300
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12301, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12300, BindToParent]
type = null;BindToParent
trigger1 = 1
time = 1
pos = 28,-8

[State 12300, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12300, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 12300, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12300, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 220
;---------------------------------------------------------------------------
;Crouch Light Kick Effect: Used in States [440]
[StateDef 12311]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12310
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12311, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12310, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 68,-5

[State 12310, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12310, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 30

[State 12310, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12310, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 440
;---------------------------------------------------------------------------
;Crouch Strong Kick Effect: Used in States [450]
[StateDef 12312]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12310
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12312, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12312, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 72,2

[State 12312, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12312, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 25

[State 12312, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12312, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 450
;---------------------------------------------------------------------------
;Jump Strong Kick Effect: Used in States [650]
[StateDef 12313]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12310
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12313, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12313, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 70,-61

[State 12313, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12313, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 41

[State 12313, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12313, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 650
;---------------------------------------------------------------------------
;Standing Strong Kick Effect: Used in States [240]
[StateDef 12314]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12310
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12314, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12314, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 59,-65

[State 12314, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12314, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 41

[State 12314, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12314, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 240
;---------------------------------------------------------------------------
;Launcher Effect: Used in States [250]
[StateDef 12600]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12600
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12600, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12600, BindToParent]
type = BindToParent
triggerall = parent, stateno = 250
trigger1 = 1
time = 1
pos = 21,-128

[State 12600, BindToParent]
type = BindToParent
triggerall = parent, stateno = 420
trigger1 = 1
time = 1
pos = 16,-96
[State 12600, AngleSet]
type = AngleSet
triggerall = parent, stateno = 420
trigger1 = !time
time = 1
value = 40
[State 12600, AngleDraw]
type = AngleDraw
triggerall = parent, stateno = 420
trigger1 = 1

[State 12600, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12600, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != 250 && parent, stateno != 420)
;---------------------------------------------------------------------------
;Basic Ki - {Garlic Jr Style} : Used in States [1000-1009]
[StateDef 12150]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12150
ctrl = 0
sprpriority = 4
poweradd = -60

[State 12150, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12150, VarSet]
type = Varrandom
trigger1 = time = 0
v = 5
range = -18,18

[State 12150, VelSet]
type = VelSet
trigger1 = time = 0
x = 11
y = var(5)*0.1

[State 12150, VelAdd]
type = VelAdd
trigger1 = time = 0
y = -(var(5)*0.01)

[State 12150, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12150, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12150, HitDef]
type = HitDef
trigger1 = !time 
attr = S, NP
animtype  = Light
Damage = 10,2
priority = 1, Hit
getpower = 0
givepower = 0
hitflag = MAFD
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1100,0
guardsound = S1100,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8      
air.velocity = -8.0,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 120,0,50
palfx.sinadd = -120,0,-50, 100


[State 12150, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12150, Next]
type = Changestate
trigger1 = Movecontact
trigger2 = MoveReversed
value = 13000

[State 12150, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12151, DestroySelf]
type = DestroySelf
trigger1 = time = 400 || frontedgebodydist < -90
recursive = 1
;---------------------------------------------------------------------------
;Basic Ki - {Garlic Jr Style} New : Used in States [1000-1009]
[StateDef 12151]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12151
ctrl = 0
sprpriority = 4
poweradd = -120

[State 12151, AfterImage]
type = null;AfterImage
trigger1 = !time
time = 120
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256;128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12151, Trail]
type = Explod
trigger1 = time>0;gametime%2=0
anim = 12152
pos = -3,0
postype = p1
id = 12152
ownpal = 0
sprpriority = 3
scale = const(size.xscale), const(size.yscale)
[State 12151, Trail2]
type = Explod
trigger1 = time>0;gametime%2=0
anim = 12153
pos = -6,0
postype = p1
id = 12152
ownpal = 0
sprpriority = 3
scale = const(size.xscale), const(size.yscale)

[State 12151, Helper-Rings]
type = Helper
triggerall = time > 0 && (time < 398 || frontedgebodydist < -40)
trigger1 = time%2=0
name = "KiBallRings"
stateno = 12152
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12152

[State 12151, Sparkle]
type = Explod
trigger1 = gametime%4=0
anim = 11550
pos = -22+random%22,-5+random%11
postype = p1
id = 11150
ownpal = 0
sprpriority = 3
scale = 0.125,0.125
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
vel = (vel x)*0.1, (-40+random%81)*0.01
;accel = 0, 0.11

[State 12151, Y_vel]
type = VarSet
trigger1 = !time
fv = 5
value = -15+random%31

[State 12151, YAccelSet]
type = VarSet
trigger1 = !time
fv = 15
value = (4.0-parent, var(15))*0.025

[State 12151, VelSet]
type = VelSet
trigger1 = !time
x = 10
y = 0

[State 12151, VelAdd]
type = VelAdd
trigger1 = time
y = fvar(15)

[State 12151, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12151, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12151, HitDef]
type = HitDef
trigger1 = !time
attr = S, NP
animtype  = Hard
Damage = 20,4
priority = 1, Hit
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = -1,0
guardsound = -1,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8      
air.velocity = -8.0,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 100,0,40
palfx.sinadd = -100,0,-40, 95


[State 12151, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12151, Movecontact]
type = ChangeState
trigger1 = Movecontact
trigger2 = MoveReversed
trigger3 = pos y >= 0
value = 13000

[State 12151, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12151, DestroySelf]
type = DestroySelf
trigger1 = time = 400 || frontedgebodydist < -90
recursive = 1
;---------------------------------------------------------------------------
;Fireball Rings : Used in States [12151]
[StateDef 12152]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 10101
ctrl = 0
sprpriority = 2

[State 12152, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12152, Get_Angle_From_Vel]
type = VarSet
trigger1 = !time
fv = 1
value = (Atan((-(parent,vel y) / ifelse((parent,vel x)!=0, (parent, vel x), 0.0001)))*(180.0 / Pi))

[State 12152, AngleSet]
type = AngleSet
trigger1 = 1
value = fvar(1)

[State 12152, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.075+time*0.01, 0.35+time*0.03

[State 12152, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------------------------------------------------
;Energy Wave : Used in State 1801
[StateDef 12400]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12400
ctrl = 0
sprpriority = 4

[State 12400, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 12400, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow

[State 12400, Explosion]
type = HitDef
trigger1 = timemod = 3,0
attr = S, HP
animtype = Hard
Damage = 9,2
hitflag = MAF
guardflag = MA
priority = 3, Hit
pausetime = 0,10
sparkno = S12405
sparkxy = 0,0
hitsound   = -1
guardsound = -1
getpower = 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -25, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -25, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
palfx.time = 30
palfx.add = 100,0,40
palfx.sinadd = -100,0,-40, 95

[State 12400, Explosion.Helper]
type = null;Helper
trigger1 = movecontact && numhelper(12101) = 0
name = "Explosion"
stateno = 12101
postype = p2
pos = 0, -60
keyctrl = 0
ownpal = 1
id = 12101

[State 12400, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12400, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Fireball FWD: Used in States [1902]
[StateDef 12500]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12500
ctrl = 0
sprpriority = 4
poweradd = 0

[State 12500, Explosion.Helper]
type = Helper
trigger1 = !time
name = "Aura"
stateno = 10005
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 10005

[State 12500, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 30
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12500, VelSet]
type = VelSet
trigger1 = time = 0
x = 13
y = 0

[State 12500, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12500, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12500, Hitdef]
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype = Hard
Damage = 160,30
priority = 3, Hit
hitflag = MAFD
guardflag = MA
pausetime = 0,10
sparkno = S12405
sparkxy = 0,0
hitsound   = S1100,2
guardsound = S1100,2
getpower = 0
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -13, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -13, -5
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 100,0,40
palfx.sinadd = -100,0,-40, 95

[State 12500, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12500, Movecontact]
type = ChangeState
trigger1 = (movecontact)
value = 13100

[State 12500, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13100

[State 12500, DestroySelf]
type = DestroySelf
trigger1 = time = 30
;---------------------------------------------------------------------------
;Ground Blast FWD: Used in States [1401]
[StateDef 12550]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12550
ctrl = 0
sprpriority = 4
poweradd = 0

[State 12550, AfterImage]
type = AfterImage
trigger1 = !time
time = 20
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12550, VelSet]
type = VelSet
trigger1 = !time
x = 9
y = 0

[State 12550, VelAdd]
type = VelAdd
trigger1 = time
x = -0.3

[State 12550, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12550, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12550, Hitdef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype = Hard
Damage = 50,5
hitflag = MAFD
guardflag = MA
pausetime = 0,10
sparkno = S12405
sparkxy = 0,0
hitsound   = S1100,2
guardsound = S1100,2
getpower = 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -8, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 100,50,0
palfx.sinadd = -100,-50,0, 95

[State 12550, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 12550, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13100

[State 12550, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Knee Upwards Effect: Used in States [1502]
[StateDef 12630]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12630
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12630, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12630, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 26,-68

[State 12630, Trans]
type = Trans
trigger1 = 1
trans = add

[State 12630, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 15

[State 12630, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12630, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 1500
;---------------------------------------------------------------------------
;Pink Ring Dust
[StateDef 12645]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12646
ctrl = 0
sprpriority = 3

[State 12645, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12645, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,-69

[State 12645, Trans]
type = Trans
trigger1 = 1
trans = add
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12645, AngleSet]
type = AngleSet
trigger1 = time = 0
value = -90

[State 12645, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999

[State 12645, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != [1800, 1801])
;---------------------------------------------------------------------------
;Charge-Push BCK
[StateDef 12650]
type = A
physics = N
movetype = A
velset = 12, 0
anim = 12650
ctrl = 0

[State 12650, VelAdd]
type = VelSet
trigger1 = 1
x = -5

[State 12650, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12650, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12650, End]
type = DestroySelf
trigger1 = time = 12
;---------------------------------------------------------------------------
;Charge-Push FWD
[StateDef 12651]
type = A
physics = N
movetype = A
velset = -12, 0
anim = 12650
ctrl = 0

[State 12651, VelAdd]
type = VelSet
trigger1 = 1
x = 5

[State 12651, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12651, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12651, End]
type = DestroySelf
trigger1 = time = 12

;---------------------------------------------------------------------------
;Charge-Push Still
[StateDef 12652]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12650
ctrl = 0

[State 12651, BindToParent]
type = BindToParent
trigger1 = 1
time = 1

[State 12651, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 12651, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 12651, End]
type = DestroySelf
trigger1 = time = 7
;---------------------------------------------------------------------------
;Big Punch Effect: Used in States [1502]
[StateDef 12660]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12660
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12660, AfterImage]
type = AfterImage
trigger1 = !time
time = 20
length = 3
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12660, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12660, BindToParent]
type = BindToParent
trigger1 = 1 && parent, stateno = 1534
time = 1
pos = 56,-14

[State 12660, BindToParent]
type = BindToParent
trigger1 = parent, stateno = 1534
time = 1
pos = 56,-24

[State 12660, Alpha]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time-4)*30, 256

[State 12660, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 45

[State 12660, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12660, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != 1502 && parent, stateno != [1534,1535])
;---------------------------------------------------------------------------
;Face Breaker Punch Effect: Used in States [9102]
[StateDef 12661]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 12660
ctrl = 0
sprpriority = 3
poweradd = 0

[State 12661, AfterImage]
type = AfterImage
trigger1 = !time
time = 20
length = 3
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12661, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12661, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 69,-68

[State 12661, Alpha]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256-(time-4)*30, 256

[State 12661, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 12661, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 12661, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || parent, stateno != 910
;---------------------------------------------------------------------------
;Hand Beam [State 1001]
[StateDef 12700]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12700
ctrl = 0
sprpriority = 4
poweradd = -50

[State 12700, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12700, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12700, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype = Hard
Damage = 60,15
priority = 2, Hit
hitflag = MAF
guardflag = MA
pausetime = 0,10
sparkno = S11020
sparkxy = -15,-3
getpower = 0
hitsound   = S1100,1
guardsound = S1100,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -10, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -10, -5
fall = 1
fall.recover = 1
kill = 1

[State 12700, Explosion.Effect]
type = Helper
trigger1 = movecontact = 1
name = "DisperseEffect"
stateno = 13000
postype = p1
pos = floor((p2dist X)+5), 0
keyctrl = 0
ownpal = 0
id = 13109
bindtime = 0

[State 12700, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12700, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Beam Special Extending : Used in States [1000-1009]
[StateDef 12710]
type = A
physics = N
movetype = A
velset = 1, 0
anim = 12710
ctrl = 0
sprpriority = 3

[State 12710, VarSet-StartPos]
type = VarSet
trigger1 = !time
v = 0
value = 0
[State 12710, VarSet-Length]
type = VarAdd
trigger1 = time>0
v = 0
value = -floor(vel x)

[State 12710, Beam]
type = Explod
trigger1 = !time
Id = 12711
Anim = 12711
Postype = p1
Pos = -floor(vel x), 0
Bindtime = -1
sprpriority = 3
removeongethit = 0
ownpal = 0
scale = var(0), const(size.yscale)*0.5
persistant = 1
[State 12710, Modify.Beam]
type = ModifyExplod
trigger1 = time
Id = 12711
scale = var(0), const(size.yscale)*0.5
[State 12710, Remove.Beam]
type = null;RemoveExplod
trigger1 = time = 400 || frontedgebodydist < -50
trigger2 = stateno = 13000
Id = 12711

[State 12710, Beam_Tail]
type = null;Explod
trigger1 = !time
Id = 12713
Anim = 12713
Postype = p1
Pos = 0,0
;Bindtime = -1
sprpriority = 3
removeongethit = 0
ownpal = 0
scale = 0.05, const(size.yscale)*0.5
persistant = 1
[State 12710, Remove.BeamTail]
type = null;RemoveExplod
trigger1 = time = 400 || frontedgebodydist < -50
trigger2 = stateno = 13000
Id = 12712
[State 12710, Beam_Head_faded_piece]
type = null;Explod
trigger1 = !time
Id = 12712
Anim = 12712
Postype = p1
Pos = -floor(vel x), 0
Bindtime = -1
sprpriority = 3
removeongethit = 0
ownpal = 0
scale = 0.05, const(size.yscale)*0.5
persistant = 1
[State 12710, Remove.BeamHead]
type = null;RemoveExplod
trigger1 = time = 400 || frontedgebodydist < -50
trigger2 = stateno = 13000
Id = 12713

[State 12710, Helper-Rings]
type = Helper
triggerall = time > 0
trigger1 = time%2=0
name = "KiBallRings"
stateno = 12152
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 12152

[State 12710, Sparkle]
type = Explod
trigger1 = gametime%2=0
anim = 11550
pos = -22+random%22,-12+random%25
postype = p1
id = 11150
ownpal = 0
sprpriority = 3
scale = 0.125,0.125
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
vel = (vel x)*0.1, (-40+random%81)*0.01
accel = 0, 0.11

[State 12710, VelAdd]
type = VelAdd
trigger1 = time = 0
y = -(var(5)*0.01)

[State 12710, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12710, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 12710, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype  = Hard
Damage = 20,4
priority = 1, Hit
getpower = 0
givepower = 0
hitflag = MAFP
guardflag = MA
pausetime = 1,6
sparkno = -1
guard.sparkno = -1
sparkxy = -10,0
hitsound   = S1100,0
guardsound = S1100,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8      
air.velocity = -8.0,-2.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 100,0,40
palfx.sinadd = -100,0,-40, 95

[State 12710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

;[State 12710, Movecontact]
;type = ChangeState
;trigger1 = (movecontact)
;value = 13000

[State 12710, Gethit]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT, AP
slot = 0
stateno = 13000

[State 12710, DestroySelf]
type = DestroySelf
trigger1 = time = 400 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Ki Eruption (Fierce Kick) [State X]
[StateDef 12750]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12750
ctrl = 0
sprpriority = 1

[State 12750, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12750, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12750, HitDef]
type = HitDef
trigger1 = time%6=0 && hitcount < 3
attr = S, SP
animtype  = DiagUp
Damage = 35,5
priority = 2, Hit
hitflag = MAFD
guardflag = MA
pausetime = 0,10
sparkno = S11020
sparkxy = -15,-3
getpower = 0
hitsound   = S1100,1
guardsound = S1100,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -6, -10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -6, -10
fall = 1
fall.recover = 1
kill = 1

[State 12750, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12750, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Belly Beam [State 1800]
[StateDef 12800]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 12800
ctrl = 0
sprpriority = 4

[State 12800, Ring]
type = Explod
trigger1 = time = 0
Anim = 12801
Pos = 0,0
Id = 12800
sprpriority = 4
removeongethit = 1
removetime = -1
bindtime = -1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.1, 0.1

[State 12800, ModifyRing]
type = ModifyExplod
trigger1 = time < 80
ID = 12800
scale = 0.1+time*(0.007),0.1+time*(0.007)

[State 12800, VelSet]
type = VelSet
trigger1 = time = 0
x = 8.0

[State 12800, VelSet]
type = VelAdd
trigger1 = 1
x = 0.075

[State 12800, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12800, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999

[State 12800, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 10
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 12800, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HP
animtype = Hard
Damage = 20,4
priority = 1, Hit
guardflag = MAFD
guardflag = MA
pausetime = 0,10
sparkno = -1
sparkxy = -15,0
getpower = 0
hitsound   = -1
guardsound = -1
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -10, -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -10, -5
fall = 1
fall.recover = 1
kill = 1
palfx.time = 30
palfx.add = 100,0,40
palfx.sinadd = -100,0,-40, 95

[State 12800, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 0

[State 12800, RemoveRing]
type = RemoveExplod
trigger1 = time = 400 || frontedgebodydist < -50
ID = 12800

[State 12151, DestroySelf]
type = DestroySelf
trigger1 = time = 400 || frontedgebodydist < -50
;---------------------------------------------------------------------------
;Small Explosion (From Basic FireBall)
[StateDef 13000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13000
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13000, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13000, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.01

[State 13000, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13000, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+(time*0.01),0.1+(time*0.01)

[State 13000, Shockwave]
type = Explod
trigger1 = time = 4
Anim = 13110
Pos = 0,0
Id = 13110
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.025, 0.025

[State 13000, ModifyExplod]
type = ModifyExplod
trigger1 = (time>4)
id = 13110
supermovetime = 9999
pausemovetime = 9999
scale = (0.025+((time-4)*0.008)),(0.025+((time-4)*0.008))

[State 13000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13000, AfterImage]
type = AfterImage
trigger1 = !time
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13000, Disperse Effect]
type = Helper
trigger1 = !time
name = "DisperseEffect"
stateno = 14501
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13000, Sound]
type = PlaySnd
trigger1 = !time
value = 1100,0

[State 13000, VarSet-VelX]
type = VarRandom
trigger1 = 1
v = 23
range = -15,15
ignorehitpause = 1
[State 13000, VarSet-VelY]
type = VarRandom
trigger1 = 1
v = 24
range = -8,22
ignorehitpause = 1
[State 13000, VarSet-Scale]
type = VarRandom
trigger1 = 1
v = 25
range = 2,25
ignorehitpause = 1

[State 13000, Particles]
type = Explod
trigger1 = time < 9
anim = 10070+(random%4)
id = 10070
postype = p1
pos = floor(var(23)), -floor(var(24))
vel = var(23)*0.3, -var(24)*0.5
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 13000, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion (From Big FireBall)
[StateDef 13100]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13100, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13100, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13100, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13100, Explod.Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.1, 0.1

[State 13100, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+(time*0.05),0.25+(time*0.05)

[State 13100, Shockwave]
type = Explod
trigger1 = time = 4
Anim = 13111
Pos = 0,0
Id = 13111
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13100, ModifyExplod]
type = ModifyExplod
trigger1 = time > 4
id = 13111
supermovetime = 9999
pausemovetime = 9999
scale = (0.01+((time-4)*0.025)),(0.01+((time-4)*0.025))

[State 13100, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13100, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13100, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13100, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13000, VarSet-VelX]
type = VarRandom
trigger1 = 1
v = 23
range = -18,18
ignorehitpause = 1
[State 13000, VarSet-VelY]
type = VarRandom
trigger1 = 1
v = 24
range = -8,23
ignorehitpause = 1
[State 13000, VarSet-Scale]
type = VarRandom
trigger1 = 1
v = 25
range = 5,30
ignorehitpause = 1

[State 13000, Particles]
type = Explod
trigger1 = time < 15
anim = 10070+(random%4)
id = 10070
postype = p1
pos = floor(var(23)), -floor(var(24))
vel = var(23)*0.3, -var(24)*0.5
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 13100, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Big Explosion 2 [State 1352]
[StateDef 13101]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13100
ctrl = 0
sprpriority = 4
poweradd = 0

[State 1352, Rocks.Helper]
type = Helper
triggerall = time < 14
trigger1 = time%2
name = "Rocks"
stateno = 15291
postype = p1
pos = -25+random%51, -10
keyctrl = 0
ownpal = 0
id = 15291
size.xscale = 0.5
size.yscale = 0.5

[State 13101, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1100, 2

[State 13101, Shake]
type = EnvShake
trigger1 = !time
Time = 25
freq = 90
ampl = -4
phase = 0

[State 13101, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13101, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13101, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13101, Explod.Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13101, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13101, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13101, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13101, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13101, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13000, VarSet-VelX]
type = VarRandom
trigger1 = 1
v = 23
range = -18,18
ignorehitpause = 1
[State 13000, VarSet-VelY]
type = VarRandom
trigger1 = 1
v = 24
range = -2,24
ignorehitpause = 1
[State 13000, VarSet-Scale]
type = VarRandom
trigger1 = 1
v = 25
range = 5,30
ignorehitpause = 1

[State 13000, Particles]
type = Explod
trigger1 = time < 15
anim = 10070+(random%4)
id = 10070
postype = p1
pos = floor(var(23)), -floor(var(24))
vel = var(23)*0.3, -var(24)*0.5
accel = 0, 0.4
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 13101, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Hyper Slam Explosion 3 [State 2107]
[StateDef 13102]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13102
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13102, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1100, 2
volume = 200

[State 13102, PlaySND2]
type = PlaySnd
trigger1 = !time
value = 1452, 0

[State 13102, Shake]
type = EnvShake
trigger1 = !time
Time = 25
freq = 90
ampl = -5
phase = 0

[State 13102, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13101, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13102, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13102, Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13102, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13102, Shockwave]
type = Explod
trigger1 = time = 4
Anim = 13111
Pos = 0,0
Id = 13111
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13102, ModifyExplod]
type = ModifyExplod
trigger1 = time > 4
id = 13111
supermovetime = 9999
pausemovetime = 9999
scale = (0.01+((time-4)*0.025)),(0.01+((time-4)*0.025))

[State 13102, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13102, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13102, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13102, Disperse Effect]
type = Helper
trigger1 = time = 0
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13102, Hitdef]
type = HitDef
trigger1 = time = 0
attr = A, HT
animtype = Hard
Damage = 150,15
priority = 5, Hit
hitflag = MAFD
guardflag = L
pausetime = 0,10
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 10, -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 10, -3
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 13102, DestroySelf]
type = DestroySelf
trigger1 = time = 100
;---------------------------------------------------------------------------
;Crushing Shoulder Bash Explosion [State 1331]
[StateDef 13103]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 13102
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13103, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1100, 2
volume = 200

[State 13103, PlaySND2]
type = PlaySnd
trigger1 = !time
value = 1452, 0

[State 13103, Shake]
type = EnvShake
trigger1 = !time
Time = 25
freq = 90
ampl = -5
phase = 0

[State 13103, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
supermovetime = 9999
pausemovetime = 9999

[State 13103, FVarset]
type = VarSet
trigger1 = (!time)
fv = 1
value = 0

[State 13103, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.05

[State 13103, Flash]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.05, 0.05

[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.25+fvar(1),0.25+fvar(1)

[State 13103, Shockwave]
type = Explod
trigger1 = time = 4
Anim = 13111
Pos = 0,0
Id = 13111
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13103, ModifyExplod]
type = ModifyExplod
trigger1 = time > 4
id = 13111
supermovetime = 9999
pausemovetime = 9999
scale = (0.01+((time-4)*0.025)),(0.01+((time-4)*0.025))

[State 13103, Shake]
type = EnvShake
trigger1 = (!time)
Time = 17
freq = 90
ampl = -3
phase = 0

[State 13103, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 13103, AfterImage]
type = AfterImage
trigger1 = !time
time = 30
length = 5
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 13103, Disperse Effect]
type = Helper
trigger1 = !time
name = "DisperseEffect"
stateno = 14500
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 0
id = 14500
bindtime = 0

[State 13103, Hitdef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype = Hard
Damage = 50,5
priority = 3, Hit
hitflag = MAFD
guardflag = L
pausetime = 0,18
sparkno = -1
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 10, -3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = 10, -3
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 13102, DestroySelf]
type = DestroySelf
trigger1 = time = 50
;---------------------------------------------------------------------------
;Big Shockwave 1
[StateDef 13110]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 4
poweradd = 0

[State 13110, Shockwave]
type = Explod
trigger1 = time = 4
Anim = 13111
Pos = 0,0
Id = 13111
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 13110, ModifyExplod]
type = ModifyExplod
trigger1 = time > 4
id = 13111
supermovetime = 9999
pausemovetime = 9999
scale = (0.01+((time-4)*0.020)),(0.01+((time-4)*0.020))

[State 13110, DestroySelf]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Ground Explode FWD: Used in States [1401] (Ground Pound)
[StateDef 14000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 14000
ctrl = 0
sprpriority = 4
poweradd = 0

[State 14000, AfterImage]
type = AfterImage
trigger1 = !time
time = 34
length = 4
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 14000, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 14000, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 14000, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 14000, Hitdef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype = Hard
Damage = 65+floor(parent, var(13)*0.25),8
hitflag = MAFD
guardflag = L
pausetime = 0,10
sparkno = S12405
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -8, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 100,50,0
palfx.sinadd = -100,-50,0, 95
p2facing = 1

[State 14000, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 14000, VarSet-VelX]
type = VarRandom
trigger1 = 1
v = 23
range = 1,20
ignorehitpause = 1
[State 14000, VarSet-VelY]
type = VarRandom
trigger1 = 1
v = 24
range = -21,-10
ignorehitpause = 1
[State 14000, VarSet-Scale]
type = VarRandom
trigger1 = 1
v = 25
range = 2,20
ignorehitpause = 1

[State 14000, Particles]
type = Explod
trigger1 = time < 9
anim = 10075+(random%4)
id = 10070
postype = p1
pos = floor(var(23)*0.5), floor(var(24)*0.5)
vel = var(23)*0.3, var(24)*0.5
accel = -(var(23)*0.01), 0.44
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3
ignorehitpause = 1

[State 14000, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Ground Explode BCK: Used in States [1401]
[StateDef 14005]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 14005
ctrl = 0
sprpriority = 4
poweradd = 0

[State 14005, AfterImage]
type = AfterImage
trigger1 = !time
time = 34
length = 4
palinvertall = 0
palbright = 0,0,0
palcontrast = 64,64,64
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 14005, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 14005, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 14005, No Shadow]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 14005, Hitdef]
type = HitDef
trigger1 = time = 0
attr = S, SP
animtype = Hard
Damage = 65+floor(parent, var(13)*0.25),8
hitflag = MAFD
guardflag = L
pausetime = 0,10
sparkno = S12405
sparkxy = 0,0
hitsound   = -1
guardsound = -1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -8, -4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
air.velocity = -8, -4
fall = 1
fall.recover = 1
kill = 1
guard.kill = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
palfx.time = 30
palfx.add = 100,50,0
palfx.sinadd = -100,-50,0, 95
p2facing = -1

[State 14005, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 14005, VarSet-VelX]
type = VarRandom
trigger1 = 1
v = 23
range = -20,-1
ignorehitpause = 1
[State 14005, VarSet-VelY]
type = VarRandom
trigger1 = 1
v = 24
range = -21,-10
ignorehitpause = 1
[State 14005, VarSet-Scale]
type = VarRandom
trigger1 = 1
v = 25
range = 2,20
ignorehitpause = 1

[State 14005, Particles]
type = Explod
trigger1 = time < 16
anim = 10075+(random%4)
id = 10070
postype = p1
pos = floor(var(23)*0.5), floor(var(24)*0.5)
vel = var(23)*0.3, var(24)*0.5
accel = -(var(23)*0.01), 0.44
scale = var(25)*0.0025, var(25)*0.0025
sprpriority = 3

[State 14005, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Circular Disperse Effect 1
[StateDef 14500]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14500, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14500, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14500, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.5, var(15)*0.5
scale = 0.25, 0.25
sprpriority = 3

[State 14500, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.75, var(15)*0.75
scale = 0.25, 0.25
sprpriority = 3

[State 14500, DestroySelf]
type = DestroySelf
trigger1 = time = 20
;---------------------------------------------------------------------------
;Circular Disperse Effect 2
[StateDef 14501]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 14501, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 14501, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 14501, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11550
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25, var(15)*0.25
scale = 0.25, 0.25
sprpriority = 3

[State 14501, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4, var(15)*0.4
scale = 0.25, 0.25
sprpriority = 3

[State 14501, DestroySelf]
type = DestroySelf
trigger1 = time = 16
;---------------------------------------------------------------------------
;Swirling Dust
[StateDef 15170]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 15170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15170, PlaySND]
type = PlaySnd
trigger1 = time = 1
value = 5110,0

[State 15170, Shake]
type = EnvShake
trigger1 = time = 1
Time = 8

[State 15170, Dust]
type = Explod
trigger1 = time = 1
Anim = 15170
Pos = -10,0
Id = 15170
velocity = 0,0
sprpriority = 4
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 15170, Swirl]
type = Explod
trigger1 = time = 6
Anim = 15175
Pos = -9,0
Id = 15175
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
SuperMove = 1
ownpal = 1
scale = 0.5, 0.5

[State 15170, End]
type = DestroySelf
trigger1 = time = 6
;---------------------------------------------------------------------------\
;Swirling Dust Wall
[StateDef 15171]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 15171, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 15171, PlaySND]
type = PlaySnd
trigger1 = time = 1
value = 5110,0

[State 15171, Shake]
type = EnvShake
trigger1 = time = 1
Time = 8

[State 15171, Dust]
type = Explod
trigger1 = time = 1
Anim = 15170
Pos = -10,0
Id = 15170
velocity = 0,0
sprpriority = 4
removeongethit = 0
;removetime = 9
bindtime = 1
SuperMove = 1
ownpal = 0
scale = 0.5, 0.5
angle = ifelse(parent, var(19)=1,90,270)
postype = p1

[State 15171, Swirl]
type = Explod
trigger1 = time = 6
Anim = 15175
Pos = -9,0
Id = 15175
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
SuperMove = 1
ownpal = 0
scale = 0.5, 0.5
angle = ifelse(parent, var(19)=1,90,270)
postype = p1

[State 15171, End]
type = DestroySelf
trigger1 = time = 6
;---------------------------------------------------------------------------
;P2 Smoke/Explosions
[StateDef 15300]
type = A
physics = N
movetype = A
velset = 0, 0
anim = -1
ctrl = 0
sprpriority = 4

[State 15300, Smoke1]
type = Explod
trigger1 = time = 8
Anim = 15300
Pos = 0,-25
Id = 15300
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke2]
type = Explod
trigger1 = time = 15
Anim = 15300
Pos = 20,-15
Id = 15301
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, Smoke3]
type = Explod
trigger1 = time = 23
Anim = 15300
Pos = -10,-5
Id = 15302
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.7, 0.7

[State 15300, Smoke4]
type = Explod
trigger1 = time = 31
Anim = 15300
Pos = 10,-25
Id = 15303
velocity = 0
sprpriority = 3
removeongethit = 1
removetime = 14
bindtime = -1
Postype = p2
ownpal = 1
scale = 0.9, 0.9

[State 15300, DestroySelf]
type = DestroySelf
trigger1 = p2stateno = 5120
;---------------------------------------------------------------------------
;Rock Helper 00
[StateDef 15200]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15200, VelSet]
type = VelSet
triggerall = time = 0
trigger1 = parent, stateno = 1701
y = -2

[State 15200, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15200, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15200, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 01
[StateDef 15201]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15201, VelSet]
type = VelSet
triggerall = time = 0
trigger1 = parent, stateno = 1701
y = -3

[State 15201, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -3
trigger1 = parent, stateno = 1701
y = -0.08

[State 15201, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15201, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper 02
[StateDef 15202]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15200 + Parent, Var(16)
ctrl = 0
sprpriority = 4

[State 15202, VelSet]
type = VelSet
triggerall = time = 0
trigger1 =  parent, stateno = 1701
y = -4

[State 15202, VelAdd]
type = VelAdd
trigger1 = parent, stateno != 1701
y = 0.08

[State 15201, VelAdd]
type = VelAdd
triggerall = vel y > -4
trigger1 = parent, stateno = 1701
y = -0.08

[State 15202, Next]
type = ChangeState
trigger1 = pos Y < -240 && parent, stateno = 1701
value = 15255

[State 15202, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 0
value = 15255
;---------------------------------------------------------------------------
;Rock Helper Die
[StateDef 15255]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 15255
ctrl = 0
sprpriority = 4

[State 15202, PlaySND]
type = PlaySnd
trigger1 = time= 0
value = 1720,0
volume = 245

[State 15255, DestroySelf]
type = DestroySelf
trigger1 = time = 4
;---------------------------------------------------------------------------
;Explosion Scatter Rocks
[StateDef 15291]
type = A
physics = N
movetype = I
velset = -3+random%7, -12.0+(random%8)*0.5
anim = 15290+random%4
ctrl = 0
sprpriority = ifelse(random%2,-1,1)

[State 15291, VarSet-Life]
type = VarSet
trigger1 = !time
v = 0
value = 100
[State 15291, VarAdd-Life]
type = VarAdd
trigger1 = 1
v = 0
value = -1
[State 15292, FVarSet-Gravity]
type = VarSet
trigger1 = !time
fv = 10
value = 0.44
[State 15292, Gravity]
type = VelAdd
trigger1 = time
y = fvar(10)

[State 15291, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15291, VarRandom.Angle]
type = VarRandom
trigger1 = !time
v = 4
range = 1,5
[State 15291, VarSet.Angle]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(random%2=0,var(4),-var(4))

[State 15291, AngleAdd]
type = AngleAdd
trigger1 = 1
value = var(4)
[State 15291, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15291, VarSet]
type = VarSet
trigger1 = pos y = 0
fv = 1
value = (vel x)

[State 15291, VarSet]
type = VarSet
trigger1 = pos y = 0
fv = 2
value = (vel y)

[State 15291, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 100
length = 4
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 15291, Next]
type = ChangeState
trigger1 = pos y = 0 && time > 1
value = 15297
;---------------------------------------------------------------------------
;Rising Rocks
[StateDef 15292]
type = A
physics = N
movetype = I
velset = 0, -4.0+(random%3)*0.5
anim = 15290+random%4
ctrl = 0
sprpriority = -1+random%3

[State 15292, VarSet-Life]
type = VarSet
trigger1 = !time
v = 0
value = 100
[State 15292, VarAdd-Life]
type = VarAdd
trigger1 = 1
v = 0
value = -1

[State 15292, FVarSet-Gravity]
type = VarSet
trigger1 = !time
fv = 10
value = 0.11
[State 15292, Gravity]
type = VelAdd
trigger1 = time
y = fvar(10)

[State 15292, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15292, VarRandom.Angle]
type = VarRandom
trigger1 = !time
v = 4
range = 1,5
[State 15292, VarSet.Angle]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(random%2=0,var(4),-var(4))

[State 15292, AngleAdd]
type = AngleAdd
trigger1 = abs(vel y) > -2.0
value = var(4)
[State 15292, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15292, VarSet]
type = VarSet
trigger1 = 1
fv = 1
value = (vel x)
[State 15292, VarSet]
type = VarSet
trigger1 = 1
fv = 2
value = (vel y)

[State 15291, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 100
length = 4
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 15292, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 1
value = 15297
;---------------------------------------------------------------------------
;Rising Rocks - Slow (Power up)
[StateDef 15293]
type = A
physics = N
movetype = I
velset = 0, -2.5+(random%3)*0.5
anim = 15290+random%4
ctrl = 0
sprpriority = -1+random%3

[State 15296, VarSet-Scale]
type = VarSet
trigger1 = !time
fv = 5
value = (parent, var(16))*0.01

[State 15293, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = 0
[State 15293, VarAdd]
type = VarAdd
trigger1 = (parent, stateno != 1701)
v = 1
value = 1

[State 15293, VarSet-Life]
type = VarSet
trigger1 = Var(1)=1
v = 0
value = 100
[State 15293, VarAdd-Life]
type = VarAdd
trigger1 = var(1)
v = 0
value = -1

[State 15293, FVarSet-Gravity]
type = VarSet
trigger1 = !time
fv = 10
value = 0.11
[State 15293, Gravity]
type = VelAdd
trigger1 = var(1)
y = fvar(10)

[State 15293, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15293, VarRandom.Angle]
type = VarRandom
trigger1 = !time
v = 4
range = 1,5
[State 15293, VarSet.Angle]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(random%2=0,var(4),-var(4))

[State 15293, AngleAdd]
type = AngleAdd
trigger1 = abs(vel y) > -2.0
value = var(4)
[State 15293, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15293, VarSet]
type = VarSet
trigger1 = 1
fv = 1
value = (vel x)
[State 15293, VarSet]
type = VarSet
trigger1 = 1
fv = 2
value = (vel y)

[State 15293, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 1
value = 15297
[State 15293, Explode]
type = ChangeState
trigger1 = var(1)=0 && time >= 100
value = 15296
;---------------------------------------------------------------------------
;Rocks - Explode
[StateDef 15296]
type = A
physics = N
movetype = I
ctrl = 0
anim = 13000
velset = 0,0

[State 15296, PlaySND]
type = PlaySnd
trigger1 = !time && random%2
value = 1007,0
volumescale = 100

[State 15296, ScatterRocks]
type = Explod
trigger1 = time = [0,4]
Anim = 15294+random%4
Pos = 0,0
Id = 15290+time
velocity = (-10+(random%21))*0.1,(random%15)*-0.1
accel = 0, 0.11
sprpriority = 3
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
ownpal = 0
scale = fvar(5)*0.5, fvar(5)*0.5

[State 15296, Shockwave]
type = Explod
trigger1 = time = 4
Anim = 13110
Pos = 0,0
Id = 13110
velocity = 0,0
sprpriority = 3
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 0
scale = 0.025, 0.025

[State 15296, ModifyExplod]
type = ModifyExplod
trigger1 = (time>4)
id = 13110
supermovetime = 9999
pausemovetime = 9999
scale = (0.025+((time-4)*0.008)),(0.025+((time-4)*0.008))

[State 15296, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;---------------------------------------------------------------------------
;Rocks - Hit Ground
[StateDef 15297]
type = A
physics = N
movetype = I
ctrl = 0

[State 15297, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 15297, VarAdd-Life]
type = VarAdd
trigger1 = 1
v = 0
value = -1

[State 15297, VarSet-VelX]
type = VarSet
trigger1 = !time
fv = 1
value = vel x
[State 15297, VarSet-VelY]
type = VarSet
trigger1 = !time
fv = 2
value = vel y
[State 15297, VarSet-VelXRandomBounce]
type = VarSet
trigger1 = !time
v = 3
value = random%100

[State 15297, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15297, VelSet]
type = VelSet
trigger1 = !time
x = 0
y = 0

[State 15297, PlaySND]
type = PlaySnd
trigger1 = !time && abs(fvar(2)) > 3.0
value = 706,0
volumescale = 50+(floor(fvar(2)*1.5))+ifelse(prevstateno = 15292,10,0)

[State 15297, Bounce]
type = ChangeState
triggerall = var(0)>0 && abs(fvar(2)) > 1.0
trigger1 = time = 1
value = 15298
[State 15297, Die]
type = ChangeState
triggerall = var(0)<=0
trigger1 = time >= 1
value = 15299
;---------------------------------------------------------------------------
;Rocks - Bounce
[StateDef 15298]
type = A
physics = N
movetype = I
velset = fvar(1)*0.9, -fvar(2)*0.4
ctrl = 0

;[State 15297, VelAdd]
;type = VelSet
;triggerall = abs(vel y) < -2.0
;trigger1 = !time
;x = (var(3)*ifelse(random%2,0.01,-0.01))

[State 15297, VarAdd-Life]
type = VarAdd
trigger1 = 1
v = 0
value = -1
[State 15297, AngleAdd]
type = AngleAdd
triggerall = abs(vel y) > -2.0
trigger1 = 1
value = var(4)
[State 15297, AngleDraw]
type = AngleDraw
trigger1 = 1
[State 15297, Gravity]
type = VelAdd
trigger1 = time
y = fvar(10)

[State 15292, VarSet]
type = VarSet
trigger1 = 1
fv = 1
value = (vel x)
[State 15292, VarSet]
type = VarSet
trigger1 = 10
fv = 2
value = (vel y)

[State 15298, Next]
type = ChangeState
trigger1 = pos y >= 0 && time > 1
value = 15297
;---------------------------------------------------------------------------
;Rocks - Die
[StateDef 15299]
type = A
physics = N
movetype = I
ctrl = 0
anim = anim+4

[State 15292, AngleAdd]
type = AngleAdd
triggerall = abs(vel y) > -2.0
trigger1 = abs(vel y) > 0.5 
value = var(4)
[State 15292, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15299, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;---------------------------------------------------------------------------
;Pink Whirlwind Angled 1[State 1300]
[StateDef 15500]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 15500
ctrl = 0
sprpriority = 3

[State 15500, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 15500, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 37,-33

[State 15500, Trans]
type = Trans
trigger1 = 1
trans = add

[State 15500, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 90

[State 15500, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15500, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != [1300, 1301])
;---------------------------------------------------------------------------
;Pink Whirlwind Angled 2[State 1502]
[StateDef 15501]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 15500
ctrl = 0
sprpriority = 4

[State 15501, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 15501, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = 54,-14

[State 15501, Trans]
type = Trans
trigger1 = 1
trans = add

[State 15501, AngleSet]
type = AngleSet
trigger1 = time = 0
value = 45

[State 15501, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 15501, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0 || (parent, stateno != 1502)
;-------------------------------------------------------------------------------
;Dizzy Stars
[StateDef 15800]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 15800, Pos X]
type = VarSet
trigger1 = !time
v = 4
value = ifelse(facing=1,-8,8)

[State 15800, Pos Y]
type = VarSet
trigger1 = !time
v = 5
value = -101

;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)

;Star Start locations
;   B
;A     C
;   D

[State 15800, Star_Helper.A]
type = Helper
trigger1 = !time
name = "StarA"
stateno = 15801
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15801
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.B]
type = Helper
trigger1 = !time
name = "StarB"
stateno = 15802
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15802
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.C]
type = Helper
trigger1 = !time
name = "StarC"
stateno = 15803
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15803
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Star_Helper.D]
type = Helper
trigger1 = !time
name = "StarD"
stateno = 15804
postype = p1
pos = var(4),var(5)
keyctrl = 0
ownpal = 1
id = 15804
ignorehitpause = 1
supermovetime  = 9999
pausemovetime  = 9999
size.xscale = 1
size.yscale = 1

[State 15800, Die State]
type = ChangeState
trigger1 = parent, stateno != 5300
value = 15809
;-------------------------------------------------------------------------------
;Dizzy Star A
[StateDef 15801]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15801, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15801, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15801, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = time*0.05

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15801, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15801, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15801, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15801, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15801, End]
type = ChangeState
trigger1 = var(6) >= 75
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star B
[StateDef 15802]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15802, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15802, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15802, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables
[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+30)*0.05

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15802, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15802, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15802, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15802, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15802, End]
type = ChangeState
trigger1 = var(6) >= 225
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star C
[StateDef 15803]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15803, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15803, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15801, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15803, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+60)*0.05

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15803, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15803, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15803, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15803, End]
type = ChangeState
trigger1 = var(6) >= 150
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star D
[StateDef 15804]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 15800
ctrl = 0
sprpriority = 3

[State 15804, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15804, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 15804, PosSet]
type = PosSet
trigger1 = 1
x = (parent, pos x)+fvar(11)*20+(parent, var(4))
y = ((parent, pos y)+fvar(12)*20*0.35)+(parent, var(5))

;--------------------------
;Tired Variable from Parent Dizzy State.
[State 15804, VarSet]
type = VarSet
trigger1 = 1
v = 6
value = parent, Var(6)
;--------------------------
;Circling Variables

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 10
value = (time+90)*0.05

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 11
value = sin(fvar(10))

[State 15804, VarSet]
type = VarSet
trigger1 = 1
fv = 12
value = -cos(fvar(10))

[State 15803, VarSet]
type = VarSet
trigger1 = 1
fv = 13
value = cos(fvar(10))*0.25

[State 15804, VelSet]
type = VelSet
trigger1 = time
x = fvar(11)
y = fvar(12)*0.35

;-----------------------------
;Scaling(for 3d orbit effect)
[State 15804, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15804, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)
;-----------------------------
[State 15804, End]
type = ChangeState
trigger1 = var(6) >= 300
trigger2 = parent, stateno != 15800
value = 15805
;-------------------------------------------------------------------------------
;Dizzy Star Remove/Pop Off/Bounce
[StateDef 15805]
type = A
physics = N
movetype = I
anim = 15800
ctrl = 0
sprpriority = 3

[State 15805, Trans]
type = Trans
trigger1 = 1
trans = add1
persistent = 1
ignorehitpause = 1

[State 15805, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

;Scaling(for 3d orbit effect)
[State 15805, AngleSet]
type = AngleSet
trigger1 = !time
value = 0

[State 15805, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 0.75-fvar(13), 0.75-fvar(13)

[State 15805, VelSet]
type = VelSet
trigger1 = !time
y = -4

[State 15805, VelAdd]
type = VelAdd
trigger1 = time
y = 0.3

[State 15805, PosSet-Ground]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 15805, VelSet]
type = VelSet
trigger1 = pos y = 0
y = -(vel y) * 0.5

[State 15805, End]
type = ChangeState
trigger1 = time >= 80 && random < 75
trigger2 = time = 100
value = 15806

;-------------------------------------------------------------------------------
;Dizzy Star Burst/Explode/Pop
[StateDef 15806]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15806, PlaySND]
type = PlaySnd
trigger1 = !time
value = 1003,0

[State 15806, FVarset]
type = VarAdd
trigger1 = 1
fv = 1
value = 0.005

[State 15806, Flash! AhhAHHHH!]
type = Explod
trigger1 = (!time)
Anim = 13105
Pos = 0,0
Id = 13105
velocity = 0,0
sprpriority = 5
removeongethit = 0
;removetime = 9
bindtime = 1
Postype = p1
supermovetime  = 9999
pausemovetime  = 9999
persistent = 0
ownpal = 1
scale = 0.01, 0.01

[State 15806, ModifyExplod]
type = ModifyExplod
trigger1 = (time)
id = 13105
supermovetime = 9999
pausemovetime = 9999
scale = 0.1+fvar(1),0.1+fvar(1)

[State 15806, RandomVariable-1]
type = VarRandom
trigger1 = 1
v = 14
range = -8,8

[State 15806, RandomVariable-2]
type = VarRandom
trigger1 = 1
v = 15
range = -8,8

[State 15806, Sparkle-1]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,0
anim = 11555
id = 11550
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.25*((0.5-fvar(13))*0.75), var(15)*0.25*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, Sparkle-2]
type = Explod
triggerall = time < 12
trigger1 = Timemod = 2,1
anim = 11555
id = 11555
postype = p1
pos = 0, 0
ownpal = 1
velocity = Var(14)*0.4*((0.5-fvar(13))*0.75), var(15)*0.4*((0.5-fvar(13))*0.75)
scale = (0.5-fvar(13))*0.5, (0.5-fvar(13))*0.5
sprpriority = 3

[State 15806, End]
type = DestroySelf
trigger1 = time = 15
;-------------------------------------------------------------------------------
;Dizzy Stars End State(Used to Kill Remaining stars)
[StateDef 15809]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 3

[State 15804, End]
type = DestroySelf
trigger1 = time = 1
;---------------------------------------------------------------------------
;Dead Zone Void Helper
[StateDef 16000]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 16000
ctrl = 0
sprpriority = -5

[State 2101, Swing]
type = PlaySnd
trigger1 = Time = 25
value = 2100, 1

[State 16000, PlaySND]
type = PlaySnd
trigger1 = time=0
trigger2 = time=128
value = 181,0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1

[State 16000, HitDef]
type = null;HitDef
trigger1 = time%3=2 && !numtarget(16997)
affectteam = F
attr = S, HP
sparkno = -1
p2facing = 1
ID = var(30):=16997
hitonce = 1

;Using this HitDef only because I dont know why MUGEN only seems to allow one custom state active at a given time.
;Or more likely Im just being retarded and I am failing to recognize the obvious problem(s) in the code here.
;Unnull the other 2 hitdef (above and below) for buggy dead zone that grabs more than one jerk at a time in team-mode and causes them to go into seizures.
[State 16000, HitDef]
type = HitDef
triggerall = (parent, stateno = [2000,2002]) || (parent, stateno = 4100)
trigger1 = numenemy && !numtarget(16998)
affectteam = E
attr = S, HP
sparkno = -1
p2facing = 1
ID = var(31):=16998
hitonce = 1
kill = 0
priority = 5

;Get Garlic Jr instead
;I dont know how to to code anymore - Chrono - 02/21/2015
[State 16000, HitDef]
type = HitDef
triggerall = (parent, stateno != [2000,2002]) && (parent, stateno != 4100)
trigger1 = !numtarget(16998)
affectteam = F
attr = S, HP
sparkno = -1
p2facing = 1
ID = var(31):=16998
hitonce = 1
priority = 5

[State 16000, HitDef]
type = null;HitDef
trigger1 = numenemy = 2 && time%3=1 && !numtarget(16999) && numtarget(16998)
affectteam = E
attr = S, HP
sparkno = -1
p2facing = 1
ID = var(32):=16999
hitonce = 1

;[State 16099, TargetState1.P]
;type = TargetState
;trigger1 = numtarget(16997) > 0 && target(16997), stateno != [995900,995919]
;id = 16997
;value = 995910
[State 16000, TargetState1.E1]
type = TargetState
triggerall = numtarget(16998) > 0
trigger1 = target(16998), stateno != [995900,995919]
id = 16998
value = 995910
;[State 16000, TargetState1.E2]
;type = null;TargetState
;trigger1 = numtarget(16999) > 0 && target(16999), stateno != [995900,995919]
;id = 16999
;value = 995910

[State 16000, TargetState2.E1]
type = TargetState
triggerall = numtarget(16998) > 0
trigger1 = !animtime
id = 16998
value = 995911

;[State 16000, VarSet.PlayerID.P]
;type = VarSet
;triggerall = numpartner && numtarget
;trigger1 = numtarget(var(30))
;v = 35
;value = Target(var(30)),ID
[State 16000, VarSet.PlayerID.E1]
type = VarSet
trigger1 = numtarget(var(31))
v = 36
value = Target(var(31)),ID
;[State 16000, VarSet.PlayerID.E2]
;type = VarSet
;trigger1 = numtarget(var(32))
;v = 37
;value = Target(var(32)),ID

[State 16000, TimeSinceTarget]
type = VarSet
trigger1 = numtarget(16997) || numtarget(16998) || numtarget(16999)
v = 40
value = var(40)+1

;[State 16000, VarSet.XDist.P]
;type = VarSet
;trigger1 = playerIDExist(var(35)) && fvar(32)=0
;fv = 32
;value = (playerID(Var(35)), Pos X + playerID(Var(35)), CameraPos X) - (Pos X + CameraPos X) * (parent, facing)
;[State 16000, VarSet.YDist.P]
;type = VarSet
;trigger1 = playerIDExist(var(35)) && fvar(33)=0
;fv = 33
;value = (playerID(Var(35)), Pos Y + playerID(Var(35)), CameraPos Y) - (Pos Y + CameraPos Y)

[State 16000, VarSet.XDist.E1]
type = VarSet
trigger1 = playerIDExist(var(36)) && fvar(34)=0
fv = 34
value = ((playerID(Var(36)), Pos X + playerID(Var(36)), CameraPos X) - (Pos X + CameraPos X)) * (parent, facing)
[State 16000, VarSet.YDist.E1]
type = VarSet
trigger1 = playerIDExist(var(36)) && fvar(35)=0
fv = 35
value = (playerID(Var(36)), Pos Y + playerID(Var(36)), CameraPos Y) - (Pos Y + CameraPos Y)

;[State 16000, VarSet.XDist.E2]
;type = VarSet
;trigger1 = playerIDExist(var(37)) && fvar(36)=0
;fv = 36
;value = (playerID(Var(37)), Pos X + playerID(Var(37)), CameraPos X) - (Pos X + CameraPos X) * (parent, facing)
;[State 16000, VarSet.YDist.E2]
;type = VarSet
;trigger1 = playerIDExist(var(37)) && fvar(37)=0
;fv = 37
;value = (playerID(Var(37)), Pos Y + playerID(Var(37)), CameraPos Y) - (Pos Y + CameraPos Y)


;[State -2, DisplayToClipboard]
;type = DisplayToClipboard
;trigger1 = 1
;text = "DeadZone: Var(ID) = %d,%d,%d. Var(XDist) = %f,%f,%f."
;params = var(30),var(31),var(32),fVar(32),fVar(34),fVar(36)


;[State 16000,  TBind.P]
;type = TargetBind
;trigger1 = numtarget(16997) > 0
;id = 16997
;pos = (fvar(32):=(fvar(32)-(fvar(32)*0.01))),(fvar(33):=(fvar(33)-(fvar(33)*0.01)))
[State 16000, TBind.E1]
type = TargetBind
trigger1 = numtarget(16998) > 0
id = 16998
pos = (fvar(34):=(fvar(34)-(fvar(34)*0.01))),(fvar(35):=(fvar(35)-(fvar(35)*0.01)))
;[State 16000,  TBind.E2]
;type = TargetBind
;trigger1 = numtarget(16999) > 0
;id = 16999
;pos = (fvar(36):=(fvar(36)-(fvar(36)*0.01))),(fvar(37):=(fvar(37)-(fvar(37)*0.01)))

[State 16000, VarSet]
type = VarSet
trigger1 = time = 0
v = 4
value = floor(POS X)

[State 16000, VarSet]
type = VarSet
trigger1 = time = 0
v = 5
value = floor(POS Y)

[State 16000, VarSet]
type = VarRandom
trigger1 = 1
v = 6
range = 15,30
;-------------------------------
[State 16000, Shake.0]
type = EnvShake
trigger1 = time = 0 && parent, movetype != H
Time = 570
freq = 90
ampl = -4
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
[State 16000, Shake.1]
type = EnvShake
trigger1 = time = 570 && parent, movetype != H
Time = 10
freq = 90
ampl = -3
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
[State 16000, Shake.2]
type = EnvShake
trigger1 = time = 580 && parent, movetype != H
Time = 10
freq = 90
ampl = -2
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
[State 16000, Shake.3]
type = EnvShake
trigger1 = time = 590 && parent, movetype != H
Time = 10
freq = 90
ampl = -2
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
[State 16000, Shake.4]
type = EnvShake
trigger1 = time = 600 && parent, movetype != H
Time = 10
freq = 90
ampl = -1
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1

;--------------------------------------
Garlic Caught Inside Shake
[State 16000, Shake.1]
type = EnvShake
trigger1 = time = 0 && parent, movetype = H
Time = 285
freq = 90
ampl = -4
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
[State 16000, Shake.2]
type = EnvShake
trigger1 = time = 285 && parent, movetype = H
Time = 10
freq = 90
ampl = -2
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
[State 16000, Shake.3]
type = EnvShake
trigger1 = time = 295 && parent, movetype = H
Time = 10
freq = 90
ampl = -1
phase = 0
supermovetime  = 9999
pausemovetime  = 9999
persistent = 1
ignorehitpause = 1
;-------------------------------

[State 16000, Wind Vortex]
type = Explod
trigger1 = time = 25
Anim = 15166
Pos = 0, 10
velocity = 0,0
Id = 15166
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.75, 0.75
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind Vortex]
type = Explod
triggerall = time = [25, 270] 
trigger1 = timemod = 10,0
Anim = 15165
Pos = 0, 10
velocity = 0,0
Id = 15165
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.75, 0.75
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind On Ground]
type = Explod
triggerall = time > 45
trigger1 = timemod = 39,0
Anim = 15015
Pos = floor(360-Var(4)), floor(-Var(5))
velocity = -7,0
Id = 15015
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.6, 0.2
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind On Ground]
type = Explod
triggerall = time > 40
trigger1 = timemod = 34,0
Anim = 15015
Pos = floor(280-Var(4)), floor(-Var(5))
velocity = -7,0
Id = 15015
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.6, 0.2
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind On Ground]
type = Explod
triggerall = time > 35
trigger1 = timemod = 29,0
Anim = 15015
Pos = floor(200-Var(4)), floor(-Var(5))
velocity = -7,0
Id = 15015
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.6, 0.2
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind On Ground2]
type = Explod
triggerall = time > 30
trigger1 = timemod = 24,0
Anim = 15015
Pos = floor(120-Var(4)), floor(-Var(5))
velocity = -7,0
Id = 15015
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.6, 0.2
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind On Ground3]
type = Explod
triggerall = time > 25
trigger1 = timemod = 19,0
Anim = 15015
Pos = floor(40-Var(4)), floor(-Var(5))
velocity = -7,0
Id = 15015
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.6, 0.2
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

[State 16000, Wind On Ground4]
type = Explod
triggerall = time > 20
trigger1 = timemod = 15,0
Anim = 15015
Pos = floor(-30-Var(4)), floor(-Var(5))
velocity = -7,0
Id = 15015
sprpriority = 999
removeongethit = 1
Postype = p1
Bindtime = 1
SuperMove = 1
ownpal = 1
scale = 0.6, 0.2
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1

;------------------------------
;Pal Fx for Fading the Dead Zone In
[State 16000, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = -250

[State 16000, VarAdd]
type = VarAdd
trigger1 = (time = [1,25])
v = 10
value = 10

[State 16000, PalFX]
type = PalFX
trigger1 = timemod = 1,0
time = 2
add = Var(10),Var(10),Var(10)

[State 16000, VarAdd]
type = VarAdd
trigger1 = (time = [270,295])
v = 10
value = -10
;----------------------------
; BG Pal FX for Darkening the Background
[State 16000, VarSet]
type = Varset
trigger1 = time = 0
v = 11
value = 0

[State 16000, VarAdd]
type = VarAdd
trigger1 = (time = [1,50])
v = 11
value = -4

[State 16000, VarAdd]
type = VarAdd
trigger1 = (time = [260,309])
v = 11
value = 4

[State 16000, PalFX]
type = BGPalFX
trigger1 = timemod = 1,0
time = 2
add = Var(11),Var(11),Var(11)
;----------------------------
; BG Pal FX for Transparency
[State 16000, VarSet]
type = Varset
trigger1 = time = 0
v = 12
value = 120

[State 16000, VarAdd]
type = VarAdd
trigger1 = (time = [1,60])
v = 12
value = -2

[State 16000, VarAdd]
type = VarAdd
trigger1 = (time = [275,295])
v = 12
value = 6


[State 16000, VarSet]
type = VarSet
trigger1 = time = 295
v = 13
value = 256

[State 16000, VarSet]
type = VarSet
trigger1 = (time = [296,306])
v = 13
value = -25

;[State 16000, Trans]
;type = Trans
;trigger1 = 1
;trans = add

;Alpha
[State 16000, Alpha]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256, 136+Var(12)

[State 16000, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 1

[State 16000, AngleDraw]
type = AngleDraw
trigger1 = 1

[State 16000, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 16000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = unguardable

[State 16000, ScreenBound]
type = ScreenBound
trigger1 = p2movetype = H || (BackEdgeBodydist < -1 && BackEdgeBodydist > -30)
movecamera = 0,0
value	= 1

[State 16000, Next]
type = ChangeState
trigger1 = !animtime
value = 16010

[State 16000, DestroySelf]
type = null;DestroySelf
trigger1 = !animtime
;---------------------------------------------------------------------------
;Dead Zone Void - Opponent Absorbed (Idle State)
[StateDef 16010]
type = A
physics = N
movetype = A
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = -5

[State 16010, PosSet]
type = PosSet
trigger1 = !time
x = 0
y = -100

[State 16010, TargetBind];Move Target off screen
type = TargetBind
trigger1 = 1
pos = 0,999999

[State 16010, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,0
value	= 1
persistant = 1

[State 16010, End]
type = DestroySelf
triggerall = numtarget(16998) > 0
trigger1 = (time = 120) && (target(16998), alive=0)
[State 16010, End2]
type = DestroySelf
triggerall = numtarget(16998) = 0
trigger1 = time = 120

[State 16010, Next]
type = ChangeState
trigger1 = time = 120
value = 16020

;---------------------------------------------------------------------------
; Deadzone Inversion Start (sparks and stuff)
[Statedef 16020]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0
anim = 9999

[State 16020, TBind.E1]
type = TargetBind
trigger1 = numtarget(16998) > 0
id = 16998
pos = 0,0

[State 16020, Sound]
type = PlaySnd
trigger1 = time = 8
value = 2100, 0
volumescale = 100

[State 16020, Spark]
type = Explod
triggerall = time = [0,60]
trigger1 = time % 7 = 0
Anim = 16030
Pos = 0,0
Id = 16030
velocity = 0,0
sprpriority = 2
removeongethit = 0
bindtime = -1
Postype = p1
ownpal = 1
scale = (time*0.005)+0.2, (time*0.005)+0.2
angle = random%360
SuperMovetime = 9999
pausetime = 9999
ignorehitpause = 1

[State 16020, Energy Absorb.Helper]
type = Helper
triggerall = !numhelper(20020)
trigger1 = !time 
name = "Absorb Effect"
stateno = 16020
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
bindtime = -1
id = 20020

[State 16020, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,0
value	= 1
persistant = 1

[State 16020, ChangeState]
type = ChangeState
trigger1 = time>=60
value = 16021
;--------------------------------------------------------------------------------------
; Deadzone Inversion (barfs opponent out)
[Statedef 16021]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0
anim = 16010

[State 16000, TBind.E1]
type = TargetBind
triggerall = numtarget(16998) > 0
trigger1 = time < 100
id = 16998
pos = 0,0

[State 16000, TargetState.E1]
type = TargetState
triggerall = numtarget(16998) > 0
trigger1 = time = 100
id = 16998
value = 995912

[State 16021, DeadZone-Inversion.Helper]
type = Helper
triggerall = !numhelper(20011)
trigger1 = time = 60
name = "Helper:Diffuse_Lines"
id = 20011
stateno = 20011
postype = p1
pos = 0,0
keyctrl = 0
ownpal = 1
bindtime = -1
size.xscale = 1.0
size.yscale = 1.0

[State 16021, VarSet]
type = VarSet
trigger1 = 1
v = 40
value = 1+random%4
[State 16021, VarSet]
type = VarSet
trigger1 = 1
v = 41
value = 1+random%4

[State 16021, Balls]
type = Explod
trigger1 = (time = [100,112]) && time %2=0
anim = 16040+random%3
pos = 0,0
postype = p1
vel = var(40)*ifelse(random%2=1,1,-1),var(41)*ifelse(random%2=1,1,-1)
accel = 0,0
id = 16040
ownpal = 0
sprpriority = 3
scale = 0.05,0.05
supermovetime = 9999
pausemovetime = 9999

[State 16020, Sound1]
type = PlaySnd
trigger1 = time = 60
value = 2000, 0
volumescale = 70
[State 16020, Sound2]
type = PlaySnd
trigger1 = time = 120
value = 1007, 0
volumescale = 100
[State 16020, Sound3]
type = PlaySnd
trigger1 = time = 112
value = 1953, 0
volumescale = 100
[State 16020, Sound4]
type = PlaySnd
trigger1 = Time = 140
value = 1050, 0

;Pulse Aura AfterImage Creates a strange glow during next state, but does next to nothing in current state.
[State 16021, AfterImage]
type = AfterImage
trigger1 = time = 100
time = 30
length = 16
palinvertall = 0
palbright = 0,0,0
palcontrast = 100,100,100
paladd = 0,0,0
timegap = 1
framegap = 1
;trans = Add1

[State 16021, DeadZone.Explod]
type = Explod
trigger1 = animelem = 5
Anim = 16015
Pos = 0,0
Id = 16015
velocity = 0,0
sprpriority = -1
removeongethit = 0
bindtime = -1
Postype = p1
ownpal = 1
SuperMovetime = 9999
pausetime = 9999
ignorehitpause = 1
;removetime = 200
angle = 45+(gametime%360)
scale = 1,1

[State 16021, DeadZone.ModExplod]
type = ModifyExplod
trigger1 = 1
Id = 16015
angle = 45-(gametime%360)*4

[State 16021, ChangeAnim]
type = ChangeAnim
trigger1 = time=220
value = 16011

[State 16021, DestroySelf]
type = DestroySelf
trigger1 = time>=260

[State 16021, ChangeState]
type = ChangeState
trigger1 = time>=260
value = 16022

[State 16021, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,0
value	= 1
persistant = 1
;--------------------------------------------------------------------------------------
; Deadzone Inversion Fade
[Statedef 16022]
type = U
movetype = U
physics = U
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0
anim = 16011

[State 16022, DestroySelf]
type = DestroySelf
trigger1 = !animtime
;-------------------------------------------------------------------------------
;Teleport Trail
[StateDef 17900]
type = S
physics = N
movetype = I
velset = 0, 0
anim = ifelse((parent,stateno=[2105,2106]),17901,17900);If Garlic Jr is in his Lvl2 Super, dont use standard anim
ctrl = 0
sprpriority = -1

[State 17900, End.X]
type = VarSet
trigger1 = time=0
fv = 3
value = parent, var(35)

[State 17900, End.Y]
type = VarSet
trigger1 = time=0
fv = 4
value = parent, var(36)

[State 17900, VelSet]
type = VelSet
trigger1 = time>=2
x = fvar(3)*0.09
y = fvar(4)*0.09

[State 17900, AfterImageExplod]
type = Explod
trigger1 = 1
Anim = 17906
Pos = 0, 0
Id = 17906
sprpriority = -2
removeongethit = 0
Postype = p1
;Bindtime = -1
SuperMove = 1
ownpal = 0
scale = 1,1

[State 17900, No Shadow]
type = AssertSpecial
trigger1 = 1
persistent = 1
ignorehitpause = 1
flag = noshadow

[State 17900, PalFX]
type = PalFX
trigger1 = 1
time=1
add = 0,0,0;48,-96,-48;48-time*10,48-time*10,48-time*10
persistent = 1
ignorehitpause = 1

[State 17900, Trans]
type = Trans
trigger1 = 1
trans = add
persistent = 1
ignorehitpause = 1

[State 17900, End]
type = DestroySelf
trigger1 = time = 11

[State 17900, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
;---------------------------------------------------------------------------
;Super Portrait
[Statedef 19000]
physics  = N
movetype = I
anim     = 9999
velset = 0, 0
sprpriority = 0
ctrl = 0

[State 19000, VarSet]
type = VarSet
trigger1 = time = 0
fv = 1
value = 0
persistent = 0
ignorehitpause = 1

[State 19000, VarAdd]
type = VarAdd
trigger1 = time >= 30
fv = 1
value = 0.02
persistent = 1
ignorehitpause = 1

[State 19000, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 19000, Portrait]
type = Explod
trigger1 = time = 0
anim = 19000
pos = -30,120
postype = back
id = 19000
ownpal = 1
sprpriority = 0
scale = 0.48,0.48
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
persistent = 1

[State 19000, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19000
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19000, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19000

[State 19000, Destroy]
type = DestroySelf
trigger1 = time = 60

;---------------------------------------------------------------------------
;Super Portrait 2
[Statedef 19005]
physics  = N
movetype = I
anim     = 9999
velset = 0, 0
sprpriority = 0
ctrl = 0

[State 19005, VarSet]
type = VarSet
trigger1 = time = 0
fv = 1
value = 0
persistent = 0
ignorehitpause = 1

[State 19005, VarAdd]
type = VarAdd
trigger1 = time >= 30
fv = 1
value = 0.02
persistent = 1
ignorehitpause = 1

[State 19005, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
persistent = 1
ignorehitpause = 1

[State 19005, Portrait]
type = Explod
trigger1 = time = 0
anim = 19005
pos = -30,120
postype = back
id = 19005
ownpal = 1
sprpriority = 0
scale = 0.48,0.48
ignorehitpause = 1
supermovetime = 9999
pausemovetime = 9999
persistent = 1

[State 19005, ModifyExplod]
type = ModifyExplod
trigger1 = time >= 30
id = 19005
supermovetime = 9999
pausemovetime = 9999
scale = 0.48+fvar(1),0.48+fvar(1)

[State 19005, RemoveExplod]
type = RemoveExplod
trigger1 = time = 60
id = 19005

[State 19005, Destroy]
type = DestroySelf
trigger1 = time = 60
;---------------------------------------------------------------------------
;Sparkles[220] - Strong Punch
;Var(1-9) - Position Constants  
;Var(10-19) - Random Values
;Var(20-21) - Change Values
;Var(30-31) - Parent Values
;FVar(1-9) - Velocity Constants
;FVar(10-19) - Random Values (Scale, Offset, Velocity, Acceleration)
[StateDef 20000]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20000, BindToParent]
type = BindToParent
triggerall = parent, stateno = 220
trigger1 = 1
time = 1

[State 20000, ActualPos-X]
type = VarSet
trigger1 = !time
v = 0
value = -25
[State 20000, ActualPos-Y]
type = VarSet
trigger1 = !time
v = 1
value = -80

[State 20000, Time]
type = VarSet
trigger1 = !time
v = 9
value = 8
[State 20000, Time2]
type = VarSet
trigger1 = time = 8
v = 9
value = 6

[State 20000, ChangeActualPos-X]
type = VarAdd
trigger1 = time
v = 0
value = floor((var(4)-var(2))/var(9))
[State 20000, ChangeActualPos-Y]
type = VarAdd
trigger1 = time
v = 1
value = floor((var(5)-var(3))/var(9))

[State 20000, StartPos-X]
type = VarSet
trigger1 = !time
v = 2
value = -25
[State 20000, StartPos-Y]
type = VarSet
trigger1 = !time
v = 3
value = -80
[State 20000, EndPos-X]
type = VarSet
trigger1 = !time
v = 4
value = 55
[State 20000, EndPos-Y]
type = VarSet
trigger1 = !time
v = 5
value = -60
[State 20000, StartPos-X_Update]
type = VarSet
trigger1 = time = 8
v = 2
value = 55
[State 20000, StartPos-Y_Update]
type = VarSet
trigger1 = time = 8
v = 3
value = -60
[State 20000, EndPos-X_Update]
type = VarSet
trigger1 = time = 8
v = 4
value = 35
[State 20000, EndPos-Y_Update]
type = VarSet
trigger1 = time = 8
v = 5
value = -20

[State 20000, RandomOffset-X]
type = VarSet
trigger1 = 1
v = 10
value = -8+random%17
[State 20000, RandomOffset-Y]
type = VarSet
trigger1 = 1
v = 11
value = -8+random%17

[State 20000, RandomScale-XY]
type = VarSet
trigger1 = 1
fv = 10
value = (1+random%21)*0.01

[State 20000, RandomVel-X]
type = VarSet
trigger1 = 1
fv = 12
value = (1+random%21)*0.005
[State 20000, RandomVel-Y]
type = VarSet
trigger1 = 1
fv = 13
value = (1+random%21)*0.005

[State 20000, RandomAccel-X]
type = VarSet
trigger1 = 1
fv = 14
value = (1+random%21)*0.005
[State 20000, RandomAccel-Y]
type = VarSet
trigger1 = 1
fv = 15
value = (1+random%21)*0.005

[State 20000, SparkleA]
type = Explod
trigger1 = 1
anim = ifelse(random%2,11550,11555)
pos = Var(0)+Var(10),Var(1)+Var(11)
postype = p1
vel = -0.05+fvar(12),0
accel = -0.05+fvar(14),-fvar(15)
id = 11155
ownpal = 0
sprpriority = 3
scale = 0.1+fvar(10),0.1+fvar(10)
supermovetime = 9999
pausemovetime = 9999

[State 20000, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 220
trigger2 = parent,animelem = 4
;---------------------------------------------------------------------------
;Sparkles[1701&191] - Power Up
;Var(1-9) - Position Constants  
;Var(10-19) - Random Values
;Var(20-21) - Change Values
;Var(30-31) - Parent Values
;FVar(1-9) - Velocity Constants
;FVar(10-19) - Random Values (Scale, Offset, Velocity, Acceleration)
[StateDef 20001]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20001, BindToParent]
type = BindToParent
triggerall = parent, stateno != 191 || parent, stateno != 1701
trigger1 = 1
time = 1

[State 20001, ActualPos-X]
type = VarSet
trigger1 = !time
v = 0
value = 0
[State 20001, ActualPos-Y]
type = VarSet
trigger1 = !time
v = 1
value = 0

[State 20001, RandomOffset-X]
type = VarSet
trigger1 = 1
v = 10
value = -38+random%59
[State 20001, RandomOffset-Y]
type = VarSet
trigger1 = 1
v = 11
value = -60+random%55

[State 20001, RandomScale-XY]
type = VarSet
trigger1 = 1
fv = 10
value = (1+random%26)*0.01

[State 20001, RandomVel-X]
type = VarSet
trigger1 = 1
fv = 12
value = (1+random%21)*0.005
[State 20000, RandomVel-Y]
type = VarSet
trigger1 = 1
fv = 13
value = (1+random%21)*0.005

[State 20001, RandomAccel-X]
type = VarSet
trigger1 = 1
fv = 14
value = (1+random%21)*0.005
[State 20000, RandomAccel-Y]
type = VarSet
trigger1 = 1
fv = 15
value = (1+random%21)*0.005

[State 20001, SparkleA]
type = Explod
trigger1 = time%2
anim = 11550
pos = Var(0)+Var(10),Var(1)+Var(11)
postype = p1
vel = -0.05+fvar(12),0
accel = -0.05+fvar(14),-fvar(15)
id = 11150
ownpal = 0
sprpriority = 3
scale = 0.1+fvar(10),0.1+fvar(10)
supermovetime = 9999
pausemovetime = 9999

[State 20001, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 181 && parent,stateno != 191 && parent,stateno != 1701
trigger2 = parent,stateno = 191 && parent, animelem = 7
;---------------------------------------------------------------------------
;Sparkles[290] - Power Kick - Leg Charge
;Var(1-9) - Position Constants  
;Var(10-19) - Random Values
;Var(20-21) - Change Values
;Var(30-31) - Parent Values
;FVar(1-9) - Velocity Constants
;FVar(10-19) - Random Values (Scale, Offset, Velocity, Acceleration)
[StateDef 20002]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20002, BindToParent]
type = BindToParent
triggerall = parent, stateno = 290
trigger1 = 1
time = 1

[State 20002, Pos-X1]
type = VarSet
trigger1 = !time
v = 0
value = -20
[State 20002, Pos-Y1]
type = VarSet
trigger1 = !time
v = 1
value = -15
[State 20002, Pos-X2]
type = VarSet
trigger1 = !time
v = 2
value = -28
[State 20002, Pos-Y2]
type = VarSet
trigger1 = !time
v = 3
value = -4

[State 20002, RandomOffset-X1]
type = VarSet
trigger1 = 1
v = 10
value = -8+random%17
[State 20002, RandomOffset-Y1]
type = VarSet
trigger1 = 1
v = 11
value = -11+random%23
[State 20002, RandomOffset-X2]
type = VarSet
trigger1 = 1
v = 12
value = -8+random%17
[State 20002, RandomOffset-Y2]
type = VarSet
trigger1 = 1
v = 13
value = -8+random%17

[State 20002, RandomScale-XY1]
type = VarSet
trigger1 = 1
fv = 10
value = (1+random%21)*0.01
[State 20002, RandomScale-XY2]
type = VarSet
trigger1 = 1
fv = 11
value = (1+random%21)*0.01

[State 20002, RandomVel-X1]
type = VarSet
trigger1 = 1
fv = 12
value = (1+random%21)*0.005
[State 20002, RandomVel-Y1]
type = VarSet
trigger1 = 1
fv = 13
value = (1+random%21)*0.005
[State 20002, RandomVel-X2]
type = VarSet
trigger1 = 1
fv = 14
value = 0;(1+random%21)*0.005
[State 20002, RandomVel-Y2]
type = VarSet
trigger1 = 1
fv = 15
value = 0;(1+random%21)*0.005

[State 20002, RandomAccel-X1]
type = VarSet
trigger1 = 1
fv = 16
value = (1+random%21)*0.005
[State 20002, RandomAccel-Y1]
type = VarSet
trigger1 = 1
fv = 17
value = (1+random%21)*0.005
[State 20002, RandomAccel-X2]
type = VarSet
trigger1 = 1
fv = 18
value = 0;(1+random%21)*0.005
[State 20002, RandomAccel-Y2]
type = VarSet
trigger1 = 1
fv = 19
value = 0;(1+random%21)*0.005

[State 20002, Sparkle1]
type = null;Explod
trigger1 = time%2=0
anim = ifelse(random%2,11550,11555)
pos = Var(0)+Var(10),Var(1)+Var(11)
postype = p1
vel = -0.05+fvar(12),0
accel = -0.05+fvar(16),-fvar(17)
id = 11155
ownpal = 0
sprpriority = 3
scale = 0.1+fvar(10),0.1+fvar(10)
supermovetime = 9999
pausemovetime = 9999

[State 20002, Sparkle2]
type = Explod
trigger1 = time%2=1
anim = ifelse(random%2,11550,11555)
pos = Var(2)+Var(12),Var(3)+Var(13)
postype = p1
vel = 0,0;-0.05+fvar(14),0
accel = 0,0;-0.05+fvar(18),-fvar(19)
id = 11155
ownpal = 0
sprpriority = 3
scale = 0.1+fvar(11),0.1+fvar(11)
supermovetime = 9999
pausemovetime = 9999

[State 20002, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 290

;---------------------------------------------------------------------------
;Sparkles[291] - Power Kick - Kick Animation
;Var(1-9) - Position Constants  
;Var(10-19) - Random Values
;Var(20-21) - Change Values
;Var(30-31) - Parent Values
;FVar(1-9) - Velocity Constants
;FVar(10-19) - Random Values (Scale, Offset, Velocity, Acceleration)
[StateDef 20003]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20003, BindToParent]
type = BindToParent
triggerall = parent, stateno = 291
trigger1 = 1
time = 1

[State 20003, ActualPos-X]
type = VarSet
trigger1 = !time
v = 0
value = -28
[State 20003, ActualPos-Y]
type = VarSet
trigger1 = !time
v = 1
value = -4

[State 20003, Time]
type = VarSet
trigger1 = !time
v = 9
value = 8
[State 20003, Time2]
type = VarSet
trigger1 = time = 8
v = 9
value = 8

[State 20003, ChangeActualPos-X]
type = VarAdd
trigger1 = time
v = 0
value = floor((var(4)-var(2))/var(9))
[State 20003, ChangeActualPos-Y]
type = VarAdd
trigger1 = time
v = 1
value = floor((var(5)-var(3))/var(9))

[State 20003, StartPos-X]
type = VarSet
trigger1 = !time
v = 2
value = -28
[State 20003, StartPos-Y]
type = VarSet
trigger1 = !time
v = 3
value = -4
[State 20003, EndPos-X]
type = VarSet
trigger1 = !time
v = 4
value = 48
[State 20003, EndPos-Y]
type = VarSet
trigger1 = !time
v = 5
value = -24
[State 20003, StartPos-X_Update]
type = VarSet
trigger1 = time = 8
v = 2
value = var(4)
[State 20003, StartPos-Y_Update]
type = VarSet
trigger1 = time = 8
v = 3
value = var(5)
[State 20003, EndPos-X_Update]
type = VarSet
trigger1 = time = 8
v = 4
value = 70
[State 20003, EndPos-Y_Update]
type = VarSet
trigger1 = time = 8
v = 5
value = -93

[State 20003, RandomOffset-X1]
type = VarSet
trigger1 = 1
v = 10
value = -8+random%17
[State 20003, RandomOffset-Y1]
type = VarSet
trigger1 = 1
v = 11
value = -11+random%23

[State 20003, RandomScale-XY1]
type = VarSet
trigger1 = 1
fv = 10
value = (1+random%21)*0.01

[State 20003, RandomVel-X1]
type = VarSet
trigger1 = 1
fv = 12
value = (1+random%21)*0.005
[State 20003, RandomVel-Y1]
type = VarSet
trigger1 = 1
fv = 13
value = (1+random%21)*0.005

[State 20003, RandomAccel-X1]
type = VarSet
trigger1 = 1
fv = 16
value = (1+random%21)*0.005
[State 20003, RandomAccel-Y1]
type = VarSet
trigger1 = 1
fv = 17
value = (1+random%21)*0.005

[State 20003, Sparkle1]
type = Explod
trigger1 = time
anim = ifelse(random%2,11550,11555)
pos = Var(0)+Var(10),Var(1)+Var(11)
postype = p1
vel = -0.05+fvar(12),0
accel = -0.05+fvar(16),-fvar(17)
id = 11155
ownpal = 0
sprpriority = 3
scale = 0.1+fvar(10),0.1+fvar(10)
supermovetime = 9999
pausemovetime = 9999

[State 20003, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 20003, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 291 || time = 16
;---------------------------------------------------------------------------
;Diffuse Particles from circumfrence[16020] - Dead Zone Inversion
;Var(0-9)   - Position Constants  
;Var(10-19) - Random Int Values (Pos,Anim)
;Var(20-21) - Parent Int Values
;FVar(0-9)  - Velocity Constants
;FVar(10-19)- Random Float Values (Scale, Offset, Velocity, Acceleration)
;FVar(20-39)- Math
;The x,y coords on the circumfrence are:
;x = cx + (r * cos(a))
;y = cy + (r * sin(a))
;Where cx,cy are the origin/offset of the circle.
;r: is the radius [var(0)]
;a: is the angle (in radians) [fvar(0)]
;For this helper, the explods will spawn on the circumfrence of the circle signified by a static radius and origin of 0,0.
;The angle will change randomly each tick. Velocity will be based off the x,y position.
[StateDef 20010]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20010, BindToParent]
type = BindToParent
trigger1 = 1
time = 1

[State 20010, Angle_in_Radians-Randomized]
type = VarSet
trigger1 = 1
fv = 0
value = (random%720*pi)/180

[State 20010, Origin_Offset-X]
type = VarSet
trigger1 = !time
v = 0
value = 0
[State 20010, Origin_Offset-Y]
type = VarSet
trigger1 = !time
v = 1
value = 0

[State 20010, Radius]
type = VarSet
trigger1 = !time
v = 2
value = 25

[State 20010, StartPos-X]
type = VarSet
trigger1 = 1
v = 3
value = floor(var(0) + (var(2) * cos(fvar(0))))
[State 20010, StartPos-Y]
type = VarSet
trigger1 = 1
v = 4
value = floor(var(1) + (var(2) * sin(fvar(0))))

[State 20003, RandomScale-X_and_Y_1]
type = VarSet
trigger1 = 1
fv = 10
value = (1+random%16)*0.005

[State 20010, Balls]
type = Explod
trigger1 = 1
anim = 16042
pos = var(3),var(4)
postype = p1
vel = var(3)*0.035,var(4)*0.035
accel = 0,0
id = 16042
ownpal = 0
sprpriority = 3
scale = 0.02+fvar(10),0.02+fvar(10)
supermovetime = 9999
pausemovetime = 9999

[State 20010, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 16021
trigger2 = time = 30
;---------------------------------------------------------------------------
;Diffuse Line Particles in a Spiral[16020] - Dead Zone Inversion
;Var(0-9)   - Position Constants  
;Var(10-19) - Random Int Values (Pos,Anim)
;Var(20-21) - Parent Int Values
;FVar(0-9)  - Velocity Constants
;FVar(10-19)- Random Float Values (Scale, Offset, Velocity, Acceleration)
;FVar(20-39)- Math
;The x,y coords on the circumfrence are:
;x = cx + (r * cos(a))
;y = cy + (r * sin(a))
;Where cx,cy are the origin/offset of the circle.
;r: is the radius [var(0)]
;a: is the angle (in radians) [fvar(0)]
;For this helper, the explods will spawn on the radius which will start slight away from the origin 0,0 and increase over time.
;The angle will increase over time each tick creating an outward spiral. 
;Velocity will be based off the x,y position.
[StateDef 20011]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20011, BindToParent]
type = BindToParent
trigger1 = 1
time = 1

[State 20011, Angle_in_Radians-Randomized]
type = VarSet
trigger1 = 1
fv = 0
value = ((time*5)*pi)/180

[State 20011, Origin_Offset-X]
type = VarSet
trigger1 = !time
v = 0
value = 0
[State 20011, Origin_Offset-Y]
type = VarSet
trigger1 = !time
v = 1
value = 0

[State 20011, Radius]
type = VarSet
trigger1 = 1
v = 2
value = 30+time

[State 20011, StartPos-X]
type = VarSet
trigger1 = 1
v = 3
value = floor(var(0) + ((var(2)*0.5) * cos(fvar(0))))
[State 20011, StartPos-Y]
type = VarSet
trigger1 = 1
v = 4
value = floor(var(1) + ((var(2)*0.5) * sin(fvar(0))))

[State 20011, Lines.1]
type = Explod
trigger1 = time%2=0
anim = 16048
pos = var(3),var(4)
postype = p1
vel = var(3)*0.1,var(4)*0.1
accel = 0,0
id = 16048
ownpal = 0
sprpriority = 3
scale = 0.25,0.5
angle = -(fvar(0)*180)/pi
supermovetime = 9999
pausemovetime = 9999

[State 20011, StartPos-X]
type = VarSet
trigger1 = 1
v = 5
value = floor(var(0) + ((var(2)*0.5) * cos(fvar(0)+pi)))
[State 20011, StartPos-Y]
type = VarSet
trigger1 = 1
v = 6
value = floor(var(1) + ((var(2)*0.5) * sin(fvar(0)+pi)))

[State 20011, Lines.2]
type = Explod
trigger1 = time%2=0
anim = 16048
pos = var(5),var(6)
postype = p1
vel = var(5)*0.1,var(6)*0.1
accel = 0,0
id = 16049
ownpal = 0
sprpriority = 3
scale = 0.25,0.5
angle = -((fvar(0)+pi)*180)/pi
supermovetime = 9999
pausemovetime = 9999

[State 20011, DestroySelf]
type = DestroySelf
trigger1 = parent,stateno != 16021
trigger2 = time = 70
;---------------------------------------------------------------------------
;Accumulate Line Particles in a Circle[1570] - Hellfire Kick
;Var(0-9)   - Position Constants  
;Var(10-19) - Random Int Values (Pos,Anim)
;Var(20-21) - Parent Int Values
;FVar(0-9)  - Velocity Constants
;FVar(10-19)- Random Float Values (Scale, Offset, Velocity, Acceleration)
;FVar(20-39)- Math
;The x,y coords on the circumfrence are:
;x = cx + (r * cos(a))
;y = cy + (r * sin(a))
;Where cx,cy are the origin/offset of the circle.
;r: is the radius [var(0)]
;a: is the angle (in radians) [fvar(0)]
;For this helper, the explods will spawn on the radius.
;The angle will be random. 
;Velocity will be based off the x,y position and travel towards the origin (0,0).
[StateDef 20012]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20012, BindToParent]
type = null;BindToParent
trigger1 = 1
time = 1

[State 20012, Angle_in_Radians-Randomized]
type = VarSet
trigger1 = 1
fv = 0
value = ((random%181)*pi)/180

[State 20012, Origin_Offset-X]
type = VarSet
trigger1 = !time
v = 0
value = 0
[State 20012, Origin_Offset-Y]
type = VarSet
trigger1 = !time
v = 1
value = 0

[State 20012, Radius]
type = VarSet
trigger1 = 1
v = 2
value = 240

[State 20012, StartPos-X]
type = VarSet
trigger1 = 1
v = 3
value = floor(var(0) + ((var(2)*0.5) * cos(fvar(0))))
[State 20012, StartPos-Y]
type = VarSet
trigger1 = 1
v = 4
value = floor(var(1) + ((var(2)*0.5) * sin(fvar(0))))

[State 20012, Lines.1]
type = null;Explod
trigger1 = time
anim = 16048
pos = var(3),var(4)
postype = p1
vel = -var(3)*0.0425,-var(4)*0.0425
accel = 0,0
id = 16048
ownpal = 0
sprpriority = 0
scale = 0.25,0.5
angle = -floor(((fvar(0))*180)/pi)
supermovetime = 9999
pausemovetime = 9999

[State 20012, StartPos-X]
type = VarSet
trigger1 = 1
v = 5
value = floor(var(0) + ((var(2)*0.5) * cos(fvar(0)+pi)))
[State 20012, StartPos-Y]
type = VarSet
trigger1 = 1
v = 6
value = floor(var(1) + ((var(2)*0.5) * sin(fvar(0)+pi)))

[State 20012, Lines.2]
type = Explod
trigger1 = time
anim = 16048
pos = var(5),var(6)
postype = p1
vel = -var(5)*0.0425,-var(6)*0.0425
accel = 0,0
id = 16049
ownpal = 0
sprpriority = 0
scale = 0.25,0.5
angle = -floor(((fvar(0)+pi)*180)/pi)
supermovetime = 9999
pausemovetime = 9999

[State 20012, DestroySelf]
type = DestroySelf
trigger1 = time = 18
trigger2 = parent,movetype = H
;---------------------------------------------------------------------------
;Accumulate Line Particles in a Circle[16000] - DeadZone
;Var(0-9)   - Position Constants  
;Var(10-19) - Random Int Values (Pos,Anim)
;Var(20-21) - Parent Int Values
;FVar(0-9)  - Velocity Constants
;FVar(10-19)- Random Float Values (Scale, Offset, Velocity, Acceleration)
;FVar(20-39)- Math
;The x,y coords on the circumfrence are:
;x = cx + (r * cos(a))
;y = cy + (r * sin(a))
;Where cx,cy are the origin/offset of the circle.
;r: is the radius [var(0)]
;a: is the angle (in radians) [fvar(0)]
;For this helper, the explods will spawn on the radius.
;The angle will be random. 
;Velocity will be based off the x,y position and travel towards the origin (0,0).
[StateDef 20013]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0

[State 20013, BindToParent]
type = null;BindToParent
trigger1 = 1
time = 1

[State 20013, Angle_in_Radians-Randomized]
type = VarSet
trigger1 = 1
fv = 0
value = ((random%360)*pi)/180

[State 20013, Origin_Offset-X]
type = VarSet
trigger1 = !time
v = 0
value = 0
[State 20013, Origin_Offset-Y]
type = VarSet
trigger1 = !time
v = 1
value = 0

[State 20013, Radius]
type = VarSet
trigger1 = 1
v = 2
value = 360;240

[State 20013, StartPos-X]
type = VarSet
trigger1 = 1
v = 3
value = floor(var(0) + ((var(2)*0.5) * cos(fvar(0))))
[State 20013, StartPos-Y]
type = VarSet
trigger1 = 1
v = 4
value = floor(var(1) + ((var(2)*0.5) * sin(fvar(0))))

[State 20013, Lines.1]
type = Explod
trigger1 = time
anim = 16048
pos = var(3),var(4)
postype = p1
vel = -var(3)*0.0425,-var(4)*0.0425
accel = 0,0
id = 16048
ownpal = 0
sprpriority = 0
scale = 0.3,0.6;0.25,0.5
angle = -floor(((fvar(0))*180)/pi)
supermovetime = 9999
pausemovetime = 9999

[State 20013, DestroySelf]
type = DestroySelf
trigger1 = time = 64
trigger2 = parent, stateno != 2001 && parent, stateno != 4100
;---------------------------------------------------------------------------
;Circular Perse(Absorb) Effect 1
[StateDef 20020]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 20020, PosX]
type = VarSet
trigger1 = 1
v = 1
value = -70+random%141
[State 20020, PosY]
type = VarSet
trigger1 = 1
v = 2
value = -70+random%141
[State 20020, Sparkle]
type = Explod
trigger1 = 1
anim = 11550
id = 11550
postype = p1
pos = var(1), var(2)
ownpal = 0
velocity = -Var(1)*0.049, -var(2)*0.049
scale = 0.25, 0.25
sprpriority = 3

[State 20020, DestroySelf]
type = DestroySelf
trigger1 = time < 20
;---------------------------------------------------------------------------
;Circular Perse(Absorb) Effect 2 [ Dead Zone]
[StateDef 20021]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 20021, BindToParent]
type = BindToParent
trigger1 = 1
time = 1
pos = -4,-57

[State 20021, PosX]
type = VarSet
trigger1 = 1
v = 1
value = -80+random%161
[State 20021, PosY]
type = VarSet
trigger1 = 1
v = 2
value = -80+random%161
[State 20021, Sparkle]
type = Explod
trigger1 = 1
anim = 11550
id = 11550
postype = p1
pos = var(1), var(2)
ownpal = 0
velocity = -Var(1)*0.049, -var(2)*0.049
scale = 0.25, 0.25
sprpriority = -1

[State 20021, Scale_for_EnergyBall]
type = VarSet
trigger1 = 1
Fv = 10
value = time*0.005
[State 20021, EnergyBall]
type = Explod
trigger1 = !time
Anim = 12711
Pos = -3, 0
Id = 12711
sprpriority = 0
removeongethit = 1
removetime = -1
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 0
scale = fvar(10), fvar(10)
[State 20021, ModifyEnergyBall]
type = ModifyExplod
trigger1 = 1
ID = 12711
scale = fvar(10),fvar(10)

[State 20021, ChangeState]
type = ChangeState
trigger1 = parent, stateno = 2001
value = 20031
[State 20021, RemoveEnergyBall]
type = RemoveExplod
trigger1 = parent, movetype = H
ID = 12711
[State 20021, DestroySelf]
type = DestroySelf
trigger1 = parent, movetype = H

;---------------------------------------------------------------------------
;Circular Perse(Absorb) Effect 2 [ Dead Zone]
[StateDef 20031]
type = S
physics = N
movetype = I
velset = 0, 0
anim = 9999
ctrl = 0
sprpriority = 0

[State 20031, Scale_for_EnergyBall]
type = VarAdd
trigger1 = 1
Fv = 10
value = 0.0625
[State 20031, EnergyBall]
type = Explod
trigger1 = !time
Anim = 12711
Pos = -3, 0
Id = 12711
sprpriority = 0
removeongethit = 1
removetime = -1
Postype = p1
Bindtime = -1
SuperMove = 1
ownpal = 0
scale = fvar(10), fvar(10)
[State 20031, ModifyEnergyBall]
type = ModifyExplod
trigger1 = 1
ID = 12711
scale = fvar(10),fvar(10)

[State 20031, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = -time*12,-time*12,-time*12

[State 20031, RemoveEnergyBall]
type = RemoveExplod
trigger1 = time = 21
ID = 12711
[State 20031, DestroySelf]
type = DestroySelf
trigger1 = time = 21
;---------------------------------------------------------------------------
;Camera Controller - Pre-teleport Camera freeze - Rush and Crush
[StateDef 99994]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0

[State 99994, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 99994, VelSet-Fall]
type = VelSet
trigger1 = (parent, stateno = var(1)+3) && (parent, time > 50)
x = -6

[State 99994, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != [var(1),var(1)+3])
trigger2 = (parent, stateno != [var(1),var(1)+2]) && (parent, pos y >= 0)

[State 99994, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
;---------------------------------------------------------------------------
;Camera Controller - Falling - Rush and Crush
[StateDef 99995]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0
velset = 0

[State 99995, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 99995, VelSet-Fall]
type = VelAdd
triggerall = pos y < 0
trigger1 = (parent, stateno != var(1)) && time > 50
y = 0.25
[State 99995, VelSet-Stop.At.Floor]
type = VelSet
trigger1 = pos y >= 0
y = 0

[State 99995, PosSet]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 99995, DestroySelf]
type = DestroySelf
trigger1 = (parent, stateno != var(1)) && (parent, stateno != var(1)+1) && (parent, stateno != var(1)+2) && (parent, stateno != var(1)+3)

[State 99995, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
;---------------------------------------------------------------------------
;Camera Controller - Left - DeadZone
[StateDef 99996]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0
velset = -1

[State 99996, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 99996, VelSet]
type = VelSet
trigger1 = time = 24
x = 0
[State 99998, VelSet]
type = VelSet
trigger1 = time = 306
x = 1

[State 99996, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != var(1) && parent, stateno != var(1)+1

[State 99996, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
;---------------------------------------------------------------------------
;Camera Controller - Right - DeadZone
[StateDef 99997]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0
velset = 1

[State 99997, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 99997, VelSet]
type = VelSet
trigger1 = time = 24
x = 0
[State 99997, VelSet]
type = VelSet
trigger1 = time = 306
x = -1

[State 99997, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != var(1) && parent, stateno != var(1)+1

[State 99997, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
;---------------------------------------------------------------------------
;Camera Controller - Throw
[StateDef 99998]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0
velset = -10,0

[State 99998, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 99998, VelSet]
type = VelSet
trigger1 = time = 24
x = 0

[State 99998, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != var(1)

[State 99998, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
;---------------------------------------------------------------------------
;Camera Controller Default
[StateDef 99999]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
sprpriority = 0

[State 99999, VarSet]
type = VarSet
trigger1 = !time
v = 1
value = parent,stateno

[State 99999, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno != var(1)

[State 99999, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 1
persistant = 1
