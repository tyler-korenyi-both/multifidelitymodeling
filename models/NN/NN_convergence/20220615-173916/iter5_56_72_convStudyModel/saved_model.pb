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
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*!
shared_namedense_109/kernel
u
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes

:8*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
_output_shapes
:8*
dtype0
|
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8H*!
shared_namedense_110/kernel
u
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes

:8H*
dtype0
t
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*
shared_namedense_110/bias
m
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
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
 cond_1/Adamax/dense_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*1
shared_name" cond_1/Adamax/dense_109/kernel/m
?
4cond_1/Adamax/dense_109/kernel/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_109/kernel/m*
_output_shapes

:8*
dtype0
?
cond_1/Adamax/dense_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*/
shared_name cond_1/Adamax/dense_109/bias/m
?
2cond_1/Adamax/dense_109/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_109/bias/m*
_output_shapes
:8*
dtype0
?
 cond_1/Adamax/dense_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8H*1
shared_name" cond_1/Adamax/dense_110/kernel/m
?
4cond_1/Adamax/dense_110/kernel/m/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_110/kernel/m*
_output_shapes

:8H*
dtype0
?
cond_1/Adamax/dense_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*/
shared_name cond_1/Adamax/dense_110/bias/m
?
2cond_1/Adamax/dense_110/bias/m/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_110/bias/m*
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
 cond_1/Adamax/dense_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8*1
shared_name" cond_1/Adamax/dense_109/kernel/v
?
4cond_1/Adamax/dense_109/kernel/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_109/kernel/v*
_output_shapes

:8*
dtype0
?
cond_1/Adamax/dense_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:8*/
shared_name cond_1/Adamax/dense_109/bias/v
?
2cond_1/Adamax/dense_109/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_109/bias/v*
_output_shapes
:8*
dtype0
?
 cond_1/Adamax/dense_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:8H*1
shared_name" cond_1/Adamax/dense_110/kernel/v
?
4cond_1/Adamax/dense_110/kernel/v/Read/ReadVariableOpReadVariableOp cond_1/Adamax/dense_110/kernel/v*
_output_shapes

:8H*
dtype0
?
cond_1/Adamax/dense_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:H*/
shared_name cond_1/Adamax/dense_110/bias/v
?
2cond_1/Adamax/dense_110/bias/v/Read/ReadVariableOpReadVariableOpcond_1/Adamax/dense_110/bias/v*
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
	variables
regularization_losses
trainable_variables
		keras_api


signatures
 
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
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
	variables
$metrics
%non_trainable_variables
regularization_losses

&layers
'layer_regularization_losses
trainable_variables
(layer_metrics
 
\Z
VARIABLE_VALUEdense_109/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_109/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
)metrics
	variables
*non_trainable_variables
regularization_losses

+layers
,layer_regularization_losses
trainable_variables
-layer_metrics
\Z
VARIABLE_VALUEdense_110/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_110/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
.metrics
	variables
/non_trainable_variables
regularization_losses

0layers
1layer_regularization_losses
trainable_variables
2layer_metrics
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
3metrics
	variables
4non_trainable_variables
regularization_losses

5layers
6layer_regularization_losses
trainable_variables
7layer_metrics
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
VARIABLE_VALUE cond_1/Adamax/dense_109/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_109/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_110/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_110/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_109/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_109/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/dense_110/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEcond_1/Adamax/dense_110/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"cond_1/Adamax/outputlayer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE cond_1/Adamax/outputlayer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_51Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_51dense_109/kerneldense_109/biasdense_110/kerneldense_110/biasoutputlayer/kerneloutputlayer/bias*
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
%__inference_signature_wrapper_1148574
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOp&cond_1/Adamax/iter/Read/ReadVariableOp(cond_1/Adamax/beta_1/Read/ReadVariableOp(cond_1/Adamax/beta_2/Read/ReadVariableOp'cond_1/Adamax/decay/Read/ReadVariableOp/cond_1/Adamax/learning_rate/Read/ReadVariableOp&current_loss_scale/Read/ReadVariableOpgood_steps/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp4cond_1/Adamax/dense_109/kernel/m/Read/ReadVariableOp2cond_1/Adamax/dense_109/bias/m/Read/ReadVariableOp4cond_1/Adamax/dense_110/kernel/m/Read/ReadVariableOp2cond_1/Adamax/dense_110/bias/m/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/m/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/m/Read/ReadVariableOp4cond_1/Adamax/dense_109/kernel/v/Read/ReadVariableOp2cond_1/Adamax/dense_109/bias/v/Read/ReadVariableOp4cond_1/Adamax/dense_110/kernel/v/Read/ReadVariableOp2cond_1/Adamax/dense_110/bias/v/Read/ReadVariableOp6cond_1/Adamax/outputlayer/kernel/v/Read/ReadVariableOp4cond_1/Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*,
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
 __inference__traced_save_1148955
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_109/kerneldense_109/biasdense_110/kerneldense_110/biasoutputlayer/kerneloutputlayer/biascond_1/Adamax/itercond_1/Adamax/beta_1cond_1/Adamax/beta_2cond_1/Adamax/decaycond_1/Adamax/learning_ratecurrent_loss_scale
good_stepstotalcounttotal_1count_1total_2count_2 cond_1/Adamax/dense_109/kernel/mcond_1/Adamax/dense_109/bias/m cond_1/Adamax/dense_110/kernel/mcond_1/Adamax/dense_110/bias/m"cond_1/Adamax/outputlayer/kernel/m cond_1/Adamax/outputlayer/bias/m cond_1/Adamax/dense_109/kernel/vcond_1/Adamax/dense_109/bias/v cond_1/Adamax/dense_110/kernel/vcond_1/Adamax/dense_110/bias/v"cond_1/Adamax/outputlayer/kernel/v cond_1/Adamax/outputlayer/bias/v*+
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
#__inference__traced_restore_1149058??
?	
?
*__inference_model_50_layer_call_fn_1148591

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
GPU2*0J 8? *N
fIRG
E__inference_model_50_layer_call_and_return_conditional_losses_11483182
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
??
?
#__inference__traced_restore_1149058
file_prefix3
!assignvariableop_dense_109_kernel:8/
!assignvariableop_1_dense_109_bias:85
#assignvariableop_2_dense_110_kernel:8H/
!assignvariableop_3_dense_110_bias:H8
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
4assignvariableop_19_cond_1_adamax_dense_109_kernel_m:8@
2assignvariableop_20_cond_1_adamax_dense_109_bias_m:8F
4assignvariableop_21_cond_1_adamax_dense_110_kernel_m:8H@
2assignvariableop_22_cond_1_adamax_dense_110_bias_m:HI
6assignvariableop_23_cond_1_adamax_outputlayer_kernel_m:	H?C
4assignvariableop_24_cond_1_adamax_outputlayer_bias_m:	?F
4assignvariableop_25_cond_1_adamax_dense_109_kernel_v:8@
2assignvariableop_26_cond_1_adamax_dense_109_bias_v:8F
4assignvariableop_27_cond_1_adamax_dense_110_kernel_v:8H@
2assignvariableop_28_cond_1_adamax_dense_110_bias_v:HI
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_109_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_109_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_110_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_110_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOp4assignvariableop_19_cond_1_adamax_dense_109_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_cond_1_adamax_dense_109_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_cond_1_adamax_dense_110_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp2assignvariableop_22_cond_1_adamax_dense_110_bias_mIdentity_22:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp4assignvariableop_25_cond_1_adamax_dense_109_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_cond_1_adamax_dense_109_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_cond_1_adamax_dense_110_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp2assignvariableop_28_cond_1_adamax_dense_110_bias_vIdentity_28:output:0"/device:CPU:0*
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
?4
?
E__inference_model_50_layer_call_and_return_conditional_losses_1148492
input_51#
dense_109_1148457:8
dense_109_1148459:8#
dense_110_1148462:8H
dense_110_1148464:H&
outputlayer_1148468:	H?"
outputlayer_1148470:	?
identity??!dense_109/StatefulPartitionedCall?2dense_109/kernel/Regularizer/Square/ReadVariableOp?!dense_110/StatefulPartitionedCall?2dense_110/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOps
dense_109/CastCastinput_51*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_109/Cast?
!dense_109/StatefulPartitionedCallStatefulPartitionedCalldense_109/Cast:y:0dense_109_1148457dense_109_1148459*
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
F__inference_dense_109_layer_call_and_return_conditional_losses_11482442#
!dense_109/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_1148462dense_110_1148464*
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
F__inference_dense_110_layer_call_and_return_conditional_losses_11482692#
!dense_110/StatefulPartitionedCall?
outputlayer/CastCast*dense_110/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1148468outputlayer_1148470*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11482932%
#outputlayer/StatefulPartitionedCall?
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_1148457*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mul?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_110_1148462*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1148468*
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
NoOpNoOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall3^dense_110/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_51
?4
?
E__inference_model_50_layer_call_and_return_conditional_losses_1148421

inputs#
dense_109_1148386:8
dense_109_1148388:8#
dense_110_1148391:8H
dense_110_1148393:H&
outputlayer_1148397:	H?"
outputlayer_1148399:	?
identity??!dense_109/StatefulPartitionedCall?2dense_109/kernel/Regularizer/Square/ReadVariableOp?!dense_110/StatefulPartitionedCall?2dense_110/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_109/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_109/Cast?
!dense_109/StatefulPartitionedCallStatefulPartitionedCalldense_109/Cast:y:0dense_109_1148386dense_109_1148388*
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
F__inference_dense_109_layer_call_and_return_conditional_losses_11482442#
!dense_109/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_1148391dense_110_1148393*
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
F__inference_dense_110_layer_call_and_return_conditional_losses_11482692#
!dense_110/StatefulPartitionedCall?
outputlayer/CastCast*dense_110/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1148397outputlayer_1148399*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11482932%
#outputlayer/StatefulPartitionedCall?
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_1148386*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mul?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_110_1148391*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1148397*
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
NoOpNoOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall3^dense_110/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1148817M
;dense_109_kernel_regularizer_square_readvariableop_resource:8
identity??2dense_109/kernel/Regularizer/Square/ReadVariableOp?
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_109_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/muln
IdentityIdentity$dense_109/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp
?-
?
"__inference__wrapped_model_1148217
input_51C
1model_50_dense_109_matmul_readvariableop_resource:8@
2model_50_dense_109_biasadd_readvariableop_resource:8C
1model_50_dense_110_matmul_readvariableop_resource:8H@
2model_50_dense_110_biasadd_readvariableop_resource:HF
3model_50_outputlayer_matmul_readvariableop_resource:	H?C
4model_50_outputlayer_biasadd_readvariableop_resource:	?
identity??)model_50/dense_109/BiasAdd/ReadVariableOp?(model_50/dense_109/MatMul/ReadVariableOp?)model_50/dense_110/BiasAdd/ReadVariableOp?(model_50/dense_110/MatMul/ReadVariableOp?+model_50/outputlayer/BiasAdd/ReadVariableOp?*model_50/outputlayer/MatMul/ReadVariableOp?
model_50/dense_109/CastCastinput_51*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_50/dense_109/Cast?
(model_50/dense_109/MatMul/ReadVariableOpReadVariableOp1model_50_dense_109_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02*
(model_50/dense_109/MatMul/ReadVariableOp?
model_50/dense_109/MatMul/CastCast0model_50/dense_109/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82 
model_50/dense_109/MatMul/Cast?
model_50/dense_109/MatMulMatMulmodel_50/dense_109/Cast:y:0"model_50/dense_109/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
model_50/dense_109/MatMul?
)model_50/dense_109/BiasAdd/ReadVariableOpReadVariableOp2model_50_dense_109_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02+
)model_50/dense_109/BiasAdd/ReadVariableOp?
model_50/dense_109/BiasAdd/CastCast1model_50/dense_109/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82!
model_50/dense_109/BiasAdd/Cast?
model_50/dense_109/BiasAddBiasAdd#model_50/dense_109/MatMul:product:0#model_50/dense_109/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
model_50/dense_109/BiasAdd?
model_50/dense_109/TanhTanh#model_50/dense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
model_50/dense_109/Tanh?
(model_50/dense_110/MatMul/ReadVariableOpReadVariableOp1model_50_dense_110_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype02*
(model_50/dense_110/MatMul/ReadVariableOp?
model_50/dense_110/MatMul/CastCast0model_50/dense_110/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2 
model_50/dense_110/MatMul/Cast?
model_50/dense_110/MatMulMatMulmodel_50/dense_109/Tanh:y:0"model_50/dense_110/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
model_50/dense_110/MatMul?
)model_50/dense_110/BiasAdd/ReadVariableOpReadVariableOp2model_50_dense_110_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02+
)model_50/dense_110/BiasAdd/ReadVariableOp?
model_50/dense_110/BiasAdd/CastCast1model_50/dense_110/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2!
model_50/dense_110/BiasAdd/Cast?
model_50/dense_110/BiasAddBiasAdd#model_50/dense_110/MatMul:product:0#model_50/dense_110/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2
model_50/dense_110/BiasAdd?
model_50/dense_110/TanhTanh#model_50/dense_110/BiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
model_50/dense_110/Tanh?
model_50/outputlayer/CastCastmodel_50/dense_110/Tanh:y:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
model_50/outputlayer/Cast?
*model_50/outputlayer/MatMul/ReadVariableOpReadVariableOp3model_50_outputlayer_matmul_readvariableop_resource*
_output_shapes
:	H?*
dtype02,
*model_50/outputlayer/MatMul/ReadVariableOp?
model_50/outputlayer/MatMulMatMulmodel_50/outputlayer/Cast:y:02model_50/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_50/outputlayer/MatMul?
+model_50/outputlayer/BiasAdd/ReadVariableOpReadVariableOp4model_50_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_50/outputlayer/BiasAdd/ReadVariableOp?
model_50/outputlayer/BiasAddBiasAdd%model_50/outputlayer/MatMul:product:03model_50/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_50/outputlayer/BiasAdd?
model_50/outputlayer/LeakyRelu	LeakyRelu%model_50/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2 
model_50/outputlayer/LeakyRelu?
IdentityIdentity,model_50/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp*^model_50/dense_109/BiasAdd/ReadVariableOp)^model_50/dense_109/MatMul/ReadVariableOp*^model_50/dense_110/BiasAdd/ReadVariableOp)^model_50/dense_110/MatMul/ReadVariableOp,^model_50/outputlayer/BiasAdd/ReadVariableOp+^model_50/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2V
)model_50/dense_109/BiasAdd/ReadVariableOp)model_50/dense_109/BiasAdd/ReadVariableOp2T
(model_50/dense_109/MatMul/ReadVariableOp(model_50/dense_109/MatMul/ReadVariableOp2V
)model_50/dense_110/BiasAdd/ReadVariableOp)model_50/dense_110/BiasAdd/ReadVariableOp2T
(model_50/dense_110/MatMul/ReadVariableOp(model_50/dense_110/MatMul/ReadVariableOp2Z
+model_50/outputlayer/BiasAdd/ReadVariableOp+model_50/outputlayer/BiasAdd/ReadVariableOp2X
*model_50/outputlayer/MatMul/ReadVariableOp*model_50/outputlayer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_51
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1148806

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
*__inference_model_50_layer_call_fn_1148453
input_51
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_51unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
E__inference_model_50_layer_call_and_return_conditional_losses_11484212
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
input_51
?
?
+__inference_dense_109_layer_call_fn_1148721

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
F__inference_dense_109_layer_call_and_return_conditional_losses_11482442
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
?
?
F__inference_dense_109_layer_call_and_return_conditional_losses_1148244

inputs0
matmul_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_109/kernel/Regularizer/Square/ReadVariableOp?
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
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????82

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp*"
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
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_110_layer_call_fn_1148755

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
F__inference_dense_110_layer_call_and_return_conditional_losses_11482692
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
?	
?
%__inference_signature_wrapper_1148574
input_51
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_51unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
"__inference__wrapped_model_11482172
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
input_51
?
?
F__inference_dense_110_layer_call_and_return_conditional_losses_1148269

inputs0
matmul_readvariableop_resource:8H-
biasadd_readvariableop_resource:H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_110/kernel/Regularizer/Square/ReadVariableOp?
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
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_110/kernel/Regularizer/Square/ReadVariableOp*"
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
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?F
?
 __inference__traced_save_1148955
file_prefix/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableop1
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
;savev2_cond_1_adamax_dense_109_kernel_m_read_readvariableop=
9savev2_cond_1_adamax_dense_109_bias_m_read_readvariableop?
;savev2_cond_1_adamax_dense_110_kernel_m_read_readvariableop=
9savev2_cond_1_adamax_dense_110_bias_m_read_readvariableopA
=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop?
;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop?
;savev2_cond_1_adamax_dense_109_kernel_v_read_readvariableop=
9savev2_cond_1_adamax_dense_109_bias_v_read_readvariableop?
;savev2_cond_1_adamax_dense_110_kernel_v_read_readvariableop=
9savev2_cond_1_adamax_dense_110_bias_v_read_readvariableopA
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop-savev2_cond_1_adamax_iter_read_readvariableop/savev2_cond_1_adamax_beta_1_read_readvariableop/savev2_cond_1_adamax_beta_2_read_readvariableop.savev2_cond_1_adamax_decay_read_readvariableop6savev2_cond_1_adamax_learning_rate_read_readvariableop-savev2_current_loss_scale_read_readvariableop%savev2_good_steps_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop;savev2_cond_1_adamax_dense_109_kernel_m_read_readvariableop9savev2_cond_1_adamax_dense_109_bias_m_read_readvariableop;savev2_cond_1_adamax_dense_110_kernel_m_read_readvariableop9savev2_cond_1_adamax_dense_110_bias_m_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_m_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_m_read_readvariableop;savev2_cond_1_adamax_dense_109_kernel_v_read_readvariableop9savev2_cond_1_adamax_dense_109_bias_v_read_readvariableop;savev2_cond_1_adamax_dense_110_kernel_v_read_readvariableop9savev2_cond_1_adamax_dense_110_bias_v_read_readvariableop=savev2_cond_1_adamax_outputlayer_kernel_v_read_readvariableop;savev2_cond_1_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
__inference_loss_fn_2_1148839P
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
F__inference_dense_110_layer_call_and_return_conditional_losses_1148774

inputs0
matmul_readvariableop_resource:8H-
biasadd_readvariableop_resource:H
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_110/kernel/Regularizer/Square/ReadVariableOp?
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
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????H2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_110/kernel/Regularizer/Square/ReadVariableOp*"
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
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????8
 
_user_specified_nameinputs
?E
?
E__inference_model_50_layer_call_and_return_conditional_losses_1148657

inputs:
(dense_109_matmul_readvariableop_resource:87
)dense_109_biasadd_readvariableop_resource:8:
(dense_110_matmul_readvariableop_resource:8H7
)dense_110_biasadd_readvariableop_resource:H=
*outputlayer_matmul_readvariableop_resource:	H?:
+outputlayer_biasadd_readvariableop_resource:	?
identity?? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp?2dense_109/kernel/Regularizer/Square/ReadVariableOp? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp?2dense_110/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_109/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_109/Cast?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02!
dense_109/MatMul/ReadVariableOp?
dense_109/MatMul/CastCast'dense_109/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82
dense_109/MatMul/Cast?
dense_109/MatMulMatMuldense_109/Cast:y:0dense_109/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_109/MatMul?
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02"
 dense_109/BiasAdd/ReadVariableOp?
dense_109/BiasAdd/CastCast(dense_109/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
dense_109/BiasAdd/Cast?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0dense_109/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_109/BiasAddv
dense_109/TanhTanhdense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
dense_109/Tanh?
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype02!
dense_110/MatMul/ReadVariableOp?
dense_110/MatMul/CastCast'dense_110/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2
dense_110/MatMul/Cast?
dense_110/MatMulMatMuldense_109/Tanh:y:0dense_110/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_110/MatMul?
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 dense_110/BiasAdd/ReadVariableOp?
dense_110/BiasAdd/CastCast(dense_110/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2
dense_110/BiasAdd/Cast?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0dense_110/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_110/BiasAddv
dense_110/TanhTanhdense_110/BiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
dense_110/Tanh?
outputlayer/CastCastdense_110/Tanh:y:0*

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
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mul?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mul?
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
NoOpNoOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp3^dense_110/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?E
?
E__inference_model_50_layer_call_and_return_conditional_losses_1148706

inputs:
(dense_109_matmul_readvariableop_resource:87
)dense_109_biasadd_readvariableop_resource:8:
(dense_110_matmul_readvariableop_resource:8H7
)dense_110_biasadd_readvariableop_resource:H=
*outputlayer_matmul_readvariableop_resource:	H?:
+outputlayer_biasadd_readvariableop_resource:	?
identity?? dense_109/BiasAdd/ReadVariableOp?dense_109/MatMul/ReadVariableOp?2dense_109/kernel/Regularizer/Square/ReadVariableOp? dense_110/BiasAdd/ReadVariableOp?dense_110/MatMul/ReadVariableOp?2dense_110/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_109/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_109/Cast?
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:8*
dtype02!
dense_109/MatMul/ReadVariableOp?
dense_109/MatMul/CastCast'dense_109/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:82
dense_109/MatMul/Cast?
dense_109/MatMulMatMuldense_109/Cast:y:0dense_109/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_109/MatMul?
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:8*
dtype02"
 dense_109/BiasAdd/ReadVariableOp?
dense_109/BiasAdd/CastCast(dense_109/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:82
dense_109/BiasAdd/Cast?
dense_109/BiasAddBiasAdddense_109/MatMul:product:0dense_109/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????82
dense_109/BiasAddv
dense_109/TanhTanhdense_109/BiasAdd:output:0*
T0*'
_output_shapes
:?????????82
dense_109/Tanh?
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype02!
dense_110/MatMul/ReadVariableOp?
dense_110/MatMul/CastCast'dense_110/MatMul/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes

:8H2
dense_110/MatMul/Cast?
dense_110/MatMulMatMuldense_109/Tanh:y:0dense_110/MatMul/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_110/MatMul?
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:H*
dtype02"
 dense_110/BiasAdd/ReadVariableOp?
dense_110/BiasAdd/CastCast(dense_110/BiasAdd/ReadVariableOp:value:0*

DstT0*

SrcT0*
_output_shapes
:H2
dense_110/BiasAdd/Cast?
dense_110/BiasAddBiasAdddense_110/MatMul:product:0dense_110/BiasAdd/Cast:y:0*
T0*'
_output_shapes
:?????????H2
dense_110/BiasAddv
dense_110/TanhTanhdense_110/BiasAdd:output:0*
T0*'
_output_shapes
:?????????H2
dense_110/Tanh?
outputlayer/CastCastdense_110/Tanh:y:0*

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
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mul?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mul?
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
NoOpNoOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp3^dense_110/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_dense_109_layer_call_and_return_conditional_losses_1148740

inputs0
matmul_readvariableop_resource:8-
biasadd_readvariableop_resource:8
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?2dense_109/kernel/Regularizer/Square/ReadVariableOp?
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
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????82

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp*"
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
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_model_50_layer_call_fn_1148608

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
GPU2*0J 8? *N
fIRG
E__inference_model_50_layer_call_and_return_conditional_losses_11484212
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
?
?
__inference_loss_fn_1_1148828M
;dense_110_kernel_regularizer_square_readvariableop_resource:8H
identity??2dense_110/kernel/Regularizer/Square/ReadVariableOp?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_110_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/muln
IdentityIdentity$dense_110/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^dense_110/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp
?	
?
*__inference_model_50_layer_call_fn_1148333
input_51
unknown:8
	unknown_0:8
	unknown_1:8H
	unknown_2:H
	unknown_3:	H?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_51unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
E__inference_model_50_layer_call_and_return_conditional_losses_11483182
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
input_51
?
?
H__inference_outputlayer_layer_call_and_return_conditional_losses_1148293

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
?
?
-__inference_outputlayer_layer_call_fn_1148789

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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11482932
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
?4
?
E__inference_model_50_layer_call_and_return_conditional_losses_1148318

inputs#
dense_109_1148245:8
dense_109_1148247:8#
dense_110_1148270:8H
dense_110_1148272:H&
outputlayer_1148294:	H?"
outputlayer_1148296:	?
identity??!dense_109/StatefulPartitionedCall?2dense_109/kernel/Regularizer/Square/ReadVariableOp?!dense_110/StatefulPartitionedCall?2dense_110/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOpq
dense_109/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_109/Cast?
!dense_109/StatefulPartitionedCallStatefulPartitionedCalldense_109/Cast:y:0dense_109_1148245dense_109_1148247*
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
F__inference_dense_109_layer_call_and_return_conditional_losses_11482442#
!dense_109/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_1148270dense_110_1148272*
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
F__inference_dense_110_layer_call_and_return_conditional_losses_11482692#
!dense_110/StatefulPartitionedCall?
outputlayer/CastCast*dense_110/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1148294outputlayer_1148296*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11482932%
#outputlayer/StatefulPartitionedCall?
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_1148245*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mul?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_110_1148270*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1148294*
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
NoOpNoOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall3^dense_110/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
E__inference_model_50_layer_call_and_return_conditional_losses_1148531
input_51#
dense_109_1148496:8
dense_109_1148498:8#
dense_110_1148501:8H
dense_110_1148503:H&
outputlayer_1148507:	H?"
outputlayer_1148509:	?
identity??!dense_109/StatefulPartitionedCall?2dense_109/kernel/Regularizer/Square/ReadVariableOp?!dense_110/StatefulPartitionedCall?2dense_110/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOps
dense_109/CastCastinput_51*

DstT0*

SrcT0*'
_output_shapes
:?????????2
dense_109/Cast?
!dense_109/StatefulPartitionedCallStatefulPartitionedCalldense_109/Cast:y:0dense_109_1148496dense_109_1148498*
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
F__inference_dense_109_layer_call_and_return_conditional_losses_11482442#
!dense_109/StatefulPartitionedCall?
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_1148501dense_110_1148503*
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
F__inference_dense_110_layer_call_and_return_conditional_losses_11482692#
!dense_110/StatefulPartitionedCall?
outputlayer/CastCast*dense_110/StatefulPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????H2
outputlayer/Cast?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCalloutputlayer/Cast:y:0outputlayer_1148507outputlayer_1148509*
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_11482932%
#outputlayer/StatefulPartitionedCall?
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_1148496*
_output_shapes

:8*
dtype024
2dense_109/kernel/Regularizer/Square/ReadVariableOp?
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:82%
#dense_109/kernel/Regularizer/Square?
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_109/kernel/Regularizer/Const?
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/Sum?
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_109/kernel/Regularizer/mul/x?
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_109/kernel/Regularizer/mul?
2dense_110/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_110_1148501*
_output_shapes

:8H*
dtype024
2dense_110/kernel/Regularizer/Square/ReadVariableOp?
#dense_110/kernel/Regularizer/SquareSquare:dense_110/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:8H2%
#dense_110/kernel/Regularizer/Square?
"dense_110/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_110/kernel/Regularizer/Const?
 dense_110/kernel/Regularizer/SumSum'dense_110/kernel/Regularizer/Square:y:0+dense_110/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/Sum?
"dense_110/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52$
"dense_110/kernel/Regularizer/mul/x?
 dense_110/kernel/Regularizer/mulMul+dense_110/kernel/Regularizer/mul/x:output:0)dense_110/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_110/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_1148507*
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
NoOpNoOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall3^dense_110/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2h
2dense_110/kernel/Regularizer/Square/ReadVariableOp2dense_110/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_51"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_511
serving_default_input_51:0?????????@
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
	variables
regularization_losses
trainable_variables
		keras_api


signatures
V__call__
*W&call_and_return_all_conditional_losses
X_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
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
	variables
$metrics
%non_trainable_variables
regularization_losses

&layers
'layer_regularization_losses
trainable_variables
(layer_metrics
V__call__
X_default_save_signature
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
,
bserving_default"
signature_map
": 82dense_109/kernel
:82dense_109/bias
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
)metrics
	variables
*non_trainable_variables
regularization_losses

+layers
,layer_regularization_losses
trainable_variables
-layer_metrics
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
": 8H2dense_110/kernel
:H2dense_110/bias
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
.metrics
	variables
/non_trainable_variables
regularization_losses

0layers
1layer_regularization_losses
trainable_variables
2layer_metrics
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
%:#	H?2outputlayer/kernel
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
3metrics
	variables
4non_trainable_variables
regularization_losses

5layers
6layer_regularization_losses
trainable_variables
7layer_metrics
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
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
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
`0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
a0"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0:.82 cond_1/Adamax/dense_109/kernel/m
*:(82cond_1/Adamax/dense_109/bias/m
0:.8H2 cond_1/Adamax/dense_110/kernel/m
*:(H2cond_1/Adamax/dense_110/bias/m
3:1	H?2"cond_1/Adamax/outputlayer/kernel/m
-:+?2 cond_1/Adamax/outputlayer/bias/m
0:.82 cond_1/Adamax/dense_109/kernel/v
*:(82cond_1/Adamax/dense_109/bias/v
0:.8H2 cond_1/Adamax/dense_110/kernel/v
*:(H2cond_1/Adamax/dense_110/bias/v
3:1	H?2"cond_1/Adamax/outputlayer/kernel/v
-:+?2 cond_1/Adamax/outputlayer/bias/v
?2?
*__inference_model_50_layer_call_fn_1148333
*__inference_model_50_layer_call_fn_1148591
*__inference_model_50_layer_call_fn_1148608
*__inference_model_50_layer_call_fn_1148453?
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
?2?
E__inference_model_50_layer_call_and_return_conditional_losses_1148657
E__inference_model_50_layer_call_and_return_conditional_losses_1148706
E__inference_model_50_layer_call_and_return_conditional_losses_1148492
E__inference_model_50_layer_call_and_return_conditional_losses_1148531?
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
"__inference__wrapped_model_1148217input_51"?
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
+__inference_dense_109_layer_call_fn_1148721?
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
F__inference_dense_109_layer_call_and_return_conditional_losses_1148740?
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
+__inference_dense_110_layer_call_fn_1148755?
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
F__inference_dense_110_layer_call_and_return_conditional_losses_1148774?
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
-__inference_outputlayer_layer_call_fn_1148789?
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
H__inference_outputlayer_layer_call_and_return_conditional_losses_1148806?
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
__inference_loss_fn_0_1148817?
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
__inference_loss_fn_1_1148828?
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
__inference_loss_fn_2_1148839?
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
%__inference_signature_wrapper_1148574input_51"?
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
"__inference__wrapped_model_1148217w1?.
'?$
"?
input_51?????????
? ":?7
5
outputlayer&?#
outputlayer???????????
F__inference_dense_109_layer_call_and_return_conditional_losses_1148740\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????8
? ~
+__inference_dense_109_layer_call_fn_1148721O/?,
%?"
 ?
inputs?????????
? "??????????8?
F__inference_dense_110_layer_call_and_return_conditional_losses_1148774\/?,
%?"
 ?
inputs?????????8
? "%?"
?
0?????????H
? ~
+__inference_dense_110_layer_call_fn_1148755O/?,
%?"
 ?
inputs?????????8
? "??????????H<
__inference_loss_fn_0_1148817?

? 
? "? <
__inference_loss_fn_1_1148828?

? 
? "? <
__inference_loss_fn_2_1148839?

? 
? "? ?
E__inference_model_50_layer_call_and_return_conditional_losses_1148492k9?6
/?,
"?
input_51?????????
p 

 
? "&?#
?
0??????????
? ?
E__inference_model_50_layer_call_and_return_conditional_losses_1148531k9?6
/?,
"?
input_51?????????
p

 
? "&?#
?
0??????????
? ?
E__inference_model_50_layer_call_and_return_conditional_losses_1148657i7?4
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
E__inference_model_50_layer_call_and_return_conditional_losses_1148706i7?4
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
*__inference_model_50_layer_call_fn_1148333^9?6
/?,
"?
input_51?????????
p 

 
? "????????????
*__inference_model_50_layer_call_fn_1148453^9?6
/?,
"?
input_51?????????
p

 
? "????????????
*__inference_model_50_layer_call_fn_1148591\7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
*__inference_model_50_layer_call_fn_1148608\7?4
-?*
 ?
inputs?????????
p

 
? "????????????
H__inference_outputlayer_layer_call_and_return_conditional_losses_1148806]/?,
%?"
 ?
inputs?????????H
? "&?#
?
0??????????
? ?
-__inference_outputlayer_layer_call_fn_1148789P/?,
%?"
 ?
inputs?????????H
? "????????????
%__inference_signature_wrapper_1148574?=?:
? 
3?0
.
input_51"?
input_51?????????":?7
5
outputlayer&?#
outputlayer??????????