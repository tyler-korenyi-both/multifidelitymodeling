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
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ܾ
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

: *
dtype0
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes
: *
dtype0
z
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_68/kernel
s
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes

: @*
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes
:@*
dtype0
z
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@`* 
shared_namedense_69/kernel
s
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes

:@`*
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
_output_shapes
:`*
dtype0
{
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`?* 
shared_namedense_70/kernel
t
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes
:	`?*
dtype0
s
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_70/bias
l
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
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
cond_1/Adamax/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_67/kernel/m
?
3cond_1/Adamax/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_67/kernel/m*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_67/bias/m
?
1cond_1/Adamax/dense_67/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_67/bias/m*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_68/kernel/m
?
3cond_1/Adamax/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_68/kernel/m*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_68/bias/m
?
1cond_1/Adamax/dense_68/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_68/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@`*0
shared_name!cond_1/Adamax/dense_69/kernel/m
?
3cond_1/Adamax/dense_69/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_69/kernel/m*
_output_shapes

:@`*
dtype0
?
cond_1/Adamax/dense_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namecond_1/Adamax/dense_69/bias/m
?
1cond_1/Adamax/dense_69/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_69/bias/m*
_output_shapes
:`*
dtype0
?
cond_1/Adamax/dense_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`?*0
shared_name!cond_1/Adamax/dense_70/kernel/m
?
3cond_1/Adamax/dense_70/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_70/kernel/m*
_output_shapes
:	`?*
dtype0
?
cond_1/Adamax/dense_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_70/bias/m
?
1cond_1/Adamax/dense_70/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_70/bias/m*
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
cond_1/Adamax/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_67/kernel/v
?
3cond_1/Adamax/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_67/kernel/v*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_67/bias/v
?
1cond_1/Adamax/dense_67/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_67/bias/v*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_68/kernel/v
?
3cond_1/Adamax/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_68/kernel/v*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_68/bias/v
?
1cond_1/Adamax/dense_68/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_68/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@`*0
shared_name!cond_1/Adamax/dense_69/kernel/v
?
3cond_1/Adamax/dense_69/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_69/kernel/v*
_output_shapes

:@`*
dtype0
?
cond_1/Adamax/dense_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*.
shared_namecond_1/Adamax/dense_69/bias/v
?
1cond_1/Adamax/dense_69/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_69/bias/v*
_output_shapes
:`*
dtype0
?
cond_1/Adamax/dense_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`?*0
shared_name!cond_1/Adamax/dense_70/kernel/v
?
3cond_1/Adamax/dense_70/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_70/kernel/v*
_output_shapes
:	`?*
dtype0
?
cond_1/Adamax/dense_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_70/bias/v
?
1cond_1/Adamax/dense_70/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_70/bias/v*
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
?=
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?<
value?<B?< B?<
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
layer_with_weights-4
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
 bias
!trainable_variables
"regularization_losses
#	variables
$	keras_api
h

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
?
+
loss_scale
,base_optimizer
-iter

.beta_1

/beta_2
	0decay
1learning_ratembmcmdmemfmgmh mi%mj&mkvlvmvnvovpvqvr vs%vt&vu
F
0
1
2
3
4
5
6
 7
%8
&9
 
F
0
1
2
3
4
5
6
 7
%8
&9
?
trainable_variables
	regularization_losses

2layers
3metrics
4layer_metrics

	variables
5layer_regularization_losses
6non_trainable_variables
 
[Y
VARIABLE_VALUEdense_67/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
7non_trainable_variables
trainable_variables
regularization_losses

8layers
9metrics
:layer_metrics
	variables
;layer_regularization_losses
[Y
VARIABLE_VALUEdense_68/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
<non_trainable_variables
trainable_variables
regularization_losses

=layers
>metrics
?layer_metrics
	variables
@layer_regularization_losses
[Y
VARIABLE_VALUEdense_69/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_69/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Anon_trainable_variables
trainable_variables
regularization_losses

Blayers
Cmetrics
Dlayer_metrics
	variables
Elayer_regularization_losses
[Y
VARIABLE_VALUEdense_70/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_70/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
?
Fnon_trainable_variables
!trainable_variables
"regularization_losses

Glayers
Hmetrics
Ilayer_metrics
#	variables
Jlayer_regularization_losses
^\
VARIABLE_VALUEoutputlayer/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEoutputlayer/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
 

%0
&1
?
Knon_trainable_variables
'trainable_variables
(regularization_losses

Llayers
Mmetrics
Nlayer_metrics
)	variables
Olayer_regularization_losses
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
*
0
1
2
3
4
5

R0
S1
T2
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
	Utotal
	Vcount
W	variables
X	keras_api
D
	Ytotal
	Zcount
[
_fn_kwargs
\	variables
]	keras_api
4
	^total
	_count
`	variables
a	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

W	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Y0
Z1

\	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

^0
_1

`	variables
??
VARIABLE_VALUEcond_1/Adamax/dense_67/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_67/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_68/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_68/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_69/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_69/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_70/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_70/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_67/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_67/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_68/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_68/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_69/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_69/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_70/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_70/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_21Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_21dense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/biasoutputlayer/kerneloutputlayer/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1639512
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOp#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3cond_1/Adamax/dense_67/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_67/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_68/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_68/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_69/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_69/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_70/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_70/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_67/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_67/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_68/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_68/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_69/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_69/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_70/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_70/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-		*
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
 __inference__traced_save_1640095
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_67/kernel/mcond_1/Adamax/dense_67/bias/mcond_1/Adamax/dense_68/kernel/mcond_1/Adamax/dense_68/bias/mcond_1/Adamax/dense_69/kernel/mcond_1/Adamax/dense_69/bias/mcond_1/Adamax/dense_70/kernel/mcond_1/Adamax/dense_70/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_67/kernel/vcond_1/Adamax/dense_67/bias/vcond_1/Adamax/dense_68/kernel/vcond_1/Adamax/dense_68/bias/vcond_1/Adamax/dense_69/kernel/vcond_1/Adamax/dense_69/bias/vcond_1/Adamax/dense_70/kernel/vcond_1/Adamax/dense_70/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*7
Tin0
.2,*
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
#__inference__traced_restore_1640234??

?

?
%__inference_signature_wrapper_1639512
input_21
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@`
	unknown_4:`
	unknown_5:	`?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_16389552
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
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_21
?Q
?
E__inference_model_20_layer_call_and_return_conditional_losses_1639118

inputs"
dense_67_1638983: 
dense_67_1638985: "
dense_68_1639008: @
dense_68_1639010:@"
dense_69_1639033:@`
dense_69_1639035:`#
dense_70_1639058:	`?
dense_70_1639060:	?'
outputlayer_1639082:
??"
outputlayer_1639084:	?
identity?? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp? dense_70/StatefulPartitionedCall?1dense_70/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_67/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_67/Cast?
 dense_67/StatefulPartitionedCallStatefulPartitionedCalldense_67/Cast:y:0dense_67_1638983dense_67_1638985*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_16389822"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_1639008dense_68_1639010*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_16390072"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_1639033dense_69_1639035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_16390322"
 dense_69/StatefulPartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0dense_70_1639058dense_70_1639060*
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
E__inference_dense_70_layer_call_and_return_conditional_losses_16390572"
 dense_70/StatefulPartitionedCall?
outputlayer/CastCast)dense_70/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1639082outputlayer_1639084*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_16390812%
#outputlayer/StatefulPartitionedCall?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_1638983*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_1639008*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_1639033*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_70_1639058*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1639082* 
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

Identity?
NoOpNoOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_1639943Q
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
?Q
?
E__inference_model_20_layer_call_and_return_conditional_losses_1639449
input_21"
dense_67_1639392: 
dense_67_1639394: "
dense_68_1639397: @
dense_68_1639399:@"
dense_69_1639402:@`
dense_69_1639404:`#
dense_70_1639407:	`?
dense_70_1639409:	?'
outputlayer_1639413:
??"
outputlayer_1639415:	?
identity?? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp? dense_70/StatefulPartitionedCall?1dense_70/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_67/CastCastinput_21*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_67/Cast?
 dense_67/StatefulPartitionedCallStatefulPartitionedCalldense_67/Cast:y:0dense_67_1639392dense_67_1639394*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_16389822"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_1639397dense_68_1639399*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_16390072"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_1639402dense_69_1639404*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_16390322"
 dense_69/StatefulPartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0dense_70_1639407dense_70_1639409*
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
E__inference_dense_70_layer_call_and_return_conditional_losses_16390572"
 dense_70/StatefulPartitionedCall?
outputlayer/CastCast)dense_70/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1639413outputlayer_1639415*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_16390812%
#outputlayer/StatefulPartitionedCall?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_1639392*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_1639397*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_1639402*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_70_1639407*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1639413* 
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

Identity?
NoOpNoOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_21
?\
?
 __inference__traced_save_1640095
file_prefix.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop1
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
:savev2_cond_1_adamax_dense_67_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_67_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_68_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_68_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_69_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_69_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_70_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_70_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_67_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_67_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_68_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_68_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_69_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_69_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_70_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_70_bias_v_read_readvariableopA
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_cond_1_adamax_dense_67_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_67_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_68_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_68_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_69_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_69_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_70_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_70_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_67_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_67_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_68_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_68_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_69_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_69_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_70_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_70_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,		2
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
_input_shapes?
?: : : : @:@:@`:`:	`?:?:
??:?: : : : : : : : : : : : : : : : @:@:@`:`:	`?:?:
??:?: : : @:@:@`:`:	`?:?:
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
:@:$ 

_output_shapes

:@`: 

_output_shapes
:`:%!

_output_shapes
:	`?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:$ 

_output_shapes

:@`: 

_output_shapes
:`:%!

_output_shapes
:	`?:!

_output_shapes	
:?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:$" 

_output_shapes

: : #

_output_shapes
: :$$ 

_output_shapes

: @: %

_output_shapes
:@:$& 

_output_shapes

:@`: '

_output_shapes
:`:%(!

_output_shapes
:	`?:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:,

_output_shapes
: 
?

?
*__inference_model_20_layer_call_fn_1639141
input_21
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@`
	unknown_4:`
	unknown_5:	`?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_16391182
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
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_21
?
?
E__inference_dense_67_layer_call_and_return_conditional_losses_1638982

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
E__inference_model_20_layer_call_and_return_conditional_losses_1639279

inputs"
dense_67_1639222: 
dense_67_1639224: "
dense_68_1639227: @
dense_68_1639229:@"
dense_69_1639232:@`
dense_69_1639234:`#
dense_70_1639237:	`?
dense_70_1639239:	?'
outputlayer_1639243:
??"
outputlayer_1639245:	?
identity?? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp? dense_70/StatefulPartitionedCall?1dense_70/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_67/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_67/Cast?
 dense_67/StatefulPartitionedCallStatefulPartitionedCalldense_67/Cast:y:0dense_67_1639222dense_67_1639224*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_16389822"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_1639227dense_68_1639229*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_16390072"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_1639232dense_69_1639234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_16390322"
 dense_69/StatefulPartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0dense_70_1639237dense_70_1639239*
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
E__inference_dense_70_layer_call_and_return_conditional_losses_16390572"
 dense_70/StatefulPartitionedCall?
outputlayer/CastCast)dense_70/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1639243outputlayer_1639245*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_16390812%
#outputlayer/StatefulPartitionedCall?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_1639222*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_1639227*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_1639232*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_70_1639237*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1639243* 
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

Identity?
NoOpNoOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_1639932M
:dense_70_kernel_regularizer_square_readvariableop_resource:	`?
identity??1dense_70/kernel/Regularizer/Square/ReadVariableOp?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_70_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mulm
IdentityIdentity#dense_70/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_70/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp
??
?
#__inference__traced_restore_1640234
file_prefix2
 assignvariableop_dense_67_kernel: .
 assignvariableop_1_dense_67_bias: 4
"assignvariableop_2_dense_68_kernel: @.
 assignvariableop_3_dense_68_bias:@4
"assignvariableop_4_dense_69_kernel:@`.
 assignvariableop_5_dense_69_bias:`5
"assignvariableop_6_dense_70_kernel:	`?/
 assignvariableop_7_dense_70_bias:	?9
%assignvariableop_8_outputlayer_kernel:
??2
#assignvariableop_9_outputlayer_bias:	?0
&assignvariableop_10_cond_1_adamax_iter:	 2
(assignvariableop_11_cond_1_adamax_beta_1: 2
(assignvariableop_12_cond_1_adamax_beta_2: 1
'assignvariableop_13_cond_1_adamax_decay: 9
/assignvariableop_14_cond_1_adamax_learning_rate: 0
&assignvariableop_15_current_loss_scale: (
assignvariableop_16_good_steps:	 #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: %
assignvariableop_21_total_2: %
assignvariableop_22_count_2: E
3assignvariableop_23_cond_1_adamax_dense_67_kernel_m: ?
1assignvariableop_24_cond_1_adamax_dense_67_bias_m: E
3assignvariableop_25_cond_1_adamax_dense_68_kernel_m: @?
1assignvariableop_26_cond_1_adamax_dense_68_bias_m:@E
3assignvariableop_27_cond_1_adamax_dense_69_kernel_m:@`?
1assignvariableop_28_cond_1_adamax_dense_69_bias_m:`F
3assignvariableop_29_cond_1_adamax_dense_70_kernel_m:	`?@
1assignvariableop_30_cond_1_adamax_dense_70_bias_m:	?J
6assignvariableop_31_cond_1_adamax_outputlayer_kernel_m:
??C
4assignvariableop_32_cond_1_adamax_outputlayer_bias_m:	?E
3assignvariableop_33_cond_1_adamax_dense_67_kernel_v: ?
1assignvariableop_34_cond_1_adamax_dense_67_bias_v: E
3assignvariableop_35_cond_1_adamax_dense_68_kernel_v: @?
1assignvariableop_36_cond_1_adamax_dense_68_bias_v:@E
3assignvariableop_37_cond_1_adamax_dense_69_kernel_v:@`?
1assignvariableop_38_cond_1_adamax_dense_69_bias_v:`F
3assignvariableop_39_cond_1_adamax_dense_70_kernel_v:	`?@
1assignvariableop_40_cond_1_adamax_dense_70_bias_v:	?J
6assignvariableop_41_cond_1_adamax_outputlayer_kernel_v:
??C
4assignvariableop_42_cond_1_adamax_outputlayer_bias_v:	?
identity_44??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_67_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_67_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_68_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_68_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_69_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_69_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_70_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_70_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_outputlayer_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_outputlayer_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_cond_1_adamax_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp(assignvariableop_11_cond_1_adamax_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp(assignvariableop_12_cond_1_adamax_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_cond_1_adamax_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp/assignvariableop_14_cond_1_adamax_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp&assignvariableop_15_current_loss_scaleIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_good_stepsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp3assignvariableop_23_cond_1_adamax_dense_67_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_cond_1_adamax_dense_67_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_68_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_68_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_cond_1_adamax_dense_69_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_cond_1_adamax_dense_69_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp3assignvariableop_29_cond_1_adamax_dense_70_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_cond_1_adamax_dense_70_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_cond_1_adamax_outputlayer_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp4assignvariableop_32_cond_1_adamax_outputlayer_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_67_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_67_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp3assignvariableop_35_cond_1_adamax_dense_68_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp1assignvariableop_36_cond_1_adamax_dense_68_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_cond_1_adamax_dense_69_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_cond_1_adamax_dense_69_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp3assignvariableop_39_cond_1_adamax_dense_70_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp1assignvariableop_40_cond_1_adamax_dense_70_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp6assignvariableop_41_cond_1_adamax_outputlayer_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp4assignvariableop_42_cond_1_adamax_outputlayer_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43f
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_44?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
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
*__inference_model_20_layer_call_fn_1639720

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@`
	unknown_4:`
	unknown_5:	`?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_16392792
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
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_70_layer_call_and_return_conditional_losses_1639057

inputs1
matmul_readvariableop_resource:	`?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_70/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`?*
dtype02
MatMul/ReadVariableOpz
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	`?2
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
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
*__inference_dense_68_layer_call_fn_1639788

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
E__inference_dense_68_layer_call_and_return_conditional_losses_16390072
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
?
?
*__inference_dense_67_layer_call_fn_1639754

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
E__inference_dense_67_layer_call_and_return_conditional_losses_16389822
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
?Q
?
E__inference_model_20_layer_call_and_return_conditional_losses_1639388
input_21"
dense_67_1639331: 
dense_67_1639333: "
dense_68_1639336: @
dense_68_1639338:@"
dense_69_1639341:@`
dense_69_1639343:`#
dense_70_1639346:	`?
dense_70_1639348:	?'
outputlayer_1639352:
??"
outputlayer_1639354:	?
identity?? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp? dense_70/StatefulPartitionedCall?1dense_70/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_67/CastCastinput_21*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_67/Cast?
 dense_67/StatefulPartitionedCallStatefulPartitionedCalldense_67/Cast:y:0dense_67_1639331dense_67_1639333*
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
E__inference_dense_67_layer_call_and_return_conditional_losses_16389822"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_1639336dense_68_1639338*
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
E__inference_dense_68_layer_call_and_return_conditional_losses_16390072"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_1639341dense_69_1639343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_16390322"
 dense_69/StatefulPartitionedCall?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0dense_70_1639346dense_70_1639348*
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
E__inference_dense_70_layer_call_and_return_conditional_losses_16390572"
 dense_70/StatefulPartitionedCall?
outputlayer/CastCast)dense_70/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1639352outputlayer_1639354*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_16390812%
#outputlayer/StatefulPartitionedCall?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_1639331*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_1639336*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_1639341*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_70_1639346*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1639352* 
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

Identity?
NoOpNoOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp!^dense_70/StatefulPartitionedCall2^dense_70/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_21
?
?
__inference_loss_fn_0_1639899L
:dense_67_kernel_regularizer_square_readvariableop_resource: 
identity??1dense_67/kernel/Regularizer/Square/ReadVariableOp?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_67_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulm
IdentityIdentity#dense_67/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp
?
?
E__inference_dense_67_layer_call_and_return_conditional_losses_1639745

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_69_layer_call_fn_1639822

inputs
unknown:@`
	unknown_0:`
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_69_layer_call_and_return_conditional_losses_16390322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`2

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
?

?
*__inference_model_20_layer_call_fn_1639695

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@`
	unknown_4:`
	unknown_5:	`?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_16391182
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
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_70_layer_call_fn_1639856

inputs
unknown:	`?
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
E__inference_dense_70_layer_call_and_return_conditional_losses_16390572
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
:?????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1639910L
:dense_68_kernel_regularizer_square_readvariableop_resource: @
identity??1dense_68/kernel/Regularizer/Square/ReadVariableOp?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_68_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mulm
IdentityIdentity#dense_68/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp
?
?
E__inference_dense_70_layer_call_and_return_conditional_losses_1639847

inputs1
matmul_readvariableop_resource:	`?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_70/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`?*
dtype02
MatMul/ReadVariableOpz
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	`?2
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
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?H
?	
"__inference__wrapped_model_1638955
input_21B
0model_20_dense_67_matmul_readvariableop_resource: ?
1model_20_dense_67_biasadd_readvariableop_resource: B
0model_20_dense_68_matmul_readvariableop_resource: @?
1model_20_dense_68_biasadd_readvariableop_resource:@B
0model_20_dense_69_matmul_readvariableop_resource:@`?
1model_20_dense_69_biasadd_readvariableop_resource:`C
0model_20_dense_70_matmul_readvariableop_resource:	`?@
1model_20_dense_70_biasadd_readvariableop_resource:	?G
3model_20_outputlayer_matmul_readvariableop_resource:
??C
4model_20_outputlayer_biasadd_readvariableop_resource:	?
identity??(model_20/dense_67/BiasAdd/ReadVariableOp?'model_20/dense_67/MatMul/ReadVariableOp?(model_20/dense_68/BiasAdd/ReadVariableOp?'model_20/dense_68/MatMul/ReadVariableOp?(model_20/dense_69/BiasAdd/ReadVariableOp?'model_20/dense_69/MatMul/ReadVariableOp?(model_20/dense_70/BiasAdd/ReadVariableOp?'model_20/dense_70/MatMul/ReadVariableOp?+model_20/outputlayer/BiasAdd/ReadVariableOp?*model_20/outputlayer/MatMul/ReadVariableOp?
model_20/dense_67/CastCastinput_21*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_20/dense_67/Cast?
'model_20/dense_67/MatMul/ReadVariableOpReadVariableOp0model_20_dense_67_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'model_20/dense_67/MatMul/ReadVariableOp?
model_20/dense_67/MatMul/CastCast/model_20/dense_67/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
model_20/dense_67/MatMul/Cast?
model_20/dense_67/MatMulMatMulmodel_20/dense_67/Cast:y:0!model_20/dense_67/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_20/dense_67/MatMul?
(model_20/dense_67/BiasAdd/ReadVariableOpReadVariableOp1model_20_dense_67_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_20/dense_67/BiasAdd/ReadVariableOp?
model_20/dense_67/BiasAdd/CastCast0model_20/dense_67/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model_20/dense_67/BiasAdd/Cast?
model_20/dense_67/BiasAddBiasAdd"model_20/dense_67/MatMul:product:0"model_20/dense_67/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_20/dense_67/BiasAdd?
model_20/dense_67/TanhTanh"model_20/dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_20/dense_67/Tanh?
'model_20/dense_68/MatMul/ReadVariableOpReadVariableOp0model_20_dense_68_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02)
'model_20/dense_68/MatMul/ReadVariableOp?
model_20/dense_68/MatMul/CastCast/model_20/dense_68/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
model_20/dense_68/MatMul/Cast?
model_20/dense_68/MatMulMatMulmodel_20/dense_67/Tanh:y:0!model_20/dense_68/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_20/dense_68/MatMul?
(model_20/dense_68/BiasAdd/ReadVariableOpReadVariableOp1model_20_dense_68_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_20/dense_68/BiasAdd/ReadVariableOp?
model_20/dense_68/BiasAdd/CastCast0model_20/dense_68/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2 
model_20/dense_68/BiasAdd/Cast?
model_20/dense_68/BiasAddBiasAdd"model_20/dense_68/MatMul:product:0"model_20/dense_68/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_20/dense_68/BiasAdd?
model_20/dense_68/TanhTanh"model_20/dense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_20/dense_68/Tanh?
'model_20/dense_69/MatMul/ReadVariableOpReadVariableOp0model_20_dense_69_matmul_readvariableop_resource*
_output_shapes

:@`*
dtype02)
'model_20/dense_69/MatMul/ReadVariableOp?
model_20/dense_69/MatMul/CastCast/model_20/dense_69/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@`2
model_20/dense_69/MatMul/Cast?
model_20/dense_69/MatMulMatMulmodel_20/dense_68/Tanh:y:0!model_20/dense_69/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????`2
model_20/dense_69/MatMul?
(model_20/dense_69/BiasAdd/ReadVariableOpReadVariableOp1model_20_dense_69_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02*
(model_20/dense_69/BiasAdd/ReadVariableOp?
model_20/dense_69/BiasAdd/CastCast0model_20/dense_69/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:`2 
model_20/dense_69/BiasAdd/Cast?
model_20/dense_69/BiasAddBiasAdd"model_20/dense_69/MatMul:product:0"model_20/dense_69/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????`2
model_20/dense_69/BiasAdd?
model_20/dense_69/TanhTanh"model_20/dense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`2
model_20/dense_69/Tanh?
'model_20/dense_70/MatMul/ReadVariableOpReadVariableOp0model_20_dense_70_matmul_readvariableop_resource*
_output_shapes
:	`?*
dtype02)
'model_20/dense_70/MatMul/ReadVariableOp?
model_20/dense_70/MatMul/CastCast/model_20/dense_70/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	`?2
model_20/dense_70/MatMul/Cast?
model_20/dense_70/MatMulMatMulmodel_20/dense_69/Tanh:y:0!model_20/dense_70/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_20/dense_70/MatMul?
(model_20/dense_70/BiasAdd/ReadVariableOpReadVariableOp1model_20_dense_70_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_20/dense_70/BiasAdd/ReadVariableOp?
model_20/dense_70/BiasAdd/CastCast0model_20/dense_70/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2 
model_20/dense_70/BiasAdd/Cast?
model_20/dense_70/BiasAddBiasAdd"model_20/dense_70/MatMul:product:0"model_20/dense_70/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_20/dense_70/BiasAdd?
model_20/dense_70/TanhTanh"model_20/dense_70/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_20/dense_70/Tanh?
model_20/outputlayer/CastCastmodel_20/dense_70/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_20/outputlayer/Cast?
*model_20/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_20_outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_20/outputlayer/MatMul/ReadVariableOp?
model_20/outputlayer/MatMulMatMulmodel_20/outputlayer/Cast:y:02model_20/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_20/outputlayer/MatMul?
+model_20/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_20_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_20/outputlayer/BiasAdd/ReadVariableOp?
model_20/outputlayer/BiasAddBiasAdd%model_20/outputlayer/MatMul:product:03model_20/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_20/outputlayer/BiasAdd?
model_20/outputlayer/LeakyRelu	LeakyRelu%model_20/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_20/outputlayer/LeakyRelu?
IdentityIdentity,model_20/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp)^model_20/dense_67/BiasAdd/ReadVariableOp(^model_20/dense_67/MatMul/ReadVariableOp)^model_20/dense_68/BiasAdd/ReadVariableOp(^model_20/dense_68/MatMul/ReadVariableOp)^model_20/dense_69/BiasAdd/ReadVariableOp(^model_20/dense_69/MatMul/ReadVariableOp)^model_20/dense_70/BiasAdd/ReadVariableOp(^model_20/dense_70/MatMul/ReadVariableOp,^model_20/outputlayer/BiasAdd/ReadVariableOp+^model_20/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2T
(model_20/dense_67/BiasAdd/ReadVariableOp(model_20/dense_67/BiasAdd/ReadVariableOp2R
'model_20/dense_67/MatMul/ReadVariableOp'model_20/dense_67/MatMul/ReadVariableOp2T
(model_20/dense_68/BiasAdd/ReadVariableOp(model_20/dense_68/BiasAdd/ReadVariableOp2R
'model_20/dense_68/MatMul/ReadVariableOp'model_20/dense_68/MatMul/ReadVariableOp2T
(model_20/dense_69/BiasAdd/ReadVariableOp(model_20/dense_69/BiasAdd/ReadVariableOp2R
'model_20/dense_69/MatMul/ReadVariableOp'model_20/dense_69/MatMul/ReadVariableOp2T
(model_20/dense_70/BiasAdd/ReadVariableOp(model_20/dense_70/BiasAdd/ReadVariableOp2R
'model_20/dense_70/MatMul/ReadVariableOp'model_20/dense_70/MatMul/ReadVariableOp2Z
+model_20/outputlayer/BiasAdd/ReadVariableOp+model_20/outputlayer/BiasAdd/ReadVariableOp2X
*model_20/outputlayer/MatMul/ReadVariableOp*model_20/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_21
?
?
-__inference_outputlayer_layer_call_fn_1639888

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
H__inference_outputlayer_layer_call_and_return_conditional_losses_16390812
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
*__inference_model_20_layer_call_fn_1639327
input_21
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@`
	unknown_4:`
	unknown_5:	`?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_20_layer_call_and_return_conditional_losses_16392792
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
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_21
?o
?

E__inference_model_20_layer_call_and_return_conditional_losses_1639591

inputs9
'dense_67_matmul_readvariableop_resource: 6
(dense_67_biasadd_readvariableop_resource: 9
'dense_68_matmul_readvariableop_resource: @6
(dense_68_biasadd_readvariableop_resource:@9
'dense_69_matmul_readvariableop_resource:@`6
(dense_69_biasadd_readvariableop_resource:`:
'dense_70_matmul_readvariableop_resource:	`?7
(dense_70_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?dense_70/BiasAdd/ReadVariableOp?dense_70/MatMul/ReadVariableOp?1dense_70/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_67/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_67/Cast?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMul/CastCast&dense_67/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_67/MatMul/Cast?
dense_67/MatMulMatMuldense_67/Cast:y:0dense_67/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAdd/CastCast'dense_67/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_67/BiasAdd/Cast?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0dense_67/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_67/BiasAdds
dense_67/TanhTanhdense_67/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_67/Tanh?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMul/CastCast&dense_68/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_68/MatMul/Cast?
dense_68/MatMulMatMuldense_67/Tanh:y:0dense_68/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAdd/CastCast'dense_68/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_68/BiasAdd/Cast?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0dense_68/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_68/BiasAdds
dense_68/TanhTanhdense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_68/Tanh?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:@`*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMul/CastCast&dense_69/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@`2
dense_69/MatMul/Cast?
dense_69/MatMulMatMuldense_68/Tanh:y:0dense_69/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAdd/CastCast'dense_69/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:`2
dense_69/BiasAdd/Cast?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0dense_69/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dense_69/BiasAdds
dense_69/TanhTanhdense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`2
dense_69/Tanh?
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	`?*
dtype02 
dense_70/MatMul/ReadVariableOp?
dense_70/MatMul/CastCast&dense_70/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	`?2
dense_70/MatMul/Cast?
dense_70/MatMulMatMuldense_69/Tanh:y:0dense_70/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_70/MatMul?
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_70/BiasAdd/ReadVariableOp?
dense_70/BiasAdd/CastCast'dense_70/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_70/BiasAdd/Cast?
dense_70/BiasAddBiasAdddense_70/MatMul:product:0dense_70/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_70/BiasAddt
dense_70/TanhTanhdense_70/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_70/Tanh?
outputlayer/CastCastdense_70/Tanh:y:0*

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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mul?
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

Identity?
NoOpNoOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1639879

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
E__inference_dense_68_layer_call_and_return_conditional_losses_1639007

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_1639921L
:dense_69_kernel_regularizer_square_readvariableop_resource:@`
identity??1dense_69/kernel/Regularizer/Square/ReadVariableOp?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_69_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mulm
IdentityIdentity#dense_69/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1639081

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
E__inference_dense_69_layer_call_and_return_conditional_losses_1639032

inputs0
matmul_readvariableop_resource:@`-
biasadd_readvariableop_resource:`
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@`*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@`2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????`2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:`2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????`2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????`2
Tanh?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????`2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_dense_69_layer_call_and_return_conditional_losses_1639813

inputs0
matmul_readvariableop_resource:@`-
biasadd_readvariableop_resource:`
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@`*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@`2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????`2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:`2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????`2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????`2
Tanh?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????`2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?o
?

E__inference_model_20_layer_call_and_return_conditional_losses_1639670

inputs9
'dense_67_matmul_readvariableop_resource: 6
(dense_67_biasadd_readvariableop_resource: 9
'dense_68_matmul_readvariableop_resource: @6
(dense_68_biasadd_readvariableop_resource:@9
'dense_69_matmul_readvariableop_resource:@`6
(dense_69_biasadd_readvariableop_resource:`:
'dense_70_matmul_readvariableop_resource:	`?7
(dense_70_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?dense_70/BiasAdd/ReadVariableOp?dense_70/MatMul/ReadVariableOp?1dense_70/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_67/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_67/Cast?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMul/CastCast&dense_67/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_67/MatMul/Cast?
dense_67/MatMulMatMuldense_67/Cast:y:0dense_67/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAdd/CastCast'dense_67/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_67/BiasAdd/Cast?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0dense_67/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_67/BiasAdds
dense_67/TanhTanhdense_67/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_67/Tanh?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMul/CastCast&dense_68/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_68/MatMul/Cast?
dense_68/MatMulMatMuldense_67/Tanh:y:0dense_68/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAdd/CastCast'dense_68/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_68/BiasAdd/Cast?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0dense_68/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_68/BiasAdds
dense_68/TanhTanhdense_68/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_68/Tanh?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:@`*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMul/CastCast&dense_69/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@`2
dense_69/MatMul/Cast?
dense_69/MatMulMatMuldense_68/Tanh:y:0dense_69/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAdd/CastCast'dense_69/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:`2
dense_69/BiasAdd/Cast?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0dense_69/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????`2
dense_69/BiasAdds
dense_69/TanhTanhdense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????`2
dense_69/Tanh?
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	`?*
dtype02 
dense_70/MatMul/ReadVariableOp?
dense_70/MatMul/CastCast&dense_70/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	`?2
dense_70/MatMul/Cast?
dense_70/MatMulMatMuldense_69/Tanh:y:0dense_70/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_70/MatMul?
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_70/BiasAdd/ReadVariableOp?
dense_70/BiasAdd/CastCast'dense_70/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_70/BiasAdd/Cast?
dense_70/BiasAddBiasAdddense_70/MatMul:product:0dense_70/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_70/BiasAddt
dense_70/TanhTanhdense_70/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_70/Tanh?
outputlayer/CastCastdense_70/Tanh:y:0*

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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

:@`*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@`2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
1dense_70/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes
:	`?*
dtype023
1dense_70/kernel/Regularizer/Square/ReadVariableOp?
"dense_70/kernel/Regularizer/SquareSquare9dense_70/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	`?2$
"dense_70/kernel/Regularizer/Square?
!dense_70/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_70/kernel/Regularizer/Const?
dense_70/kernel/Regularizer/SumSum&dense_70/kernel/Regularizer/Square:y:0*dense_70/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/Sum?
!dense_70/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_70/kernel/Regularizer/mul/x?
dense_70/kernel/Regularizer/mulMul*dense_70/kernel/Regularizer/mul/x:output:0(dense_70/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_70/kernel/Regularizer/mul?
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

Identity?
NoOpNoOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp2^dense_70/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2f
1dense_70/kernel/Regularizer/Square/ReadVariableOp1dense_70/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_68_layer_call_and_return_conditional_losses_1639779

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
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
input_211
serving_default_input_21:0?????????@
outputlayer1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:?|
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
layer_with_weights-4
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
*v&call_and_return_all_conditional_losses
w_default_save_signature
x__call__"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*y&call_and_return_all_conditional_losses
z__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*{&call_and_return_all_conditional_losses
|__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*}&call_and_return_all_conditional_losses
~__call__"
_tf_keras_layer
?

kernel
 bias
!trainable_variables
"regularization_losses
#	variables
$	keras_api
*&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
+
loss_scale
,base_optimizer
-iter

.beta_1

/beta_2
	0decay
1learning_ratembmcmdmemfmgmh mi%mj&mkvlvmvnvovpvqvr vs%vt&vu"
	optimizer
f
0
1
2
3
4
5
6
 7
%8
&9"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
f
0
1
2
3
4
5
6
 7
%8
&9"
trackable_list_wrapper
?
trainable_variables
	regularization_losses

2layers
3metrics
4layer_metrics

	variables
5layer_regularization_losses
6non_trainable_variables
x__call__
w_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
!: 2dense_67/kernel
: 2dense_67/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
7non_trainable_variables
trainable_variables
regularization_losses

8layers
9metrics
:layer_metrics
	variables
;layer_regularization_losses
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
!: @2dense_68/kernel
:@2dense_68/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
<non_trainable_variables
trainable_variables
regularization_losses

=layers
>metrics
?layer_metrics
	variables
@layer_regularization_losses
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
!:@`2dense_69/kernel
:`2dense_69/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Anon_trainable_variables
trainable_variables
regularization_losses

Blayers
Cmetrics
Dlayer_metrics
	variables
Elayer_regularization_losses
~__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
": 	`?2dense_70/kernel
:?2dense_70/bias
.
0
 1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
Fnon_trainable_variables
!trainable_variables
"regularization_losses

Glayers
Hmetrics
Ilayer_metrics
#	variables
Jlayer_regularization_losses
?__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
&:$
??2outputlayer/kernel
:?2outputlayer/bias
.
%0
&1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
Knon_trainable_variables
'trainable_variables
(regularization_losses

Llayers
Mmetrics
Nlayer_metrics
)	variables
Olayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
F
Pcurrent_loss_scale
Q
good_steps"
_generic_user_object
"
_generic_user_object
:	 (2cond_1/Adamax/iter
: (2cond_1/Adamax/beta_1
: (2cond_1/Adamax/beta_2
: (2cond_1/Adamax/decay
%:# (2cond_1/Adamax/learning_rate
J
0
1
2
3
4
5"
trackable_list_wrapper
5
R0
S1
T2"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
: 2current_loss_scale
:	 2
good_steps
N
	Utotal
	Vcount
W	variables
X	keras_api"
_tf_keras_metric
^
	Ytotal
	Zcount
[
_fn_kwargs
\	variables
]	keras_api"
_tf_keras_metric
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
U0
V1"
trackable_list_wrapper
-
W	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Y0
Z1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
.
^0
_1"
trackable_list_wrapper
-
`	variables"
_generic_user_object
/:- 2cond_1/Adamax/dense_67/kernel/m
):' 2cond_1/Adamax/dense_67/bias/m
/:- @2cond_1/Adamax/dense_68/kernel/m
):'@2cond_1/Adamax/dense_68/bias/m
/:-@`2cond_1/Adamax/dense_69/kernel/m
):'`2cond_1/Adamax/dense_69/bias/m
0:.	`?2cond_1/Adamax/dense_70/kernel/m
*:(?2cond_1/Adamax/dense_70/bias/m
4:2
??2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
/:- 2cond_1/Adamax/dense_67/kernel/v
):' 2cond_1/Adamax/dense_67/bias/v
/:- @2cond_1/Adamax/dense_68/kernel/v
):'@2cond_1/Adamax/dense_68/bias/v
/:-@`2cond_1/Adamax/dense_69/kernel/v
):'`2cond_1/Adamax/dense_69/bias/v
0:.	`?2cond_1/Adamax/dense_70/kernel/v
*:(?2cond_1/Adamax/dense_70/bias/v
4:2
??2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
E__inference_model_20_layer_call_and_return_conditional_losses_1639591
E__inference_model_20_layer_call_and_return_conditional_losses_1639670
E__inference_model_20_layer_call_and_return_conditional_losses_1639388
E__inference_model_20_layer_call_and_return_conditional_losses_1639449?
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
"__inference__wrapped_model_1638955input_21"?
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
*__inference_model_20_layer_call_fn_1639141
*__inference_model_20_layer_call_fn_1639695
*__inference_model_20_layer_call_fn_1639720
*__inference_model_20_layer_call_fn_1639327?
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
E__inference_dense_67_layer_call_and_return_conditional_losses_1639745?
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
*__inference_dense_67_layer_call_fn_1639754?
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
E__inference_dense_68_layer_call_and_return_conditional_losses_1639779?
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
*__inference_dense_68_layer_call_fn_1639788?
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
E__inference_dense_69_layer_call_and_return_conditional_losses_1639813?
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
*__inference_dense_69_layer_call_fn_1639822?
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
E__inference_dense_70_layer_call_and_return_conditional_losses_1639847?
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
*__inference_dense_70_layer_call_fn_1639856?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_1639879?
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
-__inference_outputlayer_layer_call_fn_1639888?
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
__inference_loss_fn_0_1639899?
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
__inference_loss_fn_1_1639910?
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
__inference_loss_fn_2_1639921?
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
__inference_loss_fn_3_1639932?
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
__inference_loss_fn_4_1639943?
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
%__inference_signature_wrapper_1639512input_21"?
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
"__inference__wrapped_model_1638955{
 %&1?.
'?$
"?
input_21?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
E__inference_dense_67_layer_call_and_return_conditional_losses_1639745\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? }
*__inference_dense_67_layer_call_fn_1639754O/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_dense_68_layer_call_and_return_conditional_losses_1639779\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? }
*__inference_dense_68_layer_call_fn_1639788O/?,
%?"
 ?
inputs????????? 
? "??????????@?
E__inference_dense_69_layer_call_and_return_conditional_losses_1639813\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????`
? }
*__inference_dense_69_layer_call_fn_1639822O/?,
%?"
 ?
inputs?????????@
? "??????????`?
E__inference_dense_70_layer_call_and_return_conditional_losses_1639847] /?,
%?"
 ?
inputs?????????`
? "&?#
?
0??????????
? ~
*__inference_dense_70_layer_call_fn_1639856P /?,
%?"
 ?
inputs?????????`
? "???????????<
__inference_loss_fn_0_1639899?

? 
? "? <
__inference_loss_fn_1_1639910?

? 
? "? <
__inference_loss_fn_2_1639921?

? 
? "? <
__inference_loss_fn_3_1639932?

? 
? "? <
__inference_loss_fn_4_1639943%?

? 
? "? ?
E__inference_model_20_layer_call_and_return_conditional_losses_1639388o
 %&9?6
/?,
"?
input_21?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_20_layer_call_and_return_conditional_losses_1639449o
 %&9?6
/?,
"?
input_21?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_20_layer_call_and_return_conditional_losses_1639591m
 %&7?4
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
E__inference_model_20_layer_call_and_return_conditional_losses_1639670m
 %&7?4
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
*__inference_model_20_layer_call_fn_1639141b
 %&9?6
/?,
"?
input_21?????????
p 

 
? "????????????
*__inference_model_20_layer_call_fn_1639327b
 %&9?6
/?,
"?
input_21?????????
p

 
? "????????????
*__inference_model_20_layer_call_fn_1639695`
 %&7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_20_layer_call_fn_1639720`
 %&7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_1639879^%&0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_1639888Q%&0?-
&?#
!?
inputs??????????
? "????????????
%__inference_signature_wrapper_1639512?
 %&=?:
? 
3?0
.
input_21"?
input_21?????????":?7
5
outputlayer&?#
outputlayer??????????