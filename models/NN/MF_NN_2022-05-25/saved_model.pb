??	
??
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
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
??*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:?*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
??*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:?*
dtype0
?
outputlayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*#
shared_nameoutputlayer/kernel
{
&outputlayer/kernel/Read/ReadVariableOpReadVariableOpoutputlayer/kernel* 
_output_shapes
:
??*
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
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0
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
Adamax/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdamax/dense_4/kernel/m
?
+Adamax/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_4/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdamax/dense_4/bias/m
|
)Adamax/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdamax/dense_5/kernel/m
?
+Adamax/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_5/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdamax/dense_5/bias/m
|
)Adamax/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_5/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdamax/dense_6/kernel/m
?
+Adamax/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_6/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdamax/dense_6/bias/m
|
)Adamax/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_6/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/outputlayer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdamax/outputlayer/kernel/m
?
/Adamax/outputlayer/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/outputlayer/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/outputlayer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdamax/outputlayer/bias/m
?
-Adamax/outputlayer/bias/m/Read/ReadVariableOpReadVariableOpAdamax/outputlayer/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdamax/dense_4/kernel/v
?
+Adamax/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_4/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdamax/dense_4/bias/v
|
)Adamax/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdamax/dense_5/kernel/v
?
+Adamax/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_5/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdamax/dense_5/bias/v
|
)Adamax/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_5/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdamax/dense_6/kernel/v
?
+Adamax/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_6/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdamax/dense_6/bias/v
|
)Adamax/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_6/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/outputlayer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameAdamax/outputlayer/kernel/v
?
/Adamax/outputlayer/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/outputlayer/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/outputlayer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameAdamax/outputlayer/bias/v
?
-Adamax/outputlayer/bias/v/Read/ReadVariableOpReadVariableOpAdamax/outputlayer/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?0
value?/B?/ B?/
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
$iter

%beta_1

&beta_2
	'decay
(learning_ratemRmSmTmUmVmWmXmYvZv[v\v]v^v_v`va
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
)layer_regularization_losses
trainable_variables
regularization_losses

*layers
		variables
+layer_metrics
,metrics
-non_trainable_variables
 
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
.layer_regularization_losses
trainable_variables
regularization_losses

/layers
	variables
0layer_metrics
1metrics
2non_trainable_variables
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
3layer_regularization_losses
trainable_variables
regularization_losses

4layers
	variables
5layer_metrics
6metrics
7non_trainable_variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
8layer_regularization_losses
trainable_variables
regularization_losses

9layers
	variables
:layer_metrics
;metrics
<non_trainable_variables
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
=layer_regularization_losses
 trainable_variables
!regularization_losses

>layers
"	variables
?layer_metrics
@metrics
Anon_trainable_variables
JH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 

B0
C1
D2
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
4
	Etotal
	Fcount
G	variables
H	keras_api
D
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api
4
	Ntotal
	Ocount
P	variables
Q	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

E0
F1

G	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

L	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

P	variables
}
VARIABLE_VALUEAdamax/dense_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/outputlayer/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/outputlayer/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/outputlayer/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/outputlayer/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_3Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasoutputlayer/kerneloutputlayer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *-
f(R&
$__inference_signature_wrapper_630650
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp&outputlayer/kernel/Read/ReadVariableOp$outputlayer/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp+Adamax/dense_4/kernel/m/Read/ReadVariableOp)Adamax/dense_4/bias/m/Read/ReadVariableOp+Adamax/dense_5/kernel/m/Read/ReadVariableOp)Adamax/dense_5/bias/m/Read/ReadVariableOp+Adamax/dense_6/kernel/m/Read/ReadVariableOp)Adamax/dense_6/bias/m/Read/ReadVariableOp/Adamax/outputlayer/kernel/m/Read/ReadVariableOp-Adamax/outputlayer/bias/m/Read/ReadVariableOp+Adamax/dense_4/kernel/v/Read/ReadVariableOp)Adamax/dense_4/bias/v/Read/ReadVariableOp+Adamax/dense_5/kernel/v/Read/ReadVariableOp)Adamax/dense_5/bias/v/Read/ReadVariableOp+Adamax/dense_6/kernel/v/Read/ReadVariableOp)Adamax/dense_6/bias/v/Read/ReadVariableOp/Adamax/outputlayer/kernel/v/Read/ReadVariableOp-Adamax/outputlayer/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *(
f#R!
__inference__traced_save_631104
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasoutputlayer/kerneloutputlayer/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1total_2count_2Adamax/dense_4/kernel/mAdamax/dense_4/bias/mAdamax/dense_5/kernel/mAdamax/dense_5/bias/mAdamax/dense_6/kernel/mAdamax/dense_6/bias/mAdamax/outputlayer/kernel/mAdamax/outputlayer/bias/mAdamax/dense_4/kernel/vAdamax/dense_4/bias/vAdamax/dense_5/kernel/vAdamax/dense_5/bias/vAdamax/dense_6/kernel/vAdamax/dense_6/bias/vAdamax/outputlayer/kernel/vAdamax/outputlayer/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *+
f&R$
"__inference__traced_restore_631219??
?/
?
!__inference__wrapped_model_630207
input_3B
.model_2_dense_4_matmul_readvariableop_resource:
??>
/model_2_dense_4_biasadd_readvariableop_resource:	?B
.model_2_dense_5_matmul_readvariableop_resource:
??>
/model_2_dense_5_biasadd_readvariableop_resource:	?B
.model_2_dense_6_matmul_readvariableop_resource:
??>
/model_2_dense_6_biasadd_readvariableop_resource:	?F
2model_2_outputlayer_matmul_readvariableop_resource:
??B
3model_2_outputlayer_biasadd_readvariableop_resource:	?
identity??&model_2/dense_4/BiasAdd/ReadVariableOp?%model_2/dense_4/MatMul/ReadVariableOp?&model_2/dense_5/BiasAdd/ReadVariableOp?%model_2/dense_5/MatMul/ReadVariableOp?&model_2/dense_6/BiasAdd/ReadVariableOp?%model_2/dense_6/MatMul/ReadVariableOp?*model_2/outputlayer/BiasAdd/ReadVariableOp?)model_2/outputlayer/MatMul/ReadVariableOp?
%model_2/dense_4/MatMul/ReadVariableOpReadVariableOp.model_2_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%model_2/dense_4/MatMul/ReadVariableOp?
model_2/dense_4/MatMulMatMulinput_3-model_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_4/MatMul?
&model_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_2/dense_4/BiasAdd/ReadVariableOp?
model_2/dense_4/BiasAddBiasAdd model_2/dense_4/MatMul:product:0.model_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_4/BiasAdd?
model_2/dense_4/TanhTanh model_2/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_2/dense_4/Tanh?
%model_2/dense_5/MatMul/ReadVariableOpReadVariableOp.model_2_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%model_2/dense_5/MatMul/ReadVariableOp?
model_2/dense_5/MatMulMatMulmodel_2/dense_4/Tanh:y:0-model_2/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_5/MatMul?
&model_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_2/dense_5/BiasAdd/ReadVariableOp?
model_2/dense_5/BiasAddBiasAdd model_2/dense_5/MatMul:product:0.model_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_5/BiasAdd?
model_2/dense_5/TanhTanh model_2/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_2/dense_5/Tanh?
%model_2/dense_6/MatMul/ReadVariableOpReadVariableOp.model_2_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%model_2/dense_6/MatMul/ReadVariableOp?
model_2/dense_6/MatMulMatMulmodel_2/dense_5/Tanh:y:0-model_2/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_6/MatMul?
&model_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_2/dense_6/BiasAdd/ReadVariableOp?
model_2/dense_6/BiasAddBiasAdd model_2/dense_6/MatMul:product:0.model_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/dense_6/BiasAdd?
model_2/dense_6/TanhTanh model_2/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_2/dense_6/Tanh?
)model_2/outputlayer/MatMul/ReadVariableOpReadVariableOp2model_2_outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)model_2/outputlayer/MatMul/ReadVariableOp?
model_2/outputlayer/MatMulMatMulmodel_2/dense_6/Tanh:y:01model_2/outputlayer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/outputlayer/MatMul?
*model_2/outputlayer/BiasAdd/ReadVariableOpReadVariableOp3model_2_outputlayer_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*model_2/outputlayer/BiasAdd/ReadVariableOp?
model_2/outputlayer/BiasAddBiasAdd$model_2/outputlayer/MatMul:product:02model_2/outputlayer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_2/outputlayer/BiasAdd?
model_2/outputlayer/LeakyRelu	LeakyRelu$model_2/outputlayer/BiasAdd:output:0*(
_output_shapes
:??????????2
model_2/outputlayer/LeakyRelu?
IdentityIdentity+model_2/outputlayer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp'^model_2/dense_4/BiasAdd/ReadVariableOp&^model_2/dense_4/MatMul/ReadVariableOp'^model_2/dense_5/BiasAdd/ReadVariableOp&^model_2/dense_5/MatMul/ReadVariableOp'^model_2/dense_6/BiasAdd/ReadVariableOp&^model_2/dense_6/MatMul/ReadVariableOp+^model_2/outputlayer/BiasAdd/ReadVariableOp*^model_2/outputlayer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2P
&model_2/dense_4/BiasAdd/ReadVariableOp&model_2/dense_4/BiasAdd/ReadVariableOp2N
%model_2/dense_4/MatMul/ReadVariableOp%model_2/dense_4/MatMul/ReadVariableOp2P
&model_2/dense_5/BiasAdd/ReadVariableOp&model_2/dense_5/BiasAdd/ReadVariableOp2N
%model_2/dense_5/MatMul/ReadVariableOp%model_2/dense_5/MatMul/ReadVariableOp2P
&model_2/dense_6/BiasAdd/ReadVariableOp&model_2/dense_6/BiasAdd/ReadVariableOp2N
%model_2/dense_6/MatMul/ReadVariableOp%model_2/dense_6/MatMul/ReadVariableOp2X
*model_2/outputlayer/BiasAdd/ReadVariableOp*model_2/outputlayer/BiasAdd/ReadVariableOp2V
)model_2/outputlayer/MatMul/ReadVariableOp)model_2/outputlayer/MatMul/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_630231

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_4/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Q
?
C__inference_model_2_layer_call_and_return_conditional_losses_630804

inputs:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?:
&dense_6_matmul_readvariableop_resource:
??6
'dense_6_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?0dense_4/kernel/Regularizer/Square/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?0dense_5/kernel/Regularizer/Square/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddq
dense_4/TanhTanhdense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_4/Tanh?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuldense_4/Tanh:y:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddq
dense_5/TanhTanhdense_5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_5/Tanh?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMuldense_5/Tanh:y:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Tanh?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!outputlayer/MatMul/ReadVariableOp?
outputlayer/MatMulMatMuldense_6/Tanh:y:0)outputlayer/MatMul/ReadVariableOp:value:0*
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
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mul?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mul?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp1^dense_4/kernel/Regularizer/Square/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
C__inference_model_2_layer_call_and_return_conditional_losses_630597
input_3"
dense_4_630552:
??
dense_4_630554:	?"
dense_5_630557:
??
dense_5_630559:	?"
dense_6_630562:
??
dense_6_630564:	?&
outputlayer_630567:
??!
outputlayer_630569:	?
identity??dense_4/StatefulPartitionedCall?0dense_4/kernel/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?0dense_5/kernel/Regularizer/Square/ReadVariableOp?dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_4_630552dense_4_630554*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_6302312!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_630557dense_5_630559*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_6302542!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_630562dense_6_630564*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_6302772!
dense_6/StatefulPartitionedCall?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0outputlayer_630567outputlayer_630569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_6303002%
#outputlayer/StatefulPartitionedCall?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_630552* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mul?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_630557* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mul?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_630562* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_630567* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp ^dense_4/StatefulPartitionedCall1^dense_4/kernel/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?

?
(__inference_model_2_layer_call_fn_630671

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
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

*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_6303312
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
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_630900

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_630954M
9dense_5_kernel_regularizer_square_readvariableop_resource:
??
identity??0dense_5/kernel/Regularizer/Square/ReadVariableOp?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_5_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mull
IdentityIdentity"dense_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp
??
?
C__inference_model_2_layer_call_and_return_conditional_losses_630331

inputs"
dense_4_630232:
??
dense_4_630234:	?"
dense_5_630255:
??
dense_5_630257:	?"
dense_6_630278:
??
dense_6_630280:	?&
outputlayer_630301:
??!
outputlayer_630303:	?
identity??dense_4/StatefulPartitionedCall?0dense_4/kernel/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?0dense_5/kernel/Regularizer/Square/ReadVariableOp?dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_630232dense_4_630234*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_6302312!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_630255dense_5_630257*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_6302542!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_630278dense_6_630280*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_6302772!
dense_6/StatefulPartitionedCall?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0outputlayer_630301outputlayer_630303*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_6303002%
#outputlayer/StatefulPartitionedCall?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_630232* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mul?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_630255* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mul?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_630278* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_630301* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp ^dense_4/StatefulPartitionedCall1^dense_4/kernel/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_630976Q
=outputlayer_kernel_regularizer_square_readvariableop_resource:
??
identity??4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=outputlayer_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
(__inference_dense_4_layer_call_fn_630819

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_6302312
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_outputlayer_layer_call_fn_630915

inputs
unknown:
??
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
*2
config_proto" 

CPU

GPU2*0J 8@? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_6303002
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
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_6_layer_call_and_return_conditional_losses_630277

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_630943M
9dense_4_kernel_regularizer_square_readvariableop_resource:
??
identity??0dense_4/kernel/Regularizer/Square/ReadVariableOp?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_4_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mull
IdentityIdentity"dense_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_2_630965M
9dense_6_kernel_regularizer_square_readvariableop_resource:
??
identity??0dense_6/kernel/Regularizer/Square/ReadVariableOp?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_6_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mull
IdentityIdentity"dense_6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp
?
?
G__inference_outputlayer_layer_call_and_return_conditional_losses_630300

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Q
?
C__inference_model_2_layer_call_and_return_conditional_losses_630748

inputs:
&dense_4_matmul_readvariableop_resource:
??6
'dense_4_biasadd_readvariableop_resource:	?:
&dense_5_matmul_readvariableop_resource:
??6
'dense_5_biasadd_readvariableop_resource:	?:
&dense_6_matmul_readvariableop_resource:
??6
'dense_6_biasadd_readvariableop_resource:	?>
*outputlayer_matmul_readvariableop_resource:
??:
+outputlayer_biasadd_readvariableop_resource:	?
identity??dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?0dense_4/kernel/Regularizer/Square/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?0dense_5/kernel/Regularizer/Square/ReadVariableOp?dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?"outputlayer/BiasAdd/ReadVariableOp?!outputlayer/MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMulinputs%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddq
dense_4/TanhTanhdense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_4/Tanh?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuldense_4/Tanh:y:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_5/BiasAddq
dense_5/TanhTanhdense_5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_5/Tanh?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMuldense_5/Tanh:y:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_6/BiasAddq
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_6/Tanh?
!outputlayer/MatMul/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!outputlayer/MatMul/ReadVariableOp?
outputlayer/MatMulMatMuldense_6/Tanh:y:0)outputlayer/MatMul/ReadVariableOp:value:0*
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
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mul?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mul?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*outputlayer_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp1^dense_4/kernel/Regularizer/Square/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp#^outputlayer/BiasAdd/ReadVariableOp"^outputlayer/MatMul/ReadVariableOp5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2H
"outputlayer/BiasAdd/ReadVariableOp"outputlayer/BiasAdd/ReadVariableOp2F
!outputlayer/MatMul/ReadVariableOp!outputlayer/MatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
(__inference_model_2_layer_call_fn_630501
input_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_6304612
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
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
?
C__inference_dense_5_layer_call_and_return_conditional_losses_630254

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_5/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
(__inference_model_2_layer_call_fn_630692

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
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

*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_6304612
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
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
C__inference_model_2_layer_call_and_return_conditional_losses_630461

inputs"
dense_4_630416:
??
dense_4_630418:	?"
dense_5_630421:
??
dense_5_630423:	?"
dense_6_630426:
??
dense_6_630428:	?&
outputlayer_630431:
??!
outputlayer_630433:	?
identity??dense_4/StatefulPartitionedCall?0dense_4/kernel/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?0dense_5/kernel/Regularizer/Square/ReadVariableOp?dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_630416dense_4_630418*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_6302312!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_630421dense_5_630423*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_6302542!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_630426dense_6_630428*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_6302772!
dense_6/StatefulPartitionedCall?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0outputlayer_630431outputlayer_630433*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_6303002%
#outputlayer/StatefulPartitionedCall?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_630416* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mul?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_630421* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mul?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_630426* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_630431* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp ^dense_4/StatefulPartitionedCall1^dense_4/kernel/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
(__inference_model_2_layer_call_fn_630350
input_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_6303312
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
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?L
?
__inference__traced_save_631104
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop1
-savev2_outputlayer_kernel_read_readvariableop/
+savev2_outputlayer_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop6
2savev2_adamax_dense_4_kernel_m_read_readvariableop4
0savev2_adamax_dense_4_bias_m_read_readvariableop6
2savev2_adamax_dense_5_kernel_m_read_readvariableop4
0savev2_adamax_dense_5_bias_m_read_readvariableop6
2savev2_adamax_dense_6_kernel_m_read_readvariableop4
0savev2_adamax_dense_6_bias_m_read_readvariableop:
6savev2_adamax_outputlayer_kernel_m_read_readvariableop8
4savev2_adamax_outputlayer_bias_m_read_readvariableop6
2savev2_adamax_dense_4_kernel_v_read_readvariableop4
0savev2_adamax_dense_4_bias_v_read_readvariableop6
2savev2_adamax_dense_5_kernel_v_read_readvariableop4
0savev2_adamax_dense_5_bias_v_read_readvariableop6
2savev2_adamax_dense_6_kernel_v_read_readvariableop4
0savev2_adamax_dense_6_bias_v_read_readvariableop:
6savev2_adamax_outputlayer_kernel_v_read_readvariableop8
4savev2_adamax_outputlayer_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*?
value?B?$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop-savev2_outputlayer_kernel_read_readvariableop+savev2_outputlayer_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop2savev2_adamax_dense_4_kernel_m_read_readvariableop0savev2_adamax_dense_4_bias_m_read_readvariableop2savev2_adamax_dense_5_kernel_m_read_readvariableop0savev2_adamax_dense_5_bias_m_read_readvariableop2savev2_adamax_dense_6_kernel_m_read_readvariableop0savev2_adamax_dense_6_bias_m_read_readvariableop6savev2_adamax_outputlayer_kernel_m_read_readvariableop4savev2_adamax_outputlayer_bias_m_read_readvariableop2savev2_adamax_dense_4_kernel_v_read_readvariableop0savev2_adamax_dense_4_bias_v_read_readvariableop2savev2_adamax_dense_5_kernel_v_read_readvariableop0savev2_adamax_dense_5_bias_v_read_readvariableop2savev2_adamax_dense_6_kernel_v_read_readvariableop0savev2_adamax_dense_6_bias_v_read_readvariableop6savev2_adamax_outputlayer_kernel_v_read_readvariableop4savev2_adamax_outputlayer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
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
?: :
??:?:
??:?:
??:?:
??:?: : : : : : : : : : : :
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!
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
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:& "
 
_output_shapes
:
??:!!

_output_shapes	
:?:&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:$

_output_shapes
: 
??
?
C__inference_model_2_layer_call_and_return_conditional_losses_630549
input_3"
dense_4_630504:
??
dense_4_630506:	?"
dense_5_630509:
??
dense_5_630511:	?"
dense_6_630514:
??
dense_6_630516:	?&
outputlayer_630519:
??!
outputlayer_630521:	?
identity??dense_4/StatefulPartitionedCall?0dense_4/kernel/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?0dense_5/kernel/Regularizer/Square/ReadVariableOp?dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?#outputlayer/StatefulPartitionedCall?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
dense_4/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_4_630504dense_4_630506*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_6302312!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_630509dense_5_630511*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_6302542!
dense_5/StatefulPartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0dense_6_630514dense_6_630516*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_6302772!
dense_6/StatefulPartitionedCall?
#outputlayer/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0outputlayer_630519outputlayer_630521*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *P
fKRI
G__inference_outputlayer_layer_call_and_return_conditional_losses_6303002%
#outputlayer/StatefulPartitionedCall?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_630504* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/mul?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_630509* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/mul?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_630514* 
_output_shapes
:
??*
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_6/kernel/Regularizer/Square?
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_6/kernel/Regularizer/Const?
dense_6/kernel/Regularizer/SumSum%dense_6/kernel/Regularizer/Square:y:0)dense_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/Sum?
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_6/kernel/Regularizer/mul/x?
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_6/kernel/Regularizer/mul?
4outputlayer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutputlayer_630519* 
_output_shapes
:
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
NoOpNoOp ^dense_4/StatefulPartitionedCall1^dense_4/kernel/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall1^dense_5/kernel/Regularizer/Square/ReadVariableOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp$^outputlayer/StatefulPartitionedCall5^outputlayer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2J
#outputlayer/StatefulPartitionedCall#outputlayer/StatefulPartitionedCall2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
?
(__inference_dense_5_layer_call_fn_630851

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_6302542
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_outputlayer_layer_call_and_return_conditional_losses_630932

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
??*
dtype026
4outputlayer/kernel/Regularizer/Square/ReadVariableOp?
%outputlayer/kernel/Regularizer/SquareSquare<outputlayer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2'
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
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4outputlayer/kernel/Regularizer/Square/ReadVariableOp4outputlayer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_6_layer_call_fn_630883

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_6302772
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_630650
input_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2*0J 8@? **
f%R#
!__inference__wrapped_model_6302072
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
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?
?
C__inference_dense_5_layer_call_and_return_conditional_losses_630868

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_5/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_5/kernel/Regularizer/Square/ReadVariableOp?
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_5/kernel/Regularizer/Square?
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_5/kernel/Regularizer/Const?
dense_5/kernel/Regularizer/SumSum%dense_5/kernel/Regularizer/Square:y:0)dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/Sum?
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_5/kernel/Regularizer/mul/x?
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_5/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_630836

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_4/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
0dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_4/kernel/Regularizer/Square/ReadVariableOp?
!dense_4/kernel/Regularizer/SquareSquare8dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_4/kernel/Regularizer/Square?
 dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_4/kernel/Regularizer/Const?
dense_4/kernel/Regularizer/SumSum%dense_4/kernel/Regularizer/Square:y:0)dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/Sum?
 dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_4/kernel/Regularizer/mul/x?
dense_4/kernel/Regularizer/mulMul)dense_4/kernel/Regularizer/mul/x:output:0'dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_4/kernel/Regularizer/muld
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_4/kernel/Regularizer/Square/ReadVariableOp0dense_4/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_631219
file_prefix3
assignvariableop_dense_4_kernel:
??.
assignvariableop_1_dense_4_bias:	?5
!assignvariableop_2_dense_5_kernel:
??.
assignvariableop_3_dense_5_bias:	?5
!assignvariableop_4_dense_6_kernel:
??.
assignvariableop_5_dense_6_bias:	?9
%assignvariableop_6_outputlayer_kernel:
??2
#assignvariableop_7_outputlayer_bias:	?(
assignvariableop_8_adamax_iter:	 *
 assignvariableop_9_adamax_beta_1: +
!assignvariableop_10_adamax_beta_2: *
 assignvariableop_11_adamax_decay: 2
(assignvariableop_12_adamax_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: %
assignvariableop_17_total_2: %
assignvariableop_18_count_2: ?
+assignvariableop_19_adamax_dense_4_kernel_m:
??8
)assignvariableop_20_adamax_dense_4_bias_m:	??
+assignvariableop_21_adamax_dense_5_kernel_m:
??8
)assignvariableop_22_adamax_dense_5_bias_m:	??
+assignvariableop_23_adamax_dense_6_kernel_m:
??8
)assignvariableop_24_adamax_dense_6_bias_m:	?C
/assignvariableop_25_adamax_outputlayer_kernel_m:
??<
-assignvariableop_26_adamax_outputlayer_bias_m:	??
+assignvariableop_27_adamax_dense_4_kernel_v:
??8
)assignvariableop_28_adamax_dense_4_bias_v:	??
+assignvariableop_29_adamax_dense_5_kernel_v:
??8
)assignvariableop_30_adamax_dense_5_bias_v:	??
+assignvariableop_31_adamax_dense_6_kernel_v:
??8
)assignvariableop_32_adamax_dense_6_bias_v:	?C
/assignvariableop_33_adamax_outputlayer_kernel_v:
??<
-assignvariableop_34_adamax_outputlayer_bias_v:	?
identity_36??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*?
value?B?$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_6_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_8AssignVariableOpassignvariableop_8_adamax_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_adamax_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_adamax_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_adamax_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adamax_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
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
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adamax_dense_4_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adamax_dense_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adamax_dense_5_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adamax_dense_5_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adamax_dense_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adamax_dense_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp/assignvariableop_25_adamax_outputlayer_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_adamax_outputlayer_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adamax_dense_4_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adamax_dense_4_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adamax_dense_5_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adamax_dense_5_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adamax_dense_6_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adamax_dense_6_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp/assignvariableop_33_adamax_outputlayer_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp-assignvariableop_34_adamax_outputlayer_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35f
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_36?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342(
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
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
input_31
serving_default_input_3:0??????????@
outputlayer1
StatefulPartitionedCall:0??????????tensorflow/serving/predict:?h
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
b__call__
c_default_save_signature
*d&call_and_return_all_conditional_losses"
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
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$iter

%beta_1

&beta_2
	'decay
(learning_ratemRmSmTmUmVmWmXmYvZv[v\v]v^v_v`va"
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
m0
n1
o2
p3"
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
)layer_regularization_losses
trainable_variables
regularization_losses

*layers
		variables
+layer_metrics
,metrics
-non_trainable_variables
b__call__
c_default_save_signature
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
,
qserving_default"
signature_map
": 
??2dense_4/kernel
:?2dense_4/bias
.
0
1"
trackable_list_wrapper
'
m0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
.layer_regularization_losses
trainable_variables
regularization_losses

/layers
	variables
0layer_metrics
1metrics
2non_trainable_variables
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_5/kernel
:?2dense_5/bias
.
0
1"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
3layer_regularization_losses
trainable_variables
regularization_losses

4layers
	variables
5layer_metrics
6metrics
7non_trainable_variables
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_6/kernel
:?2dense_6/bias
.
0
1"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
8layer_regularization_losses
trainable_variables
regularization_losses

9layers
	variables
:layer_metrics
;metrics
<non_trainable_variables
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
&:$
??2outputlayer/kernel
:?2outputlayer/bias
.
0
1"
trackable_list_wrapper
'
p0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
=layer_regularization_losses
 trainable_variables
!regularization_losses

>layers
"	variables
?layer_metrics
@metrics
Anon_trainable_variables
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
5
B0
C1
D2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
m0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
p0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	Etotal
	Fcount
G	variables
H	keras_api"
_tf_keras_metric
^
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api"
_tf_keras_metric
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
E0
F1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
):'
??2Adamax/dense_4/kernel/m
": ?2Adamax/dense_4/bias/m
):'
??2Adamax/dense_5/kernel/m
": ?2Adamax/dense_5/bias/m
):'
??2Adamax/dense_6/kernel/m
": ?2Adamax/dense_6/bias/m
-:+
??2Adamax/outputlayer/kernel/m
&:$?2Adamax/outputlayer/bias/m
):'
??2Adamax/dense_4/kernel/v
": ?2Adamax/dense_4/bias/v
):'
??2Adamax/dense_5/kernel/v
": ?2Adamax/dense_5/bias/v
):'
??2Adamax/dense_6/kernel/v
": ?2Adamax/dense_6/bias/v
-:+
??2Adamax/outputlayer/kernel/v
&:$?2Adamax/outputlayer/bias/v
?2?
(__inference_model_2_layer_call_fn_630350
(__inference_model_2_layer_call_fn_630671
(__inference_model_2_layer_call_fn_630692
(__inference_model_2_layer_call_fn_630501?
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
!__inference__wrapped_model_630207input_3"?
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
?2?
C__inference_model_2_layer_call_and_return_conditional_losses_630748
C__inference_model_2_layer_call_and_return_conditional_losses_630804
C__inference_model_2_layer_call_and_return_conditional_losses_630549
C__inference_model_2_layer_call_and_return_conditional_losses_630597?
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
(__inference_dense_4_layer_call_fn_630819?
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
C__inference_dense_4_layer_call_and_return_conditional_losses_630836?
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
(__inference_dense_5_layer_call_fn_630851?
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
C__inference_dense_5_layer_call_and_return_conditional_losses_630868?
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
(__inference_dense_6_layer_call_fn_630883?
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
C__inference_dense_6_layer_call_and_return_conditional_losses_630900?
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
,__inference_outputlayer_layer_call_fn_630915?
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
G__inference_outputlayer_layer_call_and_return_conditional_losses_630932?
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
__inference_loss_fn_0_630943?
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
__inference_loss_fn_1_630954?
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
__inference_loss_fn_2_630965?
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
__inference_loss_fn_3_630976?
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
$__inference_signature_wrapper_630650input_3"?
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
!__inference__wrapped_model_630207y1?.
'?$
"?
input_3??????????
? ":?7
5
outputlayer&?#
outputlayer???????????
C__inference_dense_4_layer_call_and_return_conditional_losses_630836^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_4_layer_call_fn_630819Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_5_layer_call_and_return_conditional_losses_630868^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_5_layer_call_fn_630851Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_6_layer_call_and_return_conditional_losses_630900^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_6_layer_call_fn_630883Q0?-
&?#
!?
inputs??????????
? "???????????;
__inference_loss_fn_0_630943?

? 
? "? ;
__inference_loss_fn_1_630954?

? 
? "? ;
__inference_loss_fn_2_630965?

? 
? "? ;
__inference_loss_fn_3_630976?

? 
? "? ?
C__inference_model_2_layer_call_and_return_conditional_losses_630549m9?6
/?,
"?
input_3??????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_630597m9?6
/?,
"?
input_3??????????
p

 
? "&?#
?
0??????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_630748l8?5
.?+
!?
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
C__inference_model_2_layer_call_and_return_conditional_losses_630804l8?5
.?+
!?
inputs??????????
p

 
? "&?#
?
0??????????
? ?
(__inference_model_2_layer_call_fn_630350`9?6
/?,
"?
input_3??????????
p 

 
? "????????????
(__inference_model_2_layer_call_fn_630501`9?6
/?,
"?
input_3??????????
p

 
? "????????????
(__inference_model_2_layer_call_fn_630671_8?5
.?+
!?
inputs??????????
p 

 
? "????????????
(__inference_model_2_layer_call_fn_630692_8?5
.?+
!?
inputs??????????
p

 
? "????????????
G__inference_outputlayer_layer_call_and_return_conditional_losses_630932^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_outputlayer_layer_call_fn_630915Q0?-
&?#
!?
inputs??????????
? "????????????
$__inference_signature_wrapper_630650?<?9
? 
2?/
-
input_3"?
input_3??????????":?7
5
outputlayer&?#
outputlayer??????????