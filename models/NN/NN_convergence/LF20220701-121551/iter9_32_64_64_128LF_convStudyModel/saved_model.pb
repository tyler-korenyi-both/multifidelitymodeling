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
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

: *
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
: *
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

: @*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:@*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:@@*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:@*
dtype0
{
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?* 
shared_namedense_23/kernel
t
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes
:	@?*
dtype0
s
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_23/bias
l
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
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
cond_1/Adamax/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_20/kernel/m
?
3cond_1/Adamax/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_20/kernel/m*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_20/bias/m
?
1cond_1/Adamax/dense_20/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_20/bias/m*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_21/kernel/m
?
3cond_1/Adamax/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_21/kernel/m*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_21/bias/m
?
1cond_1/Adamax/dense_21/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_21/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*0
shared_name!cond_1/Adamax/dense_22/kernel/m
?
3cond_1/Adamax/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_22/kernel/m*
_output_shapes

:@@*
dtype0
?
cond_1/Adamax/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_22/bias/m
?
1cond_1/Adamax/dense_22/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_22/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!cond_1/Adamax/dense_23/kernel/m
?
3cond_1/Adamax/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_23/kernel/m*
_output_shapes
:	@?*
dtype0
?
cond_1/Adamax/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_23/bias/m
?
1cond_1/Adamax/dense_23/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_23/bias/m*
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
cond_1/Adamax/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_20/kernel/v
?
3cond_1/Adamax/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_20/kernel/v*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_20/bias/v
?
1cond_1/Adamax/dense_20/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_20/bias/v*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_21/kernel/v
?
3cond_1/Adamax/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_21/kernel/v*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_21/bias/v
?
1cond_1/Adamax/dense_21/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_21/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*0
shared_name!cond_1/Adamax/dense_22/kernel/v
?
3cond_1/Adamax/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_22/kernel/v*
_output_shapes

:@@*
dtype0
?
cond_1/Adamax/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_22/bias/v
?
1cond_1/Adamax/dense_22/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_22/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!cond_1/Adamax/dense_23/kernel/v
?
3cond_1/Adamax/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_23/kernel/v*
_output_shapes
:	@?*
dtype0
?
cond_1/Adamax/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_23/bias/v
?
1cond_1/Adamax/dense_23/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_23/bias/v*
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
VARIABLE_VALUEdense_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_21/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_22/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEcond_1/Adamax/dense_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_22/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_22/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_22/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_22/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_9Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9dense_20/kerneldense_20/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasoutputlayer/kerneloutputlayer/bias*
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
GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_800458
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3cond_1/Adamax/dense_20/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_20/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_21/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_21/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_22/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_22/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_23/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_23/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_20/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_20/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_21/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_21/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_22/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_22/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_23/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_23/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*8
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_801041
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_20/kerneldense_20/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_20/kernel/mcond_1/Adamax/dense_20/bias/mcond_1/Adamax/dense_21/kernel/mcond_1/Adamax/dense_21/bias/mcond_1/Adamax/dense_22/kernel/mcond_1/Adamax/dense_22/bias/mcond_1/Adamax/dense_23/kernel/mcond_1/Adamax/dense_23/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_20/kernel/vcond_1/Adamax/dense_20/bias/vcond_1/Adamax/dense_21/kernel/vcond_1/Adamax/dense_21/bias/vcond_1/Adamax/dense_22/kernel/vcond_1/Adamax/dense_22/bias/vcond_1/Adamax/dense_23/kernel/vcond_1/Adamax/dense_23/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*7
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_801180ʅ

?
?
G__inference_outputlayer_layer_call_and_return_conditional_losses_800027

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
?
?
__inference_loss_fn_3_800878M
:dense_23_kernel_regularizer_square_readvariableop_resource:	@?
identity??1dense_23/kernel/Regularizer/Square/ReadVariableOp?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_23_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mulm
IdentityIdentity#dense_23/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_4_800889Q
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
C__inference_model_8_layer_call_and_return_conditional_losses_800064

inputs!
dense_20_799929: 
dense_20_799931: !
dense_21_799954: @
dense_21_799956:@!
dense_22_799979:@@
dense_22_799981:@"
dense_23_800004:	@?
dense_23_800006:	?&
outputlayer_800028:
??!
outputlayer_800030:	?
identity?? dense_20/StatefulPartitionedCall?1dense_20/kernel/Regularizer/Square/ReadVariableOp? dense_21/StatefulPartitionedCall?1dense_21/kernel/Regularizer/Square/ReadVariableOp? dense_22/StatefulPartitionedCall?1dense_22/kernel/Regularizer/Square/ReadVariableOp? dense_23/StatefulPartitionedCall?1dense_23/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_20/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_20/Cast?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20/Cast:y:0dense_20_799929dense_20_799931*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_7999282"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_799954dense_21_799956*
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
D__inference_dense_21_layer_call_and_return_conditional_losses_7999532"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_799979dense_22_799981*
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
D__inference_dense_22_layer_call_and_return_conditional_losses_7999782"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_800004dense_23_800006*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_8000032"
 dense_23/StatefulPartitionedCall?
outputlayer/CastCast)dense_23/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_800028outputlayer_800030*
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
G__inference_outputlayer_layer_call_and_return_conditional_losses_8000272%
#outputlayer/StatefulPartitionedCall?
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_20_799929*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mul?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_799954*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mul?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_22_799979*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_800004*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_800028* 
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
NoOpNoOp!^dense_20/StatefulPartitionedCall2^dense_20/kernel/Regularizer/Square/ReadVariableOp!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/Square/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_22_layer_call_and_return_conditional_losses_800759

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_22/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
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
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_800845L
:dense_20_kernel_regularizer_square_readvariableop_resource: 
identity??1dense_20/kernel/Regularizer/Square/ReadVariableOp?
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_20_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mulm
IdentityIdentity#dense_20/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_20/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp
?
?
D__inference_dense_21_layer_call_and_return_conditional_losses_800725

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_21/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_800856L
:dense_21_kernel_regularizer_square_readvariableop_resource: @
identity??1dense_21/kernel/Regularizer/Square/ReadVariableOp?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_21_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mulm
IdentityIdentity#dense_21/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_21/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp
?
?
)__inference_dense_23_layer_call_fn_800802

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
GPU2*0J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_8000032
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
D__inference_dense_22_layer_call_and_return_conditional_losses_799978

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_22/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
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
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_dense_23_layer_call_and_return_conditional_losses_800003

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_23/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Q
?
C__inference_model_8_layer_call_and_return_conditional_losses_800225

inputs!
dense_20_800168: 
dense_20_800170: !
dense_21_800173: @
dense_21_800175:@!
dense_22_800178:@@
dense_22_800180:@"
dense_23_800183:	@?
dense_23_800185:	?&
outputlayer_800189:
??!
outputlayer_800191:	?
identity?? dense_20/StatefulPartitionedCall?1dense_20/kernel/Regularizer/Square/ReadVariableOp? dense_21/StatefulPartitionedCall?1dense_21/kernel/Regularizer/Square/ReadVariableOp? dense_22/StatefulPartitionedCall?1dense_22/kernel/Regularizer/Square/ReadVariableOp? dense_23/StatefulPartitionedCall?1dense_23/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_20/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_20/Cast?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20/Cast:y:0dense_20_800168dense_20_800170*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_7999282"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_800173dense_21_800175*
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
D__inference_dense_21_layer_call_and_return_conditional_losses_7999532"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_800178dense_22_800180*
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
D__inference_dense_22_layer_call_and_return_conditional_losses_7999782"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_800183dense_23_800185*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_8000032"
 dense_23/StatefulPartitionedCall?
outputlayer/CastCast)dense_23/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_800189outputlayer_800191*
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
G__inference_outputlayer_layer_call_and_return_conditional_losses_8000272%
#outputlayer/StatefulPartitionedCall?
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_20_800168*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mul?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_800173*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mul?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_22_800178*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_800183*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_800189* 
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
NoOpNoOp!^dense_20/StatefulPartitionedCall2^dense_20/kernel/Regularizer/Square/ReadVariableOp!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/Square/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?o
?

C__inference_model_8_layer_call_and_return_conditional_losses_800537

inputs9
'dense_20_matmul_readvariableop_resource: 6
(dense_20_biasadd_readvariableop_resource: 9
'dense_21_matmul_readvariableop_resource: @6
(dense_21_biasadd_readvariableop_resource:@9
'dense_22_matmul_readvariableop_resource:@@6
(dense_22_biasadd_readvariableop_resource:@:
'dense_23_matmul_readvariableop_resource:	@?7
(dense_23_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?1dense_20/kernel/Regularizer/Square/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?1dense_21/kernel/Regularizer/Square/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?1dense_22/kernel/Regularizer/Square/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?1dense_23/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_20/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_20/Cast?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMul/CastCast&dense_20/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_20/MatMul/Cast?
dense_20/MatMulMatMuldense_20/Cast:y:0dense_20/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAdd/CastCast'dense_20/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_20/BiasAdd/Cast?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0dense_20/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_20/BiasAdds
dense_20/TanhTanhdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_20/Tanh?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMul/CastCast&dense_21/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_21/MatMul/Cast?
dense_21/MatMulMatMuldense_20/Tanh:y:0dense_21/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAdd/CastCast'dense_21/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_21/BiasAdd/Cast?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0dense_21/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_21/BiasAdds
dense_21/TanhTanhdense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_21/Tanh?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMul/CastCast&dense_22/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
dense_22/MatMul/Cast?
dense_22/MatMulMatMuldense_21/Tanh:y:0dense_22/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAdd/CastCast'dense_22/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_22/BiasAdd/Cast?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0dense_22/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_22/BiasAdds
dense_22/TanhTanhdense_22/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_22/Tanh?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMul/CastCast&dense_23/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
dense_23/MatMul/Cast?
dense_23/MatMulMatMuldense_22/Tanh:y:0dense_23/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAdd/CastCast'dense_23/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_23/BiasAdd/Cast?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0dense_23/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_23/BiasAddt
dense_23/TanhTanhdense_23/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_23/Tanh?
outputlayer/CastCastdense_23/Tanh:y:0*

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
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mul?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mul?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
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
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp2^dense_20/kernel/Regularizer/Square/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/Square/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/Square/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
(__inference_model_8_layer_call_fn_800087
input_9
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_8000642
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
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
?
?
D__inference_dense_20_layer_call_and_return_conditional_losses_800691

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_20/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_20/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
(__inference_model_8_layer_call_fn_800641

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:	@?
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
GPU2*0J 8? *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_8000642
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
?Q
?
C__inference_model_8_layer_call_and_return_conditional_losses_800334
input_9!
dense_20_800277: 
dense_20_800279: !
dense_21_800282: @
dense_21_800284:@!
dense_22_800287:@@
dense_22_800289:@"
dense_23_800292:	@?
dense_23_800294:	?&
outputlayer_800298:
??!
outputlayer_800300:	?
identity?? dense_20/StatefulPartitionedCall?1dense_20/kernel/Regularizer/Square/ReadVariableOp? dense_21/StatefulPartitionedCall?1dense_21/kernel/Regularizer/Square/ReadVariableOp? dense_22/StatefulPartitionedCall?1dense_22/kernel/Regularizer/Square/ReadVariableOp? dense_23/StatefulPartitionedCall?1dense_23/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpp
dense_20/CastCastinput_9*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_20/Cast?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20/Cast:y:0dense_20_800277dense_20_800279*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_7999282"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_800282dense_21_800284*
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
D__inference_dense_21_layer_call_and_return_conditional_losses_7999532"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_800287dense_22_800289*
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
D__inference_dense_22_layer_call_and_return_conditional_losses_7999782"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_800292dense_23_800294*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_8000032"
 dense_23/StatefulPartitionedCall?
outputlayer/CastCast)dense_23/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_800298outputlayer_800300*
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
G__inference_outputlayer_layer_call_and_return_conditional_losses_8000272%
#outputlayer/StatefulPartitionedCall?
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_20_800277*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mul?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_800282*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mul?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_22_800287*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_800292*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_800298* 
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
NoOpNoOp!^dense_20/StatefulPartitionedCall2^dense_20/kernel/Regularizer/Square/ReadVariableOp!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/Square/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
?
?
)__inference_dense_21_layer_call_fn_800734

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
GPU2*0J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_7999532
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
)__inference_dense_22_layer_call_fn_800768

inputs
unknown:@@
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
D__inference_dense_22_layer_call_and_return_conditional_losses_7999782
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
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?\
?
__inference__traced_save_801041
file_prefix.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop1
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
:savev2_cond_1_adamax_dense_20_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_20_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_21_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_21_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_22_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_22_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_23_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_23_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_20_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_20_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_21_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_21_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_22_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_22_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_23_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_23_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_cond_1_adamax_dense_20_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_20_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_21_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_21_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_22_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_22_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_23_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_23_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_20_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_20_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_21_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_21_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_22_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_22_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_23_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_23_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: : : : @:@:@@:@:	@?:?:
??:?: : : : : : : : : : : : : : : : @:@:@@:@:	@?:?:
??:?: : : @:@:@@:@:	@?:?:
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

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!
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

:@@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!
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

:@@: '

_output_shapes
:@:%(!

_output_shapes
:	@?:!)
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
?o
?

C__inference_model_8_layer_call_and_return_conditional_losses_800616

inputs9
'dense_20_matmul_readvariableop_resource: 6
(dense_20_biasadd_readvariableop_resource: 9
'dense_21_matmul_readvariableop_resource: @6
(dense_21_biasadd_readvariableop_resource:@9
'dense_22_matmul_readvariableop_resource:@@6
(dense_22_biasadd_readvariableop_resource:@:
'dense_23_matmul_readvariableop_resource:	@?7
(dense_23_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?1dense_20/kernel/Regularizer/Square/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?1dense_21/kernel/Regularizer/Square/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?1dense_22/kernel/Regularizer/Square/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?1dense_23/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_20/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_20/Cast?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMul/CastCast&dense_20/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_20/MatMul/Cast?
dense_20/MatMulMatMuldense_20/Cast:y:0dense_20/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAdd/CastCast'dense_20/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_20/BiasAdd/Cast?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0dense_20/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_20/BiasAdds
dense_20/TanhTanhdense_20/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_20/Tanh?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMul/CastCast&dense_21/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_21/MatMul/Cast?
dense_21/MatMulMatMuldense_20/Tanh:y:0dense_21/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAdd/CastCast'dense_21/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_21/BiasAdd/Cast?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0dense_21/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_21/BiasAdds
dense_21/TanhTanhdense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_21/Tanh?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMul/CastCast&dense_22/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
dense_22/MatMul/Cast?
dense_22/MatMulMatMuldense_21/Tanh:y:0dense_22/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAdd/CastCast'dense_22/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_22/BiasAdd/Cast?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0dense_22/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_22/BiasAdds
dense_22/TanhTanhdense_22/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_22/Tanh?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMul/CastCast&dense_23/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
dense_23/MatMul/Cast?
dense_23/MatMulMatMuldense_22/Tanh:y:0dense_23/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAdd/CastCast'dense_23/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_23/BiasAdd/Cast?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0dense_23/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_23/BiasAddt
dense_23/TanhTanhdense_23/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_23/Tanh?
outputlayer/CastCastdense_23/Tanh:y:0*

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
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mul?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mul?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
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
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp2^dense_20/kernel/Regularizer/Square/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/Square/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp2^dense_22/kernel/Regularizer/Square/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_outputlayer_layer_call_and_return_conditional_losses_800825

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
?

?
$__inference_signature_wrapper_800458
input_9
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? **
f%R#
!__inference__wrapped_model_7999012
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
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
?
?
D__inference_dense_23_layer_call_and_return_conditional_losses_800793

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_23/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_dense_20_layer_call_fn_800700

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
GPU2*0J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_7999282
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
?
?
D__inference_dense_21_layer_call_and_return_conditional_losses_799953

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_21/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_21/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_800867L
:dense_22_kernel_regularizer_square_readvariableop_resource:@@
identity??1dense_22/kernel/Regularizer/Square/ReadVariableOp?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_22_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mulm
IdentityIdentity#dense_22/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_22/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp
?

?
(__inference_model_8_layer_call_fn_800666

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:	@?
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
GPU2*0J 8? *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_8002252
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
?
?
,__inference_outputlayer_layer_call_fn_800834

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
GPU2*0J 8? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_8000272
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
??
?
"__inference__traced_restore_801180
file_prefix2
 assignvariableop_dense_20_kernel: .
 assignvariableop_1_dense_20_bias: 4
"assignvariableop_2_dense_21_kernel: @.
 assignvariableop_3_dense_21_bias:@4
"assignvariableop_4_dense_22_kernel:@@.
 assignvariableop_5_dense_22_bias:@5
"assignvariableop_6_dense_23_kernel:	@?/
 assignvariableop_7_dense_23_bias:	?9
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
3assignvariableop_23_cond_1_adamax_dense_20_kernel_m: ?
1assignvariableop_24_cond_1_adamax_dense_20_bias_m: E
3assignvariableop_25_cond_1_adamax_dense_21_kernel_m: @?
1assignvariableop_26_cond_1_adamax_dense_21_bias_m:@E
3assignvariableop_27_cond_1_adamax_dense_22_kernel_m:@@?
1assignvariableop_28_cond_1_adamax_dense_22_bias_m:@F
3assignvariableop_29_cond_1_adamax_dense_23_kernel_m:	@?@
1assignvariableop_30_cond_1_adamax_dense_23_bias_m:	?J
6assignvariableop_31_cond_1_adamax_outputlayer_kernel_m:
??C
4assignvariableop_32_cond_1_adamax_outputlayer_bias_m:	?E
3assignvariableop_33_cond_1_adamax_dense_20_kernel_v: ?
1assignvariableop_34_cond_1_adamax_dense_20_bias_v: E
3assignvariableop_35_cond_1_adamax_dense_21_kernel_v: @?
1assignvariableop_36_cond_1_adamax_dense_21_bias_v:@E
3assignvariableop_37_cond_1_adamax_dense_22_kernel_v:@@?
1assignvariableop_38_cond_1_adamax_dense_22_bias_v:@F
3assignvariableop_39_cond_1_adamax_dense_23_kernel_v:	@?@
1assignvariableop_40_cond_1_adamax_dense_23_bias_v:	?J
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
AssignVariableOpAssignVariableOp assignvariableop_dense_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_22_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_22_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_23_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_23AssignVariableOp3assignvariableop_23_cond_1_adamax_dense_20_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_cond_1_adamax_dense_20_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_21_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_21_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_cond_1_adamax_dense_22_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_cond_1_adamax_dense_22_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp3assignvariableop_29_cond_1_adamax_dense_23_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_cond_1_adamax_dense_23_bias_mIdentity_30:output:0"/device:CPU:0*
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
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_20_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_20_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp3assignvariableop_35_cond_1_adamax_dense_21_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp1assignvariableop_36_cond_1_adamax_dense_21_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_cond_1_adamax_dense_22_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_cond_1_adamax_dense_22_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp3assignvariableop_39_cond_1_adamax_dense_23_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp1assignvariableop_40_cond_1_adamax_dense_23_bias_vIdentity_40:output:0"/device:CPU:0*
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
?
?
D__inference_dense_20_layer_call_and_return_conditional_losses_799928

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_20/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_20/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
(__inference_model_8_layer_call_fn_800273
input_9
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@@
	unknown_4:@
	unknown_5:	@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
GPU2*0J 8? *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_8002252
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
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
?G
?	
!__inference__wrapped_model_799901
input_9A
/model_8_dense_20_matmul_readvariableop_resource: >
0model_8_dense_20_biasadd_readvariableop_resource: A
/model_8_dense_21_matmul_readvariableop_resource: @>
0model_8_dense_21_biasadd_readvariableop_resource:@A
/model_8_dense_22_matmul_readvariableop_resource:@@>
0model_8_dense_22_biasadd_readvariableop_resource:@B
/model_8_dense_23_matmul_readvariableop_resource:	@??
0model_8_dense_23_biasadd_readvariableop_resource:	?F
2model_8_outputlayer_matmul_readvariableop_resource:
??B
3model_8_outputlayer_biasadd_readvariableop_resource:	?
identity??'model_8/dense_20/BiasAdd/ReadVariableOp?&model_8/dense_20/MatMul/ReadVariableOp?'model_8/dense_21/BiasAdd/ReadVariableOp?&model_8/dense_21/MatMul/ReadVariableOp?'model_8/dense_22/BiasAdd/ReadVariableOp?&model_8/dense_22/MatMul/ReadVariableOp?'model_8/dense_23/BiasAdd/ReadVariableOp?&model_8/dense_23/MatMul/ReadVariableOp?*model_8/outputlayer/BiasAdd/ReadVariableOp?)model_8/outputlayer/MatMul/ReadVariableOp?
model_8/dense_20/CastCastinput_9*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_8/dense_20/Cast?
&model_8/dense_20/MatMul/ReadVariableOpReadVariableOp/model_8_dense_20_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&model_8/dense_20/MatMul/ReadVariableOp?
model_8/dense_20/MatMul/CastCast.model_8/dense_20/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
model_8/dense_20/MatMul/Cast?
model_8/dense_20/MatMulMatMulmodel_8/dense_20/Cast:y:0 model_8/dense_20/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_8/dense_20/MatMul?
'model_8/dense_20/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'model_8/dense_20/BiasAdd/ReadVariableOp?
model_8/dense_20/BiasAdd/CastCast/model_8/dense_20/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
model_8/dense_20/BiasAdd/Cast?
model_8/dense_20/BiasAddBiasAdd!model_8/dense_20/MatMul:product:0!model_8/dense_20/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_8/dense_20/BiasAdd?
model_8/dense_20/TanhTanh!model_8/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_8/dense_20/Tanh?
&model_8/dense_21/MatMul/ReadVariableOpReadVariableOp/model_8_dense_21_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02(
&model_8/dense_21/MatMul/ReadVariableOp?
model_8/dense_21/MatMul/CastCast.model_8/dense_21/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
model_8/dense_21/MatMul/Cast?
model_8/dense_21/MatMulMatMulmodel_8/dense_20/Tanh:y:0 model_8/dense_21/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_8/dense_21/MatMul?
'model_8/dense_21/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_8/dense_21/BiasAdd/ReadVariableOp?
model_8/dense_21/BiasAdd/CastCast/model_8/dense_21/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
model_8/dense_21/BiasAdd/Cast?
model_8/dense_21/BiasAddBiasAdd!model_8/dense_21/MatMul:product:0!model_8/dense_21/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_8/dense_21/BiasAdd?
model_8/dense_21/TanhTanh!model_8/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_8/dense_21/Tanh?
&model_8/dense_22/MatMul/ReadVariableOpReadVariableOp/model_8_dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&model_8/dense_22/MatMul/ReadVariableOp?
model_8/dense_22/MatMul/CastCast.model_8/dense_22/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
model_8/dense_22/MatMul/Cast?
model_8/dense_22/MatMulMatMulmodel_8/dense_21/Tanh:y:0 model_8/dense_22/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_8/dense_22/MatMul?
'model_8/dense_22/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_8/dense_22/BiasAdd/ReadVariableOp?
model_8/dense_22/BiasAdd/CastCast/model_8/dense_22/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
model_8/dense_22/BiasAdd/Cast?
model_8/dense_22/BiasAddBiasAdd!model_8/dense_22/MatMul:product:0!model_8/dense_22/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_8/dense_22/BiasAdd?
model_8/dense_22/TanhTanh!model_8/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_8/dense_22/Tanh?
&model_8/dense_23/MatMul/ReadVariableOpReadVariableOp/model_8_dense_23_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02(
&model_8/dense_23/MatMul/ReadVariableOp?
model_8/dense_23/MatMul/CastCast.model_8/dense_23/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
model_8/dense_23/MatMul/Cast?
model_8/dense_23/MatMulMatMulmodel_8/dense_22/Tanh:y:0 model_8/dense_23/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_8/dense_23/MatMul?
'model_8/dense_23/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model_8/dense_23/BiasAdd/ReadVariableOp?
model_8/dense_23/BiasAdd/CastCast/model_8/dense_23/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
model_8/dense_23/BiasAdd/Cast?
model_8/dense_23/BiasAddBiasAdd!model_8/dense_23/MatMul:product:0!model_8/dense_23/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_8/dense_23/BiasAdd?
model_8/dense_23/TanhTanh!model_8/dense_23/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_8/dense_23/Tanh?
model_8/outputlayer/CastCastmodel_8/dense_23/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_8/outputlayer/Cast?
)model_8/outputlayer/MatMul/ReadVariableOpReadVariableOp2model_8_outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)model_8/outputlayer/MatMul/ReadVariableOp?
model_8/outputlayer/MatMulMatMulmodel_8/outputlayer/Cast:y:01model_8/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_8/outputlayer/MatMul?
*model_8/outputlayer/BiasAdd/ReadVariableOpReadVariableOp3model_8_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*model_8/outputlayer/BiasAdd/ReadVariableOp?
model_8/outputlayer/BiasAddBiasAdd$model_8/outputlayer/MatMul:product:02model_8/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_8/outputlayer/BiasAdd?
model_8/outputlayer/LeakyRelu	LeakyRelu$model_8/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2
model_8/outputlayer/LeakyRelu?
IdentityIdentity+model_8/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp(^model_8/dense_20/BiasAdd/ReadVariableOp'^model_8/dense_20/MatMul/ReadVariableOp(^model_8/dense_21/BiasAdd/ReadVariableOp'^model_8/dense_21/MatMul/ReadVariableOp(^model_8/dense_22/BiasAdd/ReadVariableOp'^model_8/dense_22/MatMul/ReadVariableOp(^model_8/dense_23/BiasAdd/ReadVariableOp'^model_8/dense_23/MatMul/ReadVariableOp+^model_8/outputlayer/BiasAdd/ReadVariableOp*^model_8/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2R
'model_8/dense_20/BiasAdd/ReadVariableOp'model_8/dense_20/BiasAdd/ReadVariableOp2P
&model_8/dense_20/MatMul/ReadVariableOp&model_8/dense_20/MatMul/ReadVariableOp2R
'model_8/dense_21/BiasAdd/ReadVariableOp'model_8/dense_21/BiasAdd/ReadVariableOp2P
&model_8/dense_21/MatMul/ReadVariableOp&model_8/dense_21/MatMul/ReadVariableOp2R
'model_8/dense_22/BiasAdd/ReadVariableOp'model_8/dense_22/BiasAdd/ReadVariableOp2P
&model_8/dense_22/MatMul/ReadVariableOp&model_8/dense_22/MatMul/ReadVariableOp2R
'model_8/dense_23/BiasAdd/ReadVariableOp'model_8/dense_23/BiasAdd/ReadVariableOp2P
&model_8/dense_23/MatMul/ReadVariableOp&model_8/dense_23/MatMul/ReadVariableOp2X
*model_8/outputlayer/BiasAdd/ReadVariableOp*model_8/outputlayer/BiasAdd/ReadVariableOp2V
)model_8/outputlayer/MatMul/ReadVariableOp)model_8/outputlayer/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
?Q
?
C__inference_model_8_layer_call_and_return_conditional_losses_800395
input_9!
dense_20_800338: 
dense_20_800340: !
dense_21_800343: @
dense_21_800345:@!
dense_22_800348:@@
dense_22_800350:@"
dense_23_800353:	@?
dense_23_800355:	?&
outputlayer_800359:
??!
outputlayer_800361:	?
identity?? dense_20/StatefulPartitionedCall?1dense_20/kernel/Regularizer/Square/ReadVariableOp? dense_21/StatefulPartitionedCall?1dense_21/kernel/Regularizer/Square/ReadVariableOp? dense_22/StatefulPartitionedCall?1dense_22/kernel/Regularizer/Square/ReadVariableOp? dense_23/StatefulPartitionedCall?1dense_23/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpp
dense_20/CastCastinput_9*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_20/Cast?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20/Cast:y:0dense_20_800338dense_20_800340*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_7999282"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_800343dense_21_800345*
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
D__inference_dense_21_layer_call_and_return_conditional_losses_7999532"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_800348dense_22_800350*
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
D__inference_dense_22_layer_call_and_return_conditional_losses_7999782"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_800353dense_23_800355*
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
GPU2*0J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_8000032"
 dense_23/StatefulPartitionedCall?
outputlayer/CastCast)dense_23/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_800359outputlayer_800361*
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
G__inference_outputlayer_layer_call_and_return_conditional_losses_8000272%
#outputlayer/StatefulPartitionedCall?
1dense_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_20_800338*
_output_shapes

: *
dtype023
1dense_20/kernel/Regularizer/Square/ReadVariableOp?
"dense_20/kernel/Regularizer/SquareSquare9dense_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_20/kernel/Regularizer/Square?
!dense_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_20/kernel/Regularizer/Const?
dense_20/kernel/Regularizer/SumSum&dense_20/kernel/Regularizer/Square:y:0*dense_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/Sum?
!dense_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_20/kernel/Regularizer/mul/x?
dense_20/kernel/Regularizer/mulMul*dense_20/kernel/Regularizer/mul/x:output:0(dense_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_20/kernel/Regularizer/mul?
1dense_21/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_21_800343*
_output_shapes

: @*
dtype023
1dense_21/kernel/Regularizer/Square/ReadVariableOp?
"dense_21/kernel/Regularizer/SquareSquare9dense_21/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_21/kernel/Regularizer/Square?
!dense_21/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_21/kernel/Regularizer/Const?
dense_21/kernel/Regularizer/SumSum&dense_21/kernel/Regularizer/Square:y:0*dense_21/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/Sum?
!dense_21/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_21/kernel/Regularizer/mul/x?
dense_21/kernel/Regularizer/mulMul*dense_21/kernel/Regularizer/mul/x:output:0(dense_21/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_21/kernel/Regularizer/mul?
1dense_22/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_22_800348*
_output_shapes

:@@*
dtype023
1dense_22/kernel/Regularizer/Square/ReadVariableOp?
"dense_22/kernel/Regularizer/SquareSquare9dense_22/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_22/kernel/Regularizer/Square?
!dense_22/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_22/kernel/Regularizer/Const?
dense_22/kernel/Regularizer/SumSum&dense_22/kernel/Regularizer/Square:y:0*dense_22/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/Sum?
!dense_22/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_22/kernel/Regularizer/mul/x?
dense_22/kernel/Regularizer/mulMul*dense_22/kernel/Regularizer/mul/x:output:0(dense_22/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_22/kernel/Regularizer/mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_23_800353*
_output_shapes
:	@?*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_800359* 
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
NoOpNoOp!^dense_20/StatefulPartitionedCall2^dense_20/kernel/Regularizer/Square/ReadVariableOp!^dense_21/StatefulPartitionedCall2^dense_21/kernel/Regularizer/Square/ReadVariableOp!^dense_22/StatefulPartitionedCall2^dense_22/kernel/Regularizer/Square/ReadVariableOp!^dense_23/StatefulPartitionedCall2^dense_23/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2f
1dense_20/kernel/Regularizer/Square/ReadVariableOp1dense_20/kernel/Regularizer/Square/ReadVariableOp2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2f
1dense_21/kernel/Regularizer/Square/ReadVariableOp1dense_21/kernel/Regularizer/Square/ReadVariableOp2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2f
1dense_22/kernel/Regularizer/Square/ReadVariableOp1dense_22/kernel/Regularizer/Square/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_90
serving_default_input_9:0?????????@
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
!: 2dense_20/kernel
: 2dense_20/bias
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
!: @2dense_21/kernel
:@2dense_21/bias
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
!:@@2dense_22/kernel
:@2dense_22/bias
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
": 	@?2dense_23/kernel
:?2dense_23/bias
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
/:- 2cond_1/Adamax/dense_20/kernel/m
):' 2cond_1/Adamax/dense_20/bias/m
/:- @2cond_1/Adamax/dense_21/kernel/m
):'@2cond_1/Adamax/dense_21/bias/m
/:-@@2cond_1/Adamax/dense_22/kernel/m
):'@2cond_1/Adamax/dense_22/bias/m
0:.	@?2cond_1/Adamax/dense_23/kernel/m
*:(?2cond_1/Adamax/dense_23/bias/m
4:2
??2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
/:- 2cond_1/Adamax/dense_20/kernel/v
):' 2cond_1/Adamax/dense_20/bias/v
/:- @2cond_1/Adamax/dense_21/kernel/v
):'@2cond_1/Adamax/dense_21/bias/v
/:-@@2cond_1/Adamax/dense_22/kernel/v
):'@2cond_1/Adamax/dense_22/bias/v
0:.	@?2cond_1/Adamax/dense_23/kernel/v
*:(?2cond_1/Adamax/dense_23/bias/v
4:2
??2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
C__inference_model_8_layer_call_and_return_conditional_losses_800537
C__inference_model_8_layer_call_and_return_conditional_losses_800616
C__inference_model_8_layer_call_and_return_conditional_losses_800334
C__inference_model_8_layer_call_and_return_conditional_losses_800395?
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
!__inference__wrapped_model_799901input_9"?
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
(__inference_model_8_layer_call_fn_800087
(__inference_model_8_layer_call_fn_800641
(__inference_model_8_layer_call_fn_800666
(__inference_model_8_layer_call_fn_800273?
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
D__inference_dense_20_layer_call_and_return_conditional_losses_800691?
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
)__inference_dense_20_layer_call_fn_800700?
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
D__inference_dense_21_layer_call_and_return_conditional_losses_800725?
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
)__inference_dense_21_layer_call_fn_800734?
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
D__inference_dense_22_layer_call_and_return_conditional_losses_800759?
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
)__inference_dense_22_layer_call_fn_800768?
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
D__inference_dense_23_layer_call_and_return_conditional_losses_800793?
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
)__inference_dense_23_layer_call_fn_800802?
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
G__inference_outputlayer_layer_call_and_return_conditional_losses_800825?
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
,__inference_outputlayer_layer_call_fn_800834?
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
__inference_loss_fn_0_800845?
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
__inference_loss_fn_1_800856?
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
__inference_loss_fn_2_800867?
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
__inference_loss_fn_3_800878?
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
__inference_loss_fn_4_800889?
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
$__inference_signature_wrapper_800458input_9"?
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
!__inference__wrapped_model_799901z
 %&0?-
&?#
!?
input_9?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
D__inference_dense_20_layer_call_and_return_conditional_losses_800691\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? |
)__inference_dense_20_layer_call_fn_800700O/?,
%?"
 ?
inputs?????????
? "?????????? ?
D__inference_dense_21_layer_call_and_return_conditional_losses_800725\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? |
)__inference_dense_21_layer_call_fn_800734O/?,
%?"
 ?
inputs????????? 
? "??????????@?
D__inference_dense_22_layer_call_and_return_conditional_losses_800759\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? |
)__inference_dense_22_layer_call_fn_800768O/?,
%?"
 ?
inputs?????????@
? "??????????@?
D__inference_dense_23_layer_call_and_return_conditional_losses_800793] /?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? }
)__inference_dense_23_layer_call_fn_800802P /?,
%?"
 ?
inputs?????????@
? "???????????;
__inference_loss_fn_0_800845?

? 
? "? ;
__inference_loss_fn_1_800856?

? 
? "? ;
__inference_loss_fn_2_800867?

? 
? "? ;
__inference_loss_fn_3_800878?

? 
? "? ;
__inference_loss_fn_4_800889%?

? 
? "? ?
C__inference_model_8_layer_call_and_return_conditional_losses_800334n
 %&8?5
.?+
!?
input_9?????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_8_layer_call_and_return_conditional_losses_800395n
 %&8?5
.?+
!?
input_9?????????
p

 
? "&?#
?
0??????????
? ?
C__inference_model_8_layer_call_and_return_conditional_losses_800537m
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
C__inference_model_8_layer_call_and_return_conditional_losses_800616m
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
(__inference_model_8_layer_call_fn_800087a
 %&8?5
.?+
!?
input_9?????????
p 

 
? "????????????
(__inference_model_8_layer_call_fn_800273a
 %&8?5
.?+
!?
input_9?????????
p

 
? "????????????
(__inference_model_8_layer_call_fn_800641`
 %&7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
(__inference_model_8_layer_call_fn_800666`
 %&7?4
-?*
 ?
inputs?????????
p

 
? "????????????
G__inference_outputlayer_layer_call_and_return_conditional_losses_800825^%&0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_outputlayer_layer_call_fn_800834Q%&0?-
&?#
!?
inputs??????????
? "????????????
$__inference_signature_wrapper_800458?
 %&;?8
? 
1?.
,
input_9!?
input_9?????????":?7
5
outputlayer&?#
outputlayer??????????