??
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
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
|
dense_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*!
shared_namedense_113/kernel
u
$dense_113/kernel/Read/ReadVariableOpReadVariableOpdense_113/kernel*
_output_shapes

:P*
dtype0
t
dense_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_113/bias
m
"dense_113/bias/Read/ReadVariableOpReadVariableOpdense_113/bias*
_output_shapes
:P*
dtype0
|
dense_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*!
shared_namedense_114/kernel
u
$dense_114/kernel/Read/ReadVariableOpReadVariableOpdense_114/kernel*
_output_shapes

:PP*
dtype0
t
dense_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*
shared_namedense_114/bias
m
"dense_114/bias/Read/ReadVariableOpReadVariableOpdense_114/bias*
_output_shapes
:P*
dtype0
?
outputlayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	P?*#
shared_nameoutputlayer/kernel
z
&outputlayer/kernel/Read/ReadVariableOpReadVariableOpoutputlayer/kernel*
_output_shapes
:	P?*
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
 cond_1/Adamax/dense_113/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*1
shared_name" cond_1/Adamax/dense_113/kernel/m
?
4cond_1/Adamax/dense_113/kernel/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_113/kernel/m*
_output_shapes

:P*
dtype0
?
cond_1/Adamax/dense_113/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*/
shared_name cond_1/Adamax/dense_113/bias/m
?
2cond_1/Adamax/dense_113/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_113/bias/m*
_output_shapes
:P*
dtype0
?
 cond_1/Adamax/dense_114/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*1
shared_name" cond_1/Adamax/dense_114/kernel/m
?
4cond_1/Adamax/dense_114/kernel/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_114/kernel/m*
_output_shapes

:PP*
dtype0
?
cond_1/Adamax/dense_114/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*/
shared_name cond_1/Adamax/dense_114/bias/m
?
2cond_1/Adamax/dense_114/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_114/bias/m*
_output_shapes
:P*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	P?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/m
?
6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/m*
_output_shapes
:	P?*
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
 cond_1/Adamax/dense_113/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*1
shared_name" cond_1/Adamax/dense_113/kernel/v
?
4cond_1/Adamax/dense_113/kernel/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_113/kernel/v*
_output_shapes

:P*
dtype0
?
cond_1/Adamax/dense_113/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*/
shared_name cond_1/Adamax/dense_113/bias/v
?
2cond_1/Adamax/dense_113/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_113/bias/v*
_output_shapes
:P*
dtype0
?
 cond_1/Adamax/dense_114/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*1
shared_name" cond_1/Adamax/dense_114/kernel/v
?
4cond_1/Adamax/dense_114/kernel/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_114/kernel/v*
_output_shapes

:PP*
dtype0
?
cond_1/Adamax/dense_114/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*/
shared_name cond_1/Adamax/dense_114/bias/v
?
2cond_1/Adamax/dense_114/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_114/bias/v*
_output_shapes
:P*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	P?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/v
?
6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/v*
_output_shapes
:	P?*
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
?*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?*
value?*B?* B?*
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?

loss_scale
base_optimizer
iter

 beta_1

!beta_2
	"decay
#learning_ratemJmKmLmMmNmOvPvQvRvSvTvU
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
?
trainable_variables
regularization_losses

$layers
%metrics
&layer_metrics
	variables
'layer_regularization_losses
(non_trainable_variables
 
\Z
VARIABLE_VALUEdense_113/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_113/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
)non_trainable_variables
trainable_variables
regularization_losses

*layers
+metrics
,layer_metrics
	variables
-layer_regularization_losses
\Z
VARIABLE_VALUEdense_114/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_114/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
.non_trainable_variables
trainable_variables
regularization_losses

/layers
0metrics
1layer_metrics
	variables
2layer_regularization_losses
^\
VARIABLE_VALUEoutputlayer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEoutputlayer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
3non_trainable_variables
trainable_variables
regularization_losses

4layers
5metrics
6layer_metrics
	variables
7layer_regularization_losses
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

0
1
2
3

:0
;1
<2
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
	=total
	>count
?	variables
@	keras_api
D
	Atotal
	Bcount
C
_fn_kwargs
D	variables
E	keras_api
4
	Ftotal
	Gcount
H	variables
I	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

A0
B1

D	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

H	variables
??
VARIABLE_VALUE cond_1/Adamax/dense_113/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_113/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_114/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_114/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_113/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_113/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_114/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_114/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_37Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_37dense_113/kerneldense_113/biasdense_114/kerneldense_114/biasoutputlayer/kerneloutputlayer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2644304
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_113/kernel/Read/ReadVariableOp"dense_113/bias/Read/ReadVariableOp$dense_114/kernel/Read/ReadVariableOp"dense_114/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp4cond_1/Adamax/dense_113/kernel/m/Read/ReadVariableOp2cond_1/Adamax/dense_113/bias/m/Read/ReadVariableOp4cond_1/Adamax/dense_114/kernel/m/Read/ReadVariableOp2cond_1/Adamax/dense_114/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp4cond_1/Adamax/dense_113/kernel/v/Read/ReadVariableOp2cond_1/Adamax/dense_113/bias/v/Read/ReadVariableOp4cond_1/Adamax/dense_114/kernel/v/Read/ReadVariableOp2cond_1/Adamax/dense_114/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!		*
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
 __inference__traced_save_2644685
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_113/kerneldense_113/biasdense_114/kerneldense_114/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2 cond_1/Adamax/dense_113/kernel/mcond_1/Adamax/dense_113/bias/m cond_1/Adamax/dense_114/kernel/mcond_1/Adamax/dense_114/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/m cond_1/Adamax/dense_113/kernel/vcond_1/Adamax/dense_113/bias/v cond_1/Adamax/dense_114/kernel/vcond_1/Adamax/dense_114/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*+
Tin$
"2 *
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
#__inference__traced_restore_2644788??
?
?
__inference_loss_fn_2_2644569P
=outputlayer_kernel_regularizer_square_readvariableop_resource:	P?
identity??4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=outputlayer_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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
?4
?
E__inference_model_36_layer_call_and_return_conditional_losses_2644048

inputs#
dense_113_2643975:P
dense_113_2643977:P#
dense_114_2644000:PP
dense_114_2644002:P&
outputlayer_2644024:	P?"
outputlayer_2644026:	?
identity??!dense_113/StatefulPartitionedCall?2dense_113/kernel/Regularizer/Square/ReadVariableOp?!dense_114/StatefulPartitionedCall?2dense_114/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_113/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_113/Cast?
!dense_113/StatefulPartitionedCallStatefulPartitionedCalldense_113/Cast:y:0dense_113_2643975dense_113_2643977*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_26439742#
!dense_113/StatefulPartitionedCall?
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_2644000dense_114_2644002*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_26439992#
!dense_114/StatefulPartitionedCall?
outputlayer/CastCast*dense_114/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_2644024outputlayer_2644026*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_26440232%
#outputlayer/StatefulPartitionedCall?
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_113_2643975*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mul?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_2644000*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_2644024*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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

Identity?
NoOpNoOp"^dense_113/StatefulPartitionedCall3^dense_113/kernel/Regularizer/Square/ReadVariableOp"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_2644558M
;dense_114_kernel_regularizer_square_readvariableop_resource:PP
identity??2dense_114/kernel/Regularizer/Square/ReadVariableOp?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_114_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/muln
IdentityIdentity$dense_114/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_0_2644547M
;dense_113_kernel_regularizer_square_readvariableop_resource:P
identity??2dense_113/kernel/Regularizer/Square/ReadVariableOp?
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_113_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/muln
IdentityIdentity$dense_113/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^dense_113/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp
?	
?
*__inference_model_36_layer_call_fn_2644419

inputs
unknown:P
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:	P?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_26440482
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
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_2644527

inputs1
matmul_readvariableop_resource:	P?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P?*
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
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_2644788
file_prefix3
!assignvariableop_dense_113_kernel:P/
!assignvariableop_1_dense_113_bias:P5
#assignvariableop_2_dense_114_kernel:PP/
!assignvariableop_3_dense_114_bias:P8
%assignvariableop_4_outputlayer_kernel:	P?2
#assignvariableop_5_outputlayer_bias:	?/
%assignvariableop_6_cond_1_adamax_iter:	 1
'assignvariableop_7_cond_1_adamax_beta_1: 1
'assignvariableop_8_cond_1_adamax_beta_2: 0
&assignvariableop_9_cond_1_adamax_decay: 9
/assignvariableop_10_cond_1_adamax_learning_rate: 0
&assignvariableop_11_current_loss_scale: (
assignvariableop_12_good_steps:	 #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: %
assignvariableop_17_total_2: %
assignvariableop_18_count_2: F
4assignvariableop_19_cond_1_adamax_dense_113_kernel_m:P@
2assignvariableop_20_cond_1_adamax_dense_113_bias_m:PF
4assignvariableop_21_cond_1_adamax_dense_114_kernel_m:PP@
2assignvariableop_22_cond_1_adamax_dense_114_bias_m:PI
6assignvariableop_23_cond_1_adamax_outputlayer_kernel_m:	P?C
4assignvariableop_24_cond_1_adamax_outputlayer_bias_m:	?F
4assignvariableop_25_cond_1_adamax_dense_113_kernel_v:P@
2assignvariableop_26_cond_1_adamax_dense_113_bias_v:PF
4assignvariableop_27_cond_1_adamax_dense_114_kernel_v:PP@
2assignvariableop_28_cond_1_adamax_dense_114_bias_v:PI
6assignvariableop_29_cond_1_adamax_outputlayer_kernel_v:	P?C
4assignvariableop_30_cond_1_adamax_outputlayer_bias_v:	?
identity_32??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::*.
dtypes$
"2 		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_113_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_113_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_114_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_114_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_outputlayer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_outputlayer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_cond_1_adamax_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp'assignvariableop_7_cond_1_adamax_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp'assignvariableop_8_cond_1_adamax_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp&assignvariableop_9_cond_1_adamax_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp/assignvariableop_10_cond_1_adamax_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp&assignvariableop_11_current_loss_scaleIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_good_stepsIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp4assignvariableop_19_cond_1_adamax_dense_113_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_cond_1_adamax_dense_113_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_cond_1_adamax_dense_114_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp2assignvariableop_22_cond_1_adamax_dense_114_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_cond_1_adamax_outputlayer_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_cond_1_adamax_outputlayer_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_cond_1_adamax_dense_113_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_cond_1_adamax_dense_113_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_cond_1_adamax_dense_114_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_cond_1_adamax_dense_114_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp6assignvariableop_29_cond_1_adamax_outputlayer_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp4assignvariableop_30_cond_1_adamax_outputlayer_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_309
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_31f
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_32?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
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
*__inference_model_36_layer_call_fn_2644436

inputs
unknown:P
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:	P?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_26441512
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
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_2644023

inputs1
matmul_readvariableop_resource:	P?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P?*
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
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
F__inference_dense_113_layer_call_and_return_conditional_losses_2643974

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_113/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P2
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
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_113/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?-
?
"__inference__wrapped_model_2643947
input_37C
1model_36_dense_113_matmul_readvariableop_resource:P@
2model_36_dense_113_biasadd_readvariableop_resource:PC
1model_36_dense_114_matmul_readvariableop_resource:PP@
2model_36_dense_114_biasadd_readvariableop_resource:PF
3model_36_outputlayer_matmul_readvariableop_resource:	P?C
4model_36_outputlayer_biasadd_readvariableop_resource:	?
identity??)model_36/dense_113/BiasAdd/ReadVariableOp?(model_36/dense_113/MatMul/ReadVariableOp?)model_36/dense_114/BiasAdd/ReadVariableOp?(model_36/dense_114/MatMul/ReadVariableOp?+model_36/outputlayer/BiasAdd/ReadVariableOp?*model_36/outputlayer/MatMul/ReadVariableOp?
model_36/dense_113/CastCastinput_37*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_36/dense_113/Cast?
(model_36/dense_113/MatMul/ReadVariableOpReadVariableOp1model_36_dense_113_matmul_readvariableop_resource*
_output_shapes

:P*
dtype02*
(model_36/dense_113/MatMul/ReadVariableOp?
model_36/dense_113/MatMul/CastCast0model_36/dense_113/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P2 
model_36/dense_113/MatMul/Cast?
model_36/dense_113/MatMulMatMulmodel_36/dense_113/Cast:y:0"model_36/dense_113/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_36/dense_113/MatMul?
)model_36/dense_113/BiasAdd/ReadVariableOpReadVariableOp2model_36_dense_113_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02+
)model_36/dense_113/BiasAdd/ReadVariableOp?
model_36/dense_113/BiasAdd/CastCast1model_36/dense_113/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2!
model_36/dense_113/BiasAdd/Cast?
model_36/dense_113/BiasAddBiasAdd#model_36/dense_113/MatMul:product:0#model_36/dense_113/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_36/dense_113/BiasAdd?
model_36/dense_113/TanhTanh#model_36/dense_113/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
model_36/dense_113/Tanh?
(model_36/dense_114/MatMul/ReadVariableOpReadVariableOp1model_36_dense_114_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype02*
(model_36/dense_114/MatMul/ReadVariableOp?
model_36/dense_114/MatMul/CastCast0model_36/dense_114/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2 
model_36/dense_114/MatMul/Cast?
model_36/dense_114/MatMulMatMulmodel_36/dense_113/Tanh:y:0"model_36/dense_114/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_36/dense_114/MatMul?
)model_36/dense_114/BiasAdd/ReadVariableOpReadVariableOp2model_36_dense_114_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02+
)model_36/dense_114/BiasAdd/ReadVariableOp?
model_36/dense_114/BiasAdd/CastCast1model_36/dense_114/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2!
model_36/dense_114/BiasAdd/Cast?
model_36/dense_114/BiasAddBiasAdd#model_36/dense_114/MatMul:product:0#model_36/dense_114/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
model_36/dense_114/BiasAdd?
model_36/dense_114/TanhTanh#model_36/dense_114/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
model_36/dense_114/Tanh?
model_36/outputlayer/CastCastmodel_36/dense_114/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
model_36/outputlayer/Cast?
*model_36/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_36_outputlayer_matmul_readvariableop_resource*
_output_shapes
:	P?*
dtype02,
*model_36/outputlayer/MatMul/ReadVariableOp?
model_36/outputlayer/MatMulMatMulmodel_36/outputlayer/Cast:y:02model_36/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_36/outputlayer/MatMul?
+model_36/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_36_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_36/outputlayer/BiasAdd/ReadVariableOp?
model_36/outputlayer/BiasAddBiasAdd%model_36/outputlayer/MatMul:product:03model_36/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_36/outputlayer/BiasAdd?
model_36/outputlayer/LeakyRelu	LeakyRelu%model_36/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_36/outputlayer/LeakyRelu?
IdentityIdentity,model_36/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp*^model_36/dense_113/BiasAdd/ReadVariableOp)^model_36/dense_113/MatMul/ReadVariableOp*^model_36/dense_114/BiasAdd/ReadVariableOp)^model_36/dense_114/MatMul/ReadVariableOp,^model_36/outputlayer/BiasAdd/ReadVariableOp+^model_36/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2V
)model_36/dense_113/BiasAdd/ReadVariableOp)model_36/dense_113/BiasAdd/ReadVariableOp2T
(model_36/dense_113/MatMul/ReadVariableOp(model_36/dense_113/MatMul/ReadVariableOp2V
)model_36/dense_114/BiasAdd/ReadVariableOp)model_36/dense_114/BiasAdd/ReadVariableOp2T
(model_36/dense_114/MatMul/ReadVariableOp(model_36/dense_114/MatMul/ReadVariableOp2Z
+model_36/outputlayer/BiasAdd/ReadVariableOp+model_36/outputlayer/BiasAdd/ReadVariableOp2X
*model_36/outputlayer/MatMul/ReadVariableOp*model_36/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_37
?4
?
E__inference_model_36_layer_call_and_return_conditional_losses_2644151

inputs#
dense_113_2644116:P
dense_113_2644118:P#
dense_114_2644121:PP
dense_114_2644123:P&
outputlayer_2644127:	P?"
outputlayer_2644129:	?
identity??!dense_113/StatefulPartitionedCall?2dense_113/kernel/Regularizer/Square/ReadVariableOp?!dense_114/StatefulPartitionedCall?2dense_114/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_113/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_113/Cast?
!dense_113/StatefulPartitionedCallStatefulPartitionedCalldense_113/Cast:y:0dense_113_2644116dense_113_2644118*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_26439742#
!dense_113/StatefulPartitionedCall?
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_2644121dense_114_2644123*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_26439992#
!dense_114/StatefulPartitionedCall?
outputlayer/CastCast*dense_114/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_2644127outputlayer_2644129*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_26440232%
#outputlayer/StatefulPartitionedCall?
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_113_2644116*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mul?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_2644121*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_2644127*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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

Identity?
NoOpNoOp"^dense_113/StatefulPartitionedCall3^dense_113/kernel/Regularizer/Square/ReadVariableOp"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?E
?
E__inference_model_36_layer_call_and_return_conditional_losses_2644353

inputs:
(dense_113_matmul_readvariableop_resource:P7
)dense_113_biasadd_readvariableop_resource:P:
(dense_114_matmul_readvariableop_resource:PP7
)dense_114_biasadd_readvariableop_resource:P=
*outputlayer_matmul_readvariableop_resource:	P?:
+outputlayer_biasadd_readvariableop_resource:	?
identity?? dense_113/BiasAdd/ReadVariableOp?dense_113/MatMul/ReadVariableOp?2dense_113/kernel/Regularizer/Square/ReadVariableOp? dense_114/BiasAdd/ReadVariableOp?dense_114/MatMul/ReadVariableOp?2dense_114/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_113/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_113/Cast?
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:P*
dtype02!
dense_113/MatMul/ReadVariableOp?
dense_113/MatMul/CastCast'dense_113/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P2
dense_113/MatMul/Cast?
dense_113/MatMulMatMuldense_113/Cast:y:0dense_113/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_113/MatMul?
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02"
 dense_113/BiasAdd/ReadVariableOp?
dense_113/BiasAdd/CastCast(dense_113/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_113/BiasAdd/Cast?
dense_113/BiasAddBiasAdddense_113/MatMul:product:0dense_113/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_113/BiasAddv
dense_113/TanhTanhdense_113/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_113/Tanh?
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype02!
dense_114/MatMul/ReadVariableOp?
dense_114/MatMul/CastCast'dense_114/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
dense_114/MatMul/Cast?
dense_114/MatMulMatMuldense_113/Tanh:y:0dense_114/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_114/MatMul?
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02"
 dense_114/BiasAdd/ReadVariableOp?
dense_114/BiasAdd/CastCast(dense_114/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_114/BiasAdd/Cast?
dense_114/BiasAddBiasAdddense_114/MatMul:product:0dense_114/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_114/BiasAddv
dense_114/TanhTanhdense_114/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_114/Tanh?
outputlayer/CastCastdense_114/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	P?*
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
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mul?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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

Identity?
NoOpNoOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp3^dense_113/kernel/Regularizer/Square/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_dense_114_layer_call_and_return_conditional_losses_2644495

inputs0
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_114/kernel/Regularizer/Square/ReadVariableOp?
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
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
F__inference_dense_113_layer_call_and_return_conditional_losses_2644461

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_113/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P2
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
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_113/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_model_36_layer_call_fn_2644063
input_37
unknown:P
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:	P?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_26440482
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
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_37
?E
?
E__inference_model_36_layer_call_and_return_conditional_losses_2644402

inputs:
(dense_113_matmul_readvariableop_resource:P7
)dense_113_biasadd_readvariableop_resource:P:
(dense_114_matmul_readvariableop_resource:PP7
)dense_114_biasadd_readvariableop_resource:P=
*outputlayer_matmul_readvariableop_resource:	P?:
+outputlayer_biasadd_readvariableop_resource:	?
identity?? dense_113/BiasAdd/ReadVariableOp?dense_113/MatMul/ReadVariableOp?2dense_113/kernel/Regularizer/Square/ReadVariableOp? dense_114/BiasAdd/ReadVariableOp?dense_114/MatMul/ReadVariableOp?2dense_114/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_113/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_113/Cast?
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:P*
dtype02!
dense_113/MatMul/ReadVariableOp?
dense_113/MatMul/CastCast'dense_113/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:P2
dense_113/MatMul/Cast?
dense_113/MatMulMatMuldense_113/Cast:y:0dense_113/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_113/MatMul?
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02"
 dense_113/BiasAdd/ReadVariableOp?
dense_113/BiasAdd/CastCast(dense_113/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_113/BiasAdd/Cast?
dense_113/BiasAddBiasAdddense_113/MatMul:product:0dense_113/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_113/BiasAddv
dense_113/TanhTanhdense_113/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_113/Tanh?
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype02!
dense_114/MatMul/ReadVariableOp?
dense_114/MatMul/CastCast'dense_114/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:PP2
dense_114/MatMul/Cast?
dense_114/MatMulMatMuldense_113/Tanh:y:0dense_114/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_114/MatMul?
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02"
 dense_114/BiasAdd/ReadVariableOp?
dense_114/BiasAdd/CastCast(dense_114/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:P2
dense_114/BiasAdd/Cast?
dense_114/BiasAddBiasAdddense_114/MatMul:product:0dense_114/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????P2
dense_114/BiasAddv
dense_114/TanhTanhdense_114/BiasAdd:output:0*
T0*'
_output_shapes
:?????????P2
dense_114/Tanh?
outputlayer/CastCastdense_114/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	P?*
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
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mul?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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

Identity?
NoOpNoOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp3^dense_113/kernel/Regularizer/Square/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?
 __inference__traced_save_2644685
file_prefix/
+savev2_dense_113_kernel_read_readvariableop-
)savev2_dense_113_bias_read_readvariableop/
+savev2_dense_114_kernel_read_readvariableop-
)savev2_dense_114_bias_read_readvariableop1
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
"savev2_count_2_read_readvariableop?
;savev2_cond_1_adamax_dense_113_kernel_m_read_readvariableop=
9savev2_cond_1_adamax_dense_113_bias_m_read_readvariableop?
;savev2_cond_1_adamax_dense_114_kernel_m_read_readvariableop=
9savev2_cond_1_adamax_dense_114_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop?
;savev2_cond_1_adamax_dense_113_kernel_v_read_readvariableop=
9savev2_cond_1_adamax_dense_113_bias_v_read_readvariableop?
;savev2_cond_1_adamax_dense_114_kernel_v_read_readvariableop=
9savev2_cond_1_adamax_dense_114_bias_v_read_readvariableopA
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBoptimizer/loss_scale/current_loss_scale/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/loss_scale/good_steps/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_113_kernel_read_readvariableop)savev2_dense_113_bias_read_readvariableop+savev2_dense_114_kernel_read_readvariableop)savev2_dense_114_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_cond_1_adamax_dense_113_kernel_m_read_readvariableop9savev2_cond_1_adamax_dense_113_bias_m_read_readvariableop;savev2_cond_1_adamax_dense_114_kernel_m_read_readvariableop9savev2_cond_1_adamax_dense_114_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop;savev2_cond_1_adamax_dense_113_kernel_v_read_readvariableop9savev2_cond_1_adamax_dense_113_bias_v_read_readvariableop;savev2_cond_1_adamax_dense_114_kernel_v_read_readvariableop9savev2_cond_1_adamax_dense_114_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 		2
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
?: :P:P:PP:P:	P?:?: : : : : : : : : : : : : :P:P:PP:P:	P?:?:P:P:PP:P:	P?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P: 

_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:%!

_output_shapes
:	P?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :	
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
: :$ 

_output_shapes

:P: 

_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:%!

_output_shapes
:	P?:!

_output_shapes	
:?:$ 

_output_shapes

:P: 

_output_shapes
:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:%!

_output_shapes
:	P?:!

_output_shapes	
:?: 

_output_shapes
: 
?
?
+__inference_dense_114_layer_call_fn_2644504

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
GPU2*0J 8? *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_26439992
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
?
?
F__inference_dense_114_layer_call_and_return_conditional_losses_2643999

inputs0
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_114/kernel/Regularizer/Square/ReadVariableOp?
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
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????P2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?4
?
E__inference_model_36_layer_call_and_return_conditional_losses_2644222
input_37#
dense_113_2644187:P
dense_113_2644189:P#
dense_114_2644192:PP
dense_114_2644194:P&
outputlayer_2644198:	P?"
outputlayer_2644200:	?
identity??!dense_113/StatefulPartitionedCall?2dense_113/kernel/Regularizer/Square/ReadVariableOp?!dense_114/StatefulPartitionedCall?2dense_114/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOps
dense_113/CastCastinput_37*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_113/Cast?
!dense_113/StatefulPartitionedCallStatefulPartitionedCalldense_113/Cast:y:0dense_113_2644187dense_113_2644189*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_26439742#
!dense_113/StatefulPartitionedCall?
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_2644192dense_114_2644194*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_26439992#
!dense_114/StatefulPartitionedCall?
outputlayer/CastCast*dense_114/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_2644198outputlayer_2644200*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_26440232%
#outputlayer/StatefulPartitionedCall?
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_113_2644187*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mul?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_2644192*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_2644198*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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

Identity?
NoOpNoOp"^dense_113/StatefulPartitionedCall3^dense_113/kernel/Regularizer/Square/ReadVariableOp"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_37
?	
?
%__inference_signature_wrapper_2644304
input_37
unknown:P
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:	P?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_26439472
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
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_37
?	
?
*__inference_model_36_layer_call_fn_2644183
input_37
unknown:P
	unknown_0:P
	unknown_1:PP
	unknown_2:P
	unknown_3:	P?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_37unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_36_layer_call_and_return_conditional_losses_26441512
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
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_37
?
?
+__inference_dense_113_layer_call_fn_2644470

inputs
unknown:P
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
GPU2*0J 8? *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_26439742
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_outputlayer_layer_call_fn_2644536

inputs
unknown:	P?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_26440232
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
:?????????P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?4
?
E__inference_model_36_layer_call_and_return_conditional_losses_2644261
input_37#
dense_113_2644226:P
dense_113_2644228:P#
dense_114_2644231:PP
dense_114_2644233:P&
outputlayer_2644237:	P?"
outputlayer_2644239:	?
identity??!dense_113/StatefulPartitionedCall?2dense_113/kernel/Regularizer/Square/ReadVariableOp?!dense_114/StatefulPartitionedCall?2dense_114/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOps
dense_113/CastCastinput_37*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_113/Cast?
!dense_113/StatefulPartitionedCallStatefulPartitionedCalldense_113/Cast:y:0dense_113_2644226dense_113_2644228*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_113_layer_call_and_return_conditional_losses_26439742#
!dense_113/StatefulPartitionedCall?
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_2644231dense_114_2644233*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_114_layer_call_and_return_conditional_losses_26439992#
!dense_114/StatefulPartitionedCall?
outputlayer/CastCast*dense_114/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????P2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_2644237outputlayer_2644239*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_26440232%
#outputlayer/StatefulPartitionedCall?
2dense_113/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_113_2644226*
_output_shapes

:P*
dtype024
2dense_113/kernel/Regularizer/Square/ReadVariableOp?
#dense_113/kernel/Regularizer/SquareSquare:dense_113/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2%
#dense_113/kernel/Regularizer/Square?
"dense_113/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_113/kernel/Regularizer/Const?
 dense_113/kernel/Regularizer/SumSum'dense_113/kernel/Regularizer/Square:y:0+dense_113/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/Sum?
"dense_113/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_113/kernel/Regularizer/mul/x?
 dense_113/kernel/Regularizer/mulMul+dense_113/kernel/Regularizer/mul/x:output:0)dense_113/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_113/kernel/Regularizer/mul?
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_2644231*
_output_shapes

:PP*
dtype024
2dense_114/kernel/Regularizer/Square/ReadVariableOp?
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:PP2%
#dense_114/kernel/Regularizer/Square?
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_114/kernel/Regularizer/Const?
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/Sum?
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_114/kernel/Regularizer/mul/x?
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_114/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_2644237*
_output_shapes
:	P?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P?2'
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

Identity?
NoOpNoOp"^dense_113/StatefulPartitionedCall3^dense_113/kernel/Regularizer/Square/ReadVariableOp"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2h
2dense_113/kernel/Regularizer/Square/ReadVariableOp2dense_113/kernel/Regularizer/Square/ReadVariableOp2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_37"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_371
serving_default_input_37:0?????????@
outputlayer1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:?Z
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
*V&call_and_return_all_conditional_losses
W_default_save_signature
X__call__"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"
_tf_keras_layer
?

loss_scale
base_optimizer
iter

 beta_1

!beta_2
	"decay
#learning_ratemJmKmLmMmNmOvPvQvRvSvTvU"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
5
_0
`1
a2"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
trainable_variables
regularization_losses

$layers
%metrics
&layer_metrics
	variables
'layer_regularization_losses
(non_trainable_variables
X__call__
W_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
bserving_default"
signature_map
": P2dense_113/kernel
:P2dense_113/bias
.
0
1"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
)non_trainable_variables
trainable_variables
regularization_losses

*layers
+metrics
,layer_metrics
	variables
-layer_regularization_losses
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
": PP2dense_114/kernel
:P2dense_114/bias
.
0
1"
trackable_list_wrapper
'
`0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
.non_trainable_variables
trainable_variables
regularization_losses

/layers
0metrics
1layer_metrics
	variables
2layer_regularization_losses
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
%:#	P?2outputlayer/kernel
:?2outputlayer/bias
.
0
1"
trackable_list_wrapper
'
a0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
3non_trainable_variables
trainable_variables
regularization_losses

4layers
5metrics
6layer_metrics
	variables
7layer_regularization_losses
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
F
8current_loss_scale
9
good_steps"
_generic_user_object
"
_generic_user_object
:	 (2cond_1/Adamax/iter
: (2cond_1/Adamax/beta_1
: (2cond_1/Adamax/beta_2
: (2cond_1/Adamax/decay
%:# (2cond_1/Adamax/learning_rate
<
0
1
2
3"
trackable_list_wrapper
5
:0
;1
<2"
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
_0"
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
`0"
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
a0"
trackable_list_wrapper
: 2current_loss_scale
:	 2
good_steps
N
	=total
	>count
?	variables
@	keras_api"
_tf_keras_metric
^
	Atotal
	Bcount
C
_fn_kwargs
D	variables
E	keras_api"
_tf_keras_metric
N
	Ftotal
	Gcount
H	variables
I	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
=0
>1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
-
D	variables"
_generic_user_object
:  (2total
:  (2count
.
F0
G1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
0:.P2 cond_1/Adamax/dense_113/kernel/m
*:(P2cond_1/Adamax/dense_113/bias/m
0:.PP2 cond_1/Adamax/dense_114/kernel/m
*:(P2cond_1/Adamax/dense_114/bias/m
3:1	P?2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
0:.P2 cond_1/Adamax/dense_113/kernel/v
*:(P2cond_1/Adamax/dense_113/bias/v
0:.PP2 cond_1/Adamax/dense_114/kernel/v
*:(P2cond_1/Adamax/dense_114/bias/v
3:1	P?2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
E__inference_model_36_layer_call_and_return_conditional_losses_2644353
E__inference_model_36_layer_call_and_return_conditional_losses_2644402
E__inference_model_36_layer_call_and_return_conditional_losses_2644222
E__inference_model_36_layer_call_and_return_conditional_losses_2644261?
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
"__inference__wrapped_model_2643947input_37"?
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
*__inference_model_36_layer_call_fn_2644063
*__inference_model_36_layer_call_fn_2644419
*__inference_model_36_layer_call_fn_2644436
*__inference_model_36_layer_call_fn_2644183?
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
F__inference_dense_113_layer_call_and_return_conditional_losses_2644461?
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
+__inference_dense_113_layer_call_fn_2644470?
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
F__inference_dense_114_layer_call_and_return_conditional_losses_2644495?
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
+__inference_dense_114_layer_call_fn_2644504?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_2644527?
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
-__inference_outputlayer_layer_call_fn_2644536?
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
__inference_loss_fn_0_2644547?
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
__inference_loss_fn_1_2644558?
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
__inference_loss_fn_2_2644569?
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
%__inference_signature_wrapper_2644304input_37"?
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
"__inference__wrapped_model_2643947w1?.
'?$
"?
input_37?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
F__inference_dense_113_layer_call_and_return_conditional_losses_2644461\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????P
? ~
+__inference_dense_113_layer_call_fn_2644470O/?,
%?"
 ?
inputs?????????
? "??????????P?
F__inference_dense_114_layer_call_and_return_conditional_losses_2644495\/?,
%?"
 ?
inputs?????????P
? "%?"
?
0?????????P
? ~
+__inference_dense_114_layer_call_fn_2644504O/?,
%?"
 ?
inputs?????????P
? "??????????P<
__inference_loss_fn_0_2644547?

? 
? "? <
__inference_loss_fn_1_2644558?

? 
? "? <
__inference_loss_fn_2_2644569?

? 
? "? ?
E__inference_model_36_layer_call_and_return_conditional_losses_2644222k9?6
/?,
"?
input_37?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_36_layer_call_and_return_conditional_losses_2644261k9?6
/?,
"?
input_37?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_36_layer_call_and_return_conditional_losses_2644353i7?4
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
E__inference_model_36_layer_call_and_return_conditional_losses_2644402i7?4
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
*__inference_model_36_layer_call_fn_2644063^9?6
/?,
"?
input_37?????????
p 

 
? "????????????
*__inference_model_36_layer_call_fn_2644183^9?6
/?,
"?
input_37?????????
p

 
? "????????????
*__inference_model_36_layer_call_fn_2644419\7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_36_layer_call_fn_2644436\7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_2644527]/?,
%?"
 ?
inputs?????????P
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_2644536P/?,
%?"
 ?
inputs?????????P
? "????????????
%__inference_signature_wrapper_2644304?=?:
? 
3?0
.
input_37"?
input_37?????????":?7
5
outputlayer&?#
outputlayer??????????