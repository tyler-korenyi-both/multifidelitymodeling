??

??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??	
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:(*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:(*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(8*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:(8*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:8*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8@* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:8@*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:@*
dtype0
?
outputlayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*#
shared_nameoutputlayer/kernel
z
&outputlayer/kernel/Read/ReadVariableOpReadVariableOpoutputlayer/kernel*
_output_shapes
:	@?*
dtype0
y
outputlayer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameoutputlayer/bias
r
$outputlayer/bias/Read/ReadVariableOpReadVariableOpoutputlayer/bias*
_output_shapes	
:?*
dtype0
x
cond_1/Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *#
shared_namecond_1/Adamax/iter
q
&cond_1/Adamax/iter/Read/ReadVariableOpReadVariableOpcond_1/Adamax/iter*
_output_shapes
: *
dtype0	
|
cond_1/Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namecond_1/Adamax/beta_1
u
(cond_1/Adamax/beta_1/Read/ReadVariableOpReadVariableOpcond_1/Adamax/beta_1*
_output_shapes
: *
dtype0
|
cond_1/Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_namecond_1/Adamax/beta_2
u
(cond_1/Adamax/beta_2/Read/ReadVariableOpReadVariableOpcond_1/Adamax/beta_2*
_output_shapes
: *
dtype0
z
cond_1/Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namecond_1/Adamax/decay
s
'cond_1/Adamax/decay/Read/ReadVariableOpReadVariableOpcond_1/Adamax/decay*
_output_shapes
: *
dtype0
?
cond_1/Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namecond_1/Adamax/learning_rate
?
/cond_1/Adamax/learning_rate/Read/ReadVariableOpReadVariableOpcond_1/Adamax/learning_rate*
_output_shapes
: *
dtype0
x
current_loss_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namecurrent_loss_scale
q
&current_loss_scale/Read/ReadVariableOpReadVariableOpcurrent_loss_scale*
_output_shapes
: *
dtype0
h

good_stepsVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
good_steps
a
good_steps/Read/ReadVariableOpReadVariableOp
good_steps*
_output_shapes
: *
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*/
shared_name cond_1/Adamax/dense_8/kernel/m
?
2cond_1/Adamax/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_8/kernel/m*
_output_shapes

:(*
dtype0
?
cond_1/Adamax/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*-
shared_namecond_1/Adamax/dense_8/bias/m
?
0cond_1/Adamax/dense_8/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_8/bias/m*
_output_shapes
:(*
dtype0
?
cond_1/Adamax/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(8*/
shared_name cond_1/Adamax/dense_9/kernel/m
?
2cond_1/Adamax/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_9/kernel/m*
_output_shapes

:(8*
dtype0
?
cond_1/Adamax/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*-
shared_namecond_1/Adamax/dense_9/bias/m
?
0cond_1/Adamax/dense_9/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_9/bias/m*
_output_shapes
:8*
dtype0
?
cond_1/Adamax/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8@*0
shared_name!cond_1/Adamax/dense_10/kernel/m
?
3cond_1/Adamax/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_10/kernel/m*
_output_shapes

:8@*
dtype0
?
cond_1/Adamax/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_10/bias/m
?
1cond_1/Adamax/dense_10/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_10/bias/m*
_output_shapes
:@*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/m
?
6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/m*
_output_shapes
:	@?*
dtype0
?
 cond_1/Adamax/outputlayer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" cond_1/Adamax/outputlayer/bias/m
?
4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/outputlayer/bias/m*
_output_shapes	
:?*
dtype0
?
cond_1/Adamax/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*/
shared_name cond_1/Adamax/dense_8/kernel/v
?
2cond_1/Adamax/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_8/kernel/v*
_output_shapes

:(*
dtype0
?
cond_1/Adamax/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*-
shared_namecond_1/Adamax/dense_8/bias/v
?
0cond_1/Adamax/dense_8/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_8/bias/v*
_output_shapes
:(*
dtype0
?
cond_1/Adamax/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(8*/
shared_name cond_1/Adamax/dense_9/kernel/v
?
2cond_1/Adamax/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_9/kernel/v*
_output_shapes

:(8*
dtype0
?
cond_1/Adamax/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*-
shared_namecond_1/Adamax/dense_9/bias/v
?
0cond_1/Adamax/dense_9/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_9/bias/v*
_output_shapes
:8*
dtype0
?
cond_1/Adamax/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8@*0
shared_name!cond_1/Adamax/dense_10/kernel/v
?
3cond_1/Adamax/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_10/kernel/v*
_output_shapes

:8@*
dtype0
?
cond_1/Adamax/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_10/bias/v
?
1cond_1/Adamax/dense_10/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_10/bias/v*
_output_shapes
:@*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/v
?
6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/v*
_output_shapes
:	@?*
dtype0
?
 cond_1/Adamax/outputlayer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" cond_1/Adamax/outputlayer/bias/v
?
4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/outputlayer/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?3
value?3B?3 B?3
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?
$
loss_scale
%base_optimizer
&iter

'beta_1

(beta_2
	)decay
*learning_ratemVmWmXmYmZm[m\m]v^v_v`vavbvcvdve
8
0
1
2
3
4
5
6
7
 
8
0
1
2
3
4
5
6
7
?
trainable_variables
regularization_losses

+layers
,metrics
-layer_metrics
		variables
.layer_regularization_losses
/non_trainable_variables
 
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
0non_trainable_variables
trainable_variables
regularization_losses

1layers
2metrics
3layer_metrics
	variables
4layer_regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
5non_trainable_variables
trainable_variables
regularization_losses

6layers
7metrics
8layer_metrics
	variables
9layer_regularization_losses
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
:non_trainable_variables
trainable_variables
regularization_losses

;layers
<metrics
=layer_metrics
	variables
>layer_regularization_losses
^\
VARIABLE_VALUEoutputlayer/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEoutputlayer/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
?non_trainable_variables
 trainable_variables
!regularization_losses

@layers
Ametrics
Blayer_metrics
"	variables
Clayer_regularization_losses
 
 
QO
VARIABLE_VALUEcond_1/Adamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcond_1/Adamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEcond_1/Adamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEcond_1/Adamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEcond_1/Adamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
#
0
1
2
3
4

F0
G1
H2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
jh
VARIABLE_VALUEcurrent_loss_scaleBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
good_steps:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUE
4
	Itotal
	Jcount
K	variables
L	keras_api
D
	Mtotal
	Ncount
O
_fn_kwargs
P	variables
Q	keras_api
4
	Rtotal
	Scount
T	variables
U	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

K	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

M0
N1

P	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

R0
S1

T	variables
??
VARIABLE_VALUEcond_1/Adamax/dense_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_10/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_10/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_10/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_10/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_5Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_5dense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasoutputlayer/kerneloutputlayer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_589184
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp2cond_1/Adamax/dense_8/kernel/m/Read/ReadVariableOp0cond_1/Adamax/dense_8/bias/m/Read/ReadVariableOp2cond_1/Adamax/dense_9/kernel/m/Read/ReadVariableOp0cond_1/Adamax/dense_9/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_10/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_10/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp2cond_1/Adamax/dense_8/kernel/v/Read/ReadVariableOp0cond_1/Adamax/dense_8/bias/v/Read/ReadVariableOp2cond_1/Adamax/dense_9/kernel/v/Read/ReadVariableOp0cond_1/Adamax/dense_9/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_10/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_10/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_589666
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_8/kernel/mcond_1/Adamax/dense_8/bias/mcond_1/Adamax/dense_9/kernel/mcond_1/Adamax/dense_9/bias/mcond_1/Adamax/dense_10/kernel/mcond_1/Adamax/dense_10/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_8/kernel/vcond_1/Adamax/dense_8/bias/vcond_1/Adamax/dense_9/kernel/vcond_1/Adamax/dense_9/bias/vcond_1/Adamax/dense_10/kernel/vcond_1/Adamax/dense_10/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_589787ݟ
?
?
C__inference_dense_8_layer_call_and_return_conditional_losses_588754

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:(2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????(2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
Tanh?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????(2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?
C__inference_model_4_layer_call_and_return_conditional_losses_588859

inputs 
dense_8_588755:(
dense_8_588757:( 
dense_9_588780:(8
dense_9_588782:8!
dense_10_588805:8@
dense_10_588807:@%
outputlayer_588829:	@?!
outputlayer_588831:	?
identity?? dense_10/StatefulPartitionedCall?1dense_10/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpm
dense_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_8/Cast?
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8/Cast:y:0dense_8_588755dense_8_588757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_5887542!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_588780dense_9_588782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_5887792!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_588805dense_10_588807*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5888042"
 dense_10/StatefulPartitionedCall?
outputlayer/CastCast)dense_10/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_588829outputlayer_588831*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_5888282%
#outputlayer/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_588755*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_588780*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_10_588805*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_588829*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mul?
IdentityIdentity,outputlayer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_589532P
=outputlayer_kernel_regularizer_square_readvariableop_resource:	@?
identity??4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=outputlayer_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mulp
IdentityIdentity&outputlayer/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp
??
?
"__inference__traced_restore_589787
file_prefix1
assignvariableop_dense_8_kernel:(-
assignvariableop_1_dense_8_bias:(3
!assignvariableop_2_dense_9_kernel:(8-
assignvariableop_3_dense_9_bias:84
"assignvariableop_4_dense_10_kernel:8@.
 assignvariableop_5_dense_10_bias:@8
%assignvariableop_6_outputlayer_kernel:	@?2
#assignvariableop_7_outputlayer_bias:	?/
%assignvariableop_8_cond_1_adamax_iter:	 1
'assignvariableop_9_cond_1_adamax_beta_1: 2
(assignvariableop_10_cond_1_adamax_beta_2: 1
'assignvariableop_11_cond_1_adamax_decay: 9
/assignvariableop_12_cond_1_adamax_learning_rate: 0
&assignvariableop_13_current_loss_scale: (
assignvariableop_14_good_steps:	 #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: %
assignvariableop_19_total_2: %
assignvariableop_20_count_2: D
2assignvariableop_21_cond_1_adamax_dense_8_kernel_m:(>
0assignvariableop_22_cond_1_adamax_dense_8_bias_m:(D
2assignvariableop_23_cond_1_adamax_dense_9_kernel_m:(8>
0assignvariableop_24_cond_1_adamax_dense_9_bias_m:8E
3assignvariableop_25_cond_1_adamax_dense_10_kernel_m:8@?
1assignvariableop_26_cond_1_adamax_dense_10_bias_m:@I
6assignvariableop_27_cond_1_adamax_outputlayer_kernel_m:	@?C
4assignvariableop_28_cond_1_adamax_outputlayer_bias_m:	?D
2assignvariableop_29_cond_1_adamax_dense_8_kernel_v:(>
0assignvariableop_30_cond_1_adamax_dense_8_bias_v:(D
2assignvariableop_31_cond_1_adamax_dense_9_kernel_v:(8>
0assignvariableop_32_cond_1_adamax_dense_9_bias_v:8E
3assignvariableop_33_cond_1_adamax_dense_10_kernel_v:8@?
1assignvariableop_34_cond_1_adamax_dense_10_bias_v:@I
6assignvariableop_35_cond_1_adamax_outputlayer_kernel_v:	@?C
4assignvariableop_36_cond_1_adamax_outputlayer_bias_v:	?
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_outputlayer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_outputlayer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_cond_1_adamax_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp'assignvariableop_9_cond_1_adamax_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp(assignvariableop_10_cond_1_adamax_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp'assignvariableop_11_cond_1_adamax_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_cond_1_adamax_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_current_loss_scaleIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_good_stepsIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp2assignvariableop_21_cond_1_adamax_dense_8_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp0assignvariableop_22_cond_1_adamax_dense_8_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp2assignvariableop_23_cond_1_adamax_dense_9_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp0assignvariableop_24_cond_1_adamax_dense_9_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_10_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_10_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_cond_1_adamax_outputlayer_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp4assignvariableop_28_cond_1_adamax_outputlayer_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp2assignvariableop_29_cond_1_adamax_dense_8_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp0assignvariableop_30_cond_1_adamax_dense_8_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp2assignvariableop_31_cond_1_adamax_dense_9_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp0assignvariableop_32_cond_1_adamax_dense_9_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_10_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_10_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp6assignvariableop_35_cond_1_adamax_outputlayer_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_cond_1_adamax_outputlayer_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37f
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_38?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
(__inference_model_4_layer_call_fn_588878
input_5
unknown:(
	unknown_0:(
	unknown_1:(8
	unknown_2:8
	unknown_3:8@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_5888592
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
D__inference_dense_10_layer_call_and_return_conditional_losses_589447

inputs0
matmul_readvariableop_resource:8@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_10/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8@*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8@2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Tanh?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????8: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?9
?
!__inference__wrapped_model_588727
input_5@
.model_4_dense_8_matmul_readvariableop_resource:(=
/model_4_dense_8_biasadd_readvariableop_resource:(@
.model_4_dense_9_matmul_readvariableop_resource:(8=
/model_4_dense_9_biasadd_readvariableop_resource:8A
/model_4_dense_10_matmul_readvariableop_resource:8@>
0model_4_dense_10_biasadd_readvariableop_resource:@E
2model_4_outputlayer_matmul_readvariableop_resource:	@?B
3model_4_outputlayer_biasadd_readvariableop_resource:	?
identity??'model_4/dense_10/BiasAdd/ReadVariableOp?&model_4/dense_10/MatMul/ReadVariableOp?&model_4/dense_8/BiasAdd/ReadVariableOp?%model_4/dense_8/MatMul/ReadVariableOp?&model_4/dense_9/BiasAdd/ReadVariableOp?%model_4/dense_9/MatMul/ReadVariableOp?*model_4/outputlayer/BiasAdd/ReadVariableOp?)model_4/outputlayer/MatMul/ReadVariableOp~
model_4/dense_8/CastCastinput_5*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_4/dense_8/Cast?
%model_4/dense_8/MatMul/ReadVariableOpReadVariableOp.model_4_dense_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02'
%model_4/dense_8/MatMul/ReadVariableOp?
model_4/dense_8/MatMul/CastCast-model_4/dense_8/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(2
model_4/dense_8/MatMul/Cast?
model_4/dense_8/MatMulMatMulmodel_4/dense_8/Cast:y:0model_4/dense_8/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????(2
model_4/dense_8/MatMul?
&model_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02(
&model_4/dense_8/BiasAdd/ReadVariableOp?
model_4/dense_8/BiasAdd/CastCast.model_4/dense_8/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:(2
model_4/dense_8/BiasAdd/Cast?
model_4/dense_8/BiasAddBiasAdd model_4/dense_8/MatMul:product:0 model_4/dense_8/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????(2
model_4/dense_8/BiasAdd?
model_4/dense_8/TanhTanh model_4/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
model_4/dense_8/Tanh?
%model_4/dense_9/MatMul/ReadVariableOpReadVariableOp.model_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:(8*
dtype02'
%model_4/dense_9/MatMul/ReadVariableOp?
model_4/dense_9/MatMul/CastCast-model_4/dense_9/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(82
model_4/dense_9/MatMul/Cast?
model_4/dense_9/MatMulMatMulmodel_4/dense_8/Tanh:y:0model_4/dense_9/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
model_4/dense_9/MatMul?
&model_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02(
&model_4/dense_9/BiasAdd/ReadVariableOp?
model_4/dense_9/BiasAdd/CastCast.model_4/dense_9/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
model_4/dense_9/BiasAdd/Cast?
model_4/dense_9/BiasAddBiasAdd model_4/dense_9/MatMul:product:0 model_4/dense_9/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
model_4/dense_9/BiasAdd?
model_4/dense_9/TanhTanh model_4/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
model_4/dense_9/Tanh?
&model_4/dense_10/MatMul/ReadVariableOpReadVariableOp/model_4_dense_10_matmul_readvariableop_resource*
_output_shapes

:8@*
dtype02(
&model_4/dense_10/MatMul/ReadVariableOp?
model_4/dense_10/MatMul/CastCast.model_4/dense_10/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8@2
model_4/dense_10/MatMul/Cast?
model_4/dense_10/MatMulMatMulmodel_4/dense_9/Tanh:y:0 model_4/dense_10/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_10/MatMul?
'model_4/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_4_dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_4/dense_10/BiasAdd/ReadVariableOp?
model_4/dense_10/BiasAdd/CastCast/model_4/dense_10/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
model_4/dense_10/BiasAdd/Cast?
model_4/dense_10/BiasAddBiasAdd!model_4/dense_10/MatMul:product:0!model_4/dense_10/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_10/BiasAdd?
model_4/dense_10/TanhTanh!model_4/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_4/dense_10/Tanh?
model_4/outputlayer/CastCastmodel_4/dense_10/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
model_4/outputlayer/Cast?
)model_4/outputlayer/MatMul/ReadVariableOpReadVariableOp2model_4_outputlayer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02+
)model_4/outputlayer/MatMul/ReadVariableOp?
model_4/outputlayer/MatMulMatMulmodel_4/outputlayer/Cast:y:01model_4/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_4/outputlayer/MatMul?
*model_4/outputlayer/BiasAdd/ReadVariableOpReadVariableOp3model_4_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*model_4/outputlayer/BiasAdd/ReadVariableOp?
model_4/outputlayer/BiasAddBiasAdd$model_4/outputlayer/MatMul:product:02model_4/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_4/outputlayer/BiasAdd?
model_4/outputlayer/LeakyRelu	LeakyRelu$model_4/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2
model_4/outputlayer/LeakyRelu?
IdentityIdentity+model_4/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp(^model_4/dense_10/BiasAdd/ReadVariableOp'^model_4/dense_10/MatMul/ReadVariableOp'^model_4/dense_8/BiasAdd/ReadVariableOp&^model_4/dense_8/MatMul/ReadVariableOp'^model_4/dense_9/BiasAdd/ReadVariableOp&^model_4/dense_9/MatMul/ReadVariableOp+^model_4/outputlayer/BiasAdd/ReadVariableOp*^model_4/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2R
'model_4/dense_10/BiasAdd/ReadVariableOp'model_4/dense_10/BiasAdd/ReadVariableOp2P
&model_4/dense_10/MatMul/ReadVariableOp&model_4/dense_10/MatMul/ReadVariableOp2P
&model_4/dense_8/BiasAdd/ReadVariableOp&model_4/dense_8/BiasAdd/ReadVariableOp2N
%model_4/dense_8/MatMul/ReadVariableOp%model_4/dense_8/MatMul/ReadVariableOp2P
&model_4/dense_9/BiasAdd/ReadVariableOp&model_4/dense_9/BiasAdd/ReadVariableOp2N
%model_4/dense_9/MatMul/ReadVariableOp%model_4/dense_9/MatMul/ReadVariableOp2X
*model_4/outputlayer/BiasAdd/ReadVariableOp*model_4/outputlayer/BiasAdd/ReadVariableOp2V
)model_4/outputlayer/MatMul/ReadVariableOp)model_4/outputlayer/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?	
?
(__inference_model_4_layer_call_fn_589031
input_5
unknown:(
	unknown_0:(
	unknown_1:(8
	unknown_2:8
	unknown_3:8@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_5889912
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
C__inference_dense_8_layer_call_and_return_conditional_losses_589379

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????(2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:(2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????(2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
Tanh?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????(2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
(__inference_model_4_layer_call_fn_589333

inputs
unknown:(
	unknown_0:(
	unknown_1:(8
	unknown_2:8
	unknown_3:8@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_5888592
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_10_layer_call_fn_589456

inputs
unknown:8@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5888042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????8: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?A
?
C__inference_model_4_layer_call_and_return_conditional_losses_589081
input_5 
dense_8_589035:(
dense_8_589037:( 
dense_9_589040:(8
dense_9_589042:8!
dense_10_589045:8@
dense_10_589047:@%
outputlayer_589051:	@?!
outputlayer_589053:	?
identity?? dense_10/StatefulPartitionedCall?1dense_10/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpn
dense_8/CastCastinput_5*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_8/Cast?
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8/Cast:y:0dense_8_589035dense_8_589037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_5887542!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_589040dense_9_589042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_5887792!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_589045dense_10_589047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5888042"
 dense_10/StatefulPartitionedCall?
outputlayer/CastCast)dense_10/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_589051outputlayer_589053*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_5888282%
#outputlayer/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_589035*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_589040*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_10_589045*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_589051*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mul?
IdentityIdentity,outputlayer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?
?
__inference_loss_fn_1_589510K
9dense_9_kernel_regularizer_square_readvariableop_resource:(8
identity??0dense_9/kernel/Regularizer/Square/ReadVariableOp?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_9_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mull
IdentityIdentity"dense_9/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp
?A
?
C__inference_model_4_layer_call_and_return_conditional_losses_588991

inputs 
dense_8_588945:(
dense_8_588947:( 
dense_9_588950:(8
dense_9_588952:8!
dense_10_588955:8@
dense_10_588957:@%
outputlayer_588961:	@?!
outputlayer_588963:	?
identity?? dense_10/StatefulPartitionedCall?1dense_10/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpm
dense_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_8/Cast?
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8/Cast:y:0dense_8_588945dense_8_588947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_5887542!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_588950dense_9_588952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_5887792!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_588955dense_10_588957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5888042"
 dense_10/StatefulPartitionedCall?
outputlayer/CastCast)dense_10/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_588961outputlayer_588963*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_5888282%
#outputlayer/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_588945*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_588950*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_10_588955*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_588961*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mul?
IdentityIdentity,outputlayer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_9_layer_call_and_return_conditional_losses_589413

inputs0
matmul_readvariableop_resource:(8-
biasadd_readvariableop_resource:8
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(8*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(82
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:8*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????82
Tanh?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????82

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
D__inference_dense_10_layer_call_and_return_conditional_losses_588804

inputs0
matmul_readvariableop_resource:8@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_10/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8@*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8@2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Tanh?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????8: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_589499K
9dense_8_kernel_regularizer_square_readvariableop_resource:(
identity??0dense_8/kernel/Regularizer/Square/ReadVariableOp?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_8_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mull
IdentityIdentity"dense_8/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_2_589521L
:dense_10_kernel_regularizer_square_readvariableop_resource:8@
identity??1dense_10/kernel/Regularizer/Square/ReadVariableOp?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_10_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mulm
IdentityIdentity#dense_10/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_10/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp
?
?
(__inference_dense_9_layer_call_fn_589422

inputs
unknown:(8
	unknown_0:8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_5887792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????82

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
G__inference_outputlayer_layer_call_and_return_conditional_losses_588828

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????2
	LeakyRelu?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/muls
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_outputlayer_layer_call_and_return_conditional_losses_589479

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????2
	LeakyRelu?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/muls
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?P
?
__inference__traced_save_589666
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop1
-savev2_outputlayer_kernel_read_readvariableop/
+savev2_outputlayer_bias_read_readvariableop1
-savev2_cond_1_adamax_iter_read_readvariableop	3
/savev2_cond_1_adamax_beta_1_read_readvariableop3
/savev2_cond_1_adamax_beta_2_read_readvariableop2
.savev2_cond_1_adamax_decay_read_readvariableop:
6savev2_cond_1_adamax_learning_rate_read_readvariableop1
-savev2_current_loss_scale_read_readvariableop)
%savev2_good_steps_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop=
9savev2_cond_1_adamax_dense_8_kernel_m_read_readvariableop;
7savev2_cond_1_adamax_dense_8_bias_m_read_readvariableop=
9savev2_cond_1_adamax_dense_9_kernel_m_read_readvariableop;
7savev2_cond_1_adamax_dense_9_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_10_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_10_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop=
9savev2_cond_1_adamax_dense_8_kernel_v_read_readvariableop;
7savev2_cond_1_adamax_dense_8_bias_v_read_readvariableop=
9savev2_cond_1_adamax_dense_9_kernel_v_read_readvariableop;
7savev2_cond_1_adamax_dense_9_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_10_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_10_bias_v_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop9savev2_cond_1_adamax_dense_8_kernel_m_read_readvariableop7savev2_cond_1_adamax_dense_8_bias_m_read_readvariableop9savev2_cond_1_adamax_dense_9_kernel_m_read_readvariableop7savev2_cond_1_adamax_dense_9_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_10_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_10_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop9savev2_cond_1_adamax_dense_8_kernel_v_read_readvariableop7savev2_cond_1_adamax_dense_8_bias_v_read_readvariableop9savev2_cond_1_adamax_dense_9_kernel_v_read_readvariableop7savev2_cond_1_adamax_dense_9_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_10_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_10_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :(:(:(8:8:8@:@:	@?:?: : : : : : : : : : : : : :(:(:(8:8:8@:@:	@?:?:(:(:(8:8:8@:@:	@?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:(: 

_output_shapes
:(:$ 

_output_shapes

:(8: 

_output_shapes
:8:$ 

_output_shapes

:8@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:(: 

_output_shapes
:(:$ 

_output_shapes

:(8: 

_output_shapes
:8:$ 

_output_shapes

:8@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:$ 

_output_shapes

:(: 

_output_shapes
:(:$  

_output_shapes

:(8: !

_output_shapes
:8:$" 

_output_shapes

:8@: #

_output_shapes
:@:%$!

_output_shapes
:	@?:!%

_output_shapes	
:?:&

_output_shapes
: 
?A
?
C__inference_model_4_layer_call_and_return_conditional_losses_589131
input_5 
dense_8_589085:(
dense_8_589087:( 
dense_9_589090:(8
dense_9_589092:8!
dense_10_589095:8@
dense_10_589097:@%
outputlayer_589101:	@?!
outputlayer_589103:	?
identity?? dense_10/StatefulPartitionedCall?1dense_10/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpn
dense_8/CastCastinput_5*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_8/Cast?
dense_8/StatefulPartitionedCallStatefulPartitionedCalldense_8/Cast:y:0dense_8_589085dense_8_589087*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_5887542!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_589090dense_9_589092*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????8*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_5887792!
dense_9/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_589095dense_10_589097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_5888042"
 dense_10/StatefulPartitionedCall?
outputlayer/CastCast)dense_10/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_589101outputlayer_589103*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_5888282%
#outputlayer/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_589085*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_589090*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_10_589095*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_589101*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mul?
IdentityIdentity,outputlayer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^dense_10/StatefulPartitionedCall2^dense_10/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?	
?
$__inference_signature_wrapper_589184
input_5
unknown:(
	unknown_0:(
	unknown_1:(8
	unknown_2:8
	unknown_3:8@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_5887272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_5
?Y
?
C__inference_model_4_layer_call_and_return_conditional_losses_589248

inputs8
&dense_8_matmul_readvariableop_resource:(5
'dense_8_biasadd_readvariableop_resource:(8
&dense_9_matmul_readvariableop_resource:(85
'dense_9_biasadd_readvariableop_resource:89
'dense_10_matmul_readvariableop_resource:8@6
(dense_10_biasadd_readvariableop_resource:@=
*outputlayer_matmul_readvariableop_resource:	@?:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?1dense_10/kernel/Regularizer/Square/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpm
dense_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_8/Cast?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMul/CastCast%dense_8/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(2
dense_8/MatMul/Cast?
dense_8/MatMulMatMuldense_8/Cast:y:0dense_8/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????(2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAdd/CastCast&dense_8/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:(2
dense_8/BiasAdd/Cast?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0dense_8/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????(2
dense_8/BiasAddp
dense_8/TanhTanhdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
dense_8/Tanh?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:(8*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMul/CastCast%dense_9/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(82
dense_9/MatMul/Cast?
dense_9/MatMulMatMuldense_8/Tanh:y:0dense_9/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAdd/CastCast&dense_9/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
dense_9/BiasAdd/Cast?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0dense_9/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_9/BiasAddp
dense_9/TanhTanhdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
dense_9/Tanh?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:8@*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMul/CastCast&dense_10/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8@2
dense_10/MatMul/Cast?
dense_10/MatMulMatMuldense_9/Tanh:y:0dense_10/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAdd/CastCast'dense_10/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_10/BiasAdd/Cast?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0dense_10/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_10/BiasAdds
dense_10/TanhTanhdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_10/Tanh?
outputlayer/CastCastdense_10/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02#
!outputlayer/MatMul/ReadVariableOp?
outputlayer/MatMulMatMuloutputlayer/Cast:y:0)outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
outputlayer/MatMul?
"outputlayer/BiasAdd/ReadVariableOpReadVariableOp+outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"outputlayer/BiasAdd/ReadVariableOp?
outputlayer/BiasAddBiasAddoutputlayer/MatMul:product:0*outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
outputlayer/BiasAdd?
outputlayer/LeakyRelu	LeakyReluoutputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2
outputlayer/LeakyRelu?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mul
IdentityIdentity#outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
,__inference_outputlayer_layer_call_fn_589488

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_5888282
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Y
?
C__inference_model_4_layer_call_and_return_conditional_losses_589312

inputs8
&dense_8_matmul_readvariableop_resource:(5
'dense_8_biasadd_readvariableop_resource:(8
&dense_9_matmul_readvariableop_resource:(85
'dense_9_biasadd_readvariableop_resource:89
'dense_10_matmul_readvariableop_resource:8@6
(dense_10_biasadd_readvariableop_resource:@=
*outputlayer_matmul_readvariableop_resource:	@?:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?1dense_10/kernel/Regularizer/Square/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpm
dense_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_8/Cast?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMul/CastCast%dense_8/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(2
dense_8/MatMul/Cast?
dense_8/MatMulMatMuldense_8/Cast:y:0dense_8/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????(2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAdd/CastCast&dense_8/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:(2
dense_8/BiasAdd/Cast?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0dense_8/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????(2
dense_8/BiasAddp
dense_8/TanhTanhdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(2
dense_8/Tanh?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:(8*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMul/CastCast%dense_9/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(82
dense_9/MatMul/Cast?
dense_9/MatMulMatMuldense_8/Tanh:y:0dense_9/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAdd/CastCast&dense_9/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
dense_9/BiasAdd/Cast?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0dense_9/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_9/BiasAddp
dense_9/TanhTanhdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
dense_9/Tanh?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:8@*
dtype02 
dense_10/MatMul/ReadVariableOp?
dense_10/MatMul/CastCast&dense_10/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8@2
dense_10/MatMul/Cast?
dense_10/MatMulMatMuldense_9/Tanh:y:0dense_10/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_10/MatMul?
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_10/BiasAdd/ReadVariableOp?
dense_10/BiasAdd/CastCast'dense_10/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_10/BiasAdd/Cast?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0dense_10/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_10/BiasAdds
dense_10/TanhTanhdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_10/Tanh?
outputlayer/CastCastdense_10/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????@2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02#
!outputlayer/MatMul/ReadVariableOp?
outputlayer/MatMulMatMuloutputlayer/Cast:y:0)outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
outputlayer/MatMul?
"outputlayer/BiasAdd/ReadVariableOpReadVariableOp+outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"outputlayer/BiasAdd/ReadVariableOp?
outputlayer/BiasAddBiasAddoutputlayer/MatMul:product:0*outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
outputlayer/BiasAdd?
outputlayer/LeakyRelu	LeakyReluoutputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2
outputlayer/LeakyRelu?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:(*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
1dense_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:8@*
dtype023
1dense_10/kernel/Regularizer/Square/ReadVariableOp?
"dense_10/kernel/Regularizer/SquareSquare9dense_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8@2$
"dense_10/kernel/Regularizer/Square?
!dense_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_10/kernel/Regularizer/Const?
dense_10/kernel/Regularizer/SumSum&dense_10/kernel/Regularizer/Square:y:0*dense_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/Sum?
!dense_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_10/kernel/Regularizer/mul/x?
dense_10/kernel/Regularizer/mulMul*dense_10/kernel/Regularizer/mul/x:output:0(dense_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_10/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2'
%outputlayer/kernel/Regularizer/Square?
$outputlayer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$outputlayer/kernel/Regularizer/Const?
"outputlayer/kernel/Regularizer/SumSum)outputlayer/kernel/Regularizer/Square:y:0-outputlayer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/Sum?
$outputlayer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52&
$outputlayer/kernel/Regularizer/mul/x?
"outputlayer/kernel/Regularizer/mulMul-outputlayer/kernel/Regularizer/mul/x:output:0+outputlayer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"outputlayer/kernel/Regularizer/mul
IdentityIdentity#outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp2^dense_10/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2f
1dense_10/kernel/Regularizer/Square/ReadVariableOp1dense_10/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_9_layer_call_and_return_conditional_losses_588779

inputs0
matmul_readvariableop_resource:(8-
biasadd_readvariableop_resource:8
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(8*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:(82
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:8*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????82
Tanh?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(8*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(82#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????82

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
(__inference_model_4_layer_call_fn_589354

inputs
unknown:(
	unknown_0:(
	unknown_1:(8
	unknown_2:8
	unknown_3:8@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_4_layer_call_and_return_conditional_losses_5889912
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_8_layer_call_fn_589388

inputs
unknown:(
	unknown_0:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_5887542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_50
serving_default_input_5:0?????????@
outputlayer1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:?j
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
*f&call_and_return_all_conditional_losses
g_default_save_signature
h__call__"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*i&call_and_return_all_conditional_losses
j__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*k&call_and_return_all_conditional_losses
l__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*m&call_and_return_all_conditional_losses
n__call__"
_tf_keras_layer
?

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
*o&call_and_return_all_conditional_losses
p__call__"
_tf_keras_layer
?
$
loss_scale
%base_optimizer
&iter

'beta_1

(beta_2
	)decay
*learning_ratemVmWmXmYmZm[m\m]v^v_v`vavbvcvdve"
	optimizer
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
<
q0
r1
s2
t3"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
?
trainable_variables
regularization_losses

+layers
,metrics
-layer_metrics
		variables
.layer_regularization_losses
/non_trainable_variables
h__call__
g_default_save_signature
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
,
userving_default"
signature_map
 :(2dense_8/kernel
:(2dense_8/bias
.
0
1"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
0non_trainable_variables
trainable_variables
regularization_losses

1layers
2metrics
3layer_metrics
	variables
4layer_regularization_losses
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
 :(82dense_9/kernel
:82dense_9/bias
.
0
1"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
5non_trainable_variables
trainable_variables
regularization_losses

6layers
7metrics
8layer_metrics
	variables
9layer_regularization_losses
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
!:8@2dense_10/kernel
:@2dense_10/bias
.
0
1"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
:non_trainable_variables
trainable_variables
regularization_losses

;layers
<metrics
=layer_metrics
	variables
>layer_regularization_losses
n__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
%:#	@?2outputlayer/kernel
:?2outputlayer/bias
.
0
1"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?non_trainable_variables
 trainable_variables
!regularization_losses

@layers
Ametrics
Blayer_metrics
"	variables
Clayer_regularization_losses
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
F
Dcurrent_loss_scale
E
good_steps"
_generic_user_object
"
_generic_user_object
:	 (2cond_1/Adamax/iter
: (2cond_1/Adamax/beta_1
: (2cond_1/Adamax/beta_2
: (2cond_1/Adamax/decay
%:# (2cond_1/Adamax/learning_rate
C
0
1
2
3
4"
trackable_list_wrapper
5
F0
G1
H2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
r0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
t0"
trackable_list_wrapper
: 2current_loss_scale
:	 2
good_steps
N
	Itotal
	Jcount
K	variables
L	keras_api"
_tf_keras_metric
^
	Mtotal
	Ncount
O
_fn_kwargs
P	variables
Q	keras_api"
_tf_keras_metric
N
	Rtotal
	Scount
T	variables
U	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
I0
J1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
M0
N1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
:  (2total
:  (2count
.
R0
S1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
.:,(2cond_1/Adamax/dense_8/kernel/m
(:&(2cond_1/Adamax/dense_8/bias/m
.:,(82cond_1/Adamax/dense_9/kernel/m
(:&82cond_1/Adamax/dense_9/bias/m
/:-8@2cond_1/Adamax/dense_10/kernel/m
):'@2cond_1/Adamax/dense_10/bias/m
3:1	@?2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
.:,(2cond_1/Adamax/dense_8/kernel/v
(:&(2cond_1/Adamax/dense_8/bias/v
.:,(82cond_1/Adamax/dense_9/kernel/v
(:&82cond_1/Adamax/dense_9/bias/v
/:-8@2cond_1/Adamax/dense_10/kernel/v
):'@2cond_1/Adamax/dense_10/bias/v
3:1	@?2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
C__inference_model_4_layer_call_and_return_conditional_losses_589248
C__inference_model_4_layer_call_and_return_conditional_losses_589312
C__inference_model_4_layer_call_and_return_conditional_losses_589081
C__inference_model_4_layer_call_and_return_conditional_losses_589131?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_588727input_5"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_model_4_layer_call_fn_588878
(__inference_model_4_layer_call_fn_589333
(__inference_model_4_layer_call_fn_589354
(__inference_model_4_layer_call_fn_589031?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dense_8_layer_call_and_return_conditional_losses_589379?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_8_layer_call_fn_589388?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_9_layer_call_and_return_conditional_losses_589413?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_9_layer_call_fn_589422?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_10_layer_call_and_return_conditional_losses_589447?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_10_layer_call_fn_589456?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_outputlayer_layer_call_and_return_conditional_losses_589479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_outputlayer_layer_call_fn_589488?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_589499?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_589510?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_589521?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_589532?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_589184input_5"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_588727x0?-
&?#
!?
input_5?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
D__inference_dense_10_layer_call_and_return_conditional_losses_589447\/?,
%?"
 ?
inputs?????????8
? "%?"
?
0?????????@
? |
)__inference_dense_10_layer_call_fn_589456O/?,
%?"
 ?
inputs?????????8
? "??????????@?
C__inference_dense_8_layer_call_and_return_conditional_losses_589379\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????(
? {
(__inference_dense_8_layer_call_fn_589388O/?,
%?"
 ?
inputs?????????
? "??????????(?
C__inference_dense_9_layer_call_and_return_conditional_losses_589413\/?,
%?"
 ?
inputs?????????(
? "%?"
?
0?????????8
? {
(__inference_dense_9_layer_call_fn_589422O/?,
%?"
 ?
inputs?????????(
? "??????????8;
__inference_loss_fn_0_589499?

? 
? "? ;
__inference_loss_fn_1_589510?

? 
? "? ;
__inference_loss_fn_2_589521?

? 
? "? ;
__inference_loss_fn_3_589532?

? 
? "? ?
C__inference_model_4_layer_call_and_return_conditional_losses_589081l8?5
.?+
!?
input_5?????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_589131l8?5
.?+
!?
input_5?????????
p

 
? "&?#
?
0??????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_589248k7?4
-?*
 ?
inputs?????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_4_layer_call_and_return_conditional_losses_589312k7?4
-?*
 ?
inputs?????????
p

 
? "&?#
?
0??????????
? ?
(__inference_model_4_layer_call_fn_588878_8?5
.?+
!?
input_5?????????
p 

 
? "????????????
(__inference_model_4_layer_call_fn_589031_8?5
.?+
!?
input_5?????????
p

 
? "????????????
(__inference_model_4_layer_call_fn_589333^7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
(__inference_model_4_layer_call_fn_589354^7?4
-?*
 ?
inputs?????????
p

 
? "????????????
G__inference_outputlayer_layer_call_and_return_conditional_losses_589479]/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? ?
,__inference_outputlayer_layer_call_fn_589488P/?,
%?"
 ?
inputs?????????@
? "????????????
$__inference_signature_wrapper_589184?;?8
? 
1?.
,
input_5!?
input_5?????????":?7
5
outputlayer&?#
outputlayer??????????