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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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

x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

: *
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
: *
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

: @*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:@*
dtype0
?
wall_heat_transfer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?
**
shared_namewall_heat_transfer/kernel
?
-wall_heat_transfer/kernel/Read/ReadVariableOpReadVariableOpwall_heat_transfer/kernel*
_output_shapes
:	@?
*
dtype0
?
wall_heat_transfer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*(
shared_namewall_heat_transfer/bias
?
+wall_heat_transfer/bias/Read/ReadVariableOpReadVariableOpwall_heat_transfer/bias*
_output_shapes	
:?
*
dtype0
?
wall_pressure/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?
*%
shared_namewall_pressure/kernel
~
(wall_pressure/kernel/Read/ReadVariableOpReadVariableOpwall_pressure/kernel*
_output_shapes
:	@?
*
dtype0
}
wall_pressure/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*#
shared_namewall_pressure/bias
v
&wall_pressure/bias/Read/ReadVariableOpReadVariableOpwall_pressure/bias*
_output_shapes	
:?
*
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
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
?
Adamax/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdamax/dense_6/kernel/m
?
+Adamax/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_6/kernel/m*
_output_shapes

: *
dtype0
?
Adamax/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdamax/dense_6/bias/m
{
)Adamax/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_6/bias/m*
_output_shapes
: *
dtype0
?
Adamax/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*(
shared_nameAdamax/dense_7/kernel/m
?
+Adamax/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_7/kernel/m*
_output_shapes

: @*
dtype0
?
Adamax/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdamax/dense_7/bias/m
{
)Adamax/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_7/bias/m*
_output_shapes
:@*
dtype0
?
"Adamax/wall_heat_transfer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?
*3
shared_name$"Adamax/wall_heat_transfer/kernel/m
?
6Adamax/wall_heat_transfer/kernel/m/Read/ReadVariableOpReadVariableOp"Adamax/wall_heat_transfer/kernel/m*
_output_shapes
:	@?
*
dtype0
?
 Adamax/wall_heat_transfer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*1
shared_name" Adamax/wall_heat_transfer/bias/m
?
4Adamax/wall_heat_transfer/bias/m/Read/ReadVariableOpReadVariableOp Adamax/wall_heat_transfer/bias/m*
_output_shapes	
:?
*
dtype0
?
Adamax/wall_pressure/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?
*.
shared_nameAdamax/wall_pressure/kernel/m
?
1Adamax/wall_pressure/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/wall_pressure/kernel/m*
_output_shapes
:	@?
*
dtype0
?
Adamax/wall_pressure/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*,
shared_nameAdamax/wall_pressure/bias/m
?
/Adamax/wall_pressure/bias/m/Read/ReadVariableOpReadVariableOpAdamax/wall_pressure/bias/m*
_output_shapes	
:?
*
dtype0
?
Adamax/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdamax/dense_6/kernel/v
?
+Adamax/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_6/kernel/v*
_output_shapes

: *
dtype0
?
Adamax/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdamax/dense_6/bias/v
{
)Adamax/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_6/bias/v*
_output_shapes
: *
dtype0
?
Adamax/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*(
shared_nameAdamax/dense_7/kernel/v
?
+Adamax/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_7/kernel/v*
_output_shapes

: @*
dtype0
?
Adamax/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdamax/dense_7/bias/v
{
)Adamax/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_7/bias/v*
_output_shapes
:@*
dtype0
?
"Adamax/wall_heat_transfer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?
*3
shared_name$"Adamax/wall_heat_transfer/kernel/v
?
6Adamax/wall_heat_transfer/kernel/v/Read/ReadVariableOpReadVariableOp"Adamax/wall_heat_transfer/kernel/v*
_output_shapes
:	@?
*
dtype0
?
 Adamax/wall_heat_transfer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*1
shared_name" Adamax/wall_heat_transfer/bias/v
?
4Adamax/wall_heat_transfer/bias/v/Read/ReadVariableOpReadVariableOp Adamax/wall_heat_transfer/bias/v*
_output_shapes	
:?
*
dtype0
?
Adamax/wall_pressure/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?
*.
shared_nameAdamax/wall_pressure/kernel/v
?
1Adamax/wall_pressure/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/wall_pressure/kernel/v*
_output_shapes
:	@?
*
dtype0
?
Adamax/wall_pressure/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?
*,
shared_nameAdamax/wall_pressure/bias/v
?
/Adamax/wall_pressure/bias/v/Read/ReadVariableOpReadVariableOpAdamax/wall_pressure/bias/v*
_output_shapes	
:?
*
dtype0

NoOpNoOp
?<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?;
value?;B?; B?;
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
 
 
 
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
h

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?
,iter

-beta_1

.beta_2
	/decay
0learning_ratemtmumvmw mx!my&mz'm{v|v}v~v v?!v?&v?'v?
8
0
1
2
3
 4
!5
&6
'7
 
8
0
1
2
3
 4
!5
&6
'7
?
trainable_variables
regularization_losses

1layers
2non_trainable_variables
3layer_regularization_losses
	variables
4metrics
5layer_metrics
 
 
 
 
?
trainable_variables
regularization_losses

6layers
7non_trainable_variables
8layer_regularization_losses
	variables
9metrics
:layer_metrics
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
regularization_losses

;layers
<non_trainable_variables
=layer_regularization_losses
	variables
>metrics
?layer_metrics
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
regularization_losses

@layers
Anon_trainable_variables
Blayer_regularization_losses
	variables
Cmetrics
Dlayer_metrics
ec
VARIABLE_VALUEwall_heat_transfer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEwall_heat_transfer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
?
"trainable_variables
#regularization_losses

Elayers
Fnon_trainable_variables
Glayer_regularization_losses
$	variables
Hmetrics
Ilayer_metrics
`^
VARIABLE_VALUEwall_pressure/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEwall_pressure/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
?
(trainable_variables
)regularization_losses

Jlayers
Knon_trainable_variables
Llayer_regularization_losses
*	variables
Mmetrics
Nlayer_metrics
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
?
0
1
2
3
4
5
6
7
	8
 
 
1
O0
P1
Q2
R3
S4
T5
U6
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
4
	Vtotal
	Wcount
X	variables
Y	keras_api
4
	Ztotal
	[count
\	variables
]	keras_api
4
	^total
	_count
`	variables
a	keras_api
D
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api
4
	gtotal
	hcount
i	variables
j	keras_api
D
	ktotal
	lcount
m
_fn_kwargs
n	variables
o	keras_api
4
	ptotal
	qcount
r	variables
s	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

X	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1
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
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

b0
c1

e	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE

g0
h1

i	variables
QO
VARIABLE_VALUEtotal_54keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_54keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE
 

k0
l1

n	variables
QO
VARIABLE_VALUEtotal_64keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_64keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUE

p0
q1

r	variables
}
VARIABLE_VALUEAdamax/dense_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adamax/wall_heat_transfer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adamax/wall_heat_transfer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/wall_pressure/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/wall_pressure/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdamax/dense_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdamax/dense_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adamax/wall_heat_transfer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adamax/wall_heat_transfer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/wall_pressure/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/wall_pressure/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_freestream_densityPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_freestream_tempPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
#serving_default_freestream_velocityPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_walltempPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_freestream_densityserving_default_freestream_temp#serving_default_freestream_velocityserving_default_walltempdense_6/kerneldense_6/biasdense_7/kerneldense_7/biaswall_pressure/kernelwall_pressure/biaswall_heat_transfer/kernelwall_heat_transfer/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????
:??????????
**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0J 8@? *.
f)R'
%__inference_signature_wrapper_1826919
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp-wall_heat_transfer/kernel/Read/ReadVariableOp+wall_heat_transfer/bias/Read/ReadVariableOp(wall_pressure/kernel/Read/ReadVariableOp&wall_pressure/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOp+Adamax/dense_6/kernel/m/Read/ReadVariableOp)Adamax/dense_6/bias/m/Read/ReadVariableOp+Adamax/dense_7/kernel/m/Read/ReadVariableOp)Adamax/dense_7/bias/m/Read/ReadVariableOp6Adamax/wall_heat_transfer/kernel/m/Read/ReadVariableOp4Adamax/wall_heat_transfer/bias/m/Read/ReadVariableOp1Adamax/wall_pressure/kernel/m/Read/ReadVariableOp/Adamax/wall_pressure/bias/m/Read/ReadVariableOp+Adamax/dense_6/kernel/v/Read/ReadVariableOp)Adamax/dense_6/bias/v/Read/ReadVariableOp+Adamax/dense_7/kernel/v/Read/ReadVariableOp)Adamax/dense_7/bias/v/Read/ReadVariableOp6Adamax/wall_heat_transfer/kernel/v/Read/ReadVariableOp4Adamax/wall_heat_transfer/bias/v/Read/ReadVariableOp1Adamax/wall_pressure/kernel/v/Read/ReadVariableOp/Adamax/wall_pressure/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
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
GPU2*0J 8@? *)
f$R"
 __inference__traced_save_1827440
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/biaswall_heat_transfer/kernelwall_heat_transfer/biaswall_pressure/kernelwall_pressure/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4total_5count_5total_6count_6Adamax/dense_6/kernel/mAdamax/dense_6/bias/mAdamax/dense_7/kernel/mAdamax/dense_7/bias/m"Adamax/wall_heat_transfer/kernel/m Adamax/wall_heat_transfer/bias/mAdamax/wall_pressure/kernel/mAdamax/wall_pressure/bias/mAdamax/dense_6/kernel/vAdamax/dense_6/bias/vAdamax/dense_7/kernel/vAdamax/dense_7/bias/v"Adamax/wall_heat_transfer/kernel/v Adamax/wall_heat_transfer/bias/vAdamax/wall_pressure/kernel/vAdamax/wall_pressure/bias/v*7
Tin0
.2,*
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
GPU2*0J 8@? *,
f'R%
#__inference__traced_restore_1827579??	
?
?
)__inference_dense_6_layer_call_fn_1827144

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_18264532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
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
?\
?	
D__inference_model_3_layer_call_and_return_conditional_losses_1827033
inputs_0
inputs_1
inputs_2
inputs_38
&dense_6_matmul_readvariableop_resource: 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: @5
'dense_7_biasadd_readvariableop_resource:@?
,wall_pressure_matmul_readvariableop_resource:	@?
<
-wall_pressure_biasadd_readvariableop_resource:	?
D
1wall_heat_transfer_matmul_readvariableop_resource:	@?
A
2wall_heat_transfer_biasadd_readvariableop_resource:	?

identity

identity_1??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?0dense_7/kernel/Regularizer/Square/ReadVariableOp?)wall_heat_transfer/BiasAdd/ReadVariableOp?(wall_heat_transfer/MatMul/ReadVariableOp?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?$wall_pressure/BiasAdd/ReadVariableOp?#wall_pressure/MatMul/ReadVariableOp?6wall_pressure/kernel/Regularizer/Square/ReadVariableOpx
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2inputs_0inputs_1inputs_2inputs_3"concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatenate_3/concat?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulconcatenate_3/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/BiasAddp
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_6/Tanh?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldense_6/Tanh:y:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_7/BiasAddp
dense_7/TanhTanhdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_7/Tanh?
#wall_pressure/MatMul/ReadVariableOpReadVariableOp,wall_pressure_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02%
#wall_pressure/MatMul/ReadVariableOp?
wall_pressure/MatMulMatMuldense_7/Tanh:y:0+wall_pressure/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_pressure/MatMul?
$wall_pressure/BiasAdd/ReadVariableOpReadVariableOp-wall_pressure_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02&
$wall_pressure/BiasAdd/ReadVariableOp?
wall_pressure/BiasAddBiasAddwall_pressure/MatMul:product:0,wall_pressure/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_pressure/BiasAdd?
wall_pressure/LeakyRelu	LeakyReluwall_pressure/BiasAdd:output:0*(
_output_shapes
:??????????
2
wall_pressure/LeakyRelu?
(wall_heat_transfer/MatMul/ReadVariableOpReadVariableOp1wall_heat_transfer_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02*
(wall_heat_transfer/MatMul/ReadVariableOp?
wall_heat_transfer/MatMulMatMuldense_7/Tanh:y:00wall_heat_transfer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_heat_transfer/MatMul?
)wall_heat_transfer/BiasAdd/ReadVariableOpReadVariableOp2wall_heat_transfer_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02+
)wall_heat_transfer/BiasAdd/ReadVariableOp?
wall_heat_transfer/BiasAddBiasAdd#wall_heat_transfer/MatMul:product:01wall_heat_transfer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_heat_transfer/BiasAdd?
wall_heat_transfer/LeakyRelu	LeakyRelu#wall_heat_transfer/BiasAdd:output:0*(
_output_shapes
:??????????
2
wall_heat_transfer/LeakyRelu?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mul?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1wall_heat_transfer_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mul?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,wall_pressure_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mul?
IdentityIdentity*wall_heat_transfer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity%wall_pressure/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*^wall_heat_transfer/BiasAdd/ReadVariableOp)^wall_heat_transfer/MatMul/ReadVariableOp<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp%^wall_pressure/BiasAdd/ReadVariableOp$^wall_pressure/MatMul/ReadVariableOp7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2V
)wall_heat_transfer/BiasAdd/ReadVariableOp)wall_heat_transfer/BiasAdd/ReadVariableOp2T
(wall_heat_transfer/MatMul/ReadVariableOp(wall_heat_transfer/MatMul/ReadVariableOp2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp2L
$wall_pressure/BiasAdd/ReadVariableOp$wall_pressure/BiasAdd/ReadVariableOp2J
#wall_pressure/MatMul/ReadVariableOp#wall_pressure/MatMul/ReadVariableOp2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?K
?
D__inference_model_3_layer_call_and_return_conditional_losses_1826808
walltemp
freestream_density
freestream_temp
freestream_velocity!
dense_6_1826762: 
dense_6_1826764: !
dense_7_1826767: @
dense_7_1826769:@(
wall_pressure_1826772:	@?
$
wall_pressure_1826774:	?
-
wall_heat_transfer_1826777:	@?
)
wall_heat_transfer_1826779:	?

identity

identity_1??dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?dense_7/StatefulPartitionedCall?0dense_7/kernel/Regularizer/Square/ReadVariableOp?*wall_heat_transfer/StatefulPartitionedCall?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?%wall_pressure/StatefulPartitionedCall?6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
concatenate_3/PartitionedCallPartitionedCallwalltempfreestream_densityfreestream_tempfreestream_velocity*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_18264342
concatenate_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0dense_6_1826762dense_6_1826764*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_18264532!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1826767dense_7_1826769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_18264762!
dense_7/StatefulPartitionedCall?
%wall_pressure/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_pressure_1826772wall_pressure_1826774*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_wall_pressure_layer_call_and_return_conditional_losses_18264992'
%wall_pressure/StatefulPartitionedCall?
*wall_heat_transfer/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_heat_transfer_1826777wall_heat_transfer_1826779*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *X
fSRQ
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_18265222,
*wall_heat_transfer/StatefulPartitionedCall?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_1826762*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_1826767*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mul?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_heat_transfer_1826777*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mul?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_pressure_1826772*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mul?
IdentityIdentity3wall_heat_transfer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity.wall_pressure/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp+^wall_heat_transfer/StatefulPartitionedCall<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp&^wall_pressure/StatefulPartitionedCall7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2X
*wall_heat_transfer/StatefulPartitionedCall*wall_heat_transfer/StatefulPartitionedCall2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp2N
%wall_pressure/StatefulPartitionedCall%wall_pressure/StatefulPartitionedCall2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
walltemp:[W
'
_output_shapes
:?????????
,
_user_specified_namefreestream_density:XT
'
_output_shapes
:?????????
)
_user_specified_namefreestream_temp:\X
'
_output_shapes
:?????????
-
_user_specified_namefreestream_velocity
?
?
J__inference_wall_pressure_layer_call_and_return_conditional_losses_1826499

inputs1
matmul_readvariableop_resource:	@?
.
biasadd_readvariableop_resource:	?

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????
2
	LeakyRelu?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/muls
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?J
?
D__inference_model_3_layer_call_and_return_conditional_losses_1826554

inputs
inputs_1
inputs_2
inputs_3!
dense_6_1826454: 
dense_6_1826456: !
dense_7_1826477: @
dense_7_1826479:@(
wall_pressure_1826500:	@?
$
wall_pressure_1826502:	?
-
wall_heat_transfer_1826523:	@?
)
wall_heat_transfer_1826525:	?

identity

identity_1??dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?dense_7/StatefulPartitionedCall?0dense_7/kernel/Regularizer/Square/ReadVariableOp?*wall_heat_transfer/StatefulPartitionedCall?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?%wall_pressure/StatefulPartitionedCall?6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
concatenate_3/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_18264342
concatenate_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0dense_6_1826454dense_6_1826456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_18264532!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1826477dense_7_1826479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_18264762!
dense_7/StatefulPartitionedCall?
%wall_pressure/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_pressure_1826500wall_pressure_1826502*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_wall_pressure_layer_call_and_return_conditional_losses_18264992'
%wall_pressure/StatefulPartitionedCall?
*wall_heat_transfer/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_heat_transfer_1826523wall_heat_transfer_1826525*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *X
fSRQ
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_18265222,
*wall_heat_transfer/StatefulPartitionedCall?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_1826454*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_1826477*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mul?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_heat_transfer_1826523*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mul?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_pressure_1826500*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mul?
IdentityIdentity3wall_heat_transfer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity.wall_pressure/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp+^wall_heat_transfer/StatefulPartitionedCall<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp&^wall_pressure/StatefulPartitionedCall7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2X
*wall_heat_transfer/StatefulPartitionedCall*wall_heat_transfer/StatefulPartitionedCall2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp2N
%wall_pressure/StatefulPartitionedCall%wall_pressure/StatefulPartitionedCall2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1827579
file_prefix1
assignvariableop_dense_6_kernel: -
assignvariableop_1_dense_6_bias: 3
!assignvariableop_2_dense_7_kernel: @-
assignvariableop_3_dense_7_bias:@?
,assignvariableop_4_wall_heat_transfer_kernel:	@?
9
*assignvariableop_5_wall_heat_transfer_bias:	?
:
'assignvariableop_6_wall_pressure_kernel:	@?
4
%assignvariableop_7_wall_pressure_bias:	?
(
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
assignvariableop_18_count_2: %
assignvariableop_19_total_3: %
assignvariableop_20_count_3: %
assignvariableop_21_total_4: %
assignvariableop_22_count_4: %
assignvariableop_23_total_5: %
assignvariableop_24_count_5: %
assignvariableop_25_total_6: %
assignvariableop_26_count_6: =
+assignvariableop_27_adamax_dense_6_kernel_m: 7
)assignvariableop_28_adamax_dense_6_bias_m: =
+assignvariableop_29_adamax_dense_7_kernel_m: @7
)assignvariableop_30_adamax_dense_7_bias_m:@I
6assignvariableop_31_adamax_wall_heat_transfer_kernel_m:	@?
C
4assignvariableop_32_adamax_wall_heat_transfer_bias_m:	?
D
1assignvariableop_33_adamax_wall_pressure_kernel_m:	@?
>
/assignvariableop_34_adamax_wall_pressure_bias_m:	?
=
+assignvariableop_35_adamax_dense_6_kernel_v: 7
)assignvariableop_36_adamax_dense_6_bias_v: =
+assignvariableop_37_adamax_dense_7_kernel_v: @7
)assignvariableop_38_adamax_dense_7_bias_v:@I
6assignvariableop_39_adamax_wall_heat_transfer_kernel_v:	@?
C
4assignvariableop_40_adamax_wall_heat_transfer_bias_v:	?
D
1assignvariableop_41_adamax_wall_pressure_kernel_v:	@?
>
/assignvariableop_42_adamax_wall_pressure_bias_v:	?

identity_44??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_wall_heat_transfer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp*assignvariableop_5_wall_heat_transfer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp'assignvariableop_6_wall_pressure_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_wall_pressure_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_3Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_3Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_4Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_4Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_5Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_5Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_6Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_6Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adamax_dense_6_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adamax_dense_6_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adamax_dense_7_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adamax_dense_7_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adamax_wall_heat_transfer_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adamax_wall_heat_transfer_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp1assignvariableop_33_adamax_wall_pressure_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp/assignvariableop_34_adamax_wall_pressure_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adamax_dense_6_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adamax_dense_6_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adamax_dense_7_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adamax_dense_7_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adamax_wall_heat_transfer_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp4assignvariableop_40_adamax_wall_heat_transfer_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp1assignvariableop_41_adamax_wall_pressure_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp/assignvariableop_42_adamax_wall_pressure_bias_vIdentity_42:output:0"/device:CPU:0*
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
?
?
4__inference_wall_heat_transfer_layer_call_fn_1827208

inputs
unknown:	@?

	unknown_0:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *X
fSRQ
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_18265222
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

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
?K
?
D__inference_model_3_layer_call_and_return_conditional_losses_1826861
walltemp
freestream_density
freestream_temp
freestream_velocity!
dense_6_1826815: 
dense_6_1826817: !
dense_7_1826820: @
dense_7_1826822:@(
wall_pressure_1826825:	@?
$
wall_pressure_1826827:	?
-
wall_heat_transfer_1826830:	@?
)
wall_heat_transfer_1826832:	?

identity

identity_1??dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?dense_7/StatefulPartitionedCall?0dense_7/kernel/Regularizer/Square/ReadVariableOp?*wall_heat_transfer/StatefulPartitionedCall?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?%wall_pressure/StatefulPartitionedCall?6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
concatenate_3/PartitionedCallPartitionedCallwalltempfreestream_densityfreestream_tempfreestream_velocity*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_18264342
concatenate_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0dense_6_1826815dense_6_1826817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_18264532!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1826820dense_7_1826822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_18264762!
dense_7/StatefulPartitionedCall?
%wall_pressure/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_pressure_1826825wall_pressure_1826827*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_wall_pressure_layer_call_and_return_conditional_losses_18264992'
%wall_pressure/StatefulPartitionedCall?
*wall_heat_transfer/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_heat_transfer_1826830wall_heat_transfer_1826832*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *X
fSRQ
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_18265222,
*wall_heat_transfer/StatefulPartitionedCall?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_1826815*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_1826820*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mul?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_heat_transfer_1826830*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mul?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_pressure_1826825*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mul?
IdentityIdentity3wall_heat_transfer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity.wall_pressure/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp+^wall_heat_transfer/StatefulPartitionedCall<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp&^wall_pressure/StatefulPartitionedCall7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2X
*wall_heat_transfer/StatefulPartitionedCall*wall_heat_transfer/StatefulPartitionedCall2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp2N
%wall_pressure/StatefulPartitionedCall%wall_pressure/StatefulPartitionedCall2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
walltemp:[W
'
_output_shapes
:?????????
,
_user_specified_namefreestream_density:XT
'
_output_shapes
:?????????
)
_user_specified_namefreestream_temp:\X
'
_output_shapes
:?????????
-
_user_specified_namefreestream_velocity
?
?
)__inference_model_3_layer_call_fn_1826575
walltemp
freestream_density
freestream_temp
freestream_velocity
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?

	unknown_4:	?

	unknown_5:	@?

	unknown_6:	?

identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwalltempfreestream_densityfreestream_tempfreestream_velocityunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????
:??????????
**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_18265542
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
walltemp:[W
'
_output_shapes
:?????????
,
_user_specified_namefreestream_density:XT
'
_output_shapes
:?????????
)
_user_specified_namefreestream_temp:\X
'
_output_shapes
:?????????
-
_user_specified_namefreestream_velocity
?
?
)__inference_model_3_layer_call_fn_1826945
inputs_0
inputs_1
inputs_2
inputs_3
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?

	unknown_4:	?

	unknown_5:	@?

	unknown_6:	?

identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????
:??????????
**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_18265542
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
D__inference_dense_7_layer_call_and_return_conditional_losses_1827167

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_7/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Tanh?
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_7_layer_call_fn_1827176

inputs
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_18264762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
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
?
?
D__inference_dense_6_layer_call_and_return_conditional_losses_1827135

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Tanh?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
dense_6/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1827262K
9dense_7_kernel_regularizer_square_readvariableop_resource: @
identity??0dense_7/kernel/Regularizer/Square/ReadVariableOp?
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_7_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mull
IdentityIdentity"dense_7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp
?
w
/__inference_concatenate_3_layer_call_fn_1827112
inputs_0
inputs_1
inputs_2
inputs_3
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_18264342
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?J
?
D__inference_model_3_layer_call_and_return_conditional_losses_1826708

inputs
inputs_1
inputs_2
inputs_3!
dense_6_1826662: 
dense_6_1826664: !
dense_7_1826667: @
dense_7_1826669:@(
wall_pressure_1826672:	@?
$
wall_pressure_1826674:	?
-
wall_heat_transfer_1826677:	@?
)
wall_heat_transfer_1826679:	?

identity

identity_1??dense_6/StatefulPartitionedCall?0dense_6/kernel/Regularizer/Square/ReadVariableOp?dense_7/StatefulPartitionedCall?0dense_7/kernel/Regularizer/Square/ReadVariableOp?*wall_heat_transfer/StatefulPartitionedCall?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?%wall_pressure/StatefulPartitionedCall?6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
concatenate_3/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_concatenate_3_layer_call_and_return_conditional_losses_18264342
concatenate_3/PartitionedCall?
dense_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0dense_6_1826662dense_6_1826664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_18264532!
dense_6/StatefulPartitionedCall?
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_1826667dense_7_1826669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_dense_7_layer_call_and_return_conditional_losses_18264762!
dense_7/StatefulPartitionedCall?
%wall_pressure/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_pressure_1826672wall_pressure_1826674*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_wall_pressure_layer_call_and_return_conditional_losses_18264992'
%wall_pressure/StatefulPartitionedCall?
*wall_heat_transfer/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0wall_heat_transfer_1826677wall_heat_transfer_1826679*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *X
fSRQ
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_18265222,
*wall_heat_transfer/StatefulPartitionedCall?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_6_1826662*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_7_1826667*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mul?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_heat_transfer_1826677*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mul?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOpwall_pressure_1826672*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mul?
IdentityIdentity3wall_heat_transfer/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity.wall_pressure/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp ^dense_6/StatefulPartitionedCall1^dense_6/kernel/Regularizer/Square/ReadVariableOp ^dense_7/StatefulPartitionedCall1^dense_7/kernel/Regularizer/Square/ReadVariableOp+^wall_heat_transfer/StatefulPartitionedCall<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp&^wall_pressure/StatefulPartitionedCall7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2X
*wall_heat_transfer/StatefulPartitionedCall*wall_heat_transfer/StatefulPartitionedCall2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp2N
%wall_pressure/StatefulPartitionedCall%wall_pressure/StatefulPartitionedCall2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_1827199

inputs1
matmul_readvariableop_resource:	@?
.
biasadd_readvariableop_resource:	?

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????
2
	LeakyRelu?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/muls
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
J__inference_wall_pressure_layer_call_and_return_conditional_losses_1827231

inputs1
matmul_readvariableop_resource:	@?
.
biasadd_readvariableop_resource:	?

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????
2
	LeakyRelu?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/muls
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_1826522

inputs1
matmul_readvariableop_resource:	@?
.
biasadd_readvariableop_resource:	?

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????
2
	LeakyRelu?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/muls
IdentityIdentityLeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1827251K
9dense_6_kernel_regularizer_square_readvariableop_resource: 
identity??0dense_6/kernel/Regularizer/Square/ReadVariableOp?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_6_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
?
?
__inference_loss_fn_3_1827284R
?wall_pressure_kernel_regularizer_square_readvariableop_resource:	@?

identity??6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?wall_pressure_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mulr
IdentityIdentity(wall_pressure/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp
?
?
%__inference_signature_wrapper_1826919
freestream_density
freestream_temp
freestream_velocity
walltemp
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?

	unknown_4:	?

	unknown_5:	@?

	unknown_6:	?

identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwalltempfreestream_densityfreestream_tempfreestream_velocityunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????
:??????????
**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0J 8@? *+
f&R$
"__inference__wrapped_model_18264122
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namefreestream_density:XT
'
_output_shapes
:?????????
)
_user_specified_namefreestream_temp:\X
'
_output_shapes
:?????????
-
_user_specified_namefreestream_velocity:QM
'
_output_shapes
:?????????
"
_user_specified_name
walltemp
?
?
__inference_loss_fn_2_1827273W
Dwall_heat_transfer_kernel_regularizer_square_readvariableop_resource:	@?

identity??;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpDwall_heat_transfer_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mulw
IdentityIdentity-wall_heat_transfer/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp
?\
?	
D__inference_model_3_layer_call_and_return_conditional_losses_1827095
inputs_0
inputs_1
inputs_2
inputs_38
&dense_6_matmul_readvariableop_resource: 5
'dense_6_biasadd_readvariableop_resource: 8
&dense_7_matmul_readvariableop_resource: @5
'dense_7_biasadd_readvariableop_resource:@?
,wall_pressure_matmul_readvariableop_resource:	@?
<
-wall_pressure_biasadd_readvariableop_resource:	?
D
1wall_heat_transfer_matmul_readvariableop_resource:	@?
A
2wall_heat_transfer_biasadd_readvariableop_resource:	?

identity

identity_1??dense_6/BiasAdd/ReadVariableOp?dense_6/MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?dense_7/BiasAdd/ReadVariableOp?dense_7/MatMul/ReadVariableOp?0dense_7/kernel/Regularizer/Square/ReadVariableOp?)wall_heat_transfer/BiasAdd/ReadVariableOp?(wall_heat_transfer/MatMul/ReadVariableOp?;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?$wall_pressure/BiasAdd/ReadVariableOp?#wall_pressure/MatMul/ReadVariableOp?6wall_pressure/kernel/Regularizer/Square/ReadVariableOpx
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2inputs_0inputs_1inputs_2inputs_3"concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatenate_3/concat?
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_6/MatMul/ReadVariableOp?
dense_6/MatMulMatMulconcatenate_3/concat:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/MatMul?
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_6/BiasAdd/ReadVariableOp?
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_6/BiasAddp
dense_6/TanhTanhdense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_6/Tanh?
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02
dense_7/MatMul/ReadVariableOp?
dense_7/MatMulMatMuldense_6/Tanh:y:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_7/MatMul?
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_7/BiasAdd/ReadVariableOp?
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_7/BiasAddp
dense_7/TanhTanhdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_7/Tanh?
#wall_pressure/MatMul/ReadVariableOpReadVariableOp,wall_pressure_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02%
#wall_pressure/MatMul/ReadVariableOp?
wall_pressure/MatMulMatMuldense_7/Tanh:y:0+wall_pressure/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_pressure/MatMul?
$wall_pressure/BiasAdd/ReadVariableOpReadVariableOp-wall_pressure_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02&
$wall_pressure/BiasAdd/ReadVariableOp?
wall_pressure/BiasAddBiasAddwall_pressure/MatMul:product:0,wall_pressure/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_pressure/BiasAdd?
wall_pressure/LeakyRelu	LeakyReluwall_pressure/BiasAdd:output:0*(
_output_shapes
:??????????
2
wall_pressure/LeakyRelu?
(wall_heat_transfer/MatMul/ReadVariableOpReadVariableOp1wall_heat_transfer_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02*
(wall_heat_transfer/MatMul/ReadVariableOp?
wall_heat_transfer/MatMulMatMuldense_7/Tanh:y:00wall_heat_transfer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_heat_transfer/MatMul?
)wall_heat_transfer/BiasAdd/ReadVariableOpReadVariableOp2wall_heat_transfer_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02+
)wall_heat_transfer/BiasAdd/ReadVariableOp?
wall_heat_transfer/BiasAddBiasAdd#wall_heat_transfer/MatMul:product:01wall_heat_transfer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
wall_heat_transfer/BiasAdd?
wall_heat_transfer/LeakyRelu	LeakyRelu#wall_heat_transfer/BiasAdd:output:0*(
_output_shapes
:??????????
2
wall_heat_transfer/LeakyRelu?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mul?
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp1wall_heat_transfer_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02=
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp?
,wall_heat_transfer/kernel/Regularizer/SquareSquareCwall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2.
,wall_heat_transfer/kernel/Regularizer/Square?
+wall_heat_transfer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2-
+wall_heat_transfer/kernel/Regularizer/Const?
)wall_heat_transfer/kernel/Regularizer/SumSum0wall_heat_transfer/kernel/Regularizer/Square:y:04wall_heat_transfer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/Sum?
+wall_heat_transfer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52-
+wall_heat_transfer/kernel/Regularizer/mul/x?
)wall_heat_transfer/kernel/Regularizer/mulMul4wall_heat_transfer/kernel/Regularizer/mul/x:output:02wall_heat_transfer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2+
)wall_heat_transfer/kernel/Regularizer/mul?
6wall_pressure/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,wall_pressure_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype028
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp?
'wall_pressure/kernel/Regularizer/SquareSquare>wall_pressure/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?
2)
'wall_pressure/kernel/Regularizer/Square?
&wall_pressure/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&wall_pressure/kernel/Regularizer/Const?
$wall_pressure/kernel/Regularizer/SumSum+wall_pressure/kernel/Regularizer/Square:y:0/wall_pressure/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/Sum?
&wall_pressure/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52(
&wall_pressure/kernel/Regularizer/mul/x?
$wall_pressure/kernel/Regularizer/mulMul/wall_pressure/kernel/Regularizer/mul/x:output:0-wall_pressure/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$wall_pressure/kernel/Regularizer/mul?
IdentityIdentity*wall_heat_transfer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity%wall_pressure/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*^wall_heat_transfer/BiasAdd/ReadVariableOp)^wall_heat_transfer/MatMul/ReadVariableOp<^wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp%^wall_pressure/BiasAdd/ReadVariableOp$^wall_pressure/MatMul/ReadVariableOp7^wall_pressure/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp2V
)wall_heat_transfer/BiasAdd/ReadVariableOp)wall_heat_transfer/BiasAdd/ReadVariableOp2T
(wall_heat_transfer/MatMul/ReadVariableOp(wall_heat_transfer/MatMul/ReadVariableOp2z
;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp;wall_heat_transfer/kernel/Regularizer/Square/ReadVariableOp2L
$wall_pressure/BiasAdd/ReadVariableOp$wall_pressure/BiasAdd/ReadVariableOp2J
#wall_pressure/MatMul/ReadVariableOp#wall_pressure/MatMul/ReadVariableOp2p
6wall_pressure/kernel/Regularizer/Square/ReadVariableOp6wall_pressure/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
)__inference_model_3_layer_call_fn_1826971
inputs_0
inputs_1
inputs_2
inputs_3
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?

	unknown_4:	?

	unknown_5:	@?

	unknown_6:	?

identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????
:??????????
**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_18267082
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?W
?
 __inference__traced_save_1827440
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop8
4savev2_wall_heat_transfer_kernel_read_readvariableop6
2savev2_wall_heat_transfer_bias_read_readvariableop3
/savev2_wall_pressure_kernel_read_readvariableop1
-savev2_wall_pressure_bias_read_readvariableop*
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
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop6
2savev2_adamax_dense_6_kernel_m_read_readvariableop4
0savev2_adamax_dense_6_bias_m_read_readvariableop6
2savev2_adamax_dense_7_kernel_m_read_readvariableop4
0savev2_adamax_dense_7_bias_m_read_readvariableopA
=savev2_adamax_wall_heat_transfer_kernel_m_read_readvariableop?
;savev2_adamax_wall_heat_transfer_bias_m_read_readvariableop<
8savev2_adamax_wall_pressure_kernel_m_read_readvariableop:
6savev2_adamax_wall_pressure_bias_m_read_readvariableop6
2savev2_adamax_dense_6_kernel_v_read_readvariableop4
0savev2_adamax_dense_6_bias_v_read_readvariableop6
2savev2_adamax_dense_7_kernel_v_read_readvariableop4
0savev2_adamax_dense_7_bias_v_read_readvariableopA
=savev2_adamax_wall_heat_transfer_kernel_v_read_readvariableop?
;savev2_adamax_wall_heat_transfer_bias_v_read_readvariableop<
8savev2_adamax_wall_pressure_kernel_v_read_readvariableop:
6savev2_adamax_wall_pressure_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop4savev2_wall_heat_transfer_kernel_read_readvariableop2savev2_wall_heat_transfer_bias_read_readvariableop/savev2_wall_pressure_kernel_read_readvariableop-savev2_wall_pressure_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop2savev2_adamax_dense_6_kernel_m_read_readvariableop0savev2_adamax_dense_6_bias_m_read_readvariableop2savev2_adamax_dense_7_kernel_m_read_readvariableop0savev2_adamax_dense_7_bias_m_read_readvariableop=savev2_adamax_wall_heat_transfer_kernel_m_read_readvariableop;savev2_adamax_wall_heat_transfer_bias_m_read_readvariableop8savev2_adamax_wall_pressure_kernel_m_read_readvariableop6savev2_adamax_wall_pressure_bias_m_read_readvariableop2savev2_adamax_dense_6_kernel_v_read_readvariableop0savev2_adamax_dense_6_bias_v_read_readvariableop2savev2_adamax_dense_7_kernel_v_read_readvariableop0savev2_adamax_dense_7_bias_v_read_readvariableop=savev2_adamax_wall_heat_transfer_kernel_v_read_readvariableop;savev2_adamax_wall_heat_transfer_bias_v_read_readvariableop8savev2_adamax_wall_pressure_kernel_v_read_readvariableop6savev2_adamax_wall_pressure_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
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
?: : : : @:@:	@?
:?
:	@?
:?
: : : : : : : : : : : : : : : : : : : : : : @:@:	@?
:?
:	@?
:?
: : : @:@:	@?
:?
:	@?
:?
: 2(
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
:	@?
:!

_output_shapes	
:?
:%!

_output_shapes
:	@?
:!

_output_shapes	
:?
:	
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: @: 

_output_shapes
:@:% !

_output_shapes
:	@?
:!!

_output_shapes	
:?
:%"!

_output_shapes
:	@?
:!#

_output_shapes	
:?
:$$ 

_output_shapes

: : %

_output_shapes
: :$& 

_output_shapes

: @: '

_output_shapes
:@:%(!

_output_shapes
:	@?
:!)

_output_shapes	
:?
:%*!

_output_shapes
:	@?
:!+

_output_shapes	
:?
:,

_output_shapes
: 
?
?
D__inference_dense_6_layer_call_and_return_conditional_losses_1826453

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_6/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Tanh?
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype022
0dense_6/kernel/Regularizer/Square/ReadVariableOp?
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: 2#
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
dense_6/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1826434

inputs
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:?????????:?????????:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1827104
inputs_0
inputs_1
inputs_2
inputs_3
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:?????????:?????????:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/3
?
?
D__inference_dense_7_layer_call_and_return_conditional_losses_1826476

inputs0
matmul_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_7/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Tanh?
0dense_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: @*
dtype022
0dense_7/kernel/Regularizer/Square/ReadVariableOp?
!dense_7/kernel/Regularizer/SquareSquare8dense_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: @2#
!dense_7/kernel/Regularizer/Square?
 dense_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_7/kernel/Regularizer/Const?
dense_7/kernel/Regularizer/SumSum%dense_7/kernel/Regularizer/Square:y:0)dense_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/Sum?
 dense_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52"
 dense_7/kernel/Regularizer/mul/x?
dense_7/kernel/Regularizer/mulMul)dense_7/kernel/Regularizer/mul/x:output:0'dense_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_7/kernel/Regularizer/mulc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_7/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_7/kernel/Regularizer/Square/ReadVariableOp0dense_7/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
/__inference_wall_pressure_layer_call_fn_1827240

inputs
unknown:	@?

	unknown_0:	?

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????
*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0J 8@? *S
fNRL
J__inference_wall_pressure_layer_call_and_return_conditional_losses_18264992
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

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
?9
?
"__inference__wrapped_model_1826412
walltemp
freestream_density
freestream_temp
freestream_velocity@
.model_3_dense_6_matmul_readvariableop_resource: =
/model_3_dense_6_biasadd_readvariableop_resource: @
.model_3_dense_7_matmul_readvariableop_resource: @=
/model_3_dense_7_biasadd_readvariableop_resource:@G
4model_3_wall_pressure_matmul_readvariableop_resource:	@?
D
5model_3_wall_pressure_biasadd_readvariableop_resource:	?
L
9model_3_wall_heat_transfer_matmul_readvariableop_resource:	@?
I
:model_3_wall_heat_transfer_biasadd_readvariableop_resource:	?

identity

identity_1??&model_3/dense_6/BiasAdd/ReadVariableOp?%model_3/dense_6/MatMul/ReadVariableOp?&model_3/dense_7/BiasAdd/ReadVariableOp?%model_3/dense_7/MatMul/ReadVariableOp?1model_3/wall_heat_transfer/BiasAdd/ReadVariableOp?0model_3/wall_heat_transfer/MatMul/ReadVariableOp?,model_3/wall_pressure/BiasAdd/ReadVariableOp?+model_3/wall_pressure/MatMul/ReadVariableOp?
!model_3/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_3/concatenate_3/concat/axis?
model_3/concatenate_3/concatConcatV2walltempfreestream_densityfreestream_tempfreestream_velocity*model_3/concatenate_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model_3/concatenate_3/concat?
%model_3/dense_6/MatMul/ReadVariableOpReadVariableOp.model_3_dense_6_matmul_readvariableop_resource*
_output_shapes

: *
dtype02'
%model_3/dense_6/MatMul/ReadVariableOp?
model_3/dense_6/MatMulMatMul%model_3/concatenate_3/concat:output:0-model_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model_3/dense_6/MatMul?
&model_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&model_3/dense_6/BiasAdd/ReadVariableOp?
model_3/dense_6/BiasAddBiasAdd model_3/dense_6/MatMul:product:0.model_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model_3/dense_6/BiasAdd?
model_3/dense_6/TanhTanh model_3/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_3/dense_6/Tanh?
%model_3/dense_7/MatMul/ReadVariableOpReadVariableOp.model_3_dense_7_matmul_readvariableop_resource*
_output_shapes

: @*
dtype02'
%model_3/dense_7/MatMul/ReadVariableOp?
model_3/dense_7/MatMulMatMulmodel_3/dense_6/Tanh:y:0-model_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_3/dense_7/MatMul?
&model_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_3/dense_7/BiasAdd/ReadVariableOp?
model_3/dense_7/BiasAddBiasAdd model_3/dense_7/MatMul:product:0.model_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_3/dense_7/BiasAdd?
model_3/dense_7/TanhTanh model_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_3/dense_7/Tanh?
+model_3/wall_pressure/MatMul/ReadVariableOpReadVariableOp4model_3_wall_pressure_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype02-
+model_3/wall_pressure/MatMul/ReadVariableOp?
model_3/wall_pressure/MatMulMatMulmodel_3/dense_7/Tanh:y:03model_3/wall_pressure/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
model_3/wall_pressure/MatMul?
,model_3/wall_pressure/BiasAdd/ReadVariableOpReadVariableOp5model_3_wall_pressure_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype02.
,model_3/wall_pressure/BiasAdd/ReadVariableOp?
model_3/wall_pressure/BiasAddBiasAdd&model_3/wall_pressure/MatMul:product:04model_3/wall_pressure/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2
model_3/wall_pressure/BiasAdd?
model_3/wall_pressure/LeakyRelu	LeakyRelu&model_3/wall_pressure/BiasAdd:output:0*(
_output_shapes
:??????????
2!
model_3/wall_pressure/LeakyRelu?
0model_3/wall_heat_transfer/MatMul/ReadVariableOpReadVariableOp9model_3_wall_heat_transfer_matmul_readvariableop_resource*
_output_shapes
:	@?
*
dtype022
0model_3/wall_heat_transfer/MatMul/ReadVariableOp?
!model_3/wall_heat_transfer/MatMulMatMulmodel_3/dense_7/Tanh:y:08model_3/wall_heat_transfer/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2#
!model_3/wall_heat_transfer/MatMul?
1model_3/wall_heat_transfer/BiasAdd/ReadVariableOpReadVariableOp:model_3_wall_heat_transfer_biasadd_readvariableop_resource*
_output_shapes	
:?
*
dtype023
1model_3/wall_heat_transfer/BiasAdd/ReadVariableOp?
"model_3/wall_heat_transfer/BiasAddBiasAdd+model_3/wall_heat_transfer/MatMul:product:09model_3/wall_heat_transfer/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
2$
"model_3/wall_heat_transfer/BiasAdd?
$model_3/wall_heat_transfer/LeakyRelu	LeakyRelu+model_3/wall_heat_transfer/BiasAdd:output:0*(
_output_shapes
:??????????
2&
$model_3/wall_heat_transfer/LeakyRelu?
IdentityIdentity2model_3/wall_heat_transfer/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity-model_3/wall_pressure/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1?
NoOpNoOp'^model_3/dense_6/BiasAdd/ReadVariableOp&^model_3/dense_6/MatMul/ReadVariableOp'^model_3/dense_7/BiasAdd/ReadVariableOp&^model_3/dense_7/MatMul/ReadVariableOp2^model_3/wall_heat_transfer/BiasAdd/ReadVariableOp1^model_3/wall_heat_transfer/MatMul/ReadVariableOp-^model_3/wall_pressure/BiasAdd/ReadVariableOp,^model_3/wall_pressure/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 2P
&model_3/dense_6/BiasAdd/ReadVariableOp&model_3/dense_6/BiasAdd/ReadVariableOp2N
%model_3/dense_6/MatMul/ReadVariableOp%model_3/dense_6/MatMul/ReadVariableOp2P
&model_3/dense_7/BiasAdd/ReadVariableOp&model_3/dense_7/BiasAdd/ReadVariableOp2N
%model_3/dense_7/MatMul/ReadVariableOp%model_3/dense_7/MatMul/ReadVariableOp2f
1model_3/wall_heat_transfer/BiasAdd/ReadVariableOp1model_3/wall_heat_transfer/BiasAdd/ReadVariableOp2d
0model_3/wall_heat_transfer/MatMul/ReadVariableOp0model_3/wall_heat_transfer/MatMul/ReadVariableOp2\
,model_3/wall_pressure/BiasAdd/ReadVariableOp,model_3/wall_pressure/BiasAdd/ReadVariableOp2Z
+model_3/wall_pressure/MatMul/ReadVariableOp+model_3/wall_pressure/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
walltemp:[W
'
_output_shapes
:?????????
,
_user_specified_namefreestream_density:XT
'
_output_shapes
:?????????
)
_user_specified_namefreestream_temp:\X
'
_output_shapes
:?????????
-
_user_specified_namefreestream_velocity
?
?
)__inference_model_3_layer_call_fn_1826755
walltemp
freestream_density
freestream_temp
freestream_velocity
unknown: 
	unknown_0: 
	unknown_1: @
	unknown_2:@
	unknown_3:	@?

	unknown_4:	?

	unknown_5:	@?

	unknown_6:	?

identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwalltempfreestream_densityfreestream_tempfreestream_velocityunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????
:??????????
**
_read_only_resource_inputs

	
*2
config_proto" 

CPU

GPU2*0J 8@? *M
fHRF
D__inference_model_3_layer_call_and_return_conditional_losses_18267082
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????:?????????:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
walltemp:[W
'
_output_shapes
:?????????
,
_user_specified_namefreestream_density:XT
'
_output_shapes
:?????????
)
_user_specified_namefreestream_temp:\X
'
_output_shapes
:?????????
-
_user_specified_namefreestream_velocity"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
freestream_density;
$serving_default_freestream_density:0?????????
K
freestream_temp8
!serving_default_freestream_temp:0?????????
S
freestream_velocity<
%serving_default_freestream_velocity:0?????????
=
walltemp1
serving_default_walltemp:0?????????G
wall_heat_transfer1
StatefulPartitionedCall:0??????????
B
wall_pressure1
StatefulPartitionedCall:1??????????
tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-0
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
,iter

-beta_1

.beta_2
	/decay
0learning_ratemtmumvmw mx!my&mz'm{v|v}v~v v?!v?&v?'v?"
	optimizer
X
0
1
2
3
 4
!5
&6
'7"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
X
0
1
2
3
 4
!5
&6
'7"
trackable_list_wrapper
?
trainable_variables
regularization_losses

1layers
2non_trainable_variables
3layer_regularization_losses
	variables
4metrics
5layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
regularization_losses

6layers
7non_trainable_variables
8layer_regularization_losses
	variables
9metrics
:layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_6/kernel
: 2dense_6/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
regularization_losses

;layers
<non_trainable_variables
=layer_regularization_losses
	variables
>metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : @2dense_7/kernel
:@2dense_7/bias
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
regularization_losses

@layers
Anon_trainable_variables
Blayer_regularization_losses
	variables
Cmetrics
Dlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*	@?
2wall_heat_transfer/kernel
&:$?
2wall_heat_transfer/bias
.
 0
!1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
"trainable_variables
#regularization_losses

Elayers
Fnon_trainable_variables
Glayer_regularization_losses
$	variables
Hmetrics
Ilayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%	@?
2wall_pressure/kernel
!:?
2wall_pressure/bias
.
&0
'1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
(trainable_variables
)regularization_losses

Jlayers
Knon_trainable_variables
Llayer_regularization_losses
*	variables
Mmetrics
Nlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Q
O0
P1
Q2
R3
S4
T5
U6"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Vtotal
	Wcount
X	variables
Y	keras_api"
_tf_keras_metric
N
	Ztotal
	[count
\	variables
]	keras_api"
_tf_keras_metric
N
	^total
	_count
`	variables
a	keras_api"
_tf_keras_metric
^
	btotal
	ccount
d
_fn_kwargs
e	variables
f	keras_api"
_tf_keras_metric
N
	gtotal
	hcount
i	variables
j	keras_api"
_tf_keras_metric
^
	ktotal
	lcount
m
_fn_kwargs
n	variables
o	keras_api"
_tf_keras_metric
N
	ptotal
	qcount
r	variables
s	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
V0
W1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
.
Z0
[1"
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
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
b0
c1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
:  (2total
:  (2count
.
g0
h1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
k0
l1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
.
p0
q1"
trackable_list_wrapper
-
r	variables"
_generic_user_object
':% 2Adamax/dense_6/kernel/m
!: 2Adamax/dense_6/bias/m
':% @2Adamax/dense_7/kernel/m
!:@2Adamax/dense_7/bias/m
3:1	@?
2"Adamax/wall_heat_transfer/kernel/m
-:+?
2 Adamax/wall_heat_transfer/bias/m
.:,	@?
2Adamax/wall_pressure/kernel/m
(:&?
2Adamax/wall_pressure/bias/m
':% 2Adamax/dense_6/kernel/v
!: 2Adamax/dense_6/bias/v
':% @2Adamax/dense_7/kernel/v
!:@2Adamax/dense_7/bias/v
3:1	@?
2"Adamax/wall_heat_transfer/kernel/v
-:+?
2 Adamax/wall_heat_transfer/bias/v
.:,	@?
2Adamax/wall_pressure/kernel/v
(:&?
2Adamax/wall_pressure/bias/v
?2?
)__inference_model_3_layer_call_fn_1826575
)__inference_model_3_layer_call_fn_1826945
)__inference_model_3_layer_call_fn_1826971
)__inference_model_3_layer_call_fn_1826755?
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
?B?
"__inference__wrapped_model_1826412walltempfreestream_densityfreestream_tempfreestream_velocity"?
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
D__inference_model_3_layer_call_and_return_conditional_losses_1827033
D__inference_model_3_layer_call_and_return_conditional_losses_1827095
D__inference_model_3_layer_call_and_return_conditional_losses_1826808
D__inference_model_3_layer_call_and_return_conditional_losses_1826861?
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
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1827104?
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
/__inference_concatenate_3_layer_call_fn_1827112?
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
D__inference_dense_6_layer_call_and_return_conditional_losses_1827135?
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
)__inference_dense_6_layer_call_fn_1827144?
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
D__inference_dense_7_layer_call_and_return_conditional_losses_1827167?
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
)__inference_dense_7_layer_call_fn_1827176?
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
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_1827199?
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
4__inference_wall_heat_transfer_layer_call_fn_1827208?
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
J__inference_wall_pressure_layer_call_and_return_conditional_losses_1827231?
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
/__inference_wall_pressure_layer_call_fn_1827240?
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
__inference_loss_fn_0_1827251?
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
__inference_loss_fn_1_1827262?
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
__inference_loss_fn_2_1827273?
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
__inference_loss_fn_3_1827284?
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
?B?
%__inference_signature_wrapper_1826919freestream_densityfreestream_tempfreestream_velocitywalltemp"?
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
 ?
"__inference__wrapped_model_1826412?&' !???
???
???
"?
walltemp?????????
,?)
freestream_density?????????
)?&
freestream_temp?????????
-?*
freestream_velocity?????????
? "???
C
wall_heat_transfer-?*
wall_heat_transfer??????????

9
wall_pressure(?%
wall_pressure??????????
?
J__inference_concatenate_3_layer_call_and_return_conditional_losses_1827104????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
? "%?"
?
0?????????
? ?
/__inference_concatenate_3_layer_call_fn_1827112????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
? "???????????
D__inference_dense_6_layer_call_and_return_conditional_losses_1827135\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? |
)__inference_dense_6_layer_call_fn_1827144O/?,
%?"
 ?
inputs?????????
? "?????????? ?
D__inference_dense_7_layer_call_and_return_conditional_losses_1827167\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????@
? |
)__inference_dense_7_layer_call_fn_1827176O/?,
%?"
 ?
inputs????????? 
? "??????????@<
__inference_loss_fn_0_1827251?

? 
? "? <
__inference_loss_fn_1_1827262?

? 
? "? <
__inference_loss_fn_2_1827273 ?

? 
? "? <
__inference_loss_fn_3_1827284&?

? 
? "? ?
D__inference_model_3_layer_call_and_return_conditional_losses_1826808?&' !???
???
???
"?
walltemp?????????
,?)
freestream_density?????????
)?&
freestream_temp?????????
-?*
freestream_velocity?????????
p 

 
? "M?J
C?@
?
0/0??????????

?
0/1??????????

? ?
D__inference_model_3_layer_call_and_return_conditional_losses_1826861?&' !???
???
???
"?
walltemp?????????
,?)
freestream_density?????????
)?&
freestream_temp?????????
-?*
freestream_velocity?????????
p

 
? "M?J
C?@
?
0/0??????????

?
0/1??????????

? ?
D__inference_model_3_layer_call_and_return_conditional_losses_1827033?&' !???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p 

 
? "M?J
C?@
?
0/0??????????

?
0/1??????????

? ?
D__inference_model_3_layer_call_and_return_conditional_losses_1827095?&' !???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p

 
? "M?J
C?@
?
0/0??????????

?
0/1??????????

? ?
)__inference_model_3_layer_call_fn_1826575?&' !???
???
???
"?
walltemp?????????
,?)
freestream_density?????????
)?&
freestream_temp?????????
-?*
freestream_velocity?????????
p 

 
? "??<
?
0??????????

?
1??????????
?
)__inference_model_3_layer_call_fn_1826755?&' !???
???
???
"?
walltemp?????????
,?)
freestream_density?????????
)?&
freestream_temp?????????
-?*
freestream_velocity?????????
p

 
? "??<
?
0??????????

?
1??????????
?
)__inference_model_3_layer_call_fn_1826945?&' !???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p 

 
? "??<
?
0??????????

?
1??????????
?
)__inference_model_3_layer_call_fn_1826971?&' !???
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????
p

 
? "??<
?
0??????????

?
1??????????
?
%__inference_signature_wrapper_1826919?&' !???
? 
???
B
freestream_density,?)
freestream_density?????????
<
freestream_temp)?&
freestream_temp?????????
D
freestream_velocity-?*
freestream_velocity?????????
.
walltemp"?
walltemp?????????"???
C
wall_heat_transfer-?*
wall_heat_transfer??????????

9
wall_pressure(?%
wall_pressure??????????
?
O__inference_wall_heat_transfer_layer_call_and_return_conditional_losses_1827199] !/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????

? ?
4__inference_wall_heat_transfer_layer_call_fn_1827208P !/?,
%?"
 ?
inputs?????????@
? "???????????
?
J__inference_wall_pressure_layer_call_and_return_conditional_losses_1827231]&'/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????

? ?
/__inference_wall_pressure_layer_call_fn_1827240P&'/?,
%?"
 ?
inputs?????????@
? "???????????
