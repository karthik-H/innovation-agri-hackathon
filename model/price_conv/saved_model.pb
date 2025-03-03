��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
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
delete_old_dirsbool(�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��
�
conv1d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv1d_10/kernel
y
$conv1d_10/kernel/Read/ReadVariableOpReadVariableOpconv1d_10/kernel*"
_output_shapes
: *
dtype0
t
conv1d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_10/bias
m
"conv1d_10/bias/Read/ReadVariableOpReadVariableOpconv1d_10/bias*
_output_shapes
: *
dtype0
z
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_40/kernel
s
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes

:  *
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
: *
dtype0
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

: *
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
�
Adam/conv1d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv1d_10/kernel/m
�
+Adam/conv1d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/kernel/m*"
_output_shapes
: *
dtype0
�
Adam/conv1d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv1d_10/bias/m
{
)Adam/conv1d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_40/kernel/m
�
*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes

:  *
dtype0
�
Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_41/kernel/m
�
*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

: *
dtype0
�
Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv1d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv1d_10/kernel/v
�
+Adam/conv1d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/kernel/v*"
_output_shapes
: *
dtype0
�
Adam/conv1d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv1d_10/bias/v
{
)Adam/conv1d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_40/kernel/v
�
*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes

:  *
dtype0
�
Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_41/kernel/v
�
*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

: *
dtype0
�
Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�$
value�$B�$ B�$
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
�
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK
*

0
1
2
3
4
5
*

0
1
2
3
4
5
 
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
 
\Z
VARIABLE_VALUEconv1d_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_40/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_40/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_41/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2

50
61
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
	7total
	8count
9	variables
:	keras_api
D
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

>	variables
}
VARIABLE_VALUEAdam/conv1d_10/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_10/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_10/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_10/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_conv1d_10_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_10_inputconv1d_10/kernelconv1d_10/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_385196
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_10/kernel/Read/ReadVariableOp"conv1d_10/bias/Read/ReadVariableOp#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv1d_10/kernel/m/Read/ReadVariableOp)Adam/conv1d_10/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp+Adam/conv1d_10/kernel/v/Read/ReadVariableOp)Adam/conv1d_10/bias/v/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_385576
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_10/kernelconv1d_10/biasdense_40/kerneldense_40/biasdense_41/kerneldense_41/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_10/kernel/mAdam/conv1d_10/bias/mAdam/dense_40/kernel/mAdam/dense_40/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/conv1d_10/kernel/vAdam/conv1d_10/bias/vAdam/dense_40/kernel/vAdam/dense_40/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_385667��
�
�
D__inference_dense_41_layer_call_and_return_conditional_losses_385011

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_dense_40_layer_call_fn_385402

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_384975s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�O
�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385368

inputsK
5conv1d_10_conv1d_expanddims_1_readvariableop_resource: 7
)conv1d_10_biasadd_readvariableop_resource: <
*dense_40_tensordot_readvariableop_resource:  6
(dense_40_biasadd_readvariableop_resource: <
*dense_41_tensordot_readvariableop_resource: 6
(dense_41_biasadd_readvariableop_resource:
identity�� conv1d_10/BiasAdd/ReadVariableOp�,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�!dense_40/Tensordot/ReadVariableOp�dense_41/BiasAdd/ReadVariableOp�!dense_41/Tensordot/ReadVariableOpj
conv1d_10/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_10/Conv1D/ExpandDims
ExpandDimsinputs(conv1d_10/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0c
!conv1d_10/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_10/Conv1D/ExpandDims_1
ExpandDims4conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_10/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
conv1d_10/Conv1DConv2D$conv1d_10/Conv1D/ExpandDims:output:0&conv1d_10/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
conv1d_10/Conv1D/SqueezeSqueezeconv1d_10/Conv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

����������
 conv1d_10/BiasAdd/ReadVariableOpReadVariableOp)conv1d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv1d_10/BiasAddBiasAdd!conv1d_10/Conv1D/Squeeze:output:0(conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� h
conv1d_10/ReluReluconv1d_10/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
!dense_40/Tensordot/ReadVariableOpReadVariableOp*dense_40_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0a
dense_40/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_40/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_40/Tensordot/ShapeShapeconv1d_10/Relu:activations:0*
T0*
_output_shapes
:b
 dense_40/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/free:output:0)dense_40/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_40/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2_1GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/axes:output:0+dense_40/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_40/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/ProdProd$dense_40/Tensordot/GatherV2:output:0!dense_40/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_40/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/Prod_1Prod&dense_40/Tensordot/GatherV2_1:output:0#dense_40/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_40/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concatConcatV2 dense_40/Tensordot/free:output:0 dense_40/Tensordot/axes:output:0'dense_40/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/stackPack dense_40/Tensordot/Prod:output:0"dense_40/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/transpose	Transposeconv1d_10/Relu:activations:0"dense_40/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense_40/Tensordot/ReshapeReshape dense_40/Tensordot/transpose:y:0!dense_40/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_40/Tensordot/MatMulMatMul#dense_40/Tensordot/Reshape:output:0)dense_40/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
dense_40/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_40/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concat_1ConcatV2$dense_40/Tensordot/GatherV2:output:0#dense_40/Tensordot/Const_2:output:0)dense_40/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/TensordotReshape#dense_40/Tensordot/MatMul:product:0$dense_40/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� �
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_40/BiasAddBiasAdddense_40/Tensordot:output:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� f
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
!dense_41/Tensordot/ReadVariableOpReadVariableOp*dense_41_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0a
dense_41/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_41/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_41/Tensordot/ShapeShapedense_40/Relu:activations:0*
T0*
_output_shapes
:b
 dense_41/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/free:output:0)dense_41/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_41/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2_1GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/axes:output:0+dense_41/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_41/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/ProdProd$dense_41/Tensordot/GatherV2:output:0!dense_41/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_41/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/Prod_1Prod&dense_41/Tensordot/GatherV2_1:output:0#dense_41/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_41/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concatConcatV2 dense_41/Tensordot/free:output:0 dense_41/Tensordot/axes:output:0'dense_41/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/stackPack dense_41/Tensordot/Prod:output:0"dense_41/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/transpose	Transposedense_40/Relu:activations:0"dense_41/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense_41/Tensordot/ReshapeReshape dense_41/Tensordot/transpose:y:0!dense_41/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_41/Tensordot/MatMulMatMul#dense_41/Tensordot/Reshape:output:0)dense_41/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
dense_41/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_41/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concat_1ConcatV2$dense_41/Tensordot/GatherV2:output:0#dense_41/Tensordot/Const_2:output:0)dense_41/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/TensordotReshape#dense_41/Tensordot/MatMul:product:0$dense_41/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_41/BiasAddBiasAdddense_41/Tensordot:output:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������l
IdentityIdentitydense_41/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^conv1d_10/BiasAdd/ReadVariableOp-^conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp"^dense_40/Tensordot/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp"^dense_41/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2D
 conv1d_10/BiasAdd/ReadVariableOp conv1d_10/BiasAdd/ReadVariableOp2\
,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2F
!dense_40/Tensordot/ReadVariableOp!dense_40/Tensordot/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2F
!dense_41/Tensordot/ReadVariableOp!dense_41/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_24_layer_call_fn_385133
conv1d_10_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_385101s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameconv1d_10_input
�
�
)__inference_dense_41_layer_call_fn_385442

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_385011s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�O
�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385299

inputsK
5conv1d_10_conv1d_expanddims_1_readvariableop_resource: 7
)conv1d_10_biasadd_readvariableop_resource: <
*dense_40_tensordot_readvariableop_resource:  6
(dense_40_biasadd_readvariableop_resource: <
*dense_41_tensordot_readvariableop_resource: 6
(dense_41_biasadd_readvariableop_resource:
identity�� conv1d_10/BiasAdd/ReadVariableOp�,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�!dense_40/Tensordot/ReadVariableOp�dense_41/BiasAdd/ReadVariableOp�!dense_41/Tensordot/ReadVariableOpj
conv1d_10/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_10/Conv1D/ExpandDims
ExpandDimsinputs(conv1d_10/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0c
!conv1d_10/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_10/Conv1D/ExpandDims_1
ExpandDims4conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_10/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
conv1d_10/Conv1DConv2D$conv1d_10/Conv1D/ExpandDims:output:0&conv1d_10/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
conv1d_10/Conv1D/SqueezeSqueezeconv1d_10/Conv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

����������
 conv1d_10/BiasAdd/ReadVariableOpReadVariableOp)conv1d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv1d_10/BiasAddBiasAdd!conv1d_10/Conv1D/Squeeze:output:0(conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� h
conv1d_10/ReluReluconv1d_10/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
!dense_40/Tensordot/ReadVariableOpReadVariableOp*dense_40_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0a
dense_40/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_40/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_40/Tensordot/ShapeShapeconv1d_10/Relu:activations:0*
T0*
_output_shapes
:b
 dense_40/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/free:output:0)dense_40/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_40/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2_1GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/axes:output:0+dense_40/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_40/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/ProdProd$dense_40/Tensordot/GatherV2:output:0!dense_40/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_40/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/Prod_1Prod&dense_40/Tensordot/GatherV2_1:output:0#dense_40/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_40/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concatConcatV2 dense_40/Tensordot/free:output:0 dense_40/Tensordot/axes:output:0'dense_40/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/stackPack dense_40/Tensordot/Prod:output:0"dense_40/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/transpose	Transposeconv1d_10/Relu:activations:0"dense_40/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense_40/Tensordot/ReshapeReshape dense_40/Tensordot/transpose:y:0!dense_40/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_40/Tensordot/MatMulMatMul#dense_40/Tensordot/Reshape:output:0)dense_40/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
dense_40/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_40/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concat_1ConcatV2$dense_40/Tensordot/GatherV2:output:0#dense_40/Tensordot/Const_2:output:0)dense_40/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/TensordotReshape#dense_40/Tensordot/MatMul:product:0$dense_40/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� �
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_40/BiasAddBiasAdddense_40/Tensordot:output:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� f
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
!dense_41/Tensordot/ReadVariableOpReadVariableOp*dense_41_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0a
dense_41/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_41/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_41/Tensordot/ShapeShapedense_40/Relu:activations:0*
T0*
_output_shapes
:b
 dense_41/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/free:output:0)dense_41/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_41/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2_1GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/axes:output:0+dense_41/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_41/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/ProdProd$dense_41/Tensordot/GatherV2:output:0!dense_41/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_41/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/Prod_1Prod&dense_41/Tensordot/GatherV2_1:output:0#dense_41/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_41/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concatConcatV2 dense_41/Tensordot/free:output:0 dense_41/Tensordot/axes:output:0'dense_41/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/stackPack dense_41/Tensordot/Prod:output:0"dense_41/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/transpose	Transposedense_40/Relu:activations:0"dense_41/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense_41/Tensordot/ReshapeReshape dense_41/Tensordot/transpose:y:0!dense_41/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_41/Tensordot/MatMulMatMul#dense_41/Tensordot/Reshape:output:0)dense_41/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
dense_41/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_41/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concat_1ConcatV2$dense_41/Tensordot/GatherV2:output:0#dense_41/Tensordot/Const_2:output:0)dense_41/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/TensordotReshape#dense_41/Tensordot/MatMul:product:0$dense_41/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_41/BiasAddBiasAdddense_41/Tensordot:output:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������l
IdentityIdentitydense_41/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^conv1d_10/BiasAdd/ReadVariableOp-^conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp"^dense_40/Tensordot/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp"^dense_41/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2D
 conv1d_10/BiasAdd/ReadVariableOp conv1d_10/BiasAdd/ReadVariableOp2\
,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2F
!dense_40/Tensordot/ReadVariableOp!dense_40/Tensordot/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2F
!dense_41/Tensordot/ReadVariableOp!dense_41/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_sequential_24_layer_call_fn_385033
conv1d_10_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_385018s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameconv1d_10_input
�
�
$__inference_signature_wrapper_385196
conv1d_10_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_384915s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameconv1d_10_input
�	
�
.__inference_sequential_24_layer_call_fn_385213

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_385018s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385101

inputs&
conv1d_10_385085: 
conv1d_10_385087: !
dense_40_385090:  
dense_40_385092: !
dense_41_385095: 
dense_41_385097:
identity��!conv1d_10/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCall�
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_10_385085conv1d_10_385087*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_384938�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0dense_40_385090dense_40_385092*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_384975�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_385095dense_41_385097*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_385011|
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp"^conv1d_10/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_conv1d_10_layer_call_fn_385377

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_384938s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv1d_10_layer_call_and_return_conditional_losses_385393

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�l
�
"__inference__traced_restore_385667
file_prefix7
!assignvariableop_conv1d_10_kernel: /
!assignvariableop_1_conv1d_10_bias: 4
"assignvariableop_2_dense_40_kernel:  .
 assignvariableop_3_dense_40_bias: 4
"assignvariableop_4_dense_41_kernel: .
 assignvariableop_5_dense_41_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: A
+assignvariableop_15_adam_conv1d_10_kernel_m: 7
)assignvariableop_16_adam_conv1d_10_bias_m: <
*assignvariableop_17_adam_dense_40_kernel_m:  6
(assignvariableop_18_adam_dense_40_bias_m: <
*assignvariableop_19_adam_dense_41_kernel_m: 6
(assignvariableop_20_adam_dense_41_bias_m:A
+assignvariableop_21_adam_conv1d_10_kernel_v: 7
)assignvariableop_22_adam_conv1d_10_bias_v: <
*assignvariableop_23_adam_dense_40_kernel_v:  6
(assignvariableop_24_adam_dense_40_bias_v: <
*assignvariableop_25_adam_dense_41_kernel_v: 6
(assignvariableop_26_adam_dense_41_bias_v:
identity_28��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_40_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_40_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_41_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_41_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_conv1d_10_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_conv1d_10_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_40_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_40_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_41_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_41_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv1d_10_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv1d_10_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_40_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_40_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_41_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_41_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
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
�a
�
!__inference__wrapped_model_384915
conv1d_10_inputY
Csequential_24_conv1d_10_conv1d_expanddims_1_readvariableop_resource: E
7sequential_24_conv1d_10_biasadd_readvariableop_resource: J
8sequential_24_dense_40_tensordot_readvariableop_resource:  D
6sequential_24_dense_40_biasadd_readvariableop_resource: J
8sequential_24_dense_41_tensordot_readvariableop_resource: D
6sequential_24_dense_41_biasadd_readvariableop_resource:
identity��.sequential_24/conv1d_10/BiasAdd/ReadVariableOp�:sequential_24/conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp�-sequential_24/dense_40/BiasAdd/ReadVariableOp�/sequential_24/dense_40/Tensordot/ReadVariableOp�-sequential_24/dense_41/BiasAdd/ReadVariableOp�/sequential_24/dense_41/Tensordot/ReadVariableOpx
-sequential_24/conv1d_10/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
)sequential_24/conv1d_10/Conv1D/ExpandDims
ExpandDimsconv1d_10_input6sequential_24/conv1d_10/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
:sequential_24/conv1d_10/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_24_conv1d_10_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0q
/sequential_24/conv1d_10/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
+sequential_24/conv1d_10/Conv1D/ExpandDims_1
ExpandDimsBsequential_24/conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp:value:08sequential_24/conv1d_10/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
sequential_24/conv1d_10/Conv1DConv2D2sequential_24/conv1d_10/Conv1D/ExpandDims:output:04sequential_24/conv1d_10/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
&sequential_24/conv1d_10/Conv1D/SqueezeSqueeze'sequential_24/conv1d_10/Conv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

����������
.sequential_24/conv1d_10/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv1d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_24/conv1d_10/BiasAddBiasAdd/sequential_24/conv1d_10/Conv1D/Squeeze:output:06sequential_24/conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� �
sequential_24/conv1d_10/ReluRelu(sequential_24/conv1d_10/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
/sequential_24/dense_40/Tensordot/ReadVariableOpReadVariableOp8sequential_24_dense_40_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0o
%sequential_24/dense_40/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_24/dense_40/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
&sequential_24/dense_40/Tensordot/ShapeShape*sequential_24/conv1d_10/Relu:activations:0*
T0*
_output_shapes
:p
.sequential_24/dense_40/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_24/dense_40/Tensordot/GatherV2GatherV2/sequential_24/dense_40/Tensordot/Shape:output:0.sequential_24/dense_40/Tensordot/free:output:07sequential_24/dense_40/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_24/dense_40/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+sequential_24/dense_40/Tensordot/GatherV2_1GatherV2/sequential_24/dense_40/Tensordot/Shape:output:0.sequential_24/dense_40/Tensordot/axes:output:09sequential_24/dense_40/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_24/dense_40/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%sequential_24/dense_40/Tensordot/ProdProd2sequential_24/dense_40/Tensordot/GatherV2:output:0/sequential_24/dense_40/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_24/dense_40/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
'sequential_24/dense_40/Tensordot/Prod_1Prod4sequential_24/dense_40/Tensordot/GatherV2_1:output:01sequential_24/dense_40/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_24/dense_40/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_24/dense_40/Tensordot/concatConcatV2.sequential_24/dense_40/Tensordot/free:output:0.sequential_24/dense_40/Tensordot/axes:output:05sequential_24/dense_40/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
&sequential_24/dense_40/Tensordot/stackPack.sequential_24/dense_40/Tensordot/Prod:output:00sequential_24/dense_40/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
*sequential_24/dense_40/Tensordot/transpose	Transpose*sequential_24/conv1d_10/Relu:activations:00sequential_24/dense_40/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
(sequential_24/dense_40/Tensordot/ReshapeReshape.sequential_24/dense_40/Tensordot/transpose:y:0/sequential_24/dense_40/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
'sequential_24/dense_40/Tensordot/MatMulMatMul1sequential_24/dense_40/Tensordot/Reshape:output:07sequential_24/dense_40/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
(sequential_24/dense_40/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: p
.sequential_24/dense_40/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_24/dense_40/Tensordot/concat_1ConcatV22sequential_24/dense_40/Tensordot/GatherV2:output:01sequential_24/dense_40/Tensordot/Const_2:output:07sequential_24/dense_40/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
 sequential_24/dense_40/TensordotReshape1sequential_24/dense_40/Tensordot/MatMul:product:02sequential_24/dense_40/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� �
-sequential_24/dense_40/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_24/dense_40/BiasAddBiasAdd)sequential_24/dense_40/Tensordot:output:05sequential_24/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� �
sequential_24/dense_40/ReluRelu'sequential_24/dense_40/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
/sequential_24/dense_41/Tensordot/ReadVariableOpReadVariableOp8sequential_24_dense_41_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0o
%sequential_24/dense_41/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%sequential_24/dense_41/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
&sequential_24/dense_41/Tensordot/ShapeShape)sequential_24/dense_40/Relu:activations:0*
T0*
_output_shapes
:p
.sequential_24/dense_41/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_24/dense_41/Tensordot/GatherV2GatherV2/sequential_24/dense_41/Tensordot/Shape:output:0.sequential_24/dense_41/Tensordot/free:output:07sequential_24/dense_41/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0sequential_24/dense_41/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+sequential_24/dense_41/Tensordot/GatherV2_1GatherV2/sequential_24/dense_41/Tensordot/Shape:output:0.sequential_24/dense_41/Tensordot/axes:output:09sequential_24/dense_41/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&sequential_24/dense_41/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%sequential_24/dense_41/Tensordot/ProdProd2sequential_24/dense_41/Tensordot/GatherV2:output:0/sequential_24/dense_41/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(sequential_24/dense_41/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
'sequential_24/dense_41/Tensordot/Prod_1Prod4sequential_24/dense_41/Tensordot/GatherV2_1:output:01sequential_24/dense_41/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,sequential_24/dense_41/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_24/dense_41/Tensordot/concatConcatV2.sequential_24/dense_41/Tensordot/free:output:0.sequential_24/dense_41/Tensordot/axes:output:05sequential_24/dense_41/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
&sequential_24/dense_41/Tensordot/stackPack.sequential_24/dense_41/Tensordot/Prod:output:00sequential_24/dense_41/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
*sequential_24/dense_41/Tensordot/transpose	Transpose)sequential_24/dense_40/Relu:activations:00sequential_24/dense_41/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
(sequential_24/dense_41/Tensordot/ReshapeReshape.sequential_24/dense_41/Tensordot/transpose:y:0/sequential_24/dense_41/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
'sequential_24/dense_41/Tensordot/MatMulMatMul1sequential_24/dense_41/Tensordot/Reshape:output:07sequential_24/dense_41/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
(sequential_24/dense_41/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:p
.sequential_24/dense_41/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_24/dense_41/Tensordot/concat_1ConcatV22sequential_24/dense_41/Tensordot/GatherV2:output:01sequential_24/dense_41/Tensordot/Const_2:output:07sequential_24/dense_41/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
 sequential_24/dense_41/TensordotReshape1sequential_24/dense_41/Tensordot/MatMul:product:02sequential_24/dense_41/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
-sequential_24/dense_41/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_24/dense_41/BiasAddBiasAdd)sequential_24/dense_41/Tensordot:output:05sequential_24/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������z
IdentityIdentity'sequential_24/dense_41/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp/^sequential_24/conv1d_10/BiasAdd/ReadVariableOp;^sequential_24/conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp.^sequential_24/dense_40/BiasAdd/ReadVariableOp0^sequential_24/dense_40/Tensordot/ReadVariableOp.^sequential_24/dense_41/BiasAdd/ReadVariableOp0^sequential_24/dense_41/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2`
.sequential_24/conv1d_10/BiasAdd/ReadVariableOp.sequential_24/conv1d_10/BiasAdd/ReadVariableOp2x
:sequential_24/conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp:sequential_24/conv1d_10/Conv1D/ExpandDims_1/ReadVariableOp2^
-sequential_24/dense_40/BiasAdd/ReadVariableOp-sequential_24/dense_40/BiasAdd/ReadVariableOp2b
/sequential_24/dense_40/Tensordot/ReadVariableOp/sequential_24/dense_40/Tensordot/ReadVariableOp2^
-sequential_24/dense_41/BiasAdd/ReadVariableOp-sequential_24/dense_41/BiasAdd/ReadVariableOp2b
/sequential_24/dense_41/Tensordot/ReadVariableOp/sequential_24/dense_41/Tensordot/ReadVariableOp:\ X
+
_output_shapes
:���������
)
_user_specified_nameconv1d_10_input
�
�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385018

inputs&
conv1d_10_384939: 
conv1d_10_384941: !
dense_40_384976:  
dense_40_384978: !
dense_41_385012: 
dense_41_385014:
identity��!conv1d_10/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCall�
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_10_384939conv1d_10_384941*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_384938�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0dense_40_384976dense_40_384978*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_384975�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_385012dense_41_385014*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_385011|
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp"^conv1d_10/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�;
�
__inference__traced_save_385576
file_prefix/
+savev2_conv1d_10_kernel_read_readvariableop-
)savev2_conv1d_10_bias_read_readvariableop.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv1d_10_kernel_m_read_readvariableop4
0savev2_adam_conv1d_10_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop6
2savev2_adam_conv1d_10_kernel_v_read_readvariableop4
0savev2_adam_conv1d_10_bias_v_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_10_kernel_read_readvariableop)savev2_conv1d_10_bias_read_readvariableop*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv1d_10_kernel_m_read_readvariableop0savev2_adam_conv1d_10_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop2savev2_adam_conv1d_10_kernel_v_read_readvariableop0savev2_adam_conv1d_10_bias_v_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : :  : : :: : : : : : : : : : : :  : : :: : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::
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
: :($
"
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::($
"
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
�
�
D__inference_dense_41_layer_call_and_return_conditional_losses_385472

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385171
conv1d_10_input&
conv1d_10_385155: 
conv1d_10_385157: !
dense_40_385160:  
dense_40_385162: !
dense_41_385165: 
dense_41_385167:
identity��!conv1d_10/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCall�
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputconv1d_10_385155conv1d_10_385157*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_384938�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0dense_40_385160dense_40_385162*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_384975�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_385165dense_41_385167*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_385011|
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp"^conv1d_10/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameconv1d_10_input
�	
�
.__inference_sequential_24_layer_call_fn_385230

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_24_layer_call_and_return_conditional_losses_385101s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_dense_40_layer_call_and_return_conditional_losses_384975

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385152
conv1d_10_input&
conv1d_10_385136: 
conv1d_10_385138: !
dense_40_385141:  
dense_40_385143: !
dense_41_385146: 
dense_41_385148:
identity��!conv1d_10/StatefulPartitionedCall� dense_40/StatefulPartitionedCall� dense_41/StatefulPartitionedCall�
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCallconv1d_10_inputconv1d_10_385136conv1d_10_385138*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_10_layer_call_and_return_conditional_losses_384938�
 dense_40/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0dense_40_385141dense_40_385143*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_384975�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_385146dense_41_385148*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_385011|
IdentityIdentity)dense_41/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp"^conv1d_10/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameconv1d_10_input
�
�
D__inference_dense_40_layer_call_and_return_conditional_losses_385433

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_conv1d_10_layer_call_and_return_conditional_losses_384938

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
O
conv1d_10_input<
!serving_default_conv1d_10_input:0���������@
dense_414
StatefulPartitionedCall:0���������tensorflow/serving/predict:�P
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
L__call__
*M&call_and_return_all_conditional_losses
N_default_save_signature"
_tf_keras_sequential
�


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK"
	optimizer
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
L__call__
N_default_save_signature
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
&:$ 2conv1d_10/kernel
: 2conv1d_10/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
!:  2dense_40/kernel
: 2dense_40/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_41/kernel
:2dense_41/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
50
61"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	7total
	8count
9	variables
:	keras_api"
_tf_keras_metric
^
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
+:) 2Adam/conv1d_10/kernel/m
!: 2Adam/conv1d_10/bias/m
&:$  2Adam/dense_40/kernel/m
 : 2Adam/dense_40/bias/m
&:$ 2Adam/dense_41/kernel/m
 :2Adam/dense_41/bias/m
+:) 2Adam/conv1d_10/kernel/v
!: 2Adam/conv1d_10/bias/v
&:$  2Adam/dense_40/kernel/v
 : 2Adam/dense_40/bias/v
&:$ 2Adam/dense_41/kernel/v
 :2Adam/dense_41/bias/v
�2�
.__inference_sequential_24_layer_call_fn_385033
.__inference_sequential_24_layer_call_fn_385213
.__inference_sequential_24_layer_call_fn_385230
.__inference_sequential_24_layer_call_fn_385133�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_sequential_24_layer_call_and_return_conditional_losses_385299
I__inference_sequential_24_layer_call_and_return_conditional_losses_385368
I__inference_sequential_24_layer_call_and_return_conditional_losses_385152
I__inference_sequential_24_layer_call_and_return_conditional_losses_385171�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_384915conv1d_10_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_conv1d_10_layer_call_fn_385377�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_conv1d_10_layer_call_and_return_conditional_losses_385393�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_40_layer_call_fn_385402�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_40_layer_call_and_return_conditional_losses_385433�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_41_layer_call_fn_385442�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_41_layer_call_and_return_conditional_losses_385472�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_385196conv1d_10_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_384915
<�9
2�/
-�*
conv1d_10_input���������
� "7�4
2
dense_41&�#
dense_41����������
E__inference_conv1d_10_layer_call_and_return_conditional_losses_385393d
3�0
)�&
$�!
inputs���������
� ")�&
�
0��������� 
� �
*__inference_conv1d_10_layer_call_fn_385377W
3�0
)�&
$�!
inputs���������
� "���������� �
D__inference_dense_40_layer_call_and_return_conditional_losses_385433d3�0
)�&
$�!
inputs��������� 
� ")�&
�
0��������� 
� �
)__inference_dense_40_layer_call_fn_385402W3�0
)�&
$�!
inputs��������� 
� "���������� �
D__inference_dense_41_layer_call_and_return_conditional_losses_385472d3�0
)�&
$�!
inputs��������� 
� ")�&
�
0���������
� �
)__inference_dense_41_layer_call_fn_385442W3�0
)�&
$�!
inputs��������� 
� "�����������
I__inference_sequential_24_layer_call_and_return_conditional_losses_385152y
D�A
:�7
-�*
conv1d_10_input���������
p 

 
� ")�&
�
0���������
� �
I__inference_sequential_24_layer_call_and_return_conditional_losses_385171y
D�A
:�7
-�*
conv1d_10_input���������
p

 
� ")�&
�
0���������
� �
I__inference_sequential_24_layer_call_and_return_conditional_losses_385299p
;�8
1�.
$�!
inputs���������
p 

 
� ")�&
�
0���������
� �
I__inference_sequential_24_layer_call_and_return_conditional_losses_385368p
;�8
1�.
$�!
inputs���������
p

 
� ")�&
�
0���������
� �
.__inference_sequential_24_layer_call_fn_385033l
D�A
:�7
-�*
conv1d_10_input���������
p 

 
� "�����������
.__inference_sequential_24_layer_call_fn_385133l
D�A
:�7
-�*
conv1d_10_input���������
p

 
� "�����������
.__inference_sequential_24_layer_call_fn_385213c
;�8
1�.
$�!
inputs���������
p 

 
� "�����������
.__inference_sequential_24_layer_call_fn_385230c
;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_385196�
O�L
� 
E�B
@
conv1d_10_input-�*
conv1d_10_input���������"7�4
2
dense_41&�#
dense_41���������