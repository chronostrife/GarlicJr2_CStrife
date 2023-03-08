;===========================================================================
;Player 2 Custom States
;===========================================================================
;------------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 1 : P2 Fly Back
[Statedef 95000]
type = A
movetype= H
physics = N
velset = 0,0

[State 95000, P2Anim]
type = ChangeAnim2
trigger1 = 1
value = 95000

[State 95000, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 95001

;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 2 : P2 Hit Wall
[Statedef 95001]
type = A
movetype= H
physics = N

[State 95001, Velocity]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 95001, Gravity]
type = VelAdd
trigger1 = 1
y = .45

[State 95001, No scroll]
type = ScreenBound
trigger1 = time > 10
value = 1
movecamera = 0,1

[State 95001, Hit wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 0
trigger2 = FrontEdgeBodyDist <= 0
value = 95002

[State 95001, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 3 : P2 Pre-Fall from Wall
[Statedef 95002]
type = A
movetype= H
physics = N

[State 95002, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95002

[State 95002, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 95002, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 95002, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = -24, -50
postype = p1
sprpriority = 3

[State 95002, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 95002, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 95003
;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 4 : P2 Falling from Wall
[Statedef 95003]
type = A
movetype= H
physics = N

[State 95003, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95003

[State 95003, VelSet]
type = VelSet
trigger1 = !Time
x = 2.6 - (-40-pos y)*0.05
y = -5 + (-40-pos y)*0.25

[State 95003, Next]
type = ChangeState
trigger1 = AnimTime = 0
value = 95004

;---------------------------------------------------------------------------
; Wall Bounce : Used in State 1300
; Part 5 : P2 Fall into Ground
[Statedef 95004]
type = A
movetype= H
physics = N

[State 95004, VelSet]
type = VelSet
trigger1 = Time = 0
x = 2.6
y = -3

[State 95004, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .35

[State 95004, ChangeAnim 5050]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 95004, ChangeAnim 5052]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 95004, ChangeAnim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 95004, ChangeAnim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 95004, ChangeAnim 5050]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 95004, ChangeAnim 5052]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 95004, ChangeAnim 5060]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 95004, ChangeAnim 5062]
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 95004, HitGround]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
;---------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95020]
type = A
movetype= H
physics = N
velset = 1,0
ctrl = 0
sprpriority = 2

[State 95020, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 95020

;BLARGH!
[State 95020, HitBy]
type = HitBy
Trigger1 = Time >= 0
value = SCA
time = 1

[State 95020, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95010, End]
type = ChangeState
trigger1 = Time >= 40
value = 50
ctrl = 1
;-------------------------------------------------------------------------
; Throw Toss Player 2 State
[Statedef 95021]
type = A
movetype= H
physics = N
velset = 5,-11
ctrl = 0
sprpriority = 2

[State 95021, Animation]
type = ChangeAnim2
trigger1 = time = 0
value = 95021

[State 95021, PosAdd]
type = PosAdd
Trigger1 = Time = 0
x =  36;12
y = -8;0

[State 95021, 2] ;Gravity
type = VelAdd
Trigger1 = Time > 0
y = 0.44

[State 95021, Damage]
type = LifeAdd
Trigger1 = Time = 0
value = -60

[State 95021, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95021, SelfState] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Grabbed P2
[Statedef 95022]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95022, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95022

[State 95022, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 95025, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95022, End]
type = ChangeState
trigger1 = Time >= 60
value = 50
ctrl = 1
;-------------------------------------------------------------------------
; Over Head Throw Player 2 State 2
[Statedef 95023]
type = A
movetype= H
physics = N
velset = -8,-5
ctrl = 0
sprpriority = 2

[State 95023, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95023

[State 95023, PosAdd]
type = PosAdd
Trigger1 = !Time
x =  -36
y = -8

[State 95023, yAccel]
type = VelAdd
Trigger1 = Time
y = 0.44

[State 95023, Damage]
type = LifeAdd
Trigger1 = !Time
value = -70

[State 95025, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95023, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Face Smash Player 2 State1
[Statedef 95025]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95025, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95025

[State 95025, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95025, End]
type = SelfState
trigger1 = animtime = 0
value = 5050
;---------------------------------------------------------------------------
; Face Smash Player 2 State2
[Statedef 95026]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95026, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95026

[State 95026, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95026, End]
type = SelfState
trigger1 = pos y = 0 || animtime = 0
value = 5100
;---------------------------------------------------------------------------
; Face Smash Player 2 State1
[Statedef 95035]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 95035, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95035

[State 95035, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 0

[State 95035, End]
type = SelfState
trigger1 = animtime = 0
value = 5110
;---------------------------------------------------------------------------
;PLayer 2 Dead Zone Custom state
[StateDef 95908]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 95908, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95908

[State 95908, LifeDrain]
type = LifeAdd
trigger1 = alive
value = -12

[State 95908, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,1
value	= 0

[State 95908, Next]
type = ChangeState
trigger1 = Time = 280
value = 5110
;---------------------------------------------------------------------------
;PLayer 2 Helper Holder Dead Zone Custom state 2
[StateDef 95909]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 95909, P2Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 9999

[State 95910, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -15
y = -45

[State 95910, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0.5
y = -0.5

[State 95909, LifeDrain]
type = LifeAdd
trigger1 = alive=1
value = -12
;------------------
;Pal Fx Variable for Fading to Black
[State 95909, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = 0

[State 95909, VarAdd]
type = VarAdd
trigger1 = (time = [1,256])
v = 10
value = -1
;------------------
;Angle Variable
[State 95909, VarSet]
type = Varset
trigger1 = time = 0
v = 11
value = 0

[State 95909, VarAdd]
type = VarAdd
trigger1 = (time = [1,280])
v = 11
value = 3
;------------------
;Scale Variable
[State 95909, VarSet]
type = Varset
trigger1 = time = 0
fv = 12
value = 1

[State 95909, VarAdd]
type = VarAdd
trigger1 = (time = [1,280])
fv = 12
value = 0.05
;------------------
;Position Variables
;X
[State 95909, VarSet]
type = Varset
trigger1 = time = 0
fv = 13
value = -15

[State 95909, VarAdd]
type = VarAdd
trigger1 = (time = [1,280])
fv = 13
value = -0.5

;Y
[State 95909, VarSet]
type = Varset
trigger1 = time = 0
fv = 14
value = -45

[State 95909, VarAdd]
type = VarAdd
trigger1 = (time = [1,280])
fv = 14
value = -0.5
;------------------
[State 95909, Body.Helper]
type = Helper
trigger1 = timemod = 3,0
name = "False Body"
stateno = 95910
postype = p1
pos = 0, 0
keyctrl = 0
ownpal = 1
id = 95910
size.xscale = fVar(12)
size.yscale = fVar(12)
ignorehitpause = 1
pausemovetime = 9999
supermovetime = 9999
persistent = 1
;---------------------------------------------------------------------------
;PLayer 2 Dead Zone Custom state 2
[StateDef 95910]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 95910, LifeDrain]
type = LifeAdd
trigger1 = alive
value = -1

[State 95910, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95909

[State 95910, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95910, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -15
y = -45

[State 95910, VelSet]
type = null;VelSet
trigger1 = !Time
x = 0.5
y = -0.5
;----------------------------
;Pal Fx Variable for going Invisible
[State 95910, VarSet]
type = Varset
trigger1 = time=0
fv = 9
value = 0

[State 95910, VarAdd]
type = VarAdd
trigger1 = 1
fv = 9
value = 0.75

;Alpha
[State 95910, Alpha]
type = null;Trans
trigger1 = 1
trans = addalpha
alpha = floor(256-fVar(9)), floor(fVar(9))
;------------------------------
;Pal Fx Variable for Fading to Black
[State 95910, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = 0

[State 95910, VarAdd]
type = VarAdd
trigger1 = (time = [1,256])
v = 10
value = -1

[State 95910, PalFX]
type = PalFX
trigger1 = timemod = 1,0
time = 2
add = Var(10), Var(10), Var(10)

;----------------------------
;Angle Variable
[State 95910, VarSet]
type = Varset
trigger1 = time = 0
fv = 11
value = 3

[State 95910, VarAdd]
type = VarAdd
trigger1 = 1
fv = 11
value = 0.075

;Angle/NoHit/NoShadow
[State 95910, AngleAdd]
type = AngleAdd
trigger1 = 1
value = fVar(11)

[State 95910, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = ifelse(time < 499,1-(time*0.003),0.001), ifelse(time < 499,1-(time*0.003),0.001)
;------------------------------
[State 95910, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;If Alive
[State 95910, PosAdd]
type = PosAdd
triggerall = alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
x = 15
y = 45
[State 95910, AngleSet]
type = Angleset
triggerall = alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
value = 0
[State 95910, SelfState]
type = Selfstate
triggerall = alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
value = 5050
;If Dead
[State 95910, PosAdd]
type = PosAdd
triggerall = !alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
y = 999999
[State 0, SelfState]
type = SelfState
triggerall = !alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
value = 5150

;If Alive 2 enemies
[State 95910, PosAdd]
type = PosAdd
triggerall = alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
x = 15
y = 45
[State 95910, AngleSet]
type = Angleset
triggerall = alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
value = 0
[State 95910, SelfState]
type = Selfstate
triggerall = alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
value = 5050
;If Dead 2 enemies
[State 95910, PosAdd]
type = PosAdd
triggerall = !alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
y = 999999
[State 0, SelfState]
type = SelfState
triggerall = !alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
value = 5150
;----------------------------------------
;Player 2 Dead Zone Custom state 3
[StateDef 95911]
type    = L
movetype= H
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 95911, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 95911

[State 95911, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 95911, PosAdd]
type = PosSet
trigger1 = Time = 0
y = 0

[State 95911, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow
;---------------------------------------------------------------------------
; Hold P2 by Mid (Upright) (uses anim 5031, 0)
[Statedef 965031]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 965031, NoPush]
type = PlayerPush
Trigger1 = 1
value = 0

[State 965031, Animation]
type = ChangeAnim2
trigger1 = !time
value = 965031

[State 965031, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 965031, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 965031, PosAdd]
type = PosAdd
trigger1 = Time = 40
y = -const(size.mid.pos.y);60

[State 965031, End]
type = ChangeState
trigger1 = Time = 40
value = 5030
ctrl = 1
;---------------------------------------------------------------------------
; Hold P2 by Head (uses anim 5032, 0)
[Statedef 965032]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 965032, NoPush]
type = PlayerPush
Trigger1 = 1
value = 0

[State 965032, Animation]
type = ChangeAnim2
trigger1 = !time
value = 965032

[State 965032, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 965032, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 965032, End]
type = ChangeState
trigger1 = Time >= 60
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Hold P2 by Head2 (uses anim 5032, 10)
[Statedef 965033]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 965033, NoPush]
type = PlayerPush
Trigger1 = 1
value = 0

[State 965033, Turn_for_Garlic_Jr]
type = Turn
trigger1 = !time

[State 965033, Animation]
type = ChangeAnim2
trigger1 = !time
value = 965033

[State 965033, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 965033, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 965033, End]
type = ChangeState
trigger1 = Time >= 8
value = 50
ctrl = 1
;-------------------------------------------------------------------------
; Throw P2 Hard
[Statedef 965034]
type = A
movetype= H
physics = N
velset = -15,-5.8
ctrl = 0
sprpriority = 2

[State 965034, NoPush]
type = PlayerPush
Trigger1 = 1
value = 0

[State 965034, Animation]
type = ChangeAnim2
trigger1 = !time
value = 95021

[State 965034, Damage]
type = LifeAdd
Trigger1 = !time 
value = -80

[State 965034, Fake_Gravity]
type = VelAdd
Trigger1 = time
y = 0.44

[State 965034, ScreenBound]
type = ScreenBound
trigger1 = time < 16
movecamera = 1,1
value	= 1
persistant = 1

[State 965034, No_Scroll]
type = ScreenBound
triggerall = time >= 16;Pos y < -15 && 
trigger1 = BackEdgeBodyDist < 45
trigger2 = FrontEdgeBodyDist < 45
value = 1
movecamera = 0,1

[State 965034, Hit_Wall]
type = ChangeState
triggerall = Pos y < -15
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 95002

[State 965034, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
; Hold P2 by the waist (uses anim 5031, 20)[Falling Back]
[Statedef 965081]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 965081, NoPush]
type = PlayerPush
Trigger1 = 1
value = 0

[State 965081, Animation]
type = ChangeAnim2
trigger1 = !time
value = 965081

[State 965081, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 965081, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 965081, End]
type = ChangeState
trigger1 = Time >= 60
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Hold P2 by the waist (uses anim 5031, 30)[Back to Ground]
[Statedef 965082]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 965082, NoPush]
type = PlayerPush
Trigger1 = 1
value = 0

[State 965082, Animation]
type = ChangeAnim2
trigger1 = !time
value = 965082

[State 965082, HitBy]
type = HitBy
Trigger1 = 1
value = SCA
time = 1

[State 965082, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 965082, End]
type = ChangeState
trigger1 = Time >= 60
value = 50
ctrl = 1
;---------------------------------------------------------------------------
; Hold P2 by the waist (uses anim 5040, 30)[Bounce]
[Statedef 965091]
type = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 965091, Turn]
type = Turn
trigger1 = !time

[State 965091, VelSet]
type = VelSet
trigger1 = !time
x = -3
y = -4

[State 965091, NoPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 965091, Animation]
type = ChangeAnim
trigger1 = !time
value = 5101

[State 965091, HitBy]
type = HitBy
trigger1 = 1
value = SCA
time = 1

[State 965091, Gravity]
type = Gravity
trigger1 = 1

[State 965091, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 965091, End]
type = SelfState
trigger1 = pos y >= 0
value = 5100
ctrl = 1
;---------------------------------------------------------------------------
;PLayer 2 Dead Zone Custom state 2
[StateDef 995910]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 995910, LifeDrain]
type = LifeAdd
trigger1 = alive
value = -1

[State 995910, P2Anim]
type = ChangeAnim2
trigger1 = !Time
value = 9695909

[State 995910, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 995910, PosAdd]
type = null;PosAdd
trigger1 = !Time
x = -15
y = -45

;----------------------------
;Pal Fx Variable for going Invisible
[State 995910, VarSet]
type = Varset
trigger1 = !time
fv = 9
value = 0

[State 995910, VarAdd]
type = VarAdd
trigger1 = time>200
fv = 9
value = 3

;Alpha
[State 995910, Alpha]
type = Trans
trigger1 = time>200
trans = addalpha
alpha = floor(256-fVar(9)), floor(fVar(9))
;------------------------------
;Pal Fx Variable for Fading to Black
[State 995910, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = 0
[State 995910, VarAdd]
type = VarAdd
trigger1 = (time = [1,256])
v = 10
value = -1
[State 995910, PalFX]
type = PalFX
trigger1 = timemod = 1,0
time = 2
add = Var(10), Var(10), Var(10)

;----------------------------
;Angle Variable
[State 995910, VarSet]
type = Varset
trigger1 = time = 0
fv = 11
value = 3
[State 995910, VarAdd]
type = VarAdd
trigger1 = 1
fv = 11
value = 0.075
;Angle/NoHit/NoShadow
[State 995910, AngleAdd]
type = AngleAdd
trigger1 = 1
value = fVar(11)
[State 995910, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = ifelse(time < 499,1-(time*0.003),0.001), ifelse(time < 499,1-(time*0.003),0.001)
;------------------------------
[State 995910, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 995910, ChangeState]
type = Null
trigger1 = 0 ;Deadzone will force the change to 995911
value = 995911

;If all else fails...
[State 995910, SelfState]
type = SelfState
triggerall = alive
trigger1 = time = 325
value = 5050
[State 995911, PosAdd] ;offscreen
type = PosAdd
triggerall = alive
trigger1 = !time
y = -999
;If Dead
[State 995910, PosAdd]
type = PosAdd
triggerall = !alive
trigger1 = time = 325
y = 999999
[State 995910, SelfState]
type = SelfState
triggerall = !alive
trigger1 = time = 325
value = 5150


;---------------------------------------------------------------------------
;PLayer 2 Dead Zone Custom state 2 - invisible
[StateDef 995911]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 995910, LifeDrain]
type = LifeAdd
trigger1 = alive && time < 91
value = -1

[State 995911, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 995911, P2Anim] ;invisanim
type = ChangeAnim2
trigger1 = !time
value = 9695911
[State 995911, PosAdd] ;offscreen
type = null;PosAdd
trigger1 = !time
y = 999999

;If Dead, Then Die
[State 995911, SelfState]
type = SelfState
triggerall = !alive
trigger1 = !time
value = 5150

;---------------------------------------------------------------------------
;PLayer 2 Dead Zone Custom state 3 - Spit out of Deadzone
[StateDef 995912]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 995912, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0
[State 995912, P2Anim] ;invisanim
type = ChangeAnim2
trigger1 = !time
value = 9695911
[State 995912, P2Anim2]
type = ChangeAnim2
trigger1 = time = 20
value = 9695909

;Scale Variable
[State 995912, VarSet]
type = Varset
trigger1 = !time
fv = 12
value = 0.04
[State 995912, VarAdd]
type = VarAdd
trigger1 = time > 20 && fvar(12) < 1.0
fv = 12
value = 0.0465
[State 995912, AngleSet]
type = AngleSet
trigger1 = 1
value = 0
[State 995912, AngleDraw]
type = AngleDraw
trigger1 = time >= 20
scale = fvar(12),fvar(12)

;Pal Fx Variable for Fading from Black
[State 995910, VarSet]
type = Varset
trigger1 = !time
v = 10
value = -256
[State 995910, VarAdd]
type = VarAdd
trigger1 = (time = [20,40])
v = 10
value = 12
[State 995910, PalFX]
type = PalFX
trigger1 = time < 45
time = 1
add = Var(10), Var(10), Var(10)

[State 995912, AfterImage]
type = AfterImage
trigger1 = time = 40
time = 20
length = 8
palinvertall = 0
palbright = 0,0,0
palcontrast = 100,100,100
paladd = 0,0,0
timegap = 1
framegap = 1
trans = Add

[State 995912, PosAdd]
type = PosAdd
trigger1 = time = 40
x = const(size.mid.pos.x)
y = -const(size.mid.pos.y)

[State 995912, VelSet]
type = VelSet
trigger1 = time = 40
x = 8*ifelse(p2dist x > 0,-1,1)
y = -3

;If Alive, Then Fall
[State 995912, SelfState]
type = SelfState
triggerall = alive
trigger1 = time >= 40
value = 5050

;If Dead, Then Die
[State 995912, SelfState]
type = SelfState
trigger1 = !alive
value = 5150

;---------------------------------------------------------------------------
;PLayer 2 Dead Zone Custom state 2
[StateDef 995919]
type = L
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 995911, LifeDrain]
type = LifeAdd
trigger1 = alive
trigger2 = alive & time%2=0
value = -1

[State 995911, P2Anim]
type = ChangeAnim2
trigger1 = !Time
value = 95909

[State 995911, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0
value	= 0

[State 995911, PosAdd]
type = PosAdd
trigger1 = !Time
x = -15
y = -45

;----------------------------
;Pal Fx Variable for going Invisible
[State 995911, VarSet]
type = Varset
trigger1 = time=0
fv = 9
value = 0

[State 995911, VarAdd]
type = VarAdd
trigger1 = 1
fv = 9
value = 0.75

;Alpha
[State 995911, Alpha]
type = null;Trans
trigger1 = 1
trans = addalpha
alpha = floor(256-fVar(9)), floor(fVar(9))
;------------------------------
;Pal Fx Variable for Fading to Black
[State 995911, VarSet]
type = Varset
trigger1 = time = 0
v = 10
value = 0

[State 995911, VarAdd]
type = VarAdd
trigger1 = (time = [1,256])
v = 10
value = -1

[State 995911, PalFX]
type = PalFX
trigger1 = timemod = 1,0
time = 2
add = Var(10), Var(10), Var(10)

;----------------------------
;Angle Variable
[State 995911, VarSet]
type = Varset
trigger1 = time = 0
fv = 11
value = 3

[State 995911, VarAdd]
type = VarAdd
trigger1 = 1
fv = 11
value = 0.075

;Angle/NoHit/NoShadow
[State 995911, AngleAdd]
type = AngleAdd
trigger1 = 1
value = fVar(11)

[State 995911, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = ifelse(time < 499,1-(time*0.003),0.001), ifelse(time < 499,1-(time*0.003),0.001)
;------------------------------
[State 995911, NoHit]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;If Alive
[State 995911, PosAdd]
type = PosAdd
triggerall = alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
x = 15
y = 45
[State 995911, AngleSet]
type = Angleset
triggerall = alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
value = 0
[State 995911, SelfState]
type = Selfstate
triggerall = alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
value = 5050
;If Dead
[State 995911, PosAdd]
type = PosAdd
triggerall = !alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
y = 999999
[State 0, SelfState]
type = SelfState
triggerall = !alive && numenemy
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
value = 5150

;If Alive 2 enemies
[State 995911, PosAdd]
type = PosAdd
triggerall = alive && numenemy=2 
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
x = 15
y = 45
[State 995911, AngleSet]
type = Angleset
triggerall = alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
value = 0
[State 995911, SelfState]
type = Selfstate
triggerall = alive && numenemy=2 && prevstateno != 5050
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
value = 5050
;If Dead 2 enemies
[State 995911, PosAdd]
type = PosAdd
triggerall = !alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
y = 999999
[State 995911, SelfState]
type = SelfState
triggerall = !alive && numenemy=2
trigger1 = (enemy(0), name ="GarlicJr_CS" && enemy(0), stateno != 2001)
trigger1 = (enemy(1), name ="GarlicJr_CS" && enemy(1), stateno != 2001)
value = 5150