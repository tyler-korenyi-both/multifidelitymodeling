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
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:@*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:@*
dtype0
z
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@P* 
shared_namedense_42/kernel
s
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes

:@P*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
:P*
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP* 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

:PP*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:P*
dtype0
z
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P * 
shared_namedense_44/kernel
s
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes

:P *
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
: *
dtype0
?
outputlayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*#
shared_nameoutputlayer/kernel
z
&outputlayer/kernel/Read/ReadVariableOpReadVariableOpoutputlayer/kernel*
_output_shapes
:	 ?*
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
cond_1/Adamax/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*0
shared_name!cond_1/Adamax/dense_41/kernel/m
?
3cond_1/Adamax/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_41/kernel/m*
_output_shapes

:@*
dtype0
?
cond_1/Adamax/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_41/bias/m
?
1cond_1/Adamax/dense_41/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_41/bias/m*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@P*0
shared_name!cond_1/Adamax/dense_42/kernel/m
?
3cond_1/Adamax/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_42/kernel/m*
_output_shapes

:@P*
dtype0
?
cond_1/Adamax/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*.
shared_namecond_1/Adamax/dense_42/bias/m
?
1cond_1/Adamax/dense_42/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_42/bias/m*
_output_shapes
:P*
dtype0
?
cond_1/Adamax/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*0
shared_name!cond_1/Adamax/dense_43/kernel/m
?
3cond_1/Adamax/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_43/kernel/m*
_output_shapes

:PP*
dtype0
?
cond_1/Adamax/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*.
shared_namecond_1/Adamax/dense_43/bias/m
?
1cond_1/Adamax/dense_43/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_43/bias/m*
_output_shapes
:P*
dtype0
?
cond_1/Adamax/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P *0
shared_name!cond_1/Adamax/dense_44/kernel/m
?
3cond_1/Adamax/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_44/kernel/m*
_output_shapes

:P *
dtype0
?
cond_1/Adamax/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_44/bias/m
?
1cond_1/Adamax/dense_44/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_44/bias/m*
_output_shapes
: *
dtype0
?
"cond_1/Adamax/outputlayer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/m
?
6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/m*
_output_shapes
:	 ?*
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
cond_1/Adamax/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*0
shared_name!cond_1/Adamax/dense_41/kernel/v
?
3cond_1/Adamax/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_41/kernel/v*
_output_shapes

:@*
dtype0
?
cond_1/Adamax/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namecond_1/Adamax/dense_41/bias/v
?
1cond_1/Adamax/dense_41/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_41/bias/v*
_output_shapes
:@*
dtype0
?
cond_1/Adamax/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@P*0
shared_name!cond_1/Adamax/dense_42/kernel/v
?
3cond_1/Adamax/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_42/kernel/v*
_output_shapes

:@P*
dtype0
?
cond_1/Adamax/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*.
shared_namecond_1/Adamax/dense_42/bias/v
?
1cond_1/Adamax/dense_42/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_42/bias/v*
_output_shapes
:P*
dtype0
?
cond_1/Adamax/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*0
shared_name!cond_1/Adamax/dense_43/kernel/v
?
3cond_1/Adamax/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_43/kernel/v*
_output_shapes

:PP*
dtype0
?
cond_1/Adamax/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*.
shared_namecond_1/Adamax/dense_43/bias/v
?
1cond_1/Adamax/dense_43/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_43/bias/v*
_output_shapes
:P*
dtype0
?
cond_1/Adamax/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P *0
shared_name!cond_1/Adamax/dense_44/kernel/v
?
3cond_1/Adamax/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_44/kernel/v*
_output_shapes

:P *
dtype0
?
cond_1/Adamax/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namecond_1/Adamax/dense_44/bias/v
?
1cond_1/Adamax/dense_44/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_44/bias/v*
_output_shapes
: *
dtype0
?
"cond_1/Adamax/outputlayer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 ?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/v
?
6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/v*
_output_shapes
:	 ?*
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
VARIABLE_VALUEdense_41/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_41/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_42/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_43/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_43/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_44/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_44/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEcond_1/Adamax/dense_41/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_41/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_42/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_42/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_43/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_43/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_44/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_44/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_41/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_41/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_42/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_42/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_43/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_43/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_44/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_44/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_14Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14dense_41/kerneldense_41/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasoutputlayer/kerneloutputlayer/bias*
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
%__inference_signature_wrapper_1191857
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp3cond_1/Adamax/dense_41/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_41/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_42/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_42/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_43/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_43/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_44/kernel/m/Read/ReadVariableOp1cond_1/Adamax/dense_44/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp3cond_1/Adamax/dense_41/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_41/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_42/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_42/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_43/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_43/bias/v/Read/ReadVariableOp3cond_1/Adamax/dense_44/kernel/v/Read/ReadVariableOp1cond_1/Adamax/dense_44/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*8
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
 __inference__traced_save_1192440
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_41/kerneldense_41/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2cond_1/Adamax/dense_41/kernel/mcond_1/Adamax/dense_41/bias/mcond_1/Adamax/dense_42/kernel/mcond_1/Adamax/dense_42/bias/mcond_1/Adamax/dense_43/kernel/mcond_1/Adamax/dense_43/bias/mcond_1/Adamax/dense_44/kernel/mcond_1/Adamax/dense_44/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/mcond_1/Adamax/dense_41/kernel/vcond_1/Adamax/dense_41/bias/vcond_1/Adamax/dense_42/kernel/vcond_1/Adamax/dense_42/bias/vcond_1/Adamax/dense_43/kernel/vcond_1/Adamax/dense_43/bias/vcond_1/Adamax/dense_44/kernel/vcond_1/Adamax/dense_44/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*7
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
#__inference__traced_restore_1192579??

?
?
__inference_loss_fn_1_1192255L
:dense_42_kernel_regularizer_square_readvariableop_resource:@P
identity??1dense_42/kernel/Regularizer/Square/ReadVariableOp?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_42_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mulm
IdentityIdentity#dense_42/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp
?Q
?
E__inference_model_13_layer_call_and_return_conditional_losses_1191794
input_14"
dense_41_1191737:@
dense_41_1191739:@"
dense_42_1191742:@P
dense_42_1191744:P"
dense_43_1191747:PP
dense_43_1191749:P"
dense_44_1191752:P 
dense_44_1191754: &
outputlayer_1191758:	 ?"
outputlayer_1191760:	?
identity?? dense_41/StatefulPartitionedCall?1dense_41/kernel/Regularizer/Square/ReadVariableOp? dense_42/StatefulPartitionedCall?1dense_42/kernel/Regularizer/Square/ReadVariableOp? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_41/CastCastinput_14*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_41/Cast?
 dense_41/StatefulPartitionedCallStatefulPartitionedCalldense_41/Cast:y:0dense_41_1191737dense_41_1191739*
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
E__inference_dense_41_layer_call_and_return_conditional_losses_11913272"
 dense_41/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0dense_42_1191742dense_42_1191744*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_11913522"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_1191747dense_43_1191749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_11913772"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_1191752dense_44_1191754*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_11914022"
 dense_44/StatefulPartitionedCall?
outputlayer/CastCast)dense_44/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1191758outputlayer_1191760*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11914262%
#outputlayer/StatefulPartitionedCall?
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_1191737*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mul?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_1191742*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mul?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_1191747*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mul?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_1191752*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1191758*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
NoOpNoOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1191426

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
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
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_dense_44_layer_call_and_return_conditional_losses_1191402

inputs0
matmul_readvariableop_resource:P -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P *
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P 2
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
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?

?
*__inference_model_13_layer_call_fn_1192040

inputs
unknown:@
	unknown_0:@
	unknown_1:@P
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:P 
	unknown_6: 
	unknown_7:	 ?
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
E__inference_model_13_layer_call_and_return_conditional_losses_11914632
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
??
?
#__inference__traced_restore_1192579
file_prefix2
 assignvariableop_dense_41_kernel:@.
 assignvariableop_1_dense_41_bias:@4
"assignvariableop_2_dense_42_kernel:@P.
 assignvariableop_3_dense_42_bias:P4
"assignvariableop_4_dense_43_kernel:PP.
 assignvariableop_5_dense_43_bias:P4
"assignvariableop_6_dense_44_kernel:P .
 assignvariableop_7_dense_44_bias: 8
%assignvariableop_8_outputlayer_kernel:	 ?2
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
3assignvariableop_23_cond_1_adamax_dense_41_kernel_m:@?
1assignvariableop_24_cond_1_adamax_dense_41_bias_m:@E
3assignvariableop_25_cond_1_adamax_dense_42_kernel_m:@P?
1assignvariableop_26_cond_1_adamax_dense_42_bias_m:PE
3assignvariableop_27_cond_1_adamax_dense_43_kernel_m:PP?
1assignvariableop_28_cond_1_adamax_dense_43_bias_m:PE
3assignvariableop_29_cond_1_adamax_dense_44_kernel_m:P ?
1assignvariableop_30_cond_1_adamax_dense_44_bias_m: I
6assignvariableop_31_cond_1_adamax_outputlayer_kernel_m:	 ?C
4assignvariableop_32_cond_1_adamax_outputlayer_bias_m:	?E
3assignvariableop_33_cond_1_adamax_dense_41_kernel_v:@?
1assignvariableop_34_cond_1_adamax_dense_41_bias_v:@E
3assignvariableop_35_cond_1_adamax_dense_42_kernel_v:@P?
1assignvariableop_36_cond_1_adamax_dense_42_bias_v:PE
3assignvariableop_37_cond_1_adamax_dense_43_kernel_v:PP?
1assignvariableop_38_cond_1_adamax_dense_43_bias_v:PE
3assignvariableop_39_cond_1_adamax_dense_44_kernel_v:P ?
1assignvariableop_40_cond_1_adamax_dense_44_bias_v: I
6assignvariableop_41_cond_1_adamax_outputlayer_kernel_v:	 ?C
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
AssignVariableOpAssignVariableOp assignvariableop_dense_41_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_41_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_42_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_42_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_43_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_43_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_44_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_44_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_23AssignVariableOp3assignvariableop_23_cond_1_adamax_dense_41_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp1assignvariableop_24_cond_1_adamax_dense_41_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_cond_1_adamax_dense_42_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_cond_1_adamax_dense_42_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp3assignvariableop_27_cond_1_adamax_dense_43_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp1assignvariableop_28_cond_1_adamax_dense_43_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp3assignvariableop_29_cond_1_adamax_dense_44_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp1assignvariableop_30_cond_1_adamax_dense_44_bias_mIdentity_30:output:0"/device:CPU:0*
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
AssignVariableOp_33AssignVariableOp3assignvariableop_33_cond_1_adamax_dense_41_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp1assignvariableop_34_cond_1_adamax_dense_41_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp3assignvariableop_35_cond_1_adamax_dense_42_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp1assignvariableop_36_cond_1_adamax_dense_42_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_cond_1_adamax_dense_43_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_cond_1_adamax_dense_43_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp3assignvariableop_39_cond_1_adamax_dense_44_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp1assignvariableop_40_cond_1_adamax_dense_44_bias_vIdentity_40:output:0"/device:CPU:0*
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
E__inference_dense_41_layer_call_and_return_conditional_losses_1191327

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_41/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@2
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
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_outputlayer_layer_call_fn_1192233

inputs
unknown:	 ?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11914262
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
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?[
?
 __inference__traced_save_1192440
file_prefix.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop1
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
:savev2_cond_1_adamax_dense_41_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_41_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_42_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_42_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_43_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_43_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_44_kernel_m_read_readvariableop<
8savev2_cond_1_adamax_dense_44_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop>
:savev2_cond_1_adamax_dense_41_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_41_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_42_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_42_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_43_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_43_bias_v_read_readvariableop>
:savev2_cond_1_adamax_dense_44_kernel_v_read_readvariableop<
8savev2_cond_1_adamax_dense_44_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop:savev2_cond_1_adamax_dense_41_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_41_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_42_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_42_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_43_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_43_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_44_kernel_m_read_readvariableop8savev2_cond_1_adamax_dense_44_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop:savev2_cond_1_adamax_dense_41_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_41_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_42_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_42_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_43_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_43_bias_v_read_readvariableop:savev2_cond_1_adamax_dense_44_kernel_v_read_readvariableop8savev2_cond_1_adamax_dense_44_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :@:@:@P:P:PP:P:P : :	 ?:?: : : : : : : : : : : : : :@:@:@P:P:PP:P:P : :	 ?:?:@:@:@P:P:PP:P:P : :	 ?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@P: 

_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:$ 

_output_shapes

:P : 

_output_shapes
: :%	!

_output_shapes
:	 ?:!
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

:@: 

_output_shapes
:@:$ 

_output_shapes

:@P: 

_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:$ 

_output_shapes

:P : 

_output_shapes
: :% !

_output_shapes
:	 ?:!!

_output_shapes	
:?:$" 

_output_shapes

:@: #

_output_shapes
:@:$$ 

_output_shapes

:@P: %

_output_shapes
:P:$& 

_output_shapes

:PP: '

_output_shapes
:P:$( 

_output_shapes

:P : )

_output_shapes
: :%*!

_output_shapes
:	 ?:!+

_output_shapes	
:?:,

_output_shapes
: 
?
?
__inference_loss_fn_3_1192277L
:dense_44_kernel_regularizer_square_readvariableop_resource:P 
identity??1dense_44/kernel/Regularizer/Square/ReadVariableOp?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_44_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mulm
IdentityIdentity#dense_44/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_0_1192244L
:dense_41_kernel_regularizer_square_readvariableop_resource:@
identity??1dense_41/kernel/Regularizer/Square/ReadVariableOp?
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_41_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mulm
IdentityIdentity#dense_41/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp
?H
?	
"__inference__wrapped_model_1191300
input_14B
0model_13_dense_41_matmul_readvariableop_resource:@?
1model_13_dense_41_biasadd_readvariableop_resource:@B
0model_13_dense_42_matmul_readvariableop_resource:@P?
1model_13_dense_42_biasadd_readvariableop_resource:PB
0model_13_dense_43_matmul_readvariableop_resource:PP?
1model_13_dense_43_biasadd_readvariableop_resource:PB
0model_13_dense_44_matmul_readvariableop_resource:P ?
1model_13_dense_44_biasadd_readvariableop_resource: F
3model_13_outputlayer_matmul_readvariableop_resource:	 ?C
4model_13_outputlayer_biasadd_readvariableop_resource:	?
identity??(model_13/dense_41/BiasAdd/ReadVariableOp?'model_13/dense_41/MatMul/ReadVariableOp?(model_13/dense_42/BiasAdd/ReadVariableOp?'model_13/dense_42/MatMul/ReadVariableOp?(model_13/dense_43/BiasAdd/ReadVariableOp?'model_13/dense_43/MatMul/ReadVariableOp?(model_13/dense_44/BiasAdd/ReadVariableOp?'model_13/dense_44/MatMul/ReadVariableOp?+model_13/outputlayer/BiasAdd/ReadVariableOp?*model_13/outputlayer/MatMul/ReadVariableOp?
model_13/dense_41/CastCastinput_14*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_13/dense_41/Cast?
'model_13/dense_41/MatMul/ReadVariableOpReadVariableOp0model_13_dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02)
'model_13/dense_41/MatMul/ReadVariableOp?
model_13/dense_41/MatMul/CastCast/model_13/dense_41/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@2
model_13/dense_41/MatMul/Cast?
model_13/dense_41/MatMulMatMulmodel_13/dense_41/Cast:y:0!model_13/dense_41/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_13/dense_41/MatMul?
(model_13/dense_41/BiasAdd/ReadVariableOpReadVariableOp1model_13_dense_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_13/dense_41/BiasAdd/ReadVariableOp?
model_13/dense_41/BiasAdd/CastCast0model_13/dense_41/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2 
model_13/dense_41/BiasAdd/Cast?
model_13/dense_41/BiasAddBiasAdd"model_13/dense_41/MatMul:product:0"model_13/dense_41/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
model_13/dense_41/BiasAdd?
model_13/dense_41/TanhTanh"model_13/dense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_13/dense_41/Tanh?
'model_13/dense_42/MatMul/ReadVariableOpReadVariableOp0model_13_dense_42_matmul_readvariableop_resource*
_output_shapes

:@P*
dtype02)
'model_13/dense_42/MatMul/ReadVariableOp?
model_13/dense_42/MatMul/CastCast/model_13/dense_42/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@P2
model_13/dense_42/MatMul/Cast?
model_13/dense_42/MatMulMatMulmodel_13/dense_41/Tanh:y:0!model_13/dense_42/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_13/dense_42/MatMul?
(model_13/dense_42/BiasAdd/ReadVariableOpReadVariableOp1model_13_dense_42_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02*
(model_13/dense_42/BiasAdd/ReadVariableOp?
model_13/dense_42/BiasAdd/CastCast0model_13/dense_42/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2 
model_13/dense_42/BiasAdd/Cast?
model_13/dense_42/BiasAddBiasAdd"model_13/dense_42/MatMul:product:0"model_13/dense_42/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_13/dense_42/BiasAdd?
model_13/dense_42/TanhTanh"model_13/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
model_13/dense_42/Tanh?
'model_13/dense_43/MatMul/ReadVariableOpReadVariableOp0model_13_dense_43_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype02)
'model_13/dense_43/MatMul/ReadVariableOp?
model_13/dense_43/MatMul/CastCast/model_13/dense_43/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
model_13/dense_43/MatMul/Cast?
model_13/dense_43/MatMulMatMulmodel_13/dense_42/Tanh:y:0!model_13/dense_43/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_13/dense_43/MatMul?
(model_13/dense_43/BiasAdd/ReadVariableOpReadVariableOp1model_13_dense_43_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02*
(model_13/dense_43/BiasAdd/ReadVariableOp?
model_13/dense_43/BiasAdd/CastCast0model_13/dense_43/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2 
model_13/dense_43/BiasAdd/Cast?
model_13/dense_43/BiasAddBiasAdd"model_13/dense_43/MatMul:product:0"model_13/dense_43/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_13/dense_43/BiasAdd?
model_13/dense_43/TanhTanh"model_13/dense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
model_13/dense_43/Tanh?
'model_13/dense_44/MatMul/ReadVariableOpReadVariableOp0model_13_dense_44_matmul_readvariableop_resource*
_output_shapes

:P *
dtype02)
'model_13/dense_44/MatMul/ReadVariableOp?
model_13/dense_44/MatMul/CastCast/model_13/dense_44/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P 2
model_13/dense_44/MatMul/Cast?
model_13/dense_44/MatMulMatMulmodel_13/dense_43/Tanh:y:0!model_13/dense_44/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_13/dense_44/MatMul?
(model_13/dense_44/BiasAdd/ReadVariableOpReadVariableOp1model_13_dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_13/dense_44/BiasAdd/ReadVariableOp?
model_13/dense_44/BiasAdd/CastCast0model_13/dense_44/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2 
model_13/dense_44/BiasAdd/Cast?
model_13/dense_44/BiasAddBiasAdd"model_13/dense_44/MatMul:product:0"model_13/dense_44/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
model_13/dense_44/BiasAdd?
model_13/dense_44/TanhTanh"model_13/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_13/dense_44/Tanh?
model_13/outputlayer/CastCastmodel_13/dense_44/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
model_13/outputlayer/Cast?
*model_13/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_13_outputlayer_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype02,
*model_13/outputlayer/MatMul/ReadVariableOp?
model_13/outputlayer/MatMulMatMulmodel_13/outputlayer/Cast:y:02model_13/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_13/outputlayer/MatMul?
+model_13/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_13_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_13/outputlayer/BiasAdd/ReadVariableOp?
model_13/outputlayer/BiasAddBiasAdd%model_13/outputlayer/MatMul:product:03model_13/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_13/outputlayer/BiasAdd?
model_13/outputlayer/LeakyRelu	LeakyRelu%model_13/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_13/outputlayer/LeakyRelu?
IdentityIdentity,model_13/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp)^model_13/dense_41/BiasAdd/ReadVariableOp(^model_13/dense_41/MatMul/ReadVariableOp)^model_13/dense_42/BiasAdd/ReadVariableOp(^model_13/dense_42/MatMul/ReadVariableOp)^model_13/dense_43/BiasAdd/ReadVariableOp(^model_13/dense_43/MatMul/ReadVariableOp)^model_13/dense_44/BiasAdd/ReadVariableOp(^model_13/dense_44/MatMul/ReadVariableOp,^model_13/outputlayer/BiasAdd/ReadVariableOp+^model_13/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2T
(model_13/dense_41/BiasAdd/ReadVariableOp(model_13/dense_41/BiasAdd/ReadVariableOp2R
'model_13/dense_41/MatMul/ReadVariableOp'model_13/dense_41/MatMul/ReadVariableOp2T
(model_13/dense_42/BiasAdd/ReadVariableOp(model_13/dense_42/BiasAdd/ReadVariableOp2R
'model_13/dense_42/MatMul/ReadVariableOp'model_13/dense_42/MatMul/ReadVariableOp2T
(model_13/dense_43/BiasAdd/ReadVariableOp(model_13/dense_43/BiasAdd/ReadVariableOp2R
'model_13/dense_43/MatMul/ReadVariableOp'model_13/dense_43/MatMul/ReadVariableOp2T
(model_13/dense_44/BiasAdd/ReadVariableOp(model_13/dense_44/BiasAdd/ReadVariableOp2R
'model_13/dense_44/MatMul/ReadVariableOp'model_13/dense_44/MatMul/ReadVariableOp2Z
+model_13/outputlayer/BiasAdd/ReadVariableOp+model_13/outputlayer/BiasAdd/ReadVariableOp2X
*model_13/outputlayer/MatMul/ReadVariableOp*model_13/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
?
*__inference_dense_41_layer_call_fn_1192099

inputs
unknown:@
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
E__inference_dense_41_layer_call_and_return_conditional_losses_11913272
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?o
?

E__inference_model_13_layer_call_and_return_conditional_losses_1191936

inputs9
'dense_41_matmul_readvariableop_resource:@6
(dense_41_biasadd_readvariableop_resource:@9
'dense_42_matmul_readvariableop_resource:@P6
(dense_42_biasadd_readvariableop_resource:P9
'dense_43_matmul_readvariableop_resource:PP6
(dense_43_biasadd_readvariableop_resource:P9
'dense_44_matmul_readvariableop_resource:P 6
(dense_44_biasadd_readvariableop_resource: =
*outputlayer_matmul_readvariableop_resource:	 ?:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?1dense_41/kernel/Regularizer/Square/ReadVariableOp?dense_42/BiasAdd/ReadVariableOp?dense_42/MatMul/ReadVariableOp?1dense_42/kernel/Regularizer/Square/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?dense_43/MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_41/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_41/Cast?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_41/MatMul/ReadVariableOp?
dense_41/MatMul/CastCast&dense_41/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@2
dense_41/MatMul/Cast?
dense_41/MatMulMatMuldense_41/Cast:y:0dense_41/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_41/MatMul?
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_41/BiasAdd/ReadVariableOp?
dense_41/BiasAdd/CastCast'dense_41/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_41/BiasAdd/Cast?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0dense_41/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_41/BiasAdds
dense_41/TanhTanhdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_41/Tanh?
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:@P*
dtype02 
dense_42/MatMul/ReadVariableOp?
dense_42/MatMul/CastCast&dense_42/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@P2
dense_42/MatMul/Cast?
dense_42/MatMulMatMuldense_41/Tanh:y:0dense_42/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_42/MatMul?
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
dense_42/BiasAdd/ReadVariableOp?
dense_42/BiasAdd/CastCast'dense_42/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_42/BiasAdd/Cast?
dense_42/BiasAddBiasAdddense_42/MatMul:product:0dense_42/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_42/BiasAdds
dense_42/TanhTanhdense_42/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_42/Tanh?
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense_43/MatMul/ReadVariableOp?
dense_43/MatMul/CastCast&dense_43/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
dense_43/MatMul/Cast?
dense_43/MatMulMatMuldense_42/Tanh:y:0dense_43/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_43/MatMul?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
dense_43/BiasAdd/ReadVariableOp?
dense_43/BiasAdd/CastCast'dense_43/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_43/BiasAdd/Cast?
dense_43/BiasAddBiasAdddense_43/MatMul:product:0dense_43/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_43/BiasAdds
dense_43/TanhTanhdense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_43/Tanh?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:P *
dtype02 
dense_44/MatMul/ReadVariableOp?
dense_44/MatMul/CastCast&dense_44/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P 2
dense_44/MatMul/Cast?
dense_44/MatMulMatMuldense_43/Tanh:y:0dense_44/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_44/MatMul?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAdd/CastCast'dense_44/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_44/BiasAdd/Cast?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0dense_44/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_44/BiasAdds
dense_44/TanhTanhdense_44/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_44/Tanh?
outputlayer/CastCastdense_44/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	 ?*
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
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mul?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mul?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mul?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
NoOpNoOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1191857
input_14
unknown:@
	unknown_0:@
	unknown_1:@P
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:P 
	unknown_6: 
	unknown_7:	 ?
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
"__inference__wrapped_model_11913002
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
input_14
?
?
E__inference_dense_43_layer_call_and_return_conditional_losses_1191377

inputs0
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
Tanh?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?

?
*__inference_model_13_layer_call_fn_1191486
input_14
unknown:@
	unknown_0:@
	unknown_1:@P
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:P 
	unknown_6: 
	unknown_7:	 ?
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
E__inference_model_13_layer_call_and_return_conditional_losses_11914632
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
input_14
?
?
E__inference_dense_42_layer_call_and_return_conditional_losses_1191352

inputs0
matmul_readvariableop_resource:@P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_42/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@P*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@P2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
Tanh?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Q
?
E__inference_model_13_layer_call_and_return_conditional_losses_1191733
input_14"
dense_41_1191676:@
dense_41_1191678:@"
dense_42_1191681:@P
dense_42_1191683:P"
dense_43_1191686:PP
dense_43_1191688:P"
dense_44_1191691:P 
dense_44_1191693: &
outputlayer_1191697:	 ?"
outputlayer_1191699:	?
identity?? dense_41/StatefulPartitionedCall?1dense_41/kernel/Regularizer/Square/ReadVariableOp? dense_42/StatefulPartitionedCall?1dense_42/kernel/Regularizer/Square/ReadVariableOp? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_41/CastCastinput_14*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_41/Cast?
 dense_41/StatefulPartitionedCallStatefulPartitionedCalldense_41/Cast:y:0dense_41_1191676dense_41_1191678*
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
E__inference_dense_41_layer_call_and_return_conditional_losses_11913272"
 dense_41/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0dense_42_1191681dense_42_1191683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_11913522"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_1191686dense_43_1191688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_11913772"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_1191691dense_44_1191693*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_11914022"
 dense_44/StatefulPartitionedCall?
outputlayer/CastCast)dense_44/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1191697outputlayer_1191699*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11914262%
#outputlayer/StatefulPartitionedCall?
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_1191676*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mul?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_1191681*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mul?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_1191686*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mul?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_1191691*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1191697*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
NoOpNoOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_14
?
?
*__inference_dense_44_layer_call_fn_1192201

inputs
unknown:P 
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
E__inference_dense_44_layer_call_and_return_conditional_losses_11914022
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
:?????????P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?

?
*__inference_model_13_layer_call_fn_1191672
input_14
unknown:@
	unknown_0:@
	unknown_1:@P
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:P 
	unknown_6: 
	unknown_7:	 ?
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
E__inference_model_13_layer_call_and_return_conditional_losses_11916242
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
input_14
?

?
*__inference_model_13_layer_call_fn_1192065

inputs
unknown:@
	unknown_0:@
	unknown_1:@P
	unknown_2:P
	unknown_3:PP
	unknown_4:P
	unknown_5:P 
	unknown_6: 
	unknown_7:	 ?
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
E__inference_model_13_layer_call_and_return_conditional_losses_11916242
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
E__inference_model_13_layer_call_and_return_conditional_losses_1191463

inputs"
dense_41_1191328:@
dense_41_1191330:@"
dense_42_1191353:@P
dense_42_1191355:P"
dense_43_1191378:PP
dense_43_1191380:P"
dense_44_1191403:P 
dense_44_1191405: &
outputlayer_1191427:	 ?"
outputlayer_1191429:	?
identity?? dense_41/StatefulPartitionedCall?1dense_41/kernel/Regularizer/Square/ReadVariableOp? dense_42/StatefulPartitionedCall?1dense_42/kernel/Regularizer/Square/ReadVariableOp? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_41/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_41/Cast?
 dense_41/StatefulPartitionedCallStatefulPartitionedCalldense_41/Cast:y:0dense_41_1191328dense_41_1191330*
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
E__inference_dense_41_layer_call_and_return_conditional_losses_11913272"
 dense_41/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0dense_42_1191353dense_42_1191355*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_11913522"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_1191378dense_43_1191380*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_11913772"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_1191403dense_44_1191405*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_11914022"
 dense_44/StatefulPartitionedCall?
outputlayer/CastCast)dense_44/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1191427outputlayer_1191429*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11914262%
#outputlayer/StatefulPartitionedCall?
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_1191328*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mul?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_1191353*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mul?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_1191378*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mul?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_1191403*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1191427*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
NoOpNoOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_42_layer_call_and_return_conditional_losses_1192124

inputs0
matmul_readvariableop_resource:@P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_42/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@P*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@P2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
Tanh?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_1192266L
:dense_43_kernel_regularizer_square_readvariableop_resource:PP
identity??1dense_43/kernel/Regularizer/Square/ReadVariableOp?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_43_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mulm
IdentityIdentity#dense_43/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_4_1192288P
=outputlayer_kernel_regularizer_square_readvariableop_resource:	 ?
identity??4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=outputlayer_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
?
?
*__inference_dense_42_layer_call_fn_1192133

inputs
unknown:@P
	unknown_0:P
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_11913522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????P2

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
?Q
?
E__inference_model_13_layer_call_and_return_conditional_losses_1191624

inputs"
dense_41_1191567:@
dense_41_1191569:@"
dense_42_1191572:@P
dense_42_1191574:P"
dense_43_1191577:PP
dense_43_1191579:P"
dense_44_1191582:P 
dense_44_1191584: &
outputlayer_1191588:	 ?"
outputlayer_1191590:	?
identity?? dense_41/StatefulPartitionedCall?1dense_41/kernel/Regularizer/Square/ReadVariableOp? dense_42/StatefulPartitionedCall?1dense_42/kernel/Regularizer/Square/ReadVariableOp? dense_43/StatefulPartitionedCall?1dense_43/kernel/Regularizer/Square/ReadVariableOp? dense_44/StatefulPartitionedCall?1dense_44/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_41/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_41/Cast?
 dense_41/StatefulPartitionedCallStatefulPartitionedCalldense_41/Cast:y:0dense_41_1191567dense_41_1191569*
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
E__inference_dense_41_layer_call_and_return_conditional_losses_11913272"
 dense_41/StatefulPartitionedCall?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0dense_42_1191572dense_42_1191574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_11913522"
 dense_42/StatefulPartitionedCall?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_1191577dense_43_1191579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_11913772"
 dense_43/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_1191582dense_44_1191584*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_11914022"
 dense_44/StatefulPartitionedCall?
outputlayer/CastCast)dense_44/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1191588outputlayer_1191590*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11914262%
#outputlayer/StatefulPartitionedCall?
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_1191567*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mul?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_1191572*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mul?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_1191577*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mul?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_1191582*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1191588*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
NoOpNoOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_41_layer_call_and_return_conditional_losses_1192090

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_41/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@2
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
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp*"
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
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_43_layer_call_and_return_conditional_losses_1192158

inputs0
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
Tanh?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
E__inference_dense_44_layer_call_and_return_conditional_losses_1192192

inputs0
matmul_readvariableop_resource:P -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P *
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P 2
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
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1192224

inputs1
matmul_readvariableop_resource:	 ?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 ?*
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
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_dense_43_layer_call_fn_1192167

inputs
unknown:PP
	unknown_0:P
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_11913772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?o
?

E__inference_model_13_layer_call_and_return_conditional_losses_1192015

inputs9
'dense_41_matmul_readvariableop_resource:@6
(dense_41_biasadd_readvariableop_resource:@9
'dense_42_matmul_readvariableop_resource:@P6
(dense_42_biasadd_readvariableop_resource:P9
'dense_43_matmul_readvariableop_resource:PP6
(dense_43_biasadd_readvariableop_resource:P9
'dense_44_matmul_readvariableop_resource:P 6
(dense_44_biasadd_readvariableop_resource: =
*outputlayer_matmul_readvariableop_resource:	 ?:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_41/BiasAdd/ReadVariableOp?dense_41/MatMul/ReadVariableOp?1dense_41/kernel/Regularizer/Square/ReadVariableOp?dense_42/BiasAdd/ReadVariableOp?dense_42/MatMul/ReadVariableOp?1dense_42/kernel/Regularizer/Square/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?dense_43/MatMul/ReadVariableOp?1dense_43/kernel/Regularizer/Square/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?1dense_44/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpo
dense_41/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_41/Cast?
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_41/MatMul/ReadVariableOp?
dense_41/MatMul/CastCast&dense_41/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@2
dense_41/MatMul/Cast?
dense_41/MatMulMatMuldense_41/Cast:y:0dense_41/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_41/MatMul?
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_41/BiasAdd/ReadVariableOp?
dense_41/BiasAdd/CastCast'dense_41/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:@2
dense_41/BiasAdd/Cast?
dense_41/BiasAddBiasAdddense_41/MatMul:product:0dense_41/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dense_41/BiasAdds
dense_41/TanhTanhdense_41/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_41/Tanh?
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:@P*
dtype02 
dense_42/MatMul/ReadVariableOp?
dense_42/MatMul/CastCast&dense_42/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:@P2
dense_42/MatMul/Cast?
dense_42/MatMulMatMuldense_41/Tanh:y:0dense_42/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_42/MatMul?
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
dense_42/BiasAdd/ReadVariableOp?
dense_42/BiasAdd/CastCast'dense_42/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_42/BiasAdd/Cast?
dense_42/BiasAddBiasAdddense_42/MatMul:product:0dense_42/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_42/BiasAdds
dense_42/TanhTanhdense_42/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_42/Tanh?
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype02 
dense_43/MatMul/ReadVariableOp?
dense_43/MatMul/CastCast&dense_43/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
dense_43/MatMul/Cast?
dense_43/MatMulMatMuldense_42/Tanh:y:0dense_43/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_43/MatMul?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02!
dense_43/BiasAdd/ReadVariableOp?
dense_43/BiasAdd/CastCast'dense_43/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_43/BiasAdd/Cast?
dense_43/BiasAddBiasAdddense_43/MatMul:product:0dense_43/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_43/BiasAdds
dense_43/TanhTanhdense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_43/Tanh?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:P *
dtype02 
dense_44/MatMul/ReadVariableOp?
dense_44/MatMul/CastCast&dense_44/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P 2
dense_44/MatMul/Cast?
dense_44/MatMulMatMuldense_43/Tanh:y:0dense_44/MatMul/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_44/MatMul?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAdd/CastCast'dense_44/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
: 2
dense_44/BiasAdd/Cast?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0dense_44/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dense_44/BiasAdds
dense_44/TanhTanhdense_44/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_44/Tanh?
outputlayer/CastCastdense_44/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:????????? 2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	 ?*
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
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*
_output_shapes

:@*
dtype023
1dense_41/kernel/Regularizer/Square/ReadVariableOp?
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2$
"dense_41/kernel/Regularizer/Square?
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_41/kernel/Regularizer/Const?
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/Sum?
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_41/kernel/Regularizer/mul/x?
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_41/kernel/Regularizer/mul?
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:@P*
dtype023
1dense_42/kernel/Regularizer/Square/ReadVariableOp?
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@P2$
"dense_42/kernel/Regularizer/Square?
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_42/kernel/Regularizer/Const?
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/Sum?
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_42/kernel/Regularizer/mul/x?
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_42/kernel/Regularizer/mul?
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype023
1dense_43/kernel/Regularizer/Square/ReadVariableOp?
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2$
"dense_43/kernel/Regularizer/Square?
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_43/kernel/Regularizer/Const?
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/Sum?
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_43/kernel/Regularizer/mul/x?
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_43/kernel/Regularizer/mul?
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:P *
dtype023
1dense_44/kernel/Regularizer/Square/ReadVariableOp?
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P 2$
"dense_44/kernel/Regularizer/Square?
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_44/kernel/Regularizer/Const?
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/Sum?
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52#
!dense_44/kernel/Regularizer/mul/x?
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_44/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	 ?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	 ?2'
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
NoOpNoOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????: : : : : : : : : : 2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
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
input_141
serving_default_input_14:0?????????@
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
!:@2dense_41/kernel
:@2dense_41/bias
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
!:@P2dense_42/kernel
:P2dense_42/bias
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
!:PP2dense_43/kernel
:P2dense_43/bias
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
!:P 2dense_44/kernel
: 2dense_44/bias
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
%:#	 ?2outputlayer/kernel
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
/:-@2cond_1/Adamax/dense_41/kernel/m
):'@2cond_1/Adamax/dense_41/bias/m
/:-@P2cond_1/Adamax/dense_42/kernel/m
):'P2cond_1/Adamax/dense_42/bias/m
/:-PP2cond_1/Adamax/dense_43/kernel/m
):'P2cond_1/Adamax/dense_43/bias/m
/:-P 2cond_1/Adamax/dense_44/kernel/m
):' 2cond_1/Adamax/dense_44/bias/m
3:1	 ?2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
/:-@2cond_1/Adamax/dense_41/kernel/v
):'@2cond_1/Adamax/dense_41/bias/v
/:-@P2cond_1/Adamax/dense_42/kernel/v
):'P2cond_1/Adamax/dense_42/bias/v
/:-PP2cond_1/Adamax/dense_43/kernel/v
):'P2cond_1/Adamax/dense_43/bias/v
/:-P 2cond_1/Adamax/dense_44/kernel/v
):' 2cond_1/Adamax/dense_44/bias/v
3:1	 ?2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
E__inference_model_13_layer_call_and_return_conditional_losses_1191936
E__inference_model_13_layer_call_and_return_conditional_losses_1192015
E__inference_model_13_layer_call_and_return_conditional_losses_1191733
E__inference_model_13_layer_call_and_return_conditional_losses_1191794?
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
"__inference__wrapped_model_1191300input_14"?
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
*__inference_model_13_layer_call_fn_1191486
*__inference_model_13_layer_call_fn_1192040
*__inference_model_13_layer_call_fn_1192065
*__inference_model_13_layer_call_fn_1191672?
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
E__inference_dense_41_layer_call_and_return_conditional_losses_1192090?
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
*__inference_dense_41_layer_call_fn_1192099?
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
E__inference_dense_42_layer_call_and_return_conditional_losses_1192124?
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
*__inference_dense_42_layer_call_fn_1192133?
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
E__inference_dense_43_layer_call_and_return_conditional_losses_1192158?
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
*__inference_dense_43_layer_call_fn_1192167?
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
E__inference_dense_44_layer_call_and_return_conditional_losses_1192192?
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
*__inference_dense_44_layer_call_fn_1192201?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_1192224?
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
-__inference_outputlayer_layer_call_fn_1192233?
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
__inference_loss_fn_0_1192244?
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
__inference_loss_fn_1_1192255?
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
__inference_loss_fn_2_1192266?
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
__inference_loss_fn_3_1192277?
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
__inference_loss_fn_4_1192288?
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
%__inference_signature_wrapper_1191857input_14"?
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
"__inference__wrapped_model_1191300{
 %&1?.
'?$
"?
input_14?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
E__inference_dense_41_layer_call_and_return_conditional_losses_1192090\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????@
? }
*__inference_dense_41_layer_call_fn_1192099O/?,
%?"
 ?
inputs?????????
? "??????????@?
E__inference_dense_42_layer_call_and_return_conditional_losses_1192124\/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????P
? }
*__inference_dense_42_layer_call_fn_1192133O/?,
%?"
 ?
inputs?????????@
? "??????????P?
E__inference_dense_43_layer_call_and_return_conditional_losses_1192158\/?,
%?"
 ?
inputs?????????P
? "%?"
?
0?????????P
? }
*__inference_dense_43_layer_call_fn_1192167O/?,
%?"
 ?
inputs?????????P
? "??????????P?
E__inference_dense_44_layer_call_and_return_conditional_losses_1192192\ /?,
%?"
 ?
inputs?????????P
? "%?"
?
0????????? 
? }
*__inference_dense_44_layer_call_fn_1192201O /?,
%?"
 ?
inputs?????????P
? "?????????? <
__inference_loss_fn_0_1192244?

? 
? "? <
__inference_loss_fn_1_1192255?

? 
? "? <
__inference_loss_fn_2_1192266?

? 
? "? <
__inference_loss_fn_3_1192277?

? 
? "? <
__inference_loss_fn_4_1192288%?

? 
? "? ?
E__inference_model_13_layer_call_and_return_conditional_losses_1191733o
 %&9?6
/?,
"?
input_14?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_13_layer_call_and_return_conditional_losses_1191794o
 %&9?6
/?,
"?
input_14?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_13_layer_call_and_return_conditional_losses_1191936m
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
E__inference_model_13_layer_call_and_return_conditional_losses_1192015m
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
*__inference_model_13_layer_call_fn_1191486b
 %&9?6
/?,
"?
input_14?????????
p 

 
? "????????????
*__inference_model_13_layer_call_fn_1191672b
 %&9?6
/?,
"?
input_14?????????
p

 
? "????????????
*__inference_model_13_layer_call_fn_1192040`
 %&7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_13_layer_call_fn_1192065`
 %&7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_1192224]%&/?,
%?"
 ?
inputs????????? 
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_1192233P%&/?,
%?"
 ?
inputs????????? 
? "????????????
%__inference_signature_wrapper_1191857?
 %&=?:
? 
3?0
.
input_14"?
input_14?????????":?7
5
outputlayer&?#
outputlayer??????????