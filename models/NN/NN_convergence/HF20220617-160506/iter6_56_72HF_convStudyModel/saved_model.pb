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
dense_316/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*!
shared_namedense_316/kernel
u
$dense_316/kernel/Read/ReadVariableOpReadVariableOpdense_316/kernel*
_output_shapes

:8*
dtype0
t
dense_316/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*
shared_namedense_316/bias
m
"dense_316/bias/Read/ReadVariableOpReadVariableOpdense_316/bias*
_output_shapes
:8*
dtype0
|
dense_317/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8H*!
shared_namedense_317/kernel
u
$dense_317/kernel/Read/ReadVariableOpReadVariableOpdense_317/kernel*
_output_shapes

:8H*
dtype0
t
dense_317/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_namedense_317/bias
m
"dense_317/bias/Read/ReadVariableOpReadVariableOpdense_317/bias*
_output_shapes
:H*
dtype0
?
outputlayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	H?*#
shared_nameoutputlayer/kernel
z
&outputlayer/kernel/Read/ReadVariableOpReadVariableOpoutputlayer/kernel*
_output_shapes
:	H?*
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
 cond_1/Adamax/dense_316/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*1
shared_name" cond_1/Adamax/dense_316/kernel/m
?
4cond_1/Adamax/dense_316/kernel/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_316/kernel/m*
_output_shapes

:8*
dtype0
?
cond_1/Adamax/dense_316/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*/
shared_name cond_1/Adamax/dense_316/bias/m
?
2cond_1/Adamax/dense_316/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_316/bias/m*
_output_shapes
:8*
dtype0
?
 cond_1/Adamax/dense_317/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8H*1
shared_name" cond_1/Adamax/dense_317/kernel/m
?
4cond_1/Adamax/dense_317/kernel/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_317/kernel/m*
_output_shapes

:8H*
dtype0
?
cond_1/Adamax/dense_317/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*/
shared_name cond_1/Adamax/dense_317/bias/m
?
2cond_1/Adamax/dense_317/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_317/bias/m*
_output_shapes
:H*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	H?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/m
?
6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/m*
_output_shapes
:	H?*
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
 cond_1/Adamax/dense_316/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*1
shared_name" cond_1/Adamax/dense_316/kernel/v
?
4cond_1/Adamax/dense_316/kernel/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_316/kernel/v*
_output_shapes

:8*
dtype0
?
cond_1/Adamax/dense_316/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*/
shared_name cond_1/Adamax/dense_316/bias/v
?
2cond_1/Adamax/dense_316/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_316/bias/v*
_output_shapes
:8*
dtype0
?
 cond_1/Adamax/dense_317/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8H*1
shared_name" cond_1/Adamax/dense_317/kernel/v
?
4cond_1/Adamax/dense_317/kernel/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_317/kernel/v*
_output_shapes

:8H*
dtype0
?
cond_1/Adamax/dense_317/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*/
shared_name cond_1/Adamax/dense_317/bias/v
?
2cond_1/Adamax/dense_317/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_317/bias/v*
_output_shapes
:H*
dtype0
?
"cond_1/Adamax/outputlayer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	H?*3
shared_name$"cond_1/Adamax/outputlayer/kernel/v
?
6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOpReadVariableOp"cond_1/Adamax/outputlayer/kernel/v*
_output_shapes
:	H?*
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
regularization_losses
trainable_variables
	variables
		keras_api


signatures
 
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
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
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
?
$metrics
%non_trainable_variables
&layer_metrics
regularization_losses
trainable_variables
'layer_regularization_losses
	variables

(layers
 
\Z
VARIABLE_VALUEdense_316/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_316/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
)metrics
*non_trainable_variables
+layer_metrics
regularization_losses
trainable_variables
,layer_regularization_losses
	variables

-layers
\Z
VARIABLE_VALUEdense_317/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_317/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
.metrics
/non_trainable_variables
0layer_metrics
regularization_losses
trainable_variables
1layer_regularization_losses
	variables

2layers
^\
VARIABLE_VALUEoutputlayer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEoutputlayer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
3metrics
4non_trainable_variables
5layer_metrics
regularization_losses
trainable_variables
6layer_regularization_losses
	variables

7layers
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

:0
;1
<2
 
 
 

0
1
2
3
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
VARIABLE_VALUE cond_1/Adamax/dense_316/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_316/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_317/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_317/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_316/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_316/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_317/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_317/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_144Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_144dense_316/kerneldense_316/biasdense_317/kerneldense_317/biasoutputlayer/kerneloutputlayer/bias*
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
%__inference_signature_wrapper_3029890
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_316/kernel/Read/ReadVariableOp"dense_316/bias/Read/ReadVariableOp$dense_317/kernel/Read/ReadVariableOp"dense_317/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp4cond_1/Adamax/dense_316/kernel/m/Read/ReadVariableOp2cond_1/Adamax/dense_316/bias/m/Read/ReadVariableOp4cond_1/Adamax/dense_317/kernel/m/Read/ReadVariableOp2cond_1/Adamax/dense_317/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp4cond_1/Adamax/dense_316/kernel/v/Read/ReadVariableOp2cond_1/Adamax/dense_316/bias/v/Read/ReadVariableOp4cond_1/Adamax/dense_317/kernel/v/Read/ReadVariableOp2cond_1/Adamax/dense_317/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*,
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
 __inference__traced_save_3030271
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_316/kerneldense_316/biasdense_317/kerneldense_317/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2 cond_1/Adamax/dense_316/kernel/mcond_1/Adamax/dense_316/bias/m cond_1/Adamax/dense_317/kernel/mcond_1/Adamax/dense_317/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/m cond_1/Adamax/dense_316/kernel/vcond_1/Adamax/dense_316/bias/v cond_1/Adamax/dense_317/kernel/vcond_1/Adamax/dense_317/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*+
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
#__inference__traced_restore_3030374??
?	
?
+__inference_model_142_layer_call_fn_3030022

inputs
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
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
GPU2*0J 8? *O
fJRH
F__inference_model_142_layer_call_and_return_conditional_losses_30297372
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_3029609

inputs1
matmul_readvariableop_resource:	H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	H?*
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
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
:?????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????H
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_3029890
	input_144
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_144unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
"__inference__wrapped_model_30295332
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
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_144
?4
?
F__inference_model_142_layer_call_and_return_conditional_losses_3029808
	input_144#
dense_316_3029773:8
dense_316_3029775:8#
dense_317_3029778:8H
dense_317_3029780:H&
outputlayer_3029784:	H?"
outputlayer_3029786:	?
identity??!dense_316/StatefulPartitionedCall?2dense_316/kernel/Regularizer/Square/ReadVariableOp?!dense_317/StatefulPartitionedCall?2dense_317/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpt
dense_316/CastCast	input_144*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_316/Cast?
!dense_316/StatefulPartitionedCallStatefulPartitionedCalldense_316/Cast:y:0dense_316_3029773dense_316_3029775*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_316_layer_call_and_return_conditional_losses_30295602#
!dense_316/StatefulPartitionedCall?
!dense_317/StatefulPartitionedCallStatefulPartitionedCall*dense_316/StatefulPartitionedCall:output:0dense_317_3029778dense_317_3029780*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_317_layer_call_and_return_conditional_losses_30295852#
!dense_317/StatefulPartitionedCall?
outputlayer/CastCast*dense_317/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_3029784outputlayer_3029786*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_30296092%
#outputlayer/StatefulPartitionedCall?
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_316_3029773*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mul?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_317_3029778*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_3029784*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
NoOpNoOp"^dense_316/StatefulPartitionedCall3^dense_316/kernel/Regularizer/Square/ReadVariableOp"^dense_317/StatefulPartitionedCall3^dense_317/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_316/StatefulPartitionedCall!dense_316/StatefulPartitionedCall2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp2F
!dense_317/StatefulPartitionedCall!dense_317/StatefulPartitionedCall2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_144
?	
?
+__inference_model_142_layer_call_fn_3029769
	input_144
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_144unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU2*0J 8? *O
fJRH
F__inference_model_142_layer_call_and_return_conditional_losses_30297372
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
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_144
?
?
F__inference_dense_317_layer_call_and_return_conditional_losses_3029585

inputs0
matmul_readvariableop_resource:8H-
biasadd_readvariableop_resource:H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_317/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8H*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
Tanh?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_317/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????8: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?
?
F__inference_dense_316_layer_call_and_return_conditional_losses_3029560

inputs0
matmul_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_316/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82
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
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????82

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_316/kernel/Regularizer/Square/ReadVariableOp*"
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
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
F__inference_model_142_layer_call_and_return_conditional_losses_3029634

inputs#
dense_316_3029561:8
dense_316_3029563:8#
dense_317_3029586:8H
dense_317_3029588:H&
outputlayer_3029610:	H?"
outputlayer_3029612:	?
identity??!dense_316/StatefulPartitionedCall?2dense_316/kernel/Regularizer/Square/ReadVariableOp?!dense_317/StatefulPartitionedCall?2dense_317/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_316/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_316/Cast?
!dense_316/StatefulPartitionedCallStatefulPartitionedCalldense_316/Cast:y:0dense_316_3029561dense_316_3029563*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_316_layer_call_and_return_conditional_losses_30295602#
!dense_316/StatefulPartitionedCall?
!dense_317/StatefulPartitionedCallStatefulPartitionedCall*dense_316/StatefulPartitionedCall:output:0dense_317_3029586dense_317_3029588*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_317_layer_call_and_return_conditional_losses_30295852#
!dense_317/StatefulPartitionedCall?
outputlayer/CastCast*dense_317/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_3029610outputlayer_3029612*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_30296092%
#outputlayer/StatefulPartitionedCall?
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_316_3029561*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mul?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_317_3029586*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_3029610*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
NoOpNoOp"^dense_316/StatefulPartitionedCall3^dense_316/kernel/Regularizer/Square/ReadVariableOp"^dense_317/StatefulPartitionedCall3^dense_317/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_316/StatefulPartitionedCall!dense_316/StatefulPartitionedCall2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp2F
!dense_317/StatefulPartitionedCall!dense_317/StatefulPartitionedCall2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_3030144M
;dense_317_kernel_regularizer_square_readvariableop_resource:8H
identity??2dense_317/kernel/Regularizer/Square/ReadVariableOp?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_317_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/muln
IdentityIdentity$dense_317/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^dense_317/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp
?
?
+__inference_dense_316_layer_call_fn_3030056

inputs
unknown:8
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
GPU2*0J 8? *O
fJRH
F__inference_dense_316_layer_call_and_return_conditional_losses_30295602
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_outputlayer_layer_call_fn_3030122

inputs
unknown:	H?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_30296092
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
:?????????H: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????H
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_3030155P
=outputlayer_kernel_regularizer_square_readvariableop_resource:	H?
identity??4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=outputlayer_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
F__inference_dense_316_layer_call_and_return_conditional_losses_3030047

inputs0
matmul_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_316/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82
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
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????82

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_316/kernel/Regularizer/Square/ReadVariableOp*"
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
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
F__inference_model_142_layer_call_and_return_conditional_losses_3029737

inputs#
dense_316_3029702:8
dense_316_3029704:8#
dense_317_3029707:8H
dense_317_3029709:H&
outputlayer_3029713:	H?"
outputlayer_3029715:	?
identity??!dense_316/StatefulPartitionedCall?2dense_316/kernel/Regularizer/Square/ReadVariableOp?!dense_317/StatefulPartitionedCall?2dense_317/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_316/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_316/Cast?
!dense_316/StatefulPartitionedCallStatefulPartitionedCalldense_316/Cast:y:0dense_316_3029702dense_316_3029704*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_316_layer_call_and_return_conditional_losses_30295602#
!dense_316/StatefulPartitionedCall?
!dense_317/StatefulPartitionedCallStatefulPartitionedCall*dense_316/StatefulPartitionedCall:output:0dense_317_3029707dense_317_3029709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_317_layer_call_and_return_conditional_losses_30295852#
!dense_317/StatefulPartitionedCall?
outputlayer/CastCast*dense_317/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_3029713outputlayer_3029715*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_30296092%
#outputlayer/StatefulPartitionedCall?
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_316_3029702*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mul?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_317_3029707*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_3029713*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
NoOpNoOp"^dense_316/StatefulPartitionedCall3^dense_316/kernel/Regularizer/Square/ReadVariableOp"^dense_317/StatefulPartitionedCall3^dense_317/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_316/StatefulPartitionedCall!dense_316/StatefulPartitionedCall2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp2F
!dense_317/StatefulPartitionedCall!dense_317/StatefulPartitionedCall2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_dense_317_layer_call_and_return_conditional_losses_3030081

inputs0
matmul_readvariableop_resource:8H-
biasadd_readvariableop_resource:H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_317/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8H*
dtype02
MatMul/ReadVariableOpy
MatMul/CastCastMatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2
MatMul/Caste
MatMulMatMulinputsMatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:H*
dtype02
BiasAdd/ReadVariableOpx
BiasAdd/CastCastBiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2
BiasAdd/Casts
BiasAddBiasAddMatMul:product:0BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
Tanh?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_317/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????8: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?E
?
F__inference_model_142_layer_call_and_return_conditional_losses_3029988

inputs:
(dense_316_matmul_readvariableop_resource:87
)dense_316_biasadd_readvariableop_resource:8:
(dense_317_matmul_readvariableop_resource:8H7
)dense_317_biasadd_readvariableop_resource:H=
*outputlayer_matmul_readvariableop_resource:	H?:
+outputlayer_biasadd_readvariableop_resource:	?
identity?? dense_316/BiasAdd/ReadVariableOp?dense_316/MatMul/ReadVariableOp?2dense_316/kernel/Regularizer/Square/ReadVariableOp? dense_317/BiasAdd/ReadVariableOp?dense_317/MatMul/ReadVariableOp?2dense_317/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_316/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_316/Cast?
dense_316/MatMul/ReadVariableOpReadVariableOp(dense_316_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02!
dense_316/MatMul/ReadVariableOp?
dense_316/MatMul/CastCast'dense_316/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82
dense_316/MatMul/Cast?
dense_316/MatMulMatMuldense_316/Cast:y:0dense_316/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_316/MatMul?
 dense_316/BiasAdd/ReadVariableOpReadVariableOp)dense_316_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02"
 dense_316/BiasAdd/ReadVariableOp?
dense_316/BiasAdd/CastCast(dense_316/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
dense_316/BiasAdd/Cast?
dense_316/BiasAddBiasAdddense_316/MatMul:product:0dense_316/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_316/BiasAddv
dense_316/TanhTanhdense_316/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
dense_316/Tanh?
dense_317/MatMul/ReadVariableOpReadVariableOp(dense_317_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype02!
dense_317/MatMul/ReadVariableOp?
dense_317/MatMul/CastCast'dense_317/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2
dense_317/MatMul/Cast?
dense_317/MatMulMatMuldense_316/Tanh:y:0dense_317/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_317/MatMul?
 dense_317/BiasAdd/ReadVariableOpReadVariableOp)dense_317_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 dense_317/BiasAdd/ReadVariableOp?
dense_317/BiasAdd/CastCast(dense_317/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2
dense_317/BiasAdd/Cast?
dense_317/BiasAddBiasAdddense_317/MatMul:product:0dense_317/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_317/BiasAddv
dense_317/TanhTanhdense_317/BiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
dense_317/Tanh?
outputlayer/CastCastdense_317/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	H?*
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
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_316_matmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mul?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_317_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
NoOpNoOp!^dense_316/BiasAdd/ReadVariableOp ^dense_316/MatMul/ReadVariableOp3^dense_316/kernel/Regularizer/Square/ReadVariableOp!^dense_317/BiasAdd/ReadVariableOp ^dense_317/MatMul/ReadVariableOp3^dense_317/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_316/BiasAdd/ReadVariableOp dense_316/BiasAdd/ReadVariableOp2B
dense_316/MatMul/ReadVariableOpdense_316/MatMul/ReadVariableOp2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp2D
 dense_317/BiasAdd/ReadVariableOp dense_317/BiasAdd/ReadVariableOp2B
dense_317/MatMul/ReadVariableOpdense_317/MatMul/ReadVariableOp2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_317_layer_call_fn_3030090

inputs
unknown:8H
	unknown_0:H
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_317_layer_call_and_return_conditional_losses_30295852
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????H2

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
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_3030113

inputs1
matmul_readvariableop_resource:	H?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	H?*
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
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
:?????????H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????H
 
_user_specified_nameinputs
?.
?
"__inference__wrapped_model_3029533
	input_144D
2model_142_dense_316_matmul_readvariableop_resource:8A
3model_142_dense_316_biasadd_readvariableop_resource:8D
2model_142_dense_317_matmul_readvariableop_resource:8HA
3model_142_dense_317_biasadd_readvariableop_resource:HG
4model_142_outputlayer_matmul_readvariableop_resource:	H?D
5model_142_outputlayer_biasadd_readvariableop_resource:	?
identity??*model_142/dense_316/BiasAdd/ReadVariableOp?)model_142/dense_316/MatMul/ReadVariableOp?*model_142/dense_317/BiasAdd/ReadVariableOp?)model_142/dense_317/MatMul/ReadVariableOp?,model_142/outputlayer/BiasAdd/ReadVariableOp?+model_142/outputlayer/MatMul/ReadVariableOp?
model_142/dense_316/CastCast	input_144*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_142/dense_316/Cast?
)model_142/dense_316/MatMul/ReadVariableOpReadVariableOp2model_142_dense_316_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02+
)model_142/dense_316/MatMul/ReadVariableOp?
model_142/dense_316/MatMul/CastCast1model_142/dense_316/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82!
model_142/dense_316/MatMul/Cast?
model_142/dense_316/MatMulMatMulmodel_142/dense_316/Cast:y:0#model_142/dense_316/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
model_142/dense_316/MatMul?
*model_142/dense_316/BiasAdd/ReadVariableOpReadVariableOp3model_142_dense_316_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02,
*model_142/dense_316/BiasAdd/ReadVariableOp?
 model_142/dense_316/BiasAdd/CastCast2model_142/dense_316/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82"
 model_142/dense_316/BiasAdd/Cast?
model_142/dense_316/BiasAddBiasAdd$model_142/dense_316/MatMul:product:0$model_142/dense_316/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
model_142/dense_316/BiasAdd?
model_142/dense_316/TanhTanh$model_142/dense_316/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
model_142/dense_316/Tanh?
)model_142/dense_317/MatMul/ReadVariableOpReadVariableOp2model_142_dense_317_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype02+
)model_142/dense_317/MatMul/ReadVariableOp?
model_142/dense_317/MatMul/CastCast1model_142/dense_317/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2!
model_142/dense_317/MatMul/Cast?
model_142/dense_317/MatMulMatMulmodel_142/dense_316/Tanh:y:0#model_142/dense_317/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
model_142/dense_317/MatMul?
*model_142/dense_317/BiasAdd/ReadVariableOpReadVariableOp3model_142_dense_317_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02,
*model_142/dense_317/BiasAdd/ReadVariableOp?
 model_142/dense_317/BiasAdd/CastCast2model_142/dense_317/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2"
 model_142/dense_317/BiasAdd/Cast?
model_142/dense_317/BiasAddBiasAdd$model_142/dense_317/MatMul:product:0$model_142/dense_317/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2
model_142/dense_317/BiasAdd?
model_142/dense_317/TanhTanh$model_142/dense_317/BiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
model_142/dense_317/Tanh?
model_142/outputlayer/CastCastmodel_142/dense_317/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
model_142/outputlayer/Cast?
+model_142/outputlayer/MatMul/ReadVariableOpReadVariableOp4model_142_outputlayer_matmul_readvariableop_resource*
_output_shapes
:	H?*
dtype02-
+model_142/outputlayer/MatMul/ReadVariableOp?
model_142/outputlayer/MatMulMatMulmodel_142/outputlayer/Cast:y:03model_142/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_142/outputlayer/MatMul?
,model_142/outputlayer/BiasAdd/ReadVariableOpReadVariableOp5model_142_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,model_142/outputlayer/BiasAdd/ReadVariableOp?
model_142/outputlayer/BiasAddBiasAdd&model_142/outputlayer/MatMul:product:04model_142/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_142/outputlayer/BiasAdd?
model_142/outputlayer/LeakyRelu	LeakyRelu&model_142/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2!
model_142/outputlayer/LeakyRelu?
IdentityIdentity-model_142/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp+^model_142/dense_316/BiasAdd/ReadVariableOp*^model_142/dense_316/MatMul/ReadVariableOp+^model_142/dense_317/BiasAdd/ReadVariableOp*^model_142/dense_317/MatMul/ReadVariableOp-^model_142/outputlayer/BiasAdd/ReadVariableOp,^model_142/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2X
*model_142/dense_316/BiasAdd/ReadVariableOp*model_142/dense_316/BiasAdd/ReadVariableOp2V
)model_142/dense_316/MatMul/ReadVariableOp)model_142/dense_316/MatMul/ReadVariableOp2X
*model_142/dense_317/BiasAdd/ReadVariableOp*model_142/dense_317/BiasAdd/ReadVariableOp2V
)model_142/dense_317/MatMul/ReadVariableOp)model_142/dense_317/MatMul/ReadVariableOp2\
,model_142/outputlayer/BiasAdd/ReadVariableOp,model_142/outputlayer/BiasAdd/ReadVariableOp2Z
+model_142/outputlayer/MatMul/ReadVariableOp+model_142/outputlayer/MatMul/ReadVariableOp:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_144
?F
?
 __inference__traced_save_3030271
file_prefix/
+savev2_dense_316_kernel_read_readvariableop-
)savev2_dense_316_bias_read_readvariableop/
+savev2_dense_317_kernel_read_readvariableop-
)savev2_dense_317_bias_read_readvariableop1
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
;savev2_cond_1_adamax_dense_316_kernel_m_read_readvariableop=
9savev2_cond_1_adamax_dense_316_bias_m_read_readvariableop?
;savev2_cond_1_adamax_dense_317_kernel_m_read_readvariableop=
9savev2_cond_1_adamax_dense_317_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop?
;savev2_cond_1_adamax_dense_316_kernel_v_read_readvariableop=
9savev2_cond_1_adamax_dense_316_bias_v_read_readvariableop?
;savev2_cond_1_adamax_dense_317_kernel_v_read_readvariableop=
9savev2_cond_1_adamax_dense_317_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_316_kernel_read_readvariableop)savev2_dense_316_bias_read_readvariableop+savev2_dense_317_kernel_read_readvariableop)savev2_dense_317_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_cond_1_adamax_dense_316_kernel_m_read_readvariableop9savev2_cond_1_adamax_dense_316_bias_m_read_readvariableop;savev2_cond_1_adamax_dense_317_kernel_m_read_readvariableop9savev2_cond_1_adamax_dense_317_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop;savev2_cond_1_adamax_dense_316_kernel_v_read_readvariableop9savev2_cond_1_adamax_dense_316_bias_v_read_readvariableop;savev2_cond_1_adamax_dense_317_kernel_v_read_readvariableop9savev2_cond_1_adamax_dense_317_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :8:8:8H:H:	H?:?: : : : : : : : : : : : : :8:8:8H:H:	H?:?:8:8:8H:H:	H?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:8: 

_output_shapes
:8:$ 

_output_shapes

:8H: 

_output_shapes
:H:%!

_output_shapes
:	H?:!
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

:8: 

_output_shapes
:8:$ 

_output_shapes

:8H: 

_output_shapes
:H:%!

_output_shapes
:	H?:!

_output_shapes	
:?:$ 

_output_shapes

:8: 

_output_shapes
:8:$ 

_output_shapes

:8H: 

_output_shapes
:H:%!

_output_shapes
:	H?:!

_output_shapes	
:?: 

_output_shapes
: 
??
?
#__inference__traced_restore_3030374
file_prefix3
!assignvariableop_dense_316_kernel:8/
!assignvariableop_1_dense_316_bias:85
#assignvariableop_2_dense_317_kernel:8H/
!assignvariableop_3_dense_317_bias:H8
%assignvariableop_4_outputlayer_kernel:	H?2
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
4assignvariableop_19_cond_1_adamax_dense_316_kernel_m:8@
2assignvariableop_20_cond_1_adamax_dense_316_bias_m:8F
4assignvariableop_21_cond_1_adamax_dense_317_kernel_m:8H@
2assignvariableop_22_cond_1_adamax_dense_317_bias_m:HI
6assignvariableop_23_cond_1_adamax_outputlayer_kernel_m:	H?C
4assignvariableop_24_cond_1_adamax_outputlayer_bias_m:	?F
4assignvariableop_25_cond_1_adamax_dense_316_kernel_v:8@
2assignvariableop_26_cond_1_adamax_dense_316_bias_v:8F
4assignvariableop_27_cond_1_adamax_dense_317_kernel_v:8H@
2assignvariableop_28_cond_1_adamax_dense_317_bias_v:HI
6assignvariableop_29_cond_1_adamax_outputlayer_kernel_v:	H?C
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_316_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_316_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_317_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_317_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOp4assignvariableop_19_cond_1_adamax_dense_316_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_cond_1_adamax_dense_316_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_cond_1_adamax_dense_317_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp2assignvariableop_22_cond_1_adamax_dense_317_bias_mIdentity_22:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp4assignvariableop_25_cond_1_adamax_dense_316_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_cond_1_adamax_dense_316_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_cond_1_adamax_dense_317_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_cond_1_adamax_dense_317_bias_vIdentity_28:output:0"/device:CPU:0*
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
?E
?
F__inference_model_142_layer_call_and_return_conditional_losses_3029939

inputs:
(dense_316_matmul_readvariableop_resource:87
)dense_316_biasadd_readvariableop_resource:8:
(dense_317_matmul_readvariableop_resource:8H7
)dense_317_biasadd_readvariableop_resource:H=
*outputlayer_matmul_readvariableop_resource:	H?:
+outputlayer_biasadd_readvariableop_resource:	?
identity?? dense_316/BiasAdd/ReadVariableOp?dense_316/MatMul/ReadVariableOp?2dense_316/kernel/Regularizer/Square/ReadVariableOp? dense_317/BiasAdd/ReadVariableOp?dense_317/MatMul/ReadVariableOp?2dense_317/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_316/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_316/Cast?
dense_316/MatMul/ReadVariableOpReadVariableOp(dense_316_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02!
dense_316/MatMul/ReadVariableOp?
dense_316/MatMul/CastCast'dense_316/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82
dense_316/MatMul/Cast?
dense_316/MatMulMatMuldense_316/Cast:y:0dense_316/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_316/MatMul?
 dense_316/BiasAdd/ReadVariableOpReadVariableOp)dense_316_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02"
 dense_316/BiasAdd/ReadVariableOp?
dense_316/BiasAdd/CastCast(dense_316/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
dense_316/BiasAdd/Cast?
dense_316/BiasAddBiasAdddense_316/MatMul:product:0dense_316/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_316/BiasAddv
dense_316/TanhTanhdense_316/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
dense_316/Tanh?
dense_317/MatMul/ReadVariableOpReadVariableOp(dense_317_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype02!
dense_317/MatMul/ReadVariableOp?
dense_317/MatMul/CastCast'dense_317/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2
dense_317/MatMul/Cast?
dense_317/MatMulMatMuldense_316/Tanh:y:0dense_317/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_317/MatMul?
 dense_317/BiasAdd/ReadVariableOpReadVariableOp)dense_317_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 dense_317/BiasAdd/ReadVariableOp?
dense_317/BiasAdd/CastCast(dense_317/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2
dense_317/BiasAdd/Cast?
dense_317/BiasAddBiasAdddense_317/MatMul:product:0dense_317/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_317/BiasAddv
dense_317/TanhTanhdense_317/BiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
dense_317/Tanh?
outputlayer/CastCastdense_317/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	H?*
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
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_316_matmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mul?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_317_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
NoOpNoOp!^dense_316/BiasAdd/ReadVariableOp ^dense_316/MatMul/ReadVariableOp3^dense_316/kernel/Regularizer/Square/ReadVariableOp!^dense_317/BiasAdd/ReadVariableOp ^dense_317/MatMul/ReadVariableOp3^dense_317/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_316/BiasAdd/ReadVariableOp dense_316/BiasAdd/ReadVariableOp2B
dense_316/MatMul/ReadVariableOpdense_316/MatMul/ReadVariableOp2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp2D
 dense_317/BiasAdd/ReadVariableOp dense_317/BiasAdd/ReadVariableOp2B
dense_317/MatMul/ReadVariableOpdense_317/MatMul/ReadVariableOp2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
F__inference_model_142_layer_call_and_return_conditional_losses_3029847
	input_144#
dense_316_3029812:8
dense_316_3029814:8#
dense_317_3029817:8H
dense_317_3029819:H&
outputlayer_3029823:	H?"
outputlayer_3029825:	?
identity??!dense_316/StatefulPartitionedCall?2dense_316/kernel/Regularizer/Square/ReadVariableOp?!dense_317/StatefulPartitionedCall?2dense_317/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpt
dense_316/CastCast	input_144*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_316/Cast?
!dense_316/StatefulPartitionedCallStatefulPartitionedCalldense_316/Cast:y:0dense_316_3029812dense_316_3029814*
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
GPU2*0J 8? *O
fJRH
F__inference_dense_316_layer_call_and_return_conditional_losses_30295602#
!dense_316/StatefulPartitionedCall?
!dense_317/StatefulPartitionedCallStatefulPartitionedCall*dense_316/StatefulPartitionedCall:output:0dense_317_3029817dense_317_3029819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dense_317_layer_call_and_return_conditional_losses_30295852#
!dense_317/StatefulPartitionedCall?
outputlayer/CastCast*dense_317/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_3029823outputlayer_3029825*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_30296092%
#outputlayer/StatefulPartitionedCall?
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_316_3029812*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/mul?
2dense_317/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_317_3029817*
_output_shapes

:8H*
dtype024
2dense_317/kernel/Regularizer/Square/ReadVariableOp?
#dense_317/kernel/Regularizer/SquareSquare:dense_317/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_317/kernel/Regularizer/Square?
"dense_317/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_317/kernel/Regularizer/Const?
 dense_317/kernel/Regularizer/SumSum'dense_317/kernel/Regularizer/Square:y:0+dense_317/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/Sum?
"dense_317/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_317/kernel/Regularizer/mul/x?
 dense_317/kernel/Regularizer/mulMul+dense_317/kernel/Regularizer/mul/x:output:0)dense_317/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_317/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_3029823*
_output_shapes
:	H?*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	H?2'
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
NoOpNoOp"^dense_316/StatefulPartitionedCall3^dense_316/kernel/Regularizer/Square/ReadVariableOp"^dense_317/StatefulPartitionedCall3^dense_317/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_316/StatefulPartitionedCall!dense_316/StatefulPartitionedCall2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp2F
!dense_317/StatefulPartitionedCall!dense_317/StatefulPartitionedCall2h
2dense_317/kernel/Regularizer/Square/ReadVariableOp2dense_317/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_144
?
?
__inference_loss_fn_0_3030133M
;dense_316_kernel_regularizer_square_readvariableop_resource:8
identity??2dense_316/kernel/Regularizer/Square/ReadVariableOp?
2dense_316/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_316_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_316/kernel/Regularizer/Square/ReadVariableOp?
#dense_316/kernel/Regularizer/SquareSquare:dense_316/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_316/kernel/Regularizer/Square?
"dense_316/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_316/kernel/Regularizer/Const?
 dense_316/kernel/Regularizer/SumSum'dense_316/kernel/Regularizer/Square:y:0+dense_316/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/Sum?
"dense_316/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_316/kernel/Regularizer/mul/x?
 dense_316/kernel/Regularizer/mulMul+dense_316/kernel/Regularizer/mul/x:output:0)dense_316/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_316/kernel/Regularizer/muln
IdentityIdentity$dense_316/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^dense_316/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_316/kernel/Regularizer/Square/ReadVariableOp2dense_316/kernel/Regularizer/Square/ReadVariableOp
?	
?
+__inference_model_142_layer_call_fn_3029649
	input_144
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	input_144unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU2*0J 8? *O
fJRH
F__inference_model_142_layer_call_and_return_conditional_losses_30296342
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
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:?????????
#
_user_specified_name	input_144
?	
?
+__inference_model_142_layer_call_fn_3030005

inputs
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
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
GPU2*0J 8? *O
fJRH
F__inference_model_142_layer_call_and_return_conditional_losses_30296342
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
	input_1442
serving_default_input_144:0?????????@
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
regularization_losses
trainable_variables
	variables
		keras_api


signatures
*V&call_and_return_all_conditional_losses
W__call__
X_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"
_tf_keras_layer
?

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"
_tf_keras_layer
?

kernel
bias
regularization_losses
trainable_variables
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
J
0
1
2
3
4
5"
trackable_list_wrapper
?
$metrics
%non_trainable_variables
&layer_metrics
regularization_losses
trainable_variables
'layer_regularization_losses
	variables

(layers
W__call__
X_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
bserving_default"
signature_map
": 82dense_316/kernel
:82dense_316/bias
'
_0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
)metrics
*non_trainable_variables
+layer_metrics
regularization_losses
trainable_variables
,layer_regularization_losses
	variables

-layers
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
": 8H2dense_317/kernel
:H2dense_317/bias
'
`0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
.metrics
/non_trainable_variables
0layer_metrics
regularization_losses
trainable_variables
1layer_regularization_losses
	variables

2layers
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
%:#	H?2outputlayer/kernel
:?2outputlayer/bias
'
a0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
3metrics
4non_trainable_variables
5layer_metrics
regularization_losses
trainable_variables
6layer_regularization_losses
	variables

7layers
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
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
 "
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
0:.82 cond_1/Adamax/dense_316/kernel/m
*:(82cond_1/Adamax/dense_316/bias/m
0:.8H2 cond_1/Adamax/dense_317/kernel/m
*:(H2cond_1/Adamax/dense_317/bias/m
3:1	H?2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
0:.82 cond_1/Adamax/dense_316/kernel/v
*:(82cond_1/Adamax/dense_316/bias/v
0:.8H2 cond_1/Adamax/dense_317/kernel/v
*:(H2cond_1/Adamax/dense_317/bias/v
3:1	H?2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
F__inference_model_142_layer_call_and_return_conditional_losses_3029939
F__inference_model_142_layer_call_and_return_conditional_losses_3029988
F__inference_model_142_layer_call_and_return_conditional_losses_3029808
F__inference_model_142_layer_call_and_return_conditional_losses_3029847?
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
?2?
+__inference_model_142_layer_call_fn_3029649
+__inference_model_142_layer_call_fn_3030005
+__inference_model_142_layer_call_fn_3030022
+__inference_model_142_layer_call_fn_3029769?
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
"__inference__wrapped_model_3029533	input_144"?
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
?2?
F__inference_dense_316_layer_call_and_return_conditional_losses_3030047?
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
+__inference_dense_316_layer_call_fn_3030056?
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
F__inference_dense_317_layer_call_and_return_conditional_losses_3030081?
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
+__inference_dense_317_layer_call_fn_3030090?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_3030113?
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
-__inference_outputlayer_layer_call_fn_3030122?
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
__inference_loss_fn_0_3030133?
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
__inference_loss_fn_1_3030144?
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
__inference_loss_fn_2_3030155?
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
%__inference_signature_wrapper_3029890	input_144"?
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
"__inference__wrapped_model_3029533x2?/
(?%
#? 
	input_144?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
F__inference_dense_316_layer_call_and_return_conditional_losses_3030047\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????8
? ~
+__inference_dense_316_layer_call_fn_3030056O/?,
%?"
 ?
inputs?????????
? "??????????8?
F__inference_dense_317_layer_call_and_return_conditional_losses_3030081\/?,
%?"
 ?
inputs?????????8
? "%?"
?
0?????????H
? ~
+__inference_dense_317_layer_call_fn_3030090O/?,
%?"
 ?
inputs?????????8
? "??????????H<
__inference_loss_fn_0_3030133?

? 
? "? <
__inference_loss_fn_1_3030144?

? 
? "? <
__inference_loss_fn_2_3030155?

? 
? "? ?
F__inference_model_142_layer_call_and_return_conditional_losses_3029808l:?7
0?-
#? 
	input_144?????????
p 

 
? "&?#
?
0??????????
? ?
F__inference_model_142_layer_call_and_return_conditional_losses_3029847l:?7
0?-
#? 
	input_144?????????
p

 
? "&?#
?
0??????????
? ?
F__inference_model_142_layer_call_and_return_conditional_losses_3029939i7?4
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
F__inference_model_142_layer_call_and_return_conditional_losses_3029988i7?4
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
+__inference_model_142_layer_call_fn_3029649_:?7
0?-
#? 
	input_144?????????
p 

 
? "????????????
+__inference_model_142_layer_call_fn_3029769_:?7
0?-
#? 
	input_144?????????
p

 
? "????????????
+__inference_model_142_layer_call_fn_3030005\7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
+__inference_model_142_layer_call_fn_3030022\7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_3030113]/?,
%?"
 ?
inputs?????????H
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_3030122P/?,
%?"
 ?
inputs?????????H
? "????????????
%__inference_signature_wrapper_3029890???<
? 
5?2
0
	input_144#? 
	input_144?????????":?7
5
outputlayer&?#
outputlayer??????????