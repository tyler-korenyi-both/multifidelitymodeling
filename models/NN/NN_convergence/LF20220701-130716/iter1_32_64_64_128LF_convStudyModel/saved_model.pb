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
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

: *
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
: *
dtype0
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

: @*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:@*
dtype0
z
dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_39/kernel
s
#dense_39/kernel/Read/ReadVariableOpReadVariableOpdense_39/kernel*
_output_shapes

:@@*
dtype0
r
dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_39/bias
k
!dense_39/bias/Read/ReadVariableOpReadVariableOpdense_39/bias*
_output_shapes
:@*
dtype0
{
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?* 
shared_namedense_40/kernel
t
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes
:	@?*
dtype0
s
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_40/bias
l
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
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
cond_1/Adamax/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_37/kernel/m
?
3cond_1/Adamax/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_37/kernel/m*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_37/bias/m
?
1cond_1/Adamax/dense_37/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_37/bias/m*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_38/kernel/m
?
3cond_1/Adamax/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_38/kernel/m*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_38/bias/m
?
1cond_1/Adamax/dense_38/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_38/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*0
shared_name!cond_1/Adamax/dense_39/kernel/m
?
3cond_1/Adamax/dense_39/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_39/kernel/m*
_output_shapes

:@@*
dtype0
?
cond_1/Adamax/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_39/bias/m
?
1cond_1/Adamax/dense_39/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_39/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!cond_1/Adamax/dense_40/kernel/m
?
3cond_1/Adamax/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_40/kernel/m*
_output_shapes
:	@?*
dtype0
?
cond_1/Adamax/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_40/bias/m
?
1cond_1/Adamax/dense_40/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_40/bias/m*
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
cond_1/Adamax/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_37/kernel/v
?
3cond_1/Adamax/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_37/kernel/v*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_37/bias/v
?
1cond_1/Adamax/dense_37/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_37/bias/v*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_38/kernel/v
?
3cond_1/Adamax/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_38/kernel/v*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_38/bias/v
?
1cond_1/Adamax/dense_38/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_38/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*0
shared_name!cond_1/Adamax/dense_39/kernel/v
?
3cond_1/Adamax/dense_39/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_39/kernel/v*
_output_shapes

:@@*
dtype0
?
cond_1/Adamax/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_39/bias/v
?
1cond_1/Adamax/dense_39/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_39/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*0
shared_name!cond_1/Adamax/dense_40/kernel/v
?
3cond_1/Adamax/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_40/kernel/v*
_output_shapes
:	@?*
dtype0
?
cond_1/Adamax/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_40/bias/v
?
1cond_1/Adamax/dense_40/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_40/bias/v*
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
VARIABLE_VALUEdense_37/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_38/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_38/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_39/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_39/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_40/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEcond_1/Adamax/dense_37/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_37/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_38/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_38/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_39/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_39/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_40/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_40/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_37/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_37/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_38/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_38/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_39/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_39/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_40/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_40/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_13Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13dense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/biasoutputlayer/kerneloutputlayer/bias*
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
%__inference_signature_wrapper_1101235
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOp#dense_39/kernel/Read/ReadVariableOp!dense_39/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3cond_1/Adamax/dense_37/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_37/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_38/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_38/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_39/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_39/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_40/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_40/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_37/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_37/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_38/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_38/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_39/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_39/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_40/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_40/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*8
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
 __inference__traced_save_1101818
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_37/kerneldense_37/biasdense_38/kerneldense_38/biasdense_39/kerneldense_39/biasdense_40/kerneldense_40/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_37/kernel/mcond_1/Adamax/dense_37/bias/mcond_1/Adamax/dense_38/kernel/mcond_1/Adamax/dense_38/bias/mcond_1/Adamax/dense_39/kernel/mcond_1/Adamax/dense_39/bias/mcond_1/Adamax/dense_40/kernel/mcond_1/Adamax/dense_40/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_37/kernel/vcond_1/Adamax/dense_37/bias/vcond_1/Adamax/dense_38/kernel/vcond_1/Adamax/dense_38/bias/vcond_1/Adamax/dense_39/kernel/vcond_1/Adamax/dense_39/bias/vcond_1/Adamax/dense_40/kernel/vcond_1/Adamax/dense_40/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*7
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
#__inference__traced_restore_1101957??

?
?
__inference_loss_fn_4_1101666Q
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
?\
?
 __inference__traced_save_1101818
file_prefix.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop.
*savev2_dense_39_kernel_read_readvariableop,
(savev2_dense_39_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop1
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
:savev2_cond_1_adamax_dense_37_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_37_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_38_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_38_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_39_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_39_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_40_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_40_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_37_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_37_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_38_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_38_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_39_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_39_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_40_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_40_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop*savev2_dense_39_kernel_read_readvariableop(savev2_dense_39_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_cond_1_adamax_dense_37_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_37_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_38_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_38_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_39_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_39_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_40_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_40_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_37_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_37_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_38_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_38_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_39_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_39_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_40_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_40_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?

?
*__inference_model_12_layer_call_fn_1101050
input_13
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
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
E__inference_model_12_layer_call_and_return_conditional_losses_11010022
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
input_13
?
?
*__inference_dense_39_layer_call_fn_1101545

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
GPU2*0J 8? *N
fIRG
E__inference_dense_39_layer_call_and_return_conditional_losses_11007552
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
?
?
E__inference_dense_39_layer_call_and_return_conditional_losses_1100755

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_39/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_39/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1101622L
:dense_37_kernel_regularizer_square_readvariableop_resource: 
identity??1dense_37/kernel/Regularizer/Square/ReadVariableOp?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_37_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mulm
IdentityIdentity#dense_37/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp
?Q
?
E__inference_model_12_layer_call_and_return_conditional_losses_1101002

inputs"
dense_37_1100945: 
dense_37_1100947: "
dense_38_1100950: @
dense_38_1100952:@"
dense_39_1100955:@@
dense_39_1100957:@#
dense_40_1100960:	@?
dense_40_1100962:	?'
outputlayer_1100966:
??"
outputlayer_1100968:	?
identity?? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?1dense_39/kernel/Regularizer/Square/ReadVariableOp? dense_40/StatefulPartitionedCall?1dense_40/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_37/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_37/Cast?
 dense_37/StatefulPartitionedCallStatefulPartitionedCalldense_37/Cast:y:0dense_37_1100945dense_37_1100947*
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
E__inference_dense_37_layer_call_and_return_conditional_losses_11007052"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_1100950dense_38_1100952*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_11007302"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_1100955dense_39_1100957*
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
E__inference_dense_39_layer_call_and_return_conditional_losses_11007552"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_1100960dense_40_1100962*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_11007802"
 dense_40/StatefulPartitionedCall?
outputlayer/CastCast)dense_40/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1100966outputlayer_1100968*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11008042%
#outputlayer/StatefulPartitionedCall?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_1100945*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_1100950*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_39_1100955*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mul?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_1100960*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1100966* 
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
NoOpNoOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall2^dense_39/kernel/Regularizer/Square/ReadVariableOp!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
E__inference_model_12_layer_call_and_return_conditional_losses_1100841

inputs"
dense_37_1100706: 
dense_37_1100708: "
dense_38_1100731: @
dense_38_1100733:@"
dense_39_1100756:@@
dense_39_1100758:@#
dense_40_1100781:	@?
dense_40_1100783:	?'
outputlayer_1100805:
??"
outputlayer_1100807:	?
identity?? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?1dense_39/kernel/Regularizer/Square/ReadVariableOp? dense_40/StatefulPartitionedCall?1dense_40/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_37/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_37/Cast?
 dense_37/StatefulPartitionedCallStatefulPartitionedCalldense_37/Cast:y:0dense_37_1100706dense_37_1100708*
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
E__inference_dense_37_layer_call_and_return_conditional_losses_11007052"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_1100731dense_38_1100733*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_11007302"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_1100756dense_39_1100758*
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
E__inference_dense_39_layer_call_and_return_conditional_losses_11007552"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_1100781dense_40_1100783*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_11007802"
 dense_40/StatefulPartitionedCall?
outputlayer/CastCast)dense_40/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1100805outputlayer_1100807*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11008042%
#outputlayer/StatefulPartitionedCall?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_1100706*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_1100731*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_39_1100756*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mul?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_1100781*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1100805* 
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
NoOpNoOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall2^dense_39/kernel/Regularizer/Square/ReadVariableOp!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?	
"__inference__wrapped_model_1100678
input_13B
0model_12_dense_37_matmul_readvariableop_resource: ?
1model_12_dense_37_biasadd_readvariableop_resource: B
0model_12_dense_38_matmul_readvariableop_resource: @?
1model_12_dense_38_biasadd_readvariableop_resource:@B
0model_12_dense_39_matmul_readvariableop_resource:@@?
1model_12_dense_39_biasadd_readvariableop_resource:@C
0model_12_dense_40_matmul_readvariableop_resource:	@?@
1model_12_dense_40_biasadd_readvariableop_resource:	?G
3model_12_outputlayer_matmul_readvariableop_resource:
??C
4model_12_outputlayer_biasadd_readvariableop_resource:	?
identity??(model_12/dense_37/BiasAdd/ReadVariableOp?'model_12/dense_37/MatMul/ReadVariableOp?(model_12/dense_38/BiasAdd/ReadVariableOp?'model_12/dense_38/MatMul/ReadVariableOp?(model_12/dense_39/BiasAdd/ReadVariableOp?'model_12/dense_39/MatMul/ReadVariableOp?(model_12/dense_40/BiasAdd/ReadVariableOp?'model_12/dense_40/MatMul/ReadVariableOp?+model_12/outputlayer/BiasAdd/ReadVariableOp?*model_12/outputlayer/MatMul/ReadVariableOp?
model_12/dense_37/CastCastinput_13*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_12/dense_37/Cast?
'model_12/dense_37/MatMul/ReadVariableOpReadVariableOp0model_12_dense_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'model_12/dense_37/MatMul/ReadVariableOp?
model_12/dense_37/MatMul/CastCast/model_12/dense_37/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
model_12/dense_37/MatMul/Cast?
model_12/dense_37/MatMulMatMulmodel_12/dense_37/Cast:y:0!model_12/dense_37/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_12/dense_37/MatMul?
(model_12/dense_37/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_12/dense_37/BiasAdd/ReadVariableOp?
model_12/dense_37/BiasAdd/CastCast0model_12/dense_37/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model_12/dense_37/BiasAdd/Cast?
model_12/dense_37/BiasAddBiasAdd"model_12/dense_37/MatMul:product:0"model_12/dense_37/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_12/dense_37/BiasAdd?
model_12/dense_37/TanhTanh"model_12/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_12/dense_37/Tanh?
'model_12/dense_38/MatMul/ReadVariableOpReadVariableOp0model_12_dense_38_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02)
'model_12/dense_38/MatMul/ReadVariableOp?
model_12/dense_38/MatMul/CastCast/model_12/dense_38/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
model_12/dense_38/MatMul/Cast?
model_12/dense_38/MatMulMatMulmodel_12/dense_37/Tanh:y:0!model_12/dense_38/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_12/dense_38/MatMul?
(model_12/dense_38/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_12/dense_38/BiasAdd/ReadVariableOp?
model_12/dense_38/BiasAdd/CastCast0model_12/dense_38/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2 
model_12/dense_38/BiasAdd/Cast?
model_12/dense_38/BiasAddBiasAdd"model_12/dense_38/MatMul:product:0"model_12/dense_38/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_12/dense_38/BiasAdd?
model_12/dense_38/TanhTanh"model_12/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_12/dense_38/Tanh?
'model_12/dense_39/MatMul/ReadVariableOpReadVariableOp0model_12_dense_39_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02)
'model_12/dense_39/MatMul/ReadVariableOp?
model_12/dense_39/MatMul/CastCast/model_12/dense_39/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
model_12/dense_39/MatMul/Cast?
model_12/dense_39/MatMulMatMulmodel_12/dense_38/Tanh:y:0!model_12/dense_39/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_12/dense_39/MatMul?
(model_12/dense_39/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_39_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_12/dense_39/BiasAdd/ReadVariableOp?
model_12/dense_39/BiasAdd/CastCast0model_12/dense_39/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2 
model_12/dense_39/BiasAdd/Cast?
model_12/dense_39/BiasAddBiasAdd"model_12/dense_39/MatMul:product:0"model_12/dense_39/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_12/dense_39/BiasAdd?
model_12/dense_39/TanhTanh"model_12/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_12/dense_39/Tanh?
'model_12/dense_40/MatMul/ReadVariableOpReadVariableOp0model_12_dense_40_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02)
'model_12/dense_40/MatMul/ReadVariableOp?
model_12/dense_40/MatMul/CastCast/model_12/dense_40/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
model_12/dense_40/MatMul/Cast?
model_12/dense_40/MatMulMatMulmodel_12/dense_39/Tanh:y:0!model_12/dense_40/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_12/dense_40/MatMul?
(model_12/dense_40/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_40_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_12/dense_40/BiasAdd/ReadVariableOp?
model_12/dense_40/BiasAdd/CastCast0model_12/dense_40/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2 
model_12/dense_40/BiasAdd/Cast?
model_12/dense_40/BiasAddBiasAdd"model_12/dense_40/MatMul:product:0"model_12/dense_40/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_12/dense_40/BiasAdd?
model_12/dense_40/TanhTanh"model_12/dense_40/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_12/dense_40/Tanh?
model_12/outputlayer/CastCastmodel_12/dense_40/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_12/outputlayer/Cast?
*model_12/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_12_outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_12/outputlayer/MatMul/ReadVariableOp?
model_12/outputlayer/MatMulMatMulmodel_12/outputlayer/Cast:y:02model_12/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_12/outputlayer/MatMul?
+model_12/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_12_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_12/outputlayer/BiasAdd/ReadVariableOp?
model_12/outputlayer/BiasAddBiasAdd%model_12/outputlayer/MatMul:product:03model_12/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_12/outputlayer/BiasAdd?
model_12/outputlayer/LeakyRelu	LeakyRelu%model_12/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_12/outputlayer/LeakyRelu?
IdentityIdentity,model_12/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp)^model_12/dense_37/BiasAdd/ReadVariableOp(^model_12/dense_37/MatMul/ReadVariableOp)^model_12/dense_38/BiasAdd/ReadVariableOp(^model_12/dense_38/MatMul/ReadVariableOp)^model_12/dense_39/BiasAdd/ReadVariableOp(^model_12/dense_39/MatMul/ReadVariableOp)^model_12/dense_40/BiasAdd/ReadVariableOp(^model_12/dense_40/MatMul/ReadVariableOp,^model_12/outputlayer/BiasAdd/ReadVariableOp+^model_12/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2T
(model_12/dense_37/BiasAdd/ReadVariableOp(model_12/dense_37/BiasAdd/ReadVariableOp2R
'model_12/dense_37/MatMul/ReadVariableOp'model_12/dense_37/MatMul/ReadVariableOp2T
(model_12/dense_38/BiasAdd/ReadVariableOp(model_12/dense_38/BiasAdd/ReadVariableOp2R
'model_12/dense_38/MatMul/ReadVariableOp'model_12/dense_38/MatMul/ReadVariableOp2T
(model_12/dense_39/BiasAdd/ReadVariableOp(model_12/dense_39/BiasAdd/ReadVariableOp2R
'model_12/dense_39/MatMul/ReadVariableOp'model_12/dense_39/MatMul/ReadVariableOp2T
(model_12/dense_40/BiasAdd/ReadVariableOp(model_12/dense_40/BiasAdd/ReadVariableOp2R
'model_12/dense_40/MatMul/ReadVariableOp'model_12/dense_40/MatMul/ReadVariableOp2Z
+model_12/outputlayer/BiasAdd/ReadVariableOp+model_12/outputlayer/BiasAdd/ReadVariableOp2X
*model_12/outputlayer/MatMul/ReadVariableOp*model_12/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13
?

?
*__inference_model_12_layer_call_fn_1101443

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
GPU2*0J 8? *N
fIRG
E__inference_model_12_layer_call_and_return_conditional_losses_11010022
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
E__inference_dense_37_layer_call_and_return_conditional_losses_1101468

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?o
?

E__inference_model_12_layer_call_and_return_conditional_losses_1101393

inputs9
'dense_37_matmul_readvariableop_resource: 6
(dense_37_biasadd_readvariableop_resource: 9
'dense_38_matmul_readvariableop_resource: @6
(dense_38_biasadd_readvariableop_resource:@9
'dense_39_matmul_readvariableop_resource:@@6
(dense_39_biasadd_readvariableop_resource:@:
'dense_40_matmul_readvariableop_resource:	@?7
(dense_40_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?1dense_39/kernel/Regularizer/Square/ReadVariableOp?dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?1dense_40/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_37/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_37/Cast?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMul/CastCast&dense_37/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_37/MatMul/Cast?
dense_37/MatMulMatMuldense_37/Cast:y:0dense_37/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAdd/CastCast'dense_37/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_37/BiasAdd/Cast?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0dense_37/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_37/BiasAdds
dense_37/TanhTanhdense_37/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_37/Tanh?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMul/CastCast&dense_38/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_38/MatMul/Cast?
dense_38/MatMulMatMuldense_37/Tanh:y:0dense_38/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAdd/CastCast'dense_38/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_38/BiasAdd/Cast?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0dense_38/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_38/BiasAdds
dense_38/TanhTanhdense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_38/Tanh?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMul/CastCast&dense_39/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
dense_39/MatMul/Cast?
dense_39/MatMulMatMuldense_38/Tanh:y:0dense_39/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAdd/CastCast'dense_39/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_39/BiasAdd/Cast?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0dense_39/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_39/BiasAdds
dense_39/TanhTanhdense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_39/Tanh?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02 
dense_40/MatMul/ReadVariableOp?
dense_40/MatMul/CastCast&dense_40/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
dense_40/MatMul/Cast?
dense_40/MatMulMatMuldense_39/Tanh:y:0dense_40/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_40/MatMul?
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_40/BiasAdd/ReadVariableOp?
dense_40/BiasAdd/CastCast'dense_40/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_40/BiasAdd/Cast?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0dense_40/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_40/BiasAddt
dense_40/TanhTanhdense_40/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_40/Tanh?
outputlayer/CastCastdense_40/Tanh:y:0*

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
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mul?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mul?
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
NoOpNoOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp2^dense_39/kernel/Regularizer/Square/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?o
?

E__inference_model_12_layer_call_and_return_conditional_losses_1101314

inputs9
'dense_37_matmul_readvariableop_resource: 6
(dense_37_biasadd_readvariableop_resource: 9
'dense_38_matmul_readvariableop_resource: @6
(dense_38_biasadd_readvariableop_resource:@9
'dense_39_matmul_readvariableop_resource:@@6
(dense_39_biasadd_readvariableop_resource:@:
'dense_40_matmul_readvariableop_resource:	@?7
(dense_40_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?dense_39/MatMul/ReadVariableOp?1dense_39/kernel/Regularizer/Square/ReadVariableOp?dense_40/BiasAdd/ReadVariableOp?dense_40/MatMul/ReadVariableOp?1dense_40/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_37/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_37/Cast?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMul/CastCast&dense_37/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_37/MatMul/Cast?
dense_37/MatMulMatMuldense_37/Cast:y:0dense_37/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAdd/CastCast'dense_37/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_37/BiasAdd/Cast?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0dense_37/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_37/BiasAdds
dense_37/TanhTanhdense_37/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_37/Tanh?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMul/CastCast&dense_38/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_38/MatMul/Cast?
dense_38/MatMulMatMuldense_37/Tanh:y:0dense_38/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAdd/CastCast'dense_38/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_38/BiasAdd/Cast?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0dense_38/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_38/BiasAdds
dense_38/TanhTanhdense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_38/Tanh?
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_39/MatMul/ReadVariableOp?
dense_39/MatMul/CastCast&dense_39/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@@2
dense_39/MatMul/Cast?
dense_39/MatMulMatMuldense_38/Tanh:y:0dense_39/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_39/MatMul?
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_39/BiasAdd/ReadVariableOp?
dense_39/BiasAdd/CastCast'dense_39/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_39/BiasAdd/Cast?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0dense_39/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_39/BiasAdds
dense_39/TanhTanhdense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_39/Tanh?
dense_40/MatMul/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02 
dense_40/MatMul/ReadVariableOp?
dense_40/MatMul/CastCast&dense_40/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	@?2
dense_40/MatMul/Cast?
dense_40/MatMulMatMuldense_39/Tanh:y:0dense_40/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_40/MatMul?
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_40/BiasAdd/ReadVariableOp?
dense_40/BiasAdd/CastCast'dense_40/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_40/BiasAdd/Cast?
dense_40/BiasAddBiasAdddense_40/MatMul:product:0dense_40/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_40/BiasAddt
dense_40/TanhTanhdense_40/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_40/Tanh?
outputlayer/CastCastdense_40/Tanh:y:0*

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
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mul?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_40_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mul?
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
NoOpNoOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp^dense_39/MatMul/ReadVariableOp2^dense_39/kernel/Regularizer/Square/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp^dense_40/MatMul/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2@
dense_40/MatMul/ReadVariableOpdense_40/MatMul/ReadVariableOp2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1101235
input_13
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
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
"__inference__wrapped_model_11006782
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
input_13
?
?
E__inference_dense_38_layer_call_and_return_conditional_losses_1101502

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_40_layer_call_and_return_conditional_losses_1101570

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_40/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Q
?
E__inference_model_12_layer_call_and_return_conditional_losses_1101111
input_13"
dense_37_1101054: 
dense_37_1101056: "
dense_38_1101059: @
dense_38_1101061:@"
dense_39_1101064:@@
dense_39_1101066:@#
dense_40_1101069:	@?
dense_40_1101071:	?'
outputlayer_1101075:
??"
outputlayer_1101077:	?
identity?? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?1dense_39/kernel/Regularizer/Square/ReadVariableOp? dense_40/StatefulPartitionedCall?1dense_40/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_37/CastCastinput_13*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_37/Cast?
 dense_37/StatefulPartitionedCallStatefulPartitionedCalldense_37/Cast:y:0dense_37_1101054dense_37_1101056*
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
E__inference_dense_37_layer_call_and_return_conditional_losses_11007052"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_1101059dense_38_1101061*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_11007302"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_1101064dense_39_1101066*
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
E__inference_dense_39_layer_call_and_return_conditional_losses_11007552"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_1101069dense_40_1101071*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_11007802"
 dense_40/StatefulPartitionedCall?
outputlayer/CastCast)dense_40/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1101075outputlayer_1101077*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11008042%
#outputlayer/StatefulPartitionedCall?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_1101054*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_1101059*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_39_1101064*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mul?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_1101069*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1101075* 
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
NoOpNoOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall2^dense_39/kernel/Regularizer/Square/ReadVariableOp!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13
?

?
*__inference_model_12_layer_call_fn_1100864
input_13
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
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
E__inference_model_12_layer_call_and_return_conditional_losses_11008412
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
input_13
?
?
-__inference_outputlayer_layer_call_fn_1101611

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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11008042
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
?
?
E__inference_dense_40_layer_call_and_return_conditional_losses_1100780

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_40/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_1101655M
:dense_40_kernel_regularizer_square_readvariableop_resource:	@?
identity??1dense_40/kernel/Regularizer/Square/ReadVariableOp?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_40_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mulm
IdentityIdentity#dense_40/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_dense_40_layer_call_fn_1101579

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
E__inference_dense_40_layer_call_and_return_conditional_losses_11007802
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
?
?
__inference_loss_fn_2_1101644L
:dense_39_kernel_regularizer_square_readvariableop_resource:@@
identity??1dense_39/kernel/Regularizer/Square/ReadVariableOp?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_39_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mulm
IdentityIdentity#dense_39/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_39/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1101602

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
__inference_loss_fn_1_1101633L
:dense_38_kernel_regularizer_square_readvariableop_resource: @
identity??1dense_38/kernel/Regularizer/Square/ReadVariableOp?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_38_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mulm
IdentityIdentity#dense_38/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp
?
?
E__inference_dense_37_layer_call_and_return_conditional_losses_1100705

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_37/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_37/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_38_layer_call_and_return_conditional_losses_1100730

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_38/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_38/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_37_layer_call_fn_1101477

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
E__inference_dense_37_layer_call_and_return_conditional_losses_11007052
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
??
?
#__inference__traced_restore_1101957
file_prefix2
 assignvariableop_dense_37_kernel: .
 assignvariableop_1_dense_37_bias: 4
"assignvariableop_2_dense_38_kernel: @.
 assignvariableop_3_dense_38_bias:@4
"assignvariableop_4_dense_39_kernel:@@.
 assignvariableop_5_dense_39_bias:@5
"assignvariableop_6_dense_40_kernel:	@?/
 assignvariableop_7_dense_40_bias:	?9
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
3assignvariableop_23_cond_1_adamax_dense_37_kernel_m: ?
1assignvariableop_24_cond_1_adamax_dense_37_bias_m: E
3assignvariableop_25_cond_1_adamax_dense_38_kernel_m: @?
1assignvariableop_26_cond_1_adamax_dense_38_bias_m:@E
3assignvariableop_27_cond_1_adamax_dense_39_kernel_m:@@?
1assignvariableop_28_cond_1_adamax_dense_39_bias_m:@F
3assignvariableop_29_cond_1_adamax_dense_40_kernel_m:	@?@
1assignvariableop_30_cond_1_adamax_dense_40_bias_m:	?J
6assignvariableop_31_cond_1_adamax_outputlayer_kernel_m:
??C
4assignvariableop_32_cond_1_adamax_outputlayer_bias_m:	?E
3assignvariableop_33_cond_1_adamax_dense_37_kernel_v: ?
1assignvariableop_34_cond_1_adamax_dense_37_bias_v: E
3assignvariableop_35_cond_1_adamax_dense_38_kernel_v: @?
1assignvariableop_36_cond_1_adamax_dense_38_bias_v:@E
3assignvariableop_37_cond_1_adamax_dense_39_kernel_v:@@?
1assignvariableop_38_cond_1_adamax_dense_39_bias_v:@F
3assignvariableop_39_cond_1_adamax_dense_40_kernel_v:	@?@
1assignvariableop_40_cond_1_adamax_dense_40_bias_v:	?J
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
AssignVariableOpAssignVariableOp assignvariableop_dense_37_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_37_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_38_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_38_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_39_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_39_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_40_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_40_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_23AssignVariableOp3assignvariableop_23_cond_1_adamax_dense_37_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_cond_1_adamax_dense_37_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_38_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_38_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_cond_1_adamax_dense_39_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_cond_1_adamax_dense_39_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp3assignvariableop_29_cond_1_adamax_dense_40_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_cond_1_adamax_dense_40_bias_mIdentity_30:output:0"/device:CPU:0*
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
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_37_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_37_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp3assignvariableop_35_cond_1_adamax_dense_38_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp1assignvariableop_36_cond_1_adamax_dense_38_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_cond_1_adamax_dense_39_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_cond_1_adamax_dense_39_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp3assignvariableop_39_cond_1_adamax_dense_40_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp1assignvariableop_40_cond_1_adamax_dense_40_bias_vIdentity_40:output:0"/device:CPU:0*
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
E__inference_dense_39_layer_call_and_return_conditional_losses_1101536

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_39/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_39/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Q
?
E__inference_model_12_layer_call_and_return_conditional_losses_1101172
input_13"
dense_37_1101115: 
dense_37_1101117: "
dense_38_1101120: @
dense_38_1101122:@"
dense_39_1101125:@@
dense_39_1101127:@#
dense_40_1101130:	@?
dense_40_1101132:	?'
outputlayer_1101136:
??"
outputlayer_1101138:	?
identity?? dense_37/StatefulPartitionedCall?1dense_37/kernel/Regularizer/Square/ReadVariableOp? dense_38/StatefulPartitionedCall?1dense_38/kernel/Regularizer/Square/ReadVariableOp? dense_39/StatefulPartitionedCall?1dense_39/kernel/Regularizer/Square/ReadVariableOp? dense_40/StatefulPartitionedCall?1dense_40/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_37/CastCastinput_13*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_37/Cast?
 dense_37/StatefulPartitionedCallStatefulPartitionedCalldense_37/Cast:y:0dense_37_1101115dense_37_1101117*
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
E__inference_dense_37_layer_call_and_return_conditional_losses_11007052"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_1101120dense_38_1101122*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_11007302"
 dense_38/StatefulPartitionedCall?
 dense_39/StatefulPartitionedCallStatefulPartitionedCall)dense_38/StatefulPartitionedCall:output:0dense_39_1101125dense_39_1101127*
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
E__inference_dense_39_layer_call_and_return_conditional_losses_11007552"
 dense_39/StatefulPartitionedCall?
 dense_40/StatefulPartitionedCallStatefulPartitionedCall)dense_39/StatefulPartitionedCall:output:0dense_40_1101130dense_40_1101132*
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
E__inference_dense_40_layer_call_and_return_conditional_losses_11007802"
 dense_40/StatefulPartitionedCall?
outputlayer/CastCast)dense_40/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1101136outputlayer_1101138*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11008042%
#outputlayer/StatefulPartitionedCall?
1dense_37/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_37_1101115*
_output_shapes

: *
dtype023
1dense_37/kernel/Regularizer/Square/ReadVariableOp?
"dense_37/kernel/Regularizer/SquareSquare9dense_37/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_37/kernel/Regularizer/Square?
!dense_37/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_37/kernel/Regularizer/Const?
dense_37/kernel/Regularizer/SumSum&dense_37/kernel/Regularizer/Square:y:0*dense_37/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/Sum?
!dense_37/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_37/kernel/Regularizer/mul/x?
dense_37/kernel/Regularizer/mulMul*dense_37/kernel/Regularizer/mul/x:output:0(dense_37/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_37/kernel/Regularizer/mul?
1dense_38/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_38_1101120*
_output_shapes

: @*
dtype023
1dense_38/kernel/Regularizer/Square/ReadVariableOp?
"dense_38/kernel/Regularizer/SquareSquare9dense_38/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_38/kernel/Regularizer/Square?
!dense_38/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_38/kernel/Regularizer/Const?
dense_38/kernel/Regularizer/SumSum&dense_38/kernel/Regularizer/Square:y:0*dense_38/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/Sum?
!dense_38/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_38/kernel/Regularizer/mul/x?
dense_38/kernel/Regularizer/mulMul*dense_38/kernel/Regularizer/mul/x:output:0(dense_38/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_38/kernel/Regularizer/mul?
1dense_39/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_39_1101125*
_output_shapes

:@@*
dtype023
1dense_39/kernel/Regularizer/Square/ReadVariableOp?
"dense_39/kernel/Regularizer/SquareSquare9dense_39/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2$
"dense_39/kernel/Regularizer/Square?
!dense_39/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_39/kernel/Regularizer/Const?
dense_39/kernel/Regularizer/SumSum&dense_39/kernel/Regularizer/Square:y:0*dense_39/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/Sum?
!dense_39/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_39/kernel/Regularizer/mul/x?
dense_39/kernel/Regularizer/mulMul*dense_39/kernel/Regularizer/mul/x:output:0(dense_39/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_39/kernel/Regularizer/mul?
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_1101130*
_output_shapes
:	@?*
dtype023
1dense_40/kernel/Regularizer/Square/ReadVariableOp?
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2$
"dense_40/kernel/Regularizer/Square?
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_40/kernel/Regularizer/Const?
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/Sum?
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_40/kernel/Regularizer/mul/x?
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_40/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1101136* 
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
NoOpNoOp!^dense_37/StatefulPartitionedCall2^dense_37/kernel/Regularizer/Square/ReadVariableOp!^dense_38/StatefulPartitionedCall2^dense_38/kernel/Regularizer/Square/ReadVariableOp!^dense_39/StatefulPartitionedCall2^dense_39/kernel/Regularizer/Square/ReadVariableOp!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2f
1dense_37/kernel/Regularizer/Square/ReadVariableOp1dense_37/kernel/Regularizer/Square/ReadVariableOp2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2f
1dense_38/kernel/Regularizer/Square/ReadVariableOp1dense_38/kernel/Regularizer/Square/ReadVariableOp2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2f
1dense_39/kernel/Regularizer/Square/ReadVariableOp1dense_39/kernel/Regularizer/Square/ReadVariableOp2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_13
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1100804

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
*__inference_model_12_layer_call_fn_1101418

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
GPU2*0J 8? *N
fIRG
E__inference_model_12_layer_call_and_return_conditional_losses_11008412
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
*__inference_dense_38_layer_call_fn_1101511

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
E__inference_dense_38_layer_call_and_return_conditional_losses_11007302
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
input_131
serving_default_input_13:0?????????@
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
!: 2dense_37/kernel
: 2dense_37/bias
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
!: @2dense_38/kernel
:@2dense_38/bias
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
!:@@2dense_39/kernel
:@2dense_39/bias
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
": 	@?2dense_40/kernel
:?2dense_40/bias
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
/:- 2cond_1/Adamax/dense_37/kernel/m
):' 2cond_1/Adamax/dense_37/bias/m
/:- @2cond_1/Adamax/dense_38/kernel/m
):'@2cond_1/Adamax/dense_38/bias/m
/:-@@2cond_1/Adamax/dense_39/kernel/m
):'@2cond_1/Adamax/dense_39/bias/m
0:.	@?2cond_1/Adamax/dense_40/kernel/m
*:(?2cond_1/Adamax/dense_40/bias/m
4:2
??2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
/:- 2cond_1/Adamax/dense_37/kernel/v
):' 2cond_1/Adamax/dense_37/bias/v
/:- @2cond_1/Adamax/dense_38/kernel/v
):'@2cond_1/Adamax/dense_38/bias/v
/:-@@2cond_1/Adamax/dense_39/kernel/v
):'@2cond_1/Adamax/dense_39/bias/v
0:.	@?2cond_1/Adamax/dense_40/kernel/v
*:(?2cond_1/Adamax/dense_40/bias/v
4:2
??2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
E__inference_model_12_layer_call_and_return_conditional_losses_1101314
E__inference_model_12_layer_call_and_return_conditional_losses_1101393
E__inference_model_12_layer_call_and_return_conditional_losses_1101111
E__inference_model_12_layer_call_and_return_conditional_losses_1101172?
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
"__inference__wrapped_model_1100678input_13"?
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
*__inference_model_12_layer_call_fn_1100864
*__inference_model_12_layer_call_fn_1101418
*__inference_model_12_layer_call_fn_1101443
*__inference_model_12_layer_call_fn_1101050?
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
E__inference_dense_37_layer_call_and_return_conditional_losses_1101468?
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
*__inference_dense_37_layer_call_fn_1101477?
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1101502?
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
*__inference_dense_38_layer_call_fn_1101511?
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
E__inference_dense_39_layer_call_and_return_conditional_losses_1101536?
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
*__inference_dense_39_layer_call_fn_1101545?
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
E__inference_dense_40_layer_call_and_return_conditional_losses_1101570?
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
*__inference_dense_40_layer_call_fn_1101579?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_1101602?
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
-__inference_outputlayer_layer_call_fn_1101611?
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
__inference_loss_fn_0_1101622?
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
__inference_loss_fn_1_1101633?
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
__inference_loss_fn_2_1101644?
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
__inference_loss_fn_3_1101655?
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
__inference_loss_fn_4_1101666?
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
%__inference_signature_wrapper_1101235input_13"?
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
"__inference__wrapped_model_1100678{
 %&1?.
'?$
"?
input_13?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
E__inference_dense_37_layer_call_and_return_conditional_losses_1101468\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? }
*__inference_dense_37_layer_call_fn_1101477O/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_dense_38_layer_call_and_return_conditional_losses_1101502\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? }
*__inference_dense_38_layer_call_fn_1101511O/?,
%?"
 ?
inputs????????? 
? "??????????@?
E__inference_dense_39_layer_call_and_return_conditional_losses_1101536\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? }
*__inference_dense_39_layer_call_fn_1101545O/?,
%?"
 ?
inputs?????????@
? "??????????@?
E__inference_dense_40_layer_call_and_return_conditional_losses_1101570] /?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? ~
*__inference_dense_40_layer_call_fn_1101579P /?,
%?"
 ?
inputs?????????@
? "???????????<
__inference_loss_fn_0_1101622?

? 
? "? <
__inference_loss_fn_1_1101633?

? 
? "? <
__inference_loss_fn_2_1101644?

? 
? "? <
__inference_loss_fn_3_1101655?

? 
? "? <
__inference_loss_fn_4_1101666%?

? 
? "? ?
E__inference_model_12_layer_call_and_return_conditional_losses_1101111o
 %&9?6
/?,
"?
input_13?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_12_layer_call_and_return_conditional_losses_1101172o
 %&9?6
/?,
"?
input_13?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_12_layer_call_and_return_conditional_losses_1101314m
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
E__inference_model_12_layer_call_and_return_conditional_losses_1101393m
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
*__inference_model_12_layer_call_fn_1100864b
 %&9?6
/?,
"?
input_13?????????
p 

 
? "????????????
*__inference_model_12_layer_call_fn_1101050b
 %&9?6
/?,
"?
input_13?????????
p

 
? "????????????
*__inference_model_12_layer_call_fn_1101418`
 %&7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_12_layer_call_fn_1101443`
 %&7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_1101602^%&0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_1101611Q%&0?-
&?#
!?
inputs??????????
? "????????????
%__inference_signature_wrapper_1101235?
 %&=?:
? 
3?0
.
input_13"?
input_13?????????":?7
5
outputlayer&?#
outputlayer??????????