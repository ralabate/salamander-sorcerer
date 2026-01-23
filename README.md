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

# IK Leg Rigging Microtutorial

- [ ] Place JNTs (hip, knee, ankle)
- [ ] Orient JNTs
- [ ] Create IK Handle (Click IK Handle shelf tool, then, in outliner,  click hip JNT, then command-click ankle JNT
- [ ] ------------------
- [ ] Create NURBS Circle
- [ ] Scale up NURBS Circle, lock off scale attributes
- [ ] Group NURBS Circle
- [ ] Click newly created group, command-lick ankle JNT, match transforms
- [ ] Adjust group translation and rotation as needed
- [ ] Parent IK handle underneath NURBS Circle
- [ ] -------------------
- [ ] Create NURBS Cone
- [ ] Scale up NURBS Cone, lock off scale attributes
- [ ] Group NURBS Cone
- [ ] Click newly created group, command-click knee JNT, match transforms
- [ ] Adjust group translation and rotation as needed
- [ ] Click NURBS Cone, command-click IK handle, create pole vector constraint
- [ ] --------------------
- [ ] Click NURBS Circle, command-click ankle JNT create orient constraint
- [ ] --------------------
- [ ] Select entire JNT hierarchy, command-click mesh, bind skin
- [ ] Paint weights

