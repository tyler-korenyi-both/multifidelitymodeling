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
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_50/kernel
s
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes

: *
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
: *
dtype0
z
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @* 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

: @*
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
:@*
dtype0
z
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

:@ *
dtype0
r
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes
: *
dtype0
{
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?* 
shared_namedense_53/kernel
t
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel*
_output_shapes
:	 ?*
dtype0
s
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_53/bias
l
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
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
cond_1/Adamax/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_50/kernel/m
?
3cond_1/Adamax/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_50/kernel/m*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_50/bias/m
?
1cond_1/Adamax/dense_50/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_50/bias/m*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_51/kernel/m
?
3cond_1/Adamax/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_51/kernel/m*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_51/bias/m
?
1cond_1/Adamax/dense_51/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_51/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *0
shared_name!cond_1/Adamax/dense_52/kernel/m
?
3cond_1/Adamax/dense_52/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_52/kernel/m*
_output_shapes

:@ *
dtype0
?
cond_1/Adamax/dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_52/bias/m
?
1cond_1/Adamax/dense_52/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_52/bias/m*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*0
shared_name!cond_1/Adamax/dense_53/kernel/m
?
3cond_1/Adamax/dense_53/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_53/kernel/m*
_output_shapes
:	 ?*
dtype0
?
cond_1/Adamax/dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_53/bias/m
?
1cond_1/Adamax/dense_53/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_53/bias/m*
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
cond_1/Adamax/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!cond_1/Adamax/dense_50/kernel/v
?
3cond_1/Adamax/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_50/kernel/v*
_output_shapes

: *
dtype0
?
cond_1/Adamax/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_50/bias/v
?
1cond_1/Adamax/dense_50/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_50/bias/v*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*0
shared_name!cond_1/Adamax/dense_51/kernel/v
?
3cond_1/Adamax/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_51/kernel/v*
_output_shapes

: @*
dtype0
?
cond_1/Adamax/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_51/bias/v
?
1cond_1/Adamax/dense_51/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_51/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *0
shared_name!cond_1/Adamax/dense_52/kernel/v
?
3cond_1/Adamax/dense_52/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_52/kernel/v*
_output_shapes

:@ *
dtype0
?
cond_1/Adamax/dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_52/bias/v
?
1cond_1/Adamax/dense_52/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_52/bias/v*
_output_shapes
: *
dtype0
?
cond_1/Adamax/dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*0
shared_name!cond_1/Adamax/dense_53/kernel/v
?
3cond_1/Adamax/dense_53/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_53/kernel/v*
_output_shapes
:	 ?*
dtype0
?
cond_1/Adamax/dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namecond_1/Adamax/dense_53/bias/v
?
1cond_1/Adamax/dense_53/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_53/bias/v*
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
VARIABLE_VALUEdense_50/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_50/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_51/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_51/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_52/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_52/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_53/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_53/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEcond_1/Adamax/dense_50/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_50/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_51/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_51/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_52/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_52/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_53/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_53/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_50/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_50/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_51/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_51/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_52/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_52/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_53/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_53/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_16Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_16dense_50/kerneldense_50/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/biasoutputlayer/kerneloutputlayer/bias*
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
%__inference_signature_wrapper_1371222
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOp#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOp#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3cond_1/Adamax/dense_50/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_50/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_51/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_51/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_52/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_52/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_53/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_53/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_50/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_50/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_51/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_51/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_52/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_52/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_53/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_53/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*8
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
 __inference__traced_save_1371805
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_50/kerneldense_50/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_50/kernel/mcond_1/Adamax/dense_50/bias/mcond_1/Adamax/dense_51/kernel/mcond_1/Adamax/dense_51/bias/mcond_1/Adamax/dense_52/kernel/mcond_1/Adamax/dense_52/bias/mcond_1/Adamax/dense_53/kernel/mcond_1/Adamax/dense_53/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_50/kernel/vcond_1/Adamax/dense_50/bias/vcond_1/Adamax/dense_51/kernel/vcond_1/Adamax/dense_51/bias/vcond_1/Adamax/dense_52/kernel/vcond_1/Adamax/dense_52/bias/vcond_1/Adamax/dense_53/kernel/vcond_1/Adamax/dense_53/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*7
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
#__inference__traced_restore_1371944??

?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1370791

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
__inference_loss_fn_0_1371609L
:dense_50_kernel_regularizer_square_readvariableop_resource: 
identity??1dense_50/kernel/Regularizer/Square/ReadVariableOp?
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_50_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulm
IdentityIdentity#dense_50/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp
??
?
#__inference__traced_restore_1371944
file_prefix2
 assignvariableop_dense_50_kernel: .
 assignvariableop_1_dense_50_bias: 4
"assignvariableop_2_dense_51_kernel: @.
 assignvariableop_3_dense_51_bias:@4
"assignvariableop_4_dense_52_kernel:@ .
 assignvariableop_5_dense_52_bias: 5
"assignvariableop_6_dense_53_kernel:	 ?/
 assignvariableop_7_dense_53_bias:	?9
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
3assignvariableop_23_cond_1_adamax_dense_50_kernel_m: ?
1assignvariableop_24_cond_1_adamax_dense_50_bias_m: E
3assignvariableop_25_cond_1_adamax_dense_51_kernel_m: @?
1assignvariableop_26_cond_1_adamax_dense_51_bias_m:@E
3assignvariableop_27_cond_1_adamax_dense_52_kernel_m:@ ?
1assignvariableop_28_cond_1_adamax_dense_52_bias_m: F
3assignvariableop_29_cond_1_adamax_dense_53_kernel_m:	 ?@
1assignvariableop_30_cond_1_adamax_dense_53_bias_m:	?J
6assignvariableop_31_cond_1_adamax_outputlayer_kernel_m:
??C
4assignvariableop_32_cond_1_adamax_outputlayer_bias_m:	?E
3assignvariableop_33_cond_1_adamax_dense_50_kernel_v: ?
1assignvariableop_34_cond_1_adamax_dense_50_bias_v: E
3assignvariableop_35_cond_1_adamax_dense_51_kernel_v: @?
1assignvariableop_36_cond_1_adamax_dense_51_bias_v:@E
3assignvariableop_37_cond_1_adamax_dense_52_kernel_v:@ ?
1assignvariableop_38_cond_1_adamax_dense_52_bias_v: F
3assignvariableop_39_cond_1_adamax_dense_53_kernel_v:	 ?@
1assignvariableop_40_cond_1_adamax_dense_53_bias_v:	?J
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
AssignVariableOpAssignVariableOp assignvariableop_dense_50_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_50_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_51_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_51_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_52_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_52_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_53_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_53_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_23AssignVariableOp3assignvariableop_23_cond_1_adamax_dense_50_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_cond_1_adamax_dense_50_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_51_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_51_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_cond_1_adamax_dense_52_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_cond_1_adamax_dense_52_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp3assignvariableop_29_cond_1_adamax_dense_53_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_cond_1_adamax_dense_53_bias_mIdentity_30:output:0"/device:CPU:0*
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
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_50_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_50_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp3assignvariableop_35_cond_1_adamax_dense_51_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp1assignvariableop_36_cond_1_adamax_dense_51_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_cond_1_adamax_dense_52_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_cond_1_adamax_dense_52_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp3assignvariableop_39_cond_1_adamax_dense_53_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp1assignvariableop_40_cond_1_adamax_dense_53_bias_vIdentity_40:output:0"/device:CPU:0*
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
*__inference_model_15_layer_call_fn_1371430

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5:	 ?
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
E__inference_model_15_layer_call_and_return_conditional_losses_13709892
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
*__inference_dense_52_layer_call_fn_1371532

inputs
unknown:@ 
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
E__inference_dense_52_layer_call_and_return_conditional_losses_13707422
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
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1371620L
:dense_51_kernel_regularizer_square_readvariableop_resource: @
identity??1dense_51/kernel/Regularizer/Square/ReadVariableOp?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_51_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mulm
IdentityIdentity#dense_51/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp
?
?
E__inference_dense_51_layer_call_and_return_conditional_losses_1370717

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_51/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_53_layer_call_and_return_conditional_losses_1371557

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_53/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpz
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	 ?2
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
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_1371631L
:dense_52_kernel_regularizer_square_readvariableop_resource:@ 
identity??1dense_52/kernel/Regularizer/Square/ReadVariableOp?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_52_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulm
IdentityIdentity#dense_52/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp
?

?
*__inference_model_15_layer_call_fn_1371037
input_16
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5:	 ?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
E__inference_model_15_layer_call_and_return_conditional_losses_13709892
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
input_16
?Q
?
E__inference_model_15_layer_call_and_return_conditional_losses_1370989

inputs"
dense_50_1370932: 
dense_50_1370934: "
dense_51_1370937: @
dense_51_1370939:@"
dense_52_1370942:@ 
dense_52_1370944: #
dense_53_1370947:	 ?
dense_53_1370949:	?'
outputlayer_1370953:
??"
outputlayer_1370955:	?
identity?? dense_50/StatefulPartitionedCall?1dense_50/kernel/Regularizer/Square/ReadVariableOp? dense_51/StatefulPartitionedCall?1dense_51/kernel/Regularizer/Square/ReadVariableOp? dense_52/StatefulPartitionedCall?1dense_52/kernel/Regularizer/Square/ReadVariableOp? dense_53/StatefulPartitionedCall?1dense_53/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_50/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_50/Cast?
 dense_50/StatefulPartitionedCallStatefulPartitionedCalldense_50/Cast:y:0dense_50_1370932dense_50_1370934*
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
E__inference_dense_50_layer_call_and_return_conditional_losses_13706922"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_1370937dense_51_1370939*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_13707172"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_1370942dense_52_1370944*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_13707422"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_1370947dense_53_1370949*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_13707672"
 dense_53/StatefulPartitionedCall?
outputlayer/CastCast)dense_53/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1370953outputlayer_1370955*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_13707912%
#outputlayer/StatefulPartitionedCall?
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_1370932*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mul?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_1370937*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_1370942*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mul?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_1370947*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1370953* 
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
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_1371642M
:dense_53_kernel_regularizer_square_readvariableop_resource:	 ?
identity??1dense_53/kernel/Regularizer/Square/ReadVariableOp?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_53_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mulm
IdentityIdentity#dense_53/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp
?
?
*__inference_dense_51_layer_call_fn_1371498

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
E__inference_dense_51_layer_call_and_return_conditional_losses_13707172
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
*__inference_dense_53_layer_call_fn_1371566

inputs
unknown:	 ?
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
E__inference_dense_53_layer_call_and_return_conditional_losses_13707672
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
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
*__inference_model_15_layer_call_fn_1371405

inputs
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5:	 ?
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
E__inference_model_15_layer_call_and_return_conditional_losses_13708282
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
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1371589

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
?Q
?
E__inference_model_15_layer_call_and_return_conditional_losses_1371159
input_16"
dense_50_1371102: 
dense_50_1371104: "
dense_51_1371107: @
dense_51_1371109:@"
dense_52_1371112:@ 
dense_52_1371114: #
dense_53_1371117:	 ?
dense_53_1371119:	?'
outputlayer_1371123:
??"
outputlayer_1371125:	?
identity?? dense_50/StatefulPartitionedCall?1dense_50/kernel/Regularizer/Square/ReadVariableOp? dense_51/StatefulPartitionedCall?1dense_51/kernel/Regularizer/Square/ReadVariableOp? dense_52/StatefulPartitionedCall?1dense_52/kernel/Regularizer/Square/ReadVariableOp? dense_53/StatefulPartitionedCall?1dense_53/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_50/CastCastinput_16*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_50/Cast?
 dense_50/StatefulPartitionedCallStatefulPartitionedCalldense_50/Cast:y:0dense_50_1371102dense_50_1371104*
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
E__inference_dense_50_layer_call_and_return_conditional_losses_13706922"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_1371107dense_51_1371109*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_13707172"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_1371112dense_52_1371114*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_13707422"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_1371117dense_53_1371119*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_13707672"
 dense_53/StatefulPartitionedCall?
outputlayer/CastCast)dense_53/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1371123outputlayer_1371125*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_13707912%
#outputlayer/StatefulPartitionedCall?
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_1371102*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mul?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_1371107*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_1371112*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mul?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_1371117*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1371123* 
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
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?
?
E__inference_dense_50_layer_call_and_return_conditional_losses_1370692

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_50/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?	
"__inference__wrapped_model_1370665
input_16B
0model_15_dense_50_matmul_readvariableop_resource: ?
1model_15_dense_50_biasadd_readvariableop_resource: B
0model_15_dense_51_matmul_readvariableop_resource: @?
1model_15_dense_51_biasadd_readvariableop_resource:@B
0model_15_dense_52_matmul_readvariableop_resource:@ ?
1model_15_dense_52_biasadd_readvariableop_resource: C
0model_15_dense_53_matmul_readvariableop_resource:	 ?@
1model_15_dense_53_biasadd_readvariableop_resource:	?G
3model_15_outputlayer_matmul_readvariableop_resource:
??C
4model_15_outputlayer_biasadd_readvariableop_resource:	?
identity??(model_15/dense_50/BiasAdd/ReadVariableOp?'model_15/dense_50/MatMul/ReadVariableOp?(model_15/dense_51/BiasAdd/ReadVariableOp?'model_15/dense_51/MatMul/ReadVariableOp?(model_15/dense_52/BiasAdd/ReadVariableOp?'model_15/dense_52/MatMul/ReadVariableOp?(model_15/dense_53/BiasAdd/ReadVariableOp?'model_15/dense_53/MatMul/ReadVariableOp?+model_15/outputlayer/BiasAdd/ReadVariableOp?*model_15/outputlayer/MatMul/ReadVariableOp?
model_15/dense_50/CastCastinput_16*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_15/dense_50/Cast?
'model_15/dense_50/MatMul/ReadVariableOpReadVariableOp0model_15_dense_50_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'model_15/dense_50/MatMul/ReadVariableOp?
model_15/dense_50/MatMul/CastCast/model_15/dense_50/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
model_15/dense_50/MatMul/Cast?
model_15/dense_50/MatMulMatMulmodel_15/dense_50/Cast:y:0!model_15/dense_50/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_15/dense_50/MatMul?
(model_15/dense_50/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_15/dense_50/BiasAdd/ReadVariableOp?
model_15/dense_50/BiasAdd/CastCast0model_15/dense_50/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model_15/dense_50/BiasAdd/Cast?
model_15/dense_50/BiasAddBiasAdd"model_15/dense_50/MatMul:product:0"model_15/dense_50/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_15/dense_50/BiasAdd?
model_15/dense_50/TanhTanh"model_15/dense_50/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_15/dense_50/Tanh?
'model_15/dense_51/MatMul/ReadVariableOpReadVariableOp0model_15_dense_51_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02)
'model_15/dense_51/MatMul/ReadVariableOp?
model_15/dense_51/MatMul/CastCast/model_15/dense_51/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
model_15/dense_51/MatMul/Cast?
model_15/dense_51/MatMulMatMulmodel_15/dense_50/Tanh:y:0!model_15/dense_51/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_15/dense_51/MatMul?
(model_15/dense_51/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_51_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_15/dense_51/BiasAdd/ReadVariableOp?
model_15/dense_51/BiasAdd/CastCast0model_15/dense_51/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2 
model_15/dense_51/BiasAdd/Cast?
model_15/dense_51/BiasAddBiasAdd"model_15/dense_51/MatMul:product:0"model_15/dense_51/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_15/dense_51/BiasAdd?
model_15/dense_51/TanhTanh"model_15/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_15/dense_51/Tanh?
'model_15/dense_52/MatMul/ReadVariableOpReadVariableOp0model_15_dense_52_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02)
'model_15/dense_52/MatMul/ReadVariableOp?
model_15/dense_52/MatMul/CastCast/model_15/dense_52/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@ 2
model_15/dense_52/MatMul/Cast?
model_15/dense_52/MatMulMatMulmodel_15/dense_51/Tanh:y:0!model_15/dense_52/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_15/dense_52/MatMul?
(model_15/dense_52/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_15/dense_52/BiasAdd/ReadVariableOp?
model_15/dense_52/BiasAdd/CastCast0model_15/dense_52/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model_15/dense_52/BiasAdd/Cast?
model_15/dense_52/BiasAddBiasAdd"model_15/dense_52/MatMul:product:0"model_15/dense_52/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_15/dense_52/BiasAdd?
model_15/dense_52/TanhTanh"model_15/dense_52/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_15/dense_52/Tanh?
'model_15/dense_53/MatMul/ReadVariableOpReadVariableOp0model_15_dense_53_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02)
'model_15/dense_53/MatMul/ReadVariableOp?
model_15/dense_53/MatMul/CastCast/model_15/dense_53/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	 ?2
model_15/dense_53/MatMul/Cast?
model_15/dense_53/MatMulMatMulmodel_15/dense_52/Tanh:y:0!model_15/dense_53/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_15/dense_53/MatMul?
(model_15/dense_53/BiasAdd/ReadVariableOpReadVariableOp1model_15_dense_53_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(model_15/dense_53/BiasAdd/ReadVariableOp?
model_15/dense_53/BiasAdd/CastCast0model_15/dense_53/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2 
model_15/dense_53/BiasAdd/Cast?
model_15/dense_53/BiasAddBiasAdd"model_15/dense_53/MatMul:product:0"model_15/dense_53/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
model_15/dense_53/BiasAdd?
model_15/dense_53/TanhTanh"model_15/dense_53/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_15/dense_53/Tanh?
model_15/outputlayer/CastCastmodel_15/dense_53/Tanh:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
model_15/outputlayer/Cast?
*model_15/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_15_outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_15/outputlayer/MatMul/ReadVariableOp?
model_15/outputlayer/MatMulMatMulmodel_15/outputlayer/Cast:y:02model_15/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_15/outputlayer/MatMul?
+model_15/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_15_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_15/outputlayer/BiasAdd/ReadVariableOp?
model_15/outputlayer/BiasAddBiasAdd%model_15/outputlayer/MatMul:product:03model_15/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_15/outputlayer/BiasAdd?
model_15/outputlayer/LeakyRelu	LeakyRelu%model_15/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_15/outputlayer/LeakyRelu?
IdentityIdentity,model_15/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp)^model_15/dense_50/BiasAdd/ReadVariableOp(^model_15/dense_50/MatMul/ReadVariableOp)^model_15/dense_51/BiasAdd/ReadVariableOp(^model_15/dense_51/MatMul/ReadVariableOp)^model_15/dense_52/BiasAdd/ReadVariableOp(^model_15/dense_52/MatMul/ReadVariableOp)^model_15/dense_53/BiasAdd/ReadVariableOp(^model_15/dense_53/MatMul/ReadVariableOp,^model_15/outputlayer/BiasAdd/ReadVariableOp+^model_15/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2T
(model_15/dense_50/BiasAdd/ReadVariableOp(model_15/dense_50/BiasAdd/ReadVariableOp2R
'model_15/dense_50/MatMul/ReadVariableOp'model_15/dense_50/MatMul/ReadVariableOp2T
(model_15/dense_51/BiasAdd/ReadVariableOp(model_15/dense_51/BiasAdd/ReadVariableOp2R
'model_15/dense_51/MatMul/ReadVariableOp'model_15/dense_51/MatMul/ReadVariableOp2T
(model_15/dense_52/BiasAdd/ReadVariableOp(model_15/dense_52/BiasAdd/ReadVariableOp2R
'model_15/dense_52/MatMul/ReadVariableOp'model_15/dense_52/MatMul/ReadVariableOp2T
(model_15/dense_53/BiasAdd/ReadVariableOp(model_15/dense_53/BiasAdd/ReadVariableOp2R
'model_15/dense_53/MatMul/ReadVariableOp'model_15/dense_53/MatMul/ReadVariableOp2Z
+model_15/outputlayer/BiasAdd/ReadVariableOp+model_15/outputlayer/BiasAdd/ReadVariableOp2X
*model_15/outputlayer/MatMul/ReadVariableOp*model_15/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?o
?

E__inference_model_15_layer_call_and_return_conditional_losses_1371380

inputs9
'dense_50_matmul_readvariableop_resource: 6
(dense_50_biasadd_readvariableop_resource: 9
'dense_51_matmul_readvariableop_resource: @6
(dense_51_biasadd_readvariableop_resource:@9
'dense_52_matmul_readvariableop_resource:@ 6
(dense_52_biasadd_readvariableop_resource: :
'dense_53_matmul_readvariableop_resource:	 ?7
(dense_53_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?1dense_50/kernel/Regularizer/Square/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?1dense_51/kernel/Regularizer/Square/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?1dense_52/kernel/Regularizer/Square/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?1dense_53/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_50/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_50/Cast?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMul/CastCast&dense_50/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_50/MatMul/Cast?
dense_50/MatMulMatMuldense_50/Cast:y:0dense_50/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAdd/CastCast'dense_50/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_50/BiasAdd/Cast?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0dense_50/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_50/BiasAdds
dense_50/TanhTanhdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_50/Tanh?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_51/MatMul/ReadVariableOp?
dense_51/MatMul/CastCast&dense_51/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_51/MatMul/Cast?
dense_51/MatMulMatMuldense_50/Tanh:y:0dense_51/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_51/MatMul?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAdd/CastCast'dense_51/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_51/BiasAdd/Cast?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0dense_51/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_51/BiasAdds
dense_51/TanhTanhdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_51/Tanh?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMul/CastCast&dense_52/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@ 2
dense_52/MatMul/Cast?
dense_52/MatMulMatMuldense_51/Tanh:y:0dense_52/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAdd/CastCast'dense_52/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_52/BiasAdd/Cast?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0dense_52/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_52/BiasAdds
dense_52/TanhTanhdense_52/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_52/Tanh?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
dense_53/MatMul/ReadVariableOp?
dense_53/MatMul/CastCast&dense_53/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	 ?2
dense_53/MatMul/Cast?
dense_53/MatMulMatMuldense_52/Tanh:y:0dense_53/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_53/MatMul?
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_53/BiasAdd/ReadVariableOp?
dense_53/BiasAdd/CastCast'dense_53/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_53/BiasAdd/Cast?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0dense_53/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_53/BiasAddt
dense_53/TanhTanhdense_53/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_53/Tanh?
outputlayer/CastCastdense_53/Tanh:y:0*

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
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mul?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mul?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul?
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
NoOpNoOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_50_layer_call_and_return_conditional_losses_1371455

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_50/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?o
?

E__inference_model_15_layer_call_and_return_conditional_losses_1371301

inputs9
'dense_50_matmul_readvariableop_resource: 6
(dense_50_biasadd_readvariableop_resource: 9
'dense_51_matmul_readvariableop_resource: @6
(dense_51_biasadd_readvariableop_resource:@9
'dense_52_matmul_readvariableop_resource:@ 6
(dense_52_biasadd_readvariableop_resource: :
'dense_53_matmul_readvariableop_resource:	 ?7
(dense_53_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?1dense_50/kernel/Regularizer/Square/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?1dense_51/kernel/Regularizer/Square/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?1dense_52/kernel/Regularizer/Square/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?1dense_53/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_50/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_50/Cast?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_50/MatMul/ReadVariableOp?
dense_50/MatMul/CastCast&dense_50/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: 2
dense_50/MatMul/Cast?
dense_50/MatMulMatMuldense_50/Cast:y:0dense_50/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_50/MatMul?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_50/BiasAdd/ReadVariableOp?
dense_50/BiasAdd/CastCast'dense_50/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_50/BiasAdd/Cast?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0dense_50/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_50/BiasAdds
dense_50/TanhTanhdense_50/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_50/Tanh?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02 
dense_51/MatMul/ReadVariableOp?
dense_51/MatMul/CastCast&dense_51/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

: @2
dense_51/MatMul/Cast?
dense_51/MatMulMatMuldense_50/Tanh:y:0dense_51/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_51/MatMul?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_51/BiasAdd/ReadVariableOp?
dense_51/BiasAdd/CastCast'dense_51/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_51/BiasAdd/Cast?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0dense_51/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_51/BiasAdds
dense_51/TanhTanhdense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_51/Tanh?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02 
dense_52/MatMul/ReadVariableOp?
dense_52/MatMul/CastCast&dense_52/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@ 2
dense_52/MatMul/Cast?
dense_52/MatMulMatMuldense_51/Tanh:y:0dense_52/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_52/MatMul?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_52/BiasAdd/ReadVariableOp?
dense_52/BiasAdd/CastCast'dense_52/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_52/BiasAdd/Cast?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0dense_52/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_52/BiasAdds
dense_52/TanhTanhdense_52/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_52/Tanh?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02 
dense_53/MatMul/ReadVariableOp?
dense_53/MatMul/CastCast&dense_53/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	 ?2
dense_53/MatMul/Cast?
dense_53/MatMulMatMuldense_52/Tanh:y:0dense_53/MatMul/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_53/MatMul?
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_53/BiasAdd/ReadVariableOp?
dense_53/BiasAdd/CastCast'dense_53/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes	
:?2
dense_53/BiasAdd/Cast?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0dense_53/BiasAdd/Cast:y:0*
T0*(
_output_shapes
:??????????2
dense_53/BiasAddt
dense_53/TanhTanhdense_53/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_53/Tanh?
outputlayer/CastCastdense_53/Tanh:y:0*

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
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mul?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mul?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul?
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
NoOpNoOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp2^dense_50/kernel/Regularizer/Square/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
*__inference_model_15_layer_call_fn_1370851
input_16
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5:	 ?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
E__inference_model_15_layer_call_and_return_conditional_losses_13708282
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
input_16
?Q
?
E__inference_model_15_layer_call_and_return_conditional_losses_1371098
input_16"
dense_50_1371041: 
dense_50_1371043: "
dense_51_1371046: @
dense_51_1371048:@"
dense_52_1371051:@ 
dense_52_1371053: #
dense_53_1371056:	 ?
dense_53_1371058:	?'
outputlayer_1371062:
??"
outputlayer_1371064:	?
identity?? dense_50/StatefulPartitionedCall?1dense_50/kernel/Regularizer/Square/ReadVariableOp? dense_51/StatefulPartitionedCall?1dense_51/kernel/Regularizer/Square/ReadVariableOp? dense_52/StatefulPartitionedCall?1dense_52/kernel/Regularizer/Square/ReadVariableOp? dense_53/StatefulPartitionedCall?1dense_53/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_50/CastCastinput_16*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_50/Cast?
 dense_50/StatefulPartitionedCallStatefulPartitionedCalldense_50/Cast:y:0dense_50_1371041dense_50_1371043*
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
E__inference_dense_50_layer_call_and_return_conditional_losses_13706922"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_1371046dense_51_1371048*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_13707172"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_1371051dense_52_1371053*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_13707422"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_1371056dense_53_1371058*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_13707672"
 dense_53/StatefulPartitionedCall?
outputlayer/CastCast)dense_53/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1371062outputlayer_1371064*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_13707912%
#outputlayer/StatefulPartitionedCall?
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_1371041*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mul?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_1371046*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_1371051*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mul?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_1371056*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1371062* 
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
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_16
?
?
*__inference_dense_50_layer_call_fn_1371464

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
E__inference_dense_50_layer_call_and_return_conditional_losses_13706922
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
?

?
%__inference_signature_wrapper_1371222
input_16
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5:	 ?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_16unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
"__inference__wrapped_model_13706652
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
input_16
?
?
-__inference_outputlayer_layer_call_fn_1371598

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
H__inference_outputlayer_layer_call_and_return_conditional_losses_13707912
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1370767

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_53/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02
MatMul/ReadVariableOpz
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:	 ?2
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
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_53/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_52_layer_call_and_return_conditional_losses_1371523

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_52/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@ 2
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
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?\
?
 __inference__traced_save_1371805
file_prefix.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop1
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
:savev2_cond_1_adamax_dense_50_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_50_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_51_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_51_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_52_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_52_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_53_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_53_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_50_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_50_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_51_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_51_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_52_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_52_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_53_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_53_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_cond_1_adamax_dense_50_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_50_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_51_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_51_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_52_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_52_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_53_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_53_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_50_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_50_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_51_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_51_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_52_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_52_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_53_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_53_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: : : : @:@:@ : :	 ?:?:
??:?: : : : : : : : : : : : : : : : @:@:@ : :	 ?:?:
??:?: : : @:@:@ : :	 ?:?:
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

:@ : 

_output_shapes
: :%!

_output_shapes
:	 ?:!
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

:@ : 

_output_shapes
: :%!

_output_shapes
:	 ?:!
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

:@ : '

_output_shapes
: :%(!

_output_shapes
:	 ?:!)
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
?
?
__inference_loss_fn_4_1371653Q
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
?
?
E__inference_dense_51_layer_call_and_return_conditional_losses_1371489

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_51/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_51/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_52_layer_call_and_return_conditional_losses_1370742

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_52/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@ 2
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
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_52/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Q
?
E__inference_model_15_layer_call_and_return_conditional_losses_1370828

inputs"
dense_50_1370693: 
dense_50_1370695: "
dense_51_1370718: @
dense_51_1370720:@"
dense_52_1370743:@ 
dense_52_1370745: #
dense_53_1370768:	 ?
dense_53_1370770:	?'
outputlayer_1370792:
??"
outputlayer_1370794:	?
identity?? dense_50/StatefulPartitionedCall?1dense_50/kernel/Regularizer/Square/ReadVariableOp? dense_51/StatefulPartitionedCall?1dense_51/kernel/Regularizer/Square/ReadVariableOp? dense_52/StatefulPartitionedCall?1dense_52/kernel/Regularizer/Square/ReadVariableOp? dense_53/StatefulPartitionedCall?1dense_53/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_50/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_50/Cast?
 dense_50/StatefulPartitionedCallStatefulPartitionedCalldense_50/Cast:y:0dense_50_1370693dense_50_1370695*
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
E__inference_dense_50_layer_call_and_return_conditional_losses_13706922"
 dense_50/StatefulPartitionedCall?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_1370718dense_51_1370720*
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
E__inference_dense_51_layer_call_and_return_conditional_losses_13707172"
 dense_51/StatefulPartitionedCall?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_1370743dense_52_1370745*
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
E__inference_dense_52_layer_call_and_return_conditional_losses_13707422"
 dense_52/StatefulPartitionedCall?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_1370768dense_53_1370770*
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
E__inference_dense_53_layer_call_and_return_conditional_losses_13707672"
 dense_53/StatefulPartitionedCall?
outputlayer/CastCast)dense_53/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1370792outputlayer_1370794*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_13707912%
#outputlayer/StatefulPartitionedCall?
1dense_50/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_50_1370693*
_output_shapes

: *
dtype023
1dense_50/kernel/Regularizer/Square/ReadVariableOp?
"dense_50/kernel/Regularizer/SquareSquare9dense_50/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2$
"dense_50/kernel/Regularizer/Square?
!dense_50/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_50/kernel/Regularizer/Const?
dense_50/kernel/Regularizer/SumSum&dense_50/kernel/Regularizer/Square:y:0*dense_50/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/Sum?
!dense_50/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_50/kernel/Regularizer/mul/x?
dense_50/kernel/Regularizer/mulMul*dense_50/kernel/Regularizer/mul/x:output:0(dense_50/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_50/kernel/Regularizer/mul?
1dense_51/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_51_1370718*
_output_shapes

: @*
dtype023
1dense_51/kernel/Regularizer/Square/ReadVariableOp?
"dense_51/kernel/Regularizer/SquareSquare9dense_51/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2$
"dense_51/kernel/Regularizer/Square?
!dense_51/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_51/kernel/Regularizer/Const?
dense_51/kernel/Regularizer/SumSum&dense_51/kernel/Regularizer/Square:y:0*dense_51/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/Sum?
!dense_51/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_51/kernel/Regularizer/mul/x?
dense_51/kernel/Regularizer/mulMul*dense_51/kernel/Regularizer/mul/x:output:0(dense_51/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_51/kernel/Regularizer/mul?
1dense_52/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_52_1370743*
_output_shapes

:@ *
dtype023
1dense_52/kernel/Regularizer/Square/ReadVariableOp?
"dense_52/kernel/Regularizer/SquareSquare9dense_52/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ 2$
"dense_52/kernel/Regularizer/Square?
!dense_52/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_52/kernel/Regularizer/Const?
dense_52/kernel/Regularizer/SumSum&dense_52/kernel/Regularizer/Square:y:0*dense_52/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/Sum?
!dense_52/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_52/kernel/Regularizer/mul/x?
dense_52/kernel/Regularizer/mulMul*dense_52/kernel/Regularizer/mul/x:output:0(dense_52/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_52/kernel/Regularizer/mul?
1dense_53/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_53_1370768*
_output_shapes
:	 ?*
dtype023
1dense_53/kernel/Regularizer/Square/ReadVariableOp?
"dense_53/kernel/Regularizer/SquareSquare9dense_53/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2$
"dense_53/kernel/Regularizer/Square?
!dense_53/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_53/kernel/Regularizer/Const?
dense_53/kernel/Regularizer/SumSum&dense_53/kernel/Regularizer/Square:y:0*dense_53/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/Sum?
!dense_53/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_53/kernel/Regularizer/mul/x?
dense_53/kernel/Regularizer/mulMul*dense_53/kernel/Regularizer/mul/x:output:0(dense_53/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_53/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1370792* 
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
NoOpNoOp!^dense_50/StatefulPartitionedCall2^dense_50/kernel/Regularizer/Square/ReadVariableOp!^dense_51/StatefulPartitionedCall2^dense_51/kernel/Regularizer/Square/ReadVariableOp!^dense_52/StatefulPartitionedCall2^dense_52/kernel/Regularizer/Square/ReadVariableOp!^dense_53/StatefulPartitionedCall2^dense_53/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2f
1dense_50/kernel/Regularizer/Square/ReadVariableOp1dense_50/kernel/Regularizer/Square/ReadVariableOp2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2f
1dense_51/kernel/Regularizer/Square/ReadVariableOp1dense_51/kernel/Regularizer/Square/ReadVariableOp2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2f
1dense_52/kernel/Regularizer/Square/ReadVariableOp1dense_52/kernel/Regularizer/Square/ReadVariableOp2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall2f
1dense_53/kernel/Regularizer/Square/ReadVariableOp1dense_53/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
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
=
input_161
serving_default_input_16:0?????????@
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
!: 2dense_50/kernel
: 2dense_50/bias
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
!: @2dense_51/kernel
:@2dense_51/bias
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
!:@ 2dense_52/kernel
: 2dense_52/bias
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
": 	 ?2dense_53/kernel
:?2dense_53/bias
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
/:- 2cond_1/Adamax/dense_50/kernel/m
):' 2cond_1/Adamax/dense_50/bias/m
/:- @2cond_1/Adamax/dense_51/kernel/m
):'@2cond_1/Adamax/dense_51/bias/m
/:-@ 2cond_1/Adamax/dense_52/kernel/m
):' 2cond_1/Adamax/dense_52/bias/m
0:.	 ?2cond_1/Adamax/dense_53/kernel/m
*:(?2cond_1/Adamax/dense_53/bias/m
4:2
??2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
/:- 2cond_1/Adamax/dense_50/kernel/v
):' 2cond_1/Adamax/dense_50/bias/v
/:- @2cond_1/Adamax/dense_51/kernel/v
):'@2cond_1/Adamax/dense_51/bias/v
/:-@ 2cond_1/Adamax/dense_52/kernel/v
):' 2cond_1/Adamax/dense_52/bias/v
0:.	 ?2cond_1/Adamax/dense_53/kernel/v
*:(?2cond_1/Adamax/dense_53/bias/v
4:2
??2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
E__inference_model_15_layer_call_and_return_conditional_losses_1371301
E__inference_model_15_layer_call_and_return_conditional_losses_1371380
E__inference_model_15_layer_call_and_return_conditional_losses_1371098
E__inference_model_15_layer_call_and_return_conditional_losses_1371159?
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
"__inference__wrapped_model_1370665input_16"?
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
*__inference_model_15_layer_call_fn_1370851
*__inference_model_15_layer_call_fn_1371405
*__inference_model_15_layer_call_fn_1371430
*__inference_model_15_layer_call_fn_1371037?
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
E__inference_dense_50_layer_call_and_return_conditional_losses_1371455?
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
*__inference_dense_50_layer_call_fn_1371464?
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
E__inference_dense_51_layer_call_and_return_conditional_losses_1371489?
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
*__inference_dense_51_layer_call_fn_1371498?
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
E__inference_dense_52_layer_call_and_return_conditional_losses_1371523?
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
*__inference_dense_52_layer_call_fn_1371532?
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
E__inference_dense_53_layer_call_and_return_conditional_losses_1371557?
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
*__inference_dense_53_layer_call_fn_1371566?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_1371589?
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
-__inference_outputlayer_layer_call_fn_1371598?
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
__inference_loss_fn_0_1371609?
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
__inference_loss_fn_1_1371620?
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
__inference_loss_fn_2_1371631?
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
__inference_loss_fn_3_1371642?
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
__inference_loss_fn_4_1371653?
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
%__inference_signature_wrapper_1371222input_16"?
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
"__inference__wrapped_model_1370665{
 %&1?.
'?$
"?
input_16?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
E__inference_dense_50_layer_call_and_return_conditional_losses_1371455\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? }
*__inference_dense_50_layer_call_fn_1371464O/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_dense_51_layer_call_and_return_conditional_losses_1371489\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? }
*__inference_dense_51_layer_call_fn_1371498O/?,
%?"
 ?
inputs????????? 
? "??????????@?
E__inference_dense_52_layer_call_and_return_conditional_losses_1371523\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? }
*__inference_dense_52_layer_call_fn_1371532O/?,
%?"
 ?
inputs?????????@
? "?????????? ?
E__inference_dense_53_layer_call_and_return_conditional_losses_1371557] /?,
%?"
 ?
inputs????????? 
? "&?#
?
0??????????
? ~
*__inference_dense_53_layer_call_fn_1371566P /?,
%?"
 ?
inputs????????? 
? "???????????<
__inference_loss_fn_0_1371609?

? 
? "? <
__inference_loss_fn_1_1371620?

? 
? "? <
__inference_loss_fn_2_1371631?

? 
? "? <
__inference_loss_fn_3_1371642?

? 
? "? <
__inference_loss_fn_4_1371653%?

? 
? "? ?
E__inference_model_15_layer_call_and_return_conditional_losses_1371098o
 %&9?6
/?,
"?
input_16?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_15_layer_call_and_return_conditional_losses_1371159o
 %&9?6
/?,
"?
input_16?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_15_layer_call_and_return_conditional_losses_1371301m
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
E__inference_model_15_layer_call_and_return_conditional_losses_1371380m
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
*__inference_model_15_layer_call_fn_1370851b
 %&9?6
/?,
"?
input_16?????????
p 

 
? "????????????
*__inference_model_15_layer_call_fn_1371037b
 %&9?6
/?,
"?
input_16?????????
p

 
? "????????????
*__inference_model_15_layer_call_fn_1371405`
 %&7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_15_layer_call_fn_1371430`
 %&7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_1371589^%&0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_1371598Q%&0?-
&?#
!?
inputs??????????
? "????????????
%__inference_signature_wrapper_1371222?
 %&=?:
? 
3?0
.
input_16"?
input_16?????????":?7
5
outputlayer&?#
outputlayer??????????