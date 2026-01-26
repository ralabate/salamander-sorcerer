# salamander-sorcerer
Playing with skeletal animation in Godot

Casting: Carlos on code and game design and level design, Nicholas on visuals and sound design

Constraints: Single-sceen, B&W, top-down fixed-camera... one-hit non-bipedal monsters...

# TODO
- [x] Salamander Model Sheet
- [x] Salamander Model
- [ ] Salamander Rig
- [ ] Salamander Swipe Attack anim
- [ ] Salamander Swipe Attack hitbox anim
- [ ] Salamander Swipe Attack hurtbox anim
- [ ] Salamander Spin Attack anim
- [ ] Salamander Spin Attack hitbox anim
- [ ] Salamander Spin Attack hurtbox anim
- [ ] Salamander Attack FX
- [ ] Character controller
- [x] Level camera placement
- [ ] Level greybox mesh
- [ ] Level env mesh
- [ ] Level env FX
- [ ] Level skybox

# Character Creation Tuts

Reilly Rough Sketch: https://www.youtube.com/watch?v=Vx9NjK2aUeE

Cleanup Sketch: https://www.youtube.com/watch?v=cfB6ol7qdlM

Box Modeling: https://www.youtube.com/watch?v=ik2OHlcwUU0

Joint Placement: https://www.youtube.com/watch?v=urC_TBQQA7o

Weight Painting: https://www.youtube.com/watch?v=xu73Yqgju14

Graph Editor: https://www.youtube.com/watch?v=tii1uu9syPs

Sword Swipe FX: https://www.3dfiggins.com/Store/Support/SwordSwipe/

UV Assignation: https://www.youtube.com/watch?v=6TJr0G71U14

Publish to Godot: https://www.youtube.com/watch?v=XbE6kBlntSU

# File Naming
- [ ] Rigged model is inside CHARACTERNAME_model_vXX.mb
- [ ] Indiviudal animations get their own file CHARACTERNAME_animation_ANIMATIONNAME_vXX.mb
- [ ] Maya referencing is used to pull in the rigged model to the individual animation files (use option "merge into namespace")
- [ ] Individual animations are imported into Godot as CHARACTERNAME_animation_ANIMAITONNAME_vXX.res
- [ ] Model and animation .mb files are kept in /dcc/maya subdiretory of Godot project
- [ ] Model .fbx files are kept in /models subdirectory of Godot project
- [ ] Animation .fbx files are kept in /animations subdirectory of Godot project
- [ ] Animation .res files are kept in /animations subdirectory of Godot project

# IK Leg Rigging Microtutorial

- [ ] Place JNTs (hip, knee, ankle)
- [ ] Orient JNTs
- [ ] Create IK Handle (Click IK Handle shelf tool, then, in outliner,  click hip JNT, then command-click ankle JNT
- [ ] ------------------
- [ ] Create NURBS Circle, edit radius inside shape node
- [ ] Click NURBS Circle, command-lick ankle JNT, match transforms
- [ ] Copy TRS from NURBS Circle into offset matrix TRS, zero out TRS
- [ ] Parent IK handle underneath NURBS Circle
- [ ] -------------------
- [ ] Create NURBS Sphere, edit radius inside shape node
- [ ] Click NURBS Sphere, command-lick knee JNT, match transforms
- [ ] Copy TRS from NURBS Sphere into offset matrix TRS, zero out TRS
- [ ] Click NURBS Sphere, command-click IK handle, create pole vector constraint
- [ ] --------------------
- [ ] Click NURBS Circle, command-click ankle JNT create orient constraint
- [ ] --------------------
- [ ] Select entire JNT hierarchy, command-click mesh, bind skin
- [ ] Paint weights

