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
z
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_64/kernel
s
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes

: *
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes
: *
dtype0
z
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_65/kernel
s
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel*
_output_shapes

: @*
dtype0
r
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_65/bias
k
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
_output_shapes
:@*
dtype0
{
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?* 
shared_namedense_66/kernel
t
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes
:	@?*
dtype0
s
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_66/bias
l
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
_output_shapes	
:?*
dtype0
?
outputlayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*#
shared_nameoutputlayer/kernel
{
&outputlayer/kernel/Read/ReadVariableOpReadVariableOpoutputlayer/kernel* 
_output_shapes
:
??*
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
cond_1/Adamax/dense_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_64/kernel/m
?
3cond_1/Adamax/dense_64/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_64/kernel/m*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_64/bias/m
?
1cond_1/Adamax/dense_64/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_64/bias/m*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_65/kernel/m
?
3cond_1/Adamax/dense_65/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_65/kernel/m*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_65/bias/m
?
1cond_1/Adamax/dense_65/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_65/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!cond_1/Adamax/dense_66/kernel/m
?
3cond_1/Adamax/dense_66/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_66/kernel/m*
_output_shapes
:	@?*
dtype0
?
cond_1/Adamax/dense_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_66/bias/m
?
1cond_1/Adamax/dense_66/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_66/bias/m*
_output_shapes	
:?*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"cond_1/Adamax/outputlayer/kernel/m
?
6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/m* 
_output_shapes
:
??*
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
cond_1/Adamax/dense_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_64/kernel/v
?
3cond_1/Adamax/dense_64/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_64/kernel/v*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_64/bias/v
?
1cond_1/Adamax/dense_64/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_64/bias/v*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_65/kernel/v
?
3cond_1/Adamax/dense_65/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_65/kernel/v*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_65/bias/v
?
1cond_1/Adamax/dense_65/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_65/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!cond_1/Adamax/dense_66/kernel/v
?
3cond_1/Adamax/dense_66/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_66/kernel/v*
_output_shapes
:	@?*
dtype0
?
cond_1/Adamax/dense_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_66/bias/v
?
1cond_1/Adamax/dense_66/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_66/bias/v*
_output_shapes	
:?*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"cond_1/Adamax/outputlayer/kernel/v
?
6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/v* 
_output_shapes
:
??*
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
[Y
VARIABLE_VALUEdense_64/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_64/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
[Y
VARIABLE_VALUEdense_65/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_65/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_66/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEcond_1/Adamax/dense_64/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_64/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_65/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_65/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_66/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_66/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_64/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_64/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_65/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_65/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_66/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_66/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_20Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_20dense_64/kerneldense_64/biasdense_65/kerneldense_65/biasdense_66/kerneldense_66/biasoutputlayer/kerneloutputlayer/bias*
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
GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1564261
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOp#dense_65/kernel/Read/ReadVariableOp!dense_65/bias/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3cond_1/Adamax/dense_64/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_64/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_65/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_65/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_66/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_66/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_64/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_64/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_65/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_65/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_66/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_66/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*2
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1564743
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_64/kerneldense_64/biasdense_65/kerneldense_65/biasdense_66/kerneldense_66/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_64/kernel/mcond_1/Adamax/dense_64/bias/mcond_1/Adamax/dense_65/kernel/mcond_1/Adamax/dense_65/bias/mcond_1/Adamax/dense_66/kernel/mcond_1/Adamax/dense_66/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_64/kernel/vcond_1/Adamax/dense_64/bias/vcond_1/Adamax/dense_65/kernel/vcond_1/Adamax/dense_65/bias/vcond_1/Adamax/dense_66/kernel/vcond_1/Adamax/dense_66/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*1
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1564864??
?B
?
E__inference_model_19_layer_call_and_return_conditional_losses_1564068

inputs"
dense_64_1564022: 
dense_64_1564024: "
dense_65_1564027: @
dense_65_1564029:@#
dense_66_1564032:	@?
dense_66_1564034:	?'
outputlayer_1564038:
??"
outputlayer_1564040:	?
identity?? dense_64/StatefulPartitionedCall?1dense_64/kernel/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?1dense_65/kernel/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?1dense_66/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_64/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_64/Cast?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalldense_64/Cast:y:0dense_64_1564022dense_64_1564024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_15638312"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_1564027dense_65_1564029*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_15638562"
 dense_65/StatefulPartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_1564032dense_66_1564034*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_15638812"
 dense_66/StatefulPartitionedCall?
outputlayer/CastCast)dense_66/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1564038outputlayer_1564040*
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
GPU2*0J 8? *Q
fLRJ
H__inference_outputlayer_layer_call_and_return_conditional_losses_15639052%
#outputlayer/StatefulPartitionedCall?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_1564022*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mul?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_1564027*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mul?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_1564032*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1564038* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp!^dense_64/StatefulPartitionedCall2^dense_64/kernel/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_1563856

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_65/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
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
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?Z
?
E__inference_model_19_layer_call_and_return_conditional_losses_1564389

inputs9
'dense_64_matmul_readvariableop_resource: 6
(dense_64_biasadd_readvariableop_resource: 9
'dense_65_matmul_readvariableop_resource: @6
(dense_65_biasadd_readvariableop_resource:@:
'dense_66_matmul_readvariableop_resource:	@?7
(dense_66_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?1dense_64/kernel/Regularizer/Square/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?1dense_65/kernel/Regularizer/Square/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?1dense_66/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_64/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_64/Cast?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMul/CastCast&dense_64/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_64/MatMul/Cast?
dense_64/MatMulMatMuldense_64/Cast:y:0dense_64/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAdd/CastCast'dense_64/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_64/BiasAdd/Cast?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0dense_64/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_64/BiasAdds
dense_64/TanhTanhdense_64/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_64/Tanh?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMul/CastCast&dense_65/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_65/MatMul/Cast?
dense_65/MatMulMatMuldense_64/Tanh:y:0dense_65/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAdd/CastCast'dense_65/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_65/BiasAdd/Cast?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0dense_65/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_65/BiasAdds
dense_65/TanhTanhdense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_65/Tanh?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMul/CastCast&dense_66/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
dense_66/MatMul/Cast?
dense_66/MatMulMatMuldense_65/Tanh:y:0dense_66/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAdd/CastCast'dense_66/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_66/BiasAdd/Cast?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0dense_66/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_66/BiasAddt
dense_66/TanhTanhdense_66/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_66/Tanh?
outputlayer/CastCastdense_66/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mul?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mul?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp2^dense_64/kernel/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_outputlayer_layer_call_fn_1564565

inputs
unknown:
??
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
GPU2*0J 8? *Q
fLRJ
H__inference_outputlayer_layer_call_and_return_conditional_losses_15639052
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
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
*__inference_model_19_layer_call_fn_1563955
input_20
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8? *N
fIRG
E__inference_model_19_layer_call_and_return_conditional_losses_15639362
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1563905

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?:
?
"__inference__wrapped_model_1563804
input_20B
0model_19_dense_64_matmul_readvariableop_resource: ?
1model_19_dense_64_biasadd_readvariableop_resource: B
0model_19_dense_65_matmul_readvariableop_resource: @?
1model_19_dense_65_biasadd_readvariableop_resource:@C
0model_19_dense_66_matmul_readvariableop_resource:	@?@
1model_19_dense_66_biasadd_readvariableop_resource:	?G
3model_19_outputlayer_matmul_readvariableop_resource:
??C
4model_19_outputlayer_biasadd_readvariableop_resource:	?
identity??(model_19/dense_64/BiasAdd/ReadVariableOp?'model_19/dense_64/MatMul/ReadVariableOp?(model_19/dense_65/BiasAdd/ReadVariableOp?'model_19/dense_65/MatMul/ReadVariableOp?(model_19/dense_66/BiasAdd/ReadVariableOp?'model_19/dense_66/MatMul/ReadVariableOp?+model_19/outputlayer/BiasAdd/ReadVariableOp?*model_19/outputlayer/MatMul/ReadVariableOp?
model_19/dense_64/CastCastinput_20*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_19/dense_64/Cast?
'model_19/dense_64/MatMul/ReadVariableOpReadVariableOp0model_19_dense_64_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'model_19/dense_64/MatMul/ReadVariableOp?
model_19/dense_64/MatMul/CastCast/model_19/dense_64/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
model_19/dense_64/MatMul/Cast?
model_19/dense_64/MatMulMatMulmodel_19/dense_64/Cast:y:0!model_19/dense_64/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_19/dense_64/MatMul?
(model_19/dense_64/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_19/dense_64/BiasAdd/ReadVariableOp?
model_19/dense_64/BiasAdd/CastCast0model_19/dense_64/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model_19/dense_64/BiasAdd/Cast?
model_19/dense_64/BiasAddBiasAdd"model_19/dense_64/MatMul:product:0"model_19/dense_64/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_19/dense_64/BiasAdd?
model_19/dense_64/TanhTanh"model_19/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_19/dense_64/Tanh?
'model_19/dense_65/MatMul/ReadVariableOpReadVariableOp0model_19_dense_65_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02)
'model_19/dense_65/MatMul/ReadVariableOp?
model_19/dense_65/MatMul/CastCast/model_19/dense_65/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
model_19/dense_65/MatMul/Cast?
model_19/dense_65/MatMulMatMulmodel_19/dense_64/Tanh:y:0!model_19/dense_65/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_19/dense_65/MatMul?
(model_19/dense_65/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_19/dense_65/BiasAdd/ReadVariableOp?
model_19/dense_65/BiasAdd/CastCast0model_19/dense_65/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2 
model_19/dense_65/BiasAdd/Cast?
model_19/dense_65/BiasAddBiasAdd"model_19/dense_65/MatMul:product:0"model_19/dense_65/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_19/dense_65/BiasAdd?
model_19/dense_65/TanhTanh"model_19/dense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_19/dense_65/Tanh?
'model_19/dense_66/MatMul/ReadVariableOpReadVariableOp0model_19_dense_66_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02)
'model_19/dense_66/MatMul/ReadVariableOp?
model_19/dense_66/MatMul/CastCast/model_19/dense_66/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
model_19/dense_66/MatMul/Cast?
model_19/dense_66/MatMulMatMulmodel_19/dense_65/Tanh:y:0!model_19/dense_66/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_19/dense_66/MatMul?
(model_19/dense_66/BiasAdd/ReadVariableOpReadVariableOp1model_19_dense_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_19/dense_66/BiasAdd/ReadVariableOp?
model_19/dense_66/BiasAdd/CastCast0model_19/dense_66/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2 
model_19/dense_66/BiasAdd/Cast?
model_19/dense_66/BiasAddBiasAdd"model_19/dense_66/MatMul:product:0"model_19/dense_66/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_19/dense_66/BiasAdd?
model_19/dense_66/TanhTanh"model_19/dense_66/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_19/dense_66/Tanh?
model_19/outputlayer/CastCastmodel_19/dense_66/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_19/outputlayer/Cast?
*model_19/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_19_outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_19/outputlayer/MatMul/ReadVariableOp?
model_19/outputlayer/MatMulMatMulmodel_19/outputlayer/Cast:y:02model_19/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_19/outputlayer/MatMul?
+model_19/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_19_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_19/outputlayer/BiasAdd/ReadVariableOp?
model_19/outputlayer/BiasAddBiasAdd%model_19/outputlayer/MatMul:product:03model_19/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_19/outputlayer/BiasAdd?
model_19/outputlayer/LeakyRelu	LeakyRelu%model_19/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_19/outputlayer/LeakyRelu?
IdentityIdentity,model_19/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp)^model_19/dense_64/BiasAdd/ReadVariableOp(^model_19/dense_64/MatMul/ReadVariableOp)^model_19/dense_65/BiasAdd/ReadVariableOp(^model_19/dense_65/MatMul/ReadVariableOp)^model_19/dense_66/BiasAdd/ReadVariableOp(^model_19/dense_66/MatMul/ReadVariableOp,^model_19/outputlayer/BiasAdd/ReadVariableOp+^model_19/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2T
(model_19/dense_64/BiasAdd/ReadVariableOp(model_19/dense_64/BiasAdd/ReadVariableOp2R
'model_19/dense_64/MatMul/ReadVariableOp'model_19/dense_64/MatMul/ReadVariableOp2T
(model_19/dense_65/BiasAdd/ReadVariableOp(model_19/dense_65/BiasAdd/ReadVariableOp2R
'model_19/dense_65/MatMul/ReadVariableOp'model_19/dense_65/MatMul/ReadVariableOp2T
(model_19/dense_66/BiasAdd/ReadVariableOp(model_19/dense_66/BiasAdd/ReadVariableOp2R
'model_19/dense_66/MatMul/ReadVariableOp'model_19/dense_66/MatMul/ReadVariableOp2Z
+model_19/outputlayer/BiasAdd/ReadVariableOp+model_19/outputlayer/BiasAdd/ReadVariableOp2X
*model_19/outputlayer/MatMul/ReadVariableOp*model_19/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_20
?	
?
%__inference_signature_wrapper_1564261
input_20
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_15638042
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_20
?	
?
*__inference_model_19_layer_call_fn_1564108
input_20
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8? *N
fIRG
E__inference_model_19_layer_call_and_return_conditional_losses_15640682
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
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
__inference_loss_fn_1_1564587L
:dense_65_kernel_regularizer_square_readvariableop_resource: @
identity??1dense_65/kernel/Regularizer/Square/ReadVariableOp?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_65_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulm
IdentityIdentity#dense_65/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp
?Q
?
 __inference__traced_save_1564743
file_prefix.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop.
*savev2_dense_65_kernel_read_readvariableop,
(savev2_dense_65_bias_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop1
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
"savev2_count_2_read_readvariableop>
:savev2_cond_1_adamax_dense_64_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_64_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_65_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_65_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_66_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_66_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_64_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_64_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_65_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_65_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_66_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_66_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop*savev2_dense_65_kernel_read_readvariableop(savev2_dense_65_bias_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_cond_1_adamax_dense_64_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_64_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_65_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_65_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_66_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_66_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_64_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_64_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_65_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_65_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_66_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_66_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:	@?:?:
??:?: : : : : : : : : : : : : : : : @:@:	@?:?:
??:?: : : @:@:	@?:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!
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

: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:$ 

_output_shapes

: : 

_output_shapes
: :$  

_output_shapes

: @: !

_output_shapes
:@:%"!

_output_shapes
:	@?:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&

_output_shapes
: 
?
?
__inference_loss_fn_3_1564609Q
=outputlayer_kernel_regularizer_square_readvariableop_resource:
??
identity??4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=outputlayer_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
?B
?
E__inference_model_19_layer_call_and_return_conditional_losses_1564158
input_20"
dense_64_1564112: 
dense_64_1564114: "
dense_65_1564117: @
dense_65_1564119:@#
dense_66_1564122:	@?
dense_66_1564124:	?'
outputlayer_1564128:
??"
outputlayer_1564130:	?
identity?? dense_64/StatefulPartitionedCall?1dense_64/kernel/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?1dense_65/kernel/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?1dense_66/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_64/CastCastinput_20*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_64/Cast?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalldense_64/Cast:y:0dense_64_1564112dense_64_1564114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_15638312"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_1564117dense_65_1564119*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_15638562"
 dense_65/StatefulPartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_1564122dense_66_1564124*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_15638812"
 dense_66/StatefulPartitionedCall?
outputlayer/CastCast)dense_66/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1564128outputlayer_1564130*
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
GPU2*0J 8? *Q
fLRJ
H__inference_outputlayer_layer_call_and_return_conditional_losses_15639052%
#outputlayer/StatefulPartitionedCall?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_1564112*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mul?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_1564117*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mul?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_1564122*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1564128* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp!^dense_64/StatefulPartitionedCall2^dense_64/kernel/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_20
?Z
?
E__inference_model_19_layer_call_and_return_conditional_losses_1564325

inputs9
'dense_64_matmul_readvariableop_resource: 6
(dense_64_biasadd_readvariableop_resource: 9
'dense_65_matmul_readvariableop_resource: @6
(dense_65_biasadd_readvariableop_resource:@:
'dense_66_matmul_readvariableop_resource:	@?7
(dense_66_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?1dense_64/kernel/Regularizer/Square/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?1dense_65/kernel/Regularizer/Square/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?1dense_66/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_64/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_64/Cast?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMul/CastCast&dense_64/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_64/MatMul/Cast?
dense_64/MatMulMatMuldense_64/Cast:y:0dense_64/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAdd/CastCast'dense_64/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_64/BiasAdd/Cast?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0dense_64/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_64/BiasAdds
dense_64/TanhTanhdense_64/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_64/Tanh?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMul/CastCast&dense_65/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_65/MatMul/Cast?
dense_65/MatMulMatMuldense_64/Tanh:y:0dense_65/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAdd/CastCast'dense_65/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_65/BiasAdd/Cast?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0dense_65/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_65/BiasAdds
dense_65/TanhTanhdense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_65/Tanh?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMul/CastCast&dense_66/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
dense_66/MatMul/Cast?
dense_66/MatMulMatMuldense_65/Tanh:y:0dense_66/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAdd/CastCast'dense_66/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_66/BiasAdd/Cast?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0dense_66/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_66/BiasAddt
dense_66/TanhTanhdense_66/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_66/Tanh?
outputlayer/CastCastdense_66/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mul?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mul?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp2^dense_64/kernel/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ҡ
?
#__inference__traced_restore_1564864
file_prefix2
 assignvariableop_dense_64_kernel: .
 assignvariableop_1_dense_64_bias: 4
"assignvariableop_2_dense_65_kernel: @.
 assignvariableop_3_dense_65_bias:@5
"assignvariableop_4_dense_66_kernel:	@?/
 assignvariableop_5_dense_66_bias:	?9
%assignvariableop_6_outputlayer_kernel:
??2
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
assignvariableop_20_count_2: E
3assignvariableop_21_cond_1_adamax_dense_64_kernel_m: ?
1assignvariableop_22_cond_1_adamax_dense_64_bias_m: E
3assignvariableop_23_cond_1_adamax_dense_65_kernel_m: @?
1assignvariableop_24_cond_1_adamax_dense_65_bias_m:@F
3assignvariableop_25_cond_1_adamax_dense_66_kernel_m:	@?@
1assignvariableop_26_cond_1_adamax_dense_66_bias_m:	?J
6assignvariableop_27_cond_1_adamax_outputlayer_kernel_m:
??C
4assignvariableop_28_cond_1_adamax_outputlayer_bias_m:	?E
3assignvariableop_29_cond_1_adamax_dense_64_kernel_v: ?
1assignvariableop_30_cond_1_adamax_dense_64_bias_v: E
3assignvariableop_31_cond_1_adamax_dense_65_kernel_v: @?
1assignvariableop_32_cond_1_adamax_dense_65_bias_v:@F
3assignvariableop_33_cond_1_adamax_dense_66_kernel_v:	@?@
1assignvariableop_34_cond_1_adamax_dense_66_bias_v:	?J
6assignvariableop_35_cond_1_adamax_outputlayer_kernel_v:
??C
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
AssignVariableOpAssignVariableOp assignvariableop_dense_64_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_64_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_65_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_65_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_66_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_66_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_21AssignVariableOp3assignvariableop_21_cond_1_adamax_dense_64_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp1assignvariableop_22_cond_1_adamax_dense_64_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp3assignvariableop_23_cond_1_adamax_dense_65_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_cond_1_adamax_dense_65_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_66_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_66_bias_mIdentity_26:output:0"/device:CPU:0*
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
AssignVariableOp_29AssignVariableOp3assignvariableop_29_cond_1_adamax_dense_64_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_cond_1_adamax_dense_64_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp3assignvariableop_31_cond_1_adamax_dense_65_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp1assignvariableop_32_cond_1_adamax_dense_65_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_66_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_66_bias_vIdentity_34:output:0"/device:CPU:0*
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
*__inference_model_19_layer_call_fn_1564431

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
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
GPU2*0J 8? *N
fIRG
E__inference_model_19_layer_call_and_return_conditional_losses_15640682
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
?
?
E__inference_dense_64_layer_call_and_return_conditional_losses_1564456

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_64/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Tanh?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_64/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_65_layer_call_fn_1564499

inputs
unknown: @
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
GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_15638562
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
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1564556

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_dense_64_layer_call_and_return_conditional_losses_1563831

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_64/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Tanh?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_64/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_1564598M
:dense_66_kernel_regularizer_square_readvariableop_resource:	@?
identity??1dense_66/kernel/Regularizer/Square/ReadVariableOp?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_66_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mulm
IdentityIdentity#dense_66/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_0_1564576L
:dense_64_kernel_regularizer_square_readvariableop_resource: 
identity??1dense_64/kernel/Regularizer/Square/ReadVariableOp?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_64_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mulm
IdentityIdentity#dense_64/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_64/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_dense_64_layer_call_fn_1564465

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_15638312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

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
 
_user_specified_nameinputs
?B
?
E__inference_model_19_layer_call_and_return_conditional_losses_1563936

inputs"
dense_64_1563832: 
dense_64_1563834: "
dense_65_1563857: @
dense_65_1563859:@#
dense_66_1563882:	@?
dense_66_1563884:	?'
outputlayer_1563906:
??"
outputlayer_1563908:	?
identity?? dense_64/StatefulPartitionedCall?1dense_64/kernel/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?1dense_65/kernel/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?1dense_66/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_64/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_64/Cast?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalldense_64/Cast:y:0dense_64_1563832dense_64_1563834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_15638312"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_1563857dense_65_1563859*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_15638562"
 dense_65/StatefulPartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_1563882dense_66_1563884*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_15638812"
 dense_66/StatefulPartitionedCall?
outputlayer/CastCast)dense_66/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1563906outputlayer_1563908*
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
GPU2*0J 8? *Q
fLRJ
H__inference_outputlayer_layer_call_and_return_conditional_losses_15639052%
#outputlayer/StatefulPartitionedCall?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_1563832*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mul?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_1563857*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mul?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_1563882*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1563906* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp!^dense_64/StatefulPartitionedCall2^dense_64/kernel/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_66_layer_call_and_return_conditional_losses_1563881

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_66/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpz
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
MatMul/Castf
MatMulMatMulinputsMatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
BiasAdd/Castt
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?B
?
E__inference_model_19_layer_call_and_return_conditional_losses_1564208
input_20"
dense_64_1564162: 
dense_64_1564164: "
dense_65_1564167: @
dense_65_1564169:@#
dense_66_1564172:	@?
dense_66_1564174:	?'
outputlayer_1564178:
??"
outputlayer_1564180:	?
identity?? dense_64/StatefulPartitionedCall?1dense_64/kernel/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?1dense_65/kernel/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?1dense_66/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_64/CastCastinput_20*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_64/Cast?
 dense_64/StatefulPartitionedCallStatefulPartitionedCalldense_64/Cast:y:0dense_64_1564162dense_64_1564164*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_64_layer_call_and_return_conditional_losses_15638312"
 dense_64/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0dense_65_1564167dense_65_1564169*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_65_layer_call_and_return_conditional_losses_15638562"
 dense_65/StatefulPartitionedCall?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_1564172dense_66_1564174*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_15638812"
 dense_66/StatefulPartitionedCall?
outputlayer/CastCast)dense_66/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1564178outputlayer_1564180*
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
GPU2*0J 8? *Q
fLRJ
H__inference_outputlayer_layer_call_and_return_conditional_losses_15639052%
#outputlayer/StatefulPartitionedCall?
1dense_64/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_1564162*
_output_shapes

: *
dtype023
1dense_64/kernel/Regularizer/Square/ReadVariableOp?
"dense_64/kernel/Regularizer/SquareSquare9dense_64/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_64/kernel/Regularizer/Square?
!dense_64/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_64/kernel/Regularizer/Const?
dense_64/kernel/Regularizer/SumSum&dense_64/kernel/Regularizer/Square:y:0*dense_64/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/Sum?
!dense_64/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_64/kernel/Regularizer/mul/x?
dense_64/kernel/Regularizer/mulMul*dense_64/kernel/Regularizer/mul/x:output:0(dense_64/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_64/kernel/Regularizer/mul?
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_1564167*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mul?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_1564172*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1564178* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp!^dense_64/StatefulPartitionedCall2^dense_64/kernel/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall2^dense_65/kernel/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall2^dense_66/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2f
1dense_64/kernel/Regularizer/Square/ReadVariableOp1dense_64/kernel/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
E__inference_dense_65_layer_call_and_return_conditional_losses_1564490

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_65/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
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
1dense_65/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_65/kernel/Regularizer/Square/ReadVariableOp?
"dense_65/kernel/Regularizer/SquareSquare9dense_65/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_65/kernel/Regularizer/Square?
!dense_65/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_65/kernel/Regularizer/Const?
dense_65/kernel/Regularizer/SumSum&dense_65/kernel/Regularizer/Square:y:0*dense_65/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/Sum?
!dense_65/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_65/kernel/Regularizer/mul/x?
dense_65/kernel/Regularizer/mulMul*dense_65/kernel/Regularizer/mul/x:output:0(dense_65/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_65/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_65/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_65/kernel/Regularizer/Square/ReadVariableOp1dense_65/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
*__inference_model_19_layer_call_fn_1564410

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
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
GPU2*0J 8? *N
fIRG
E__inference_model_19_layer_call_and_return_conditional_losses_15639362
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
*__inference_dense_66_layer_call_fn_1564533

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_66_layer_call_and_return_conditional_losses_15638812
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
?
?
E__inference_dense_66_layer_call_and_return_conditional_losses_1564524

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_66/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpz
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
MatMul/Castf
MatMulMatMulinputsMatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
BiasAdd/Castt
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
1dense_66/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_66/kernel/Regularizer/Square/ReadVariableOp?
"dense_66/kernel/Regularizer/SquareSquare9dense_66/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_66/kernel/Regularizer/Square?
!dense_66/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_66/kernel/Regularizer/Const?
dense_66/kernel/Regularizer/SumSum&dense_66/kernel/Regularizer/Square:y:0*dense_66/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/Sum?
!dense_66/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_66/kernel/Regularizer/mul/x?
dense_66/kernel/Regularizer/mulMul*dense_66/kernel/Regularizer/mul/x:output:0(dense_66/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_66/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_66/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_66/kernel/Regularizer/Square/ReadVariableOp1dense_66/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_201
serving_default_input_20:0?????????@
outputlayer1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:?k
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
!: 2dense_64/kernel
: 2dense_64/bias
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
!: @2dense_65/kernel
:@2dense_65/bias
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
": 	@?2dense_66/kernel
:?2dense_66/bias
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
&:$
??2outputlayer/kernel
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
/:- 2cond_1/Adamax/dense_64/kernel/m
):' 2cond_1/Adamax/dense_64/bias/m
/:- @2cond_1/Adamax/dense_65/kernel/m
):'@2cond_1/Adamax/dense_65/bias/m
0:.	@?2cond_1/Adamax/dense_66/kernel/m
*:(?2cond_1/Adamax/dense_66/bias/m
4:2
??2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
/:- 2cond_1/Adamax/dense_64/kernel/v
):' 2cond_1/Adamax/dense_64/bias/v
/:- @2cond_1/Adamax/dense_65/kernel/v
):'@2cond_1/Adamax/dense_65/bias/v
0:.	@?2cond_1/Adamax/dense_66/kernel/v
*:(?2cond_1/Adamax/dense_66/bias/v
4:2
??2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
E__inference_model_19_layer_call_and_return_conditional_losses_1564325
E__inference_model_19_layer_call_and_return_conditional_losses_1564389
E__inference_model_19_layer_call_and_return_conditional_losses_1564158
E__inference_model_19_layer_call_and_return_conditional_losses_1564208?
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
"__inference__wrapped_model_1563804input_20"?
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
*__inference_model_19_layer_call_fn_1563955
*__inference_model_19_layer_call_fn_1564410
*__inference_model_19_layer_call_fn_1564431
*__inference_model_19_layer_call_fn_1564108?
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
E__inference_dense_64_layer_call_and_return_conditional_losses_1564456?
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
*__inference_dense_64_layer_call_fn_1564465?
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
E__inference_dense_65_layer_call_and_return_conditional_losses_1564490?
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
*__inference_dense_65_layer_call_fn_1564499?
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
E__inference_dense_66_layer_call_and_return_conditional_losses_1564524?
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
*__inference_dense_66_layer_call_fn_1564533?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_1564556?
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
-__inference_outputlayer_layer_call_fn_1564565?
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
__inference_loss_fn_0_1564576?
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
__inference_loss_fn_1_1564587?
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
__inference_loss_fn_2_1564598?
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
__inference_loss_fn_3_1564609?
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
%__inference_signature_wrapper_1564261input_20"?
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
"__inference__wrapped_model_1563804y1?.
'?$
"?
input_20?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
E__inference_dense_64_layer_call_and_return_conditional_losses_1564456\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? }
*__inference_dense_64_layer_call_fn_1564465O/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_dense_65_layer_call_and_return_conditional_losses_1564490\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? }
*__inference_dense_65_layer_call_fn_1564499O/?,
%?"
 ?
inputs????????? 
? "??????????@?
E__inference_dense_66_layer_call_and_return_conditional_losses_1564524]/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? ~
*__inference_dense_66_layer_call_fn_1564533P/?,
%?"
 ?
inputs?????????@
? "???????????<
__inference_loss_fn_0_1564576?

? 
? "? <
__inference_loss_fn_1_1564587?

? 
? "? <
__inference_loss_fn_2_1564598?

? 
? "? <
__inference_loss_fn_3_1564609?

? 
? "? ?
E__inference_model_19_layer_call_and_return_conditional_losses_1564158m9?6
/?,
"?
input_20?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_19_layer_call_and_return_conditional_losses_1564208m9?6
/?,
"?
input_20?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_19_layer_call_and_return_conditional_losses_1564325k7?4
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
E__inference_model_19_layer_call_and_return_conditional_losses_1564389k7?4
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
*__inference_model_19_layer_call_fn_1563955`9?6
/?,
"?
input_20?????????
p 

 
? "????????????
*__inference_model_19_layer_call_fn_1564108`9?6
/?,
"?
input_20?????????
p

 
? "????????????
*__inference_model_19_layer_call_fn_1564410^7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_19_layer_call_fn_1564431^7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_1564556^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_1564565Q0?-
&?#
!?
inputs??????????
? "????????????
%__inference_signature_wrapper_1564261?=?:
? 
3?0
.
input_20"?
input_20?????????":?7
5
outputlayer&?#
outputlayer??????????