??
?-?-
9
Add
x"T
y"T
z"T"
Ttype:
2	
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
?
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
?
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
A
Equal
x"T
y"T
z
"
Ttype:
2	
?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
?
MaxPool

input"T
output"T"
Ttype0:
2		"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
?
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	?
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
<
Mul
x"T
y"T
z"T"
Ttype:
2	?
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
i
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
c
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2		

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.3.02v1.3.0-rc2-20-g0787eee??
p
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:??????????*
shape:??????????
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:?????????
*
shape:?????????

n
reshape/Reshape/shapeConst*%
valueB"????         *
dtype0*
_output_shapes
:
?
reshape/ReshapeReshapePlaceholderreshape/Reshape/shape*/
_output_shapes
:?????????*
T0*
Tshape0
u
conv1/truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
`
conv1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
conv1/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
&conv1/truncated_normal/TruncatedNormalTruncatedNormalconv1/truncated_normal/shape*
dtype0*&
_output_shapes
: *
seed2 *

seed *
T0
?
conv1/truncated_normal/mulMul&conv1/truncated_normal/TruncatedNormalconv1/truncated_normal/stddev*&
_output_shapes
: *
T0
?
conv1/truncated_normalAddconv1/truncated_normal/mulconv1/truncated_normal/mean*
T0*&
_output_shapes
: 
?
conv1/Variable
VariableV2*&
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0
?
conv1/Variable/AssignAssignconv1/Variableconv1/truncated_normal*!
_class
loc:@conv1/Variable*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
?
conv1/Variable/readIdentityconv1/Variable*&
_output_shapes
: *
T0*!
_class
loc:@conv1/Variable
X
conv1/ConstConst*
valueB *???=*
dtype0*
_output_shapes
: 
|
conv1/Variable_1
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
?
conv1/Variable_1/AssignAssignconv1/Variable_1conv1/Const*
use_locking(*
T0*#
_class
loc:@conv1/Variable_1*
validate_shape(*
_output_shapes
: 
}
conv1/Variable_1/readIdentityconv1/Variable_1*
T0*#
_class
loc:@conv1/Variable_1*
_output_shapes
: 
?
conv1/Conv2DConv2Dreshape/Reshapeconv1/Variable/read*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:????????? *
T0*
strides
*
data_formatNHWC
o
	conv1/addAddconv1/Conv2Dconv1/Variable_1/read*
T0*/
_output_shapes
:????????? 
W

conv1/ReluRelu	conv1/add*/
_output_shapes
:????????? *
T0
?
pool1/MaxPoolMaxPool
conv1/Relu*
ksize
*
paddingSAME*/
_output_shapes
:????????? *
T0*
strides
*
data_formatNHWC
u
conv2/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"          @   
`
conv2/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
b
conv2/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
&conv2/truncated_normal/TruncatedNormalTruncatedNormalconv2/truncated_normal/shape*
T0*
dtype0*&
_output_shapes
: @*
seed2 *

seed 
?
conv2/truncated_normal/mulMul&conv2/truncated_normal/TruncatedNormalconv2/truncated_normal/stddev*&
_output_shapes
: @*
T0
?
conv2/truncated_normalAddconv2/truncated_normal/mulconv2/truncated_normal/mean*
T0*&
_output_shapes
: @
?
conv2/Variable
VariableV2*
shape: @*
shared_name *
dtype0*&
_output_shapes
: @*
	container 
?
conv2/Variable/AssignAssignconv2/Variableconv2/truncated_normal*
use_locking(*
T0*!
_class
loc:@conv2/Variable*
validate_shape(*&
_output_shapes
: @
?
conv2/Variable/readIdentityconv2/Variable*
T0*!
_class
loc:@conv2/Variable*&
_output_shapes
: @
X
conv2/ConstConst*
valueB@*???=*
dtype0*
_output_shapes
:@
|
conv2/Variable_1
VariableV2*
shape:@*
shared_name *
dtype0*
_output_shapes
:@*
	container 
?
conv2/Variable_1/AssignAssignconv2/Variable_1conv2/Const*
use_locking(*
T0*#
_class
loc:@conv2/Variable_1*
validate_shape(*
_output_shapes
:@
}
conv2/Variable_1/readIdentityconv2/Variable_1*
T0*#
_class
loc:@conv2/Variable_1*
_output_shapes
:@
?
conv2/Conv2DConv2Dpool1/MaxPoolconv2/Variable/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????@
o
	conv2/addAddconv2/Conv2Dconv2/Variable_1/read*
T0*/
_output_shapes
:?????????@
W

conv2/ReluRelu	conv2/add*/
_output_shapes
:?????????@*
T0
?
pool2/MaxPoolMaxPool
conv2/Relu*
ksize
*
paddingSAME*/
_output_shapes
:?????????@*
T0*
strides
*
data_formatNHWC
k
fc1/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"@     
^
fc1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
fc1/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
$fc1/truncated_normal/TruncatedNormalTruncatedNormalfc1/truncated_normal/shape* 
_output_shapes
:
??*
seed2 *

seed *
T0*
dtype0
?
fc1/truncated_normal/mulMul$fc1/truncated_normal/TruncatedNormalfc1/truncated_normal/stddev*
T0* 
_output_shapes
:
??
{
fc1/truncated_normalAddfc1/truncated_normal/mulfc1/truncated_normal/mean*
T0* 
_output_shapes
:
??
?
fc1/Variable
VariableV2*
shape:
??*
shared_name *
dtype0* 
_output_shapes
:
??*
	container 
?
fc1/Variable/AssignAssignfc1/Variablefc1/truncated_normal*
_class
loc:@fc1/Variable*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
w
fc1/Variable/readIdentityfc1/Variable*
T0*
_class
loc:@fc1/Variable* 
_output_shapes
:
??
X
	fc1/ConstConst*
valueB?*???=*
dtype0*
_output_shapes	
:?
|
fc1/Variable_1
VariableV2*
dtype0*
_output_shapes	
:?*
	container *
shape:?*
shared_name 
?
fc1/Variable_1/AssignAssignfc1/Variable_1	fc1/Const*
T0*!
_class
loc:@fc1/Variable_1*
validate_shape(*
_output_shapes	
:?*
use_locking(
x
fc1/Variable_1/readIdentityfc1/Variable_1*
T0*!
_class
loc:@fc1/Variable_1*
_output_shapes	
:?
b
fc1/Reshape/shapeConst*
_output_shapes
:*
valueB"????@  *
dtype0
y
fc1/ReshapeReshapepool2/MaxPoolfc1/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????
?

fc1/MatMulMatMulfc1/Reshapefc1/Variable/read*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
b
fc1/addAdd
fc1/MatMulfc1/Variable_1/read*
T0*(
_output_shapes
:??????????
L
fc1/ReluRelufc1/add*(
_output_shapes
:??????????*
T0
X
dropout/PlaceholderPlaceholder*
dtype0*
_output_shapes
:*
shape:
]
dropout/dropout/ShapeShapefc1/Relu*
T0*
out_type0*
_output_shapes
:
g
"dropout/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*(
_output_shapes
:??????????*
seed2 *

seed *
T0*
dtype0
?
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:??????????
r
dropout/dropout/addAdddropout/Placeholderdropout/dropout/random_uniform*
T0*
_output_shapes
:
V
dropout/dropout/FloorFloordropout/dropout/add*
T0*
_output_shapes
:
`
dropout/dropout/divRealDivfc1/Reludropout/Placeholder*
T0*
_output_shapes
:
y
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*(
_output_shapes
:??????????*
T0
k
fc2/truncated_normal/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
^
fc2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
`
fc2/truncated_normal/stddevConst*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
$fc2/truncated_normal/TruncatedNormalTruncatedNormalfc2/truncated_normal/shape*

seed *
T0*
dtype0*
_output_shapes
:	?
*
seed2 
?
fc2/truncated_normal/mulMul$fc2/truncated_normal/TruncatedNormalfc2/truncated_normal/stddev*
T0*
_output_shapes
:	?

z
fc2/truncated_normalAddfc2/truncated_normal/mulfc2/truncated_normal/mean*
T0*
_output_shapes
:	?

?
fc2/Variable
VariableV2*
dtype0*
_output_shapes
:	?
*
	container *
shape:	?
*
shared_name 
?
fc2/Variable/AssignAssignfc2/Variablefc2/truncated_normal*
use_locking(*
T0*
_class
loc:@fc2/Variable*
validate_shape(*
_output_shapes
:	?

v
fc2/Variable/readIdentityfc2/Variable*
T0*
_class
loc:@fc2/Variable*
_output_shapes
:	?

V
	fc2/ConstConst*
valueB
*???=*
dtype0*
_output_shapes
:

z
fc2/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:
*
	container *
shape:

?
fc2/Variable_1/AssignAssignfc2/Variable_1	fc2/Const*
use_locking(*
T0*!
_class
loc:@fc2/Variable_1*
validate_shape(*
_output_shapes
:

w
fc2/Variable_1/readIdentityfc2/Variable_1*
T0*!
_class
loc:@fc2/Variable_1*
_output_shapes
:

?

fc2/MatMulMatMuldropout/dropout/mulfc2/Variable/read*'
_output_shapes
:?????????
*
transpose_a( *
transpose_b( *
T0
a
fc2/addAdd
fc2/MatMulfc2/Variable_1/read*'
_output_shapes
:?????????
*
T0
J
TopKV2/kConst*
dtype0*
_output_shapes
: *
value	B :

v
TopKV2TopKV2fc2/addTopKV2/k*
T0*:
_output_shapes(
&:?????????
:?????????
*
sorted(
j
ConstConst*1
value(B&
B0B1B2B3B4B5B6B7B8B9*
dtype0*
_output_shapes
:

V
index_to_string/SizeConst*
value	B :
*
dtype0*
_output_shapes
: 
]
index_to_string/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
index_to_string/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
index_to_string/rangeRangeindex_to_string/range/startindex_to_string/Sizeindex_to_string/range/delta*
_output_shapes
:
*

Tidx0
j
index_to_string/ToInt64Castindex_to_string/range*
_output_shapes
:
*

DstT0	*

SrcT0
?
index_to_stringHashTableV2*
shared_name *
use_node_name_sharing( *
	key_dtype0	*
	container *
value_dtype0*
_output_shapes
: 
Y
index_to_string/ConstConst*
valueB	 BUNK*
dtype0*
_output_shapes
: 
x
index_to_string/table_initInitializeTableV2index_to_stringindex_to_string/ToInt64Const*

Tkey0	*

Tval0
Z
ToInt64CastTopKV2:1*

SrcT0*'
_output_shapes
:?????????
*

DstT0	
?
index_to_string_LookupLookupTableFindV2index_to_stringToInt64index_to_string/Const*'
_output_shapes
:?????????
*	
Tin0	*

Tout0
K
	loss/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Q

loss/ShapeShapefc2/add*
T0*
out_type0*
_output_shapes
:
M
loss/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
S
loss/Shape_1Shapefc2/add*
out_type0*
_output_shapes
:*
T0
L

loss/Sub/yConst*
_output_shapes
: *
value	B :*
dtype0
I
loss/SubSubloss/Rank_1
loss/Sub/y*
_output_shapes
: *
T0
\
loss/Slice/beginPackloss/Sub*
_output_shapes
:*
T0*

axis *
N
Y
loss/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
v

loss/SliceSliceloss/Shape_1loss/Slice/beginloss/Slice/size*
_output_shapes
:*
Index0*
T0
g
loss/concat/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
R
loss/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
loss/concatConcatV2loss/concat/values_0
loss/Sliceloss/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
v
loss/ReshapeReshapefc2/addloss/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????
M
loss/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
Y
loss/Shape_2ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
N
loss/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
M

loss/Sub_1Subloss/Rank_2loss/Sub_1/y*
T0*
_output_shapes
: 
`
loss/Slice_1/beginPack
loss/Sub_1*
N*
_output_shapes
:*
T0*

axis 
[
loss/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
|
loss/Slice_1Sliceloss/Shape_2loss/Slice_1/beginloss/Slice_1/size*
Index0*
T0*
_output_shapes
:
i
loss/concat_1/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
T
loss/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
loss/concat_1ConcatV2loss/concat_1/values_0loss/Slice_1loss/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
loss/Reshape_1ReshapePlaceholder_1loss/concat_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
"loss/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsloss/Reshapeloss/Reshape_1*
T0*?
_output_shapes-
+:?????????:??????????????????
N
loss/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
K

loss/Sub_2Sub	loss/Rankloss/Sub_2/y*
T0*
_output_shapes
: 
\
loss/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
_
loss/Slice_2/sizePack
loss/Sub_2*
T0*

axis *
N*
_output_shapes
:
?
loss/Slice_2Slice
loss/Shapeloss/Slice_2/beginloss/Slice_2/size*
Index0*
T0*#
_output_shapes
:?????????
?
loss/Reshape_2Reshape"loss/SoftmaxCrossEntropyWithLogitsloss/Slice_2*#
_output_shapes
:?????????*
T0*
Tshape0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
c
MeanMeanloss/Reshape_2Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
adam_optimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
c
adam_optimizer/gradients/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
adam_optimizer/gradients/FillFilladam_optimizer/gradients/Shapeadam_optimizer/gradients/Const*
T0*
_output_shapes
: 
z
0adam_optimizer/gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
?
*adam_optimizer/gradients/Mean_grad/ReshapeReshapeadam_optimizer/gradients/Fill0adam_optimizer/gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
v
(adam_optimizer/gradients/Mean_grad/ShapeShapeloss/Reshape_2*
out_type0*
_output_shapes
:*
T0
?
'adam_optimizer/gradients/Mean_grad/TileTile*adam_optimizer/gradients/Mean_grad/Reshape(adam_optimizer/gradients/Mean_grad/Shape*
T0*#
_output_shapes
:?????????*

Tmultiples0
x
*adam_optimizer/gradients/Mean_grad/Shape_1Shapeloss/Reshape_2*
T0*
out_type0*
_output_shapes
:
m
*adam_optimizer/gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
r
(adam_optimizer/gradients/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
?
'adam_optimizer/gradients/Mean_grad/ProdProd*adam_optimizer/gradients/Mean_grad/Shape_1(adam_optimizer/gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
t
*adam_optimizer/gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
)adam_optimizer/gradients/Mean_grad/Prod_1Prod*adam_optimizer/gradients/Mean_grad/Shape_2*adam_optimizer/gradients/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
n
,adam_optimizer/gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
?
*adam_optimizer/gradients/Mean_grad/MaximumMaximum)adam_optimizer/gradients/Mean_grad/Prod_1,adam_optimizer/gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
?
+adam_optimizer/gradients/Mean_grad/floordivFloorDiv'adam_optimizer/gradients/Mean_grad/Prod*adam_optimizer/gradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
?
'adam_optimizer/gradients/Mean_grad/CastCast+adam_optimizer/gradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
?
*adam_optimizer/gradients/Mean_grad/truedivRealDiv'adam_optimizer/gradients/Mean_grad/Tile'adam_optimizer/gradients/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
?
2adam_optimizer/gradients/loss/Reshape_2_grad/ShapeShape"loss/SoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
?
4adam_optimizer/gradients/loss/Reshape_2_grad/ReshapeReshape*adam_optimizer/gradients/Mean_grad/truediv2adam_optimizer/gradients/loss/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
?
#adam_optimizer/gradients/zeros_like	ZerosLike$loss/SoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:??????????????????*
T0
?
Oadam_optimizer/gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
Kadam_optimizer/gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4adam_optimizer/gradients/loss/Reshape_2_grad/ReshapeOadam_optimizer/gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:?????????*

Tdim0
?
Dadam_optimizer/gradients/loss/SoftmaxCrossEntropyWithLogits_grad/mulMulKadam_optimizer/gradients/loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims$loss/SoftmaxCrossEntropyWithLogits:1*0
_output_shapes
:??????????????????*
T0
w
0adam_optimizer/gradients/loss/Reshape_grad/ShapeShapefc2/add*
T0*
out_type0*
_output_shapes
:
?
2adam_optimizer/gradients/loss/Reshape_grad/ReshapeReshapeDadam_optimizer/gradients/loss/SoftmaxCrossEntropyWithLogits_grad/mul0adam_optimizer/gradients/loss/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

u
+adam_optimizer/gradients/fc2/add_grad/ShapeShape
fc2/MatMul*
T0*
out_type0*
_output_shapes
:
w
-adam_optimizer/gradients/fc2/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
?
;adam_optimizer/gradients/fc2/add_grad/BroadcastGradientArgsBroadcastGradientArgs+adam_optimizer/gradients/fc2/add_grad/Shape-adam_optimizer/gradients/fc2/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
)adam_optimizer/gradients/fc2/add_grad/SumSum2adam_optimizer/gradients/loss/Reshape_grad/Reshape;adam_optimizer/gradients/fc2/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
-adam_optimizer/gradients/fc2/add_grad/ReshapeReshape)adam_optimizer/gradients/fc2/add_grad/Sum+adam_optimizer/gradients/fc2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????

?
+adam_optimizer/gradients/fc2/add_grad/Sum_1Sum2adam_optimizer/gradients/loss/Reshape_grad/Reshape=adam_optimizer/gradients/fc2/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
/adam_optimizer/gradients/fc2/add_grad/Reshape_1Reshape+adam_optimizer/gradients/fc2/add_grad/Sum_1-adam_optimizer/gradients/fc2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

?
6adam_optimizer/gradients/fc2/add_grad/tuple/group_depsNoOp.^adam_optimizer/gradients/fc2/add_grad/Reshape0^adam_optimizer/gradients/fc2/add_grad/Reshape_1
?
>adam_optimizer/gradients/fc2/add_grad/tuple/control_dependencyIdentity-adam_optimizer/gradients/fc2/add_grad/Reshape7^adam_optimizer/gradients/fc2/add_grad/tuple/group_deps*@
_class6
42loc:@adam_optimizer/gradients/fc2/add_grad/Reshape*'
_output_shapes
:?????????
*
T0
?
@adam_optimizer/gradients/fc2/add_grad/tuple/control_dependency_1Identity/adam_optimizer/gradients/fc2/add_grad/Reshape_17^adam_optimizer/gradients/fc2/add_grad/tuple/group_deps*B
_class8
64loc:@adam_optimizer/gradients/fc2/add_grad/Reshape_1*
_output_shapes
:
*
T0
?
/adam_optimizer/gradients/fc2/MatMul_grad/MatMulMatMul>adam_optimizer/gradients/fc2/add_grad/tuple/control_dependencyfc2/Variable/read*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(*
T0
?
1adam_optimizer/gradients/fc2/MatMul_grad/MatMul_1MatMuldropout/dropout/mul>adam_optimizer/gradients/fc2/add_grad/tuple/control_dependency*
_output_shapes
:	?
*
transpose_a(*
transpose_b( *
T0
?
9adam_optimizer/gradients/fc2/MatMul_grad/tuple/group_depsNoOp0^adam_optimizer/gradients/fc2/MatMul_grad/MatMul2^adam_optimizer/gradients/fc2/MatMul_grad/MatMul_1
?
Aadam_optimizer/gradients/fc2/MatMul_grad/tuple/control_dependencyIdentity/adam_optimizer/gradients/fc2/MatMul_grad/MatMul:^adam_optimizer/gradients/fc2/MatMul_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*B
_class8
64loc:@adam_optimizer/gradients/fc2/MatMul_grad/MatMul
?
Cadam_optimizer/gradients/fc2/MatMul_grad/tuple/control_dependency_1Identity1adam_optimizer/gradients/fc2/MatMul_grad/MatMul_1:^adam_optimizer/gradients/fc2/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@adam_optimizer/gradients/fc2/MatMul_grad/MatMul_1*
_output_shapes
:	?

?
7adam_optimizer/gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*#
_output_shapes
:?????????
?
9adam_optimizer/gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*#
_output_shapes
:?????????*
T0*
out_type0
?
Gadam_optimizer/gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs7adam_optimizer/gradients/dropout/dropout/mul_grad/Shape9adam_optimizer/gradients/dropout/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
5adam_optimizer/gradients/dropout/dropout/mul_grad/mulMulAadam_optimizer/gradients/fc2/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
_output_shapes
:*
T0
?
5adam_optimizer/gradients/dropout/dropout/mul_grad/SumSum5adam_optimizer/gradients/dropout/dropout/mul_grad/mulGadam_optimizer/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
9adam_optimizer/gradients/dropout/dropout/mul_grad/ReshapeReshape5adam_optimizer/gradients/dropout/dropout/mul_grad/Sum7adam_optimizer/gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
?
7adam_optimizer/gradients/dropout/dropout/mul_grad/mul_1Muldropout/dropout/divAadam_optimizer/gradients/fc2/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
?
7adam_optimizer/gradients/dropout/dropout/mul_grad/Sum_1Sum7adam_optimizer/gradients/dropout/dropout/mul_grad/mul_1Iadam_optimizer/gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
;adam_optimizer/gradients/dropout/dropout/mul_grad/Reshape_1Reshape7adam_optimizer/gradients/dropout/dropout/mul_grad/Sum_19adam_optimizer/gradients/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
?
Badam_optimizer/gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp:^adam_optimizer/gradients/dropout/dropout/mul_grad/Reshape<^adam_optimizer/gradients/dropout/dropout/mul_grad/Reshape_1
?
Jadam_optimizer/gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity9adam_optimizer/gradients/dropout/dropout/mul_grad/ReshapeC^adam_optimizer/gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@adam_optimizer/gradients/dropout/dropout/mul_grad/Reshape*
_output_shapes
:
?
Ladam_optimizer/gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity;adam_optimizer/gradients/dropout/dropout/mul_grad/Reshape_1C^adam_optimizer/gradients/dropout/dropout/mul_grad/tuple/group_deps*N
_classD
B@loc:@adam_optimizer/gradients/dropout/dropout/mul_grad/Reshape_1*
_output_shapes
:*
T0

7adam_optimizer/gradients/dropout/dropout/div_grad/ShapeShapefc1/Relu*
T0*
out_type0*
_output_shapes
:
?
9adam_optimizer/gradients/dropout/dropout/div_grad/Shape_1Shapedropout/Placeholder*
T0*
out_type0*#
_output_shapes
:?????????
?
Gadam_optimizer/gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs7adam_optimizer/gradients/dropout/dropout/div_grad/Shape9adam_optimizer/gradients/dropout/dropout/div_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
9adam_optimizer/gradients/dropout/dropout/div_grad/RealDivRealDivJadam_optimizer/gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout/Placeholder*
T0*
_output_shapes
:
?
5adam_optimizer/gradients/dropout/dropout/div_grad/SumSum9adam_optimizer/gradients/dropout/dropout/div_grad/RealDivGadam_optimizer/gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
9adam_optimizer/gradients/dropout/dropout/div_grad/ReshapeReshape5adam_optimizer/gradients/dropout/dropout/div_grad/Sum7adam_optimizer/gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
y
5adam_optimizer/gradients/dropout/dropout/div_grad/NegNegfc1/Relu*(
_output_shapes
:??????????*
T0
?
;adam_optimizer/gradients/dropout/dropout/div_grad/RealDiv_1RealDiv5adam_optimizer/gradients/dropout/dropout/div_grad/Negdropout/Placeholder*
T0*
_output_shapes
:
?
;adam_optimizer/gradients/dropout/dropout/div_grad/RealDiv_2RealDiv;adam_optimizer/gradients/dropout/dropout/div_grad/RealDiv_1dropout/Placeholder*
_output_shapes
:*
T0
?
5adam_optimizer/gradients/dropout/dropout/div_grad/mulMulJadam_optimizer/gradients/dropout/dropout/mul_grad/tuple/control_dependency;adam_optimizer/gradients/dropout/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0
?
7adam_optimizer/gradients/dropout/dropout/div_grad/Sum_1Sum5adam_optimizer/gradients/dropout/dropout/div_grad/mulIadam_optimizer/gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
;adam_optimizer/gradients/dropout/dropout/div_grad/Reshape_1Reshape7adam_optimizer/gradients/dropout/dropout/div_grad/Sum_19adam_optimizer/gradients/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
?
Badam_optimizer/gradients/dropout/dropout/div_grad/tuple/group_depsNoOp:^adam_optimizer/gradients/dropout/dropout/div_grad/Reshape<^adam_optimizer/gradients/dropout/dropout/div_grad/Reshape_1
?
Jadam_optimizer/gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity9adam_optimizer/gradients/dropout/dropout/div_grad/ReshapeC^adam_optimizer/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*L
_classB
@>loc:@adam_optimizer/gradients/dropout/dropout/div_grad/Reshape*(
_output_shapes
:??????????
?
Ladam_optimizer/gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity;adam_optimizer/gradients/dropout/dropout/div_grad/Reshape_1C^adam_optimizer/gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*N
_classD
B@loc:@adam_optimizer/gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
:
?
/adam_optimizer/gradients/fc1/Relu_grad/ReluGradReluGradJadam_optimizer/gradients/dropout/dropout/div_grad/tuple/control_dependencyfc1/Relu*(
_output_shapes
:??????????*
T0
u
+adam_optimizer/gradients/fc1/add_grad/ShapeShape
fc1/MatMul*
T0*
out_type0*
_output_shapes
:
x
-adam_optimizer/gradients/fc1/add_grad/Shape_1Const*
valueB:?*
dtype0*
_output_shapes
:
?
;adam_optimizer/gradients/fc1/add_grad/BroadcastGradientArgsBroadcastGradientArgs+adam_optimizer/gradients/fc1/add_grad/Shape-adam_optimizer/gradients/fc1/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
)adam_optimizer/gradients/fc1/add_grad/SumSum/adam_optimizer/gradients/fc1/Relu_grad/ReluGrad;adam_optimizer/gradients/fc1/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
-adam_optimizer/gradients/fc1/add_grad/ReshapeReshape)adam_optimizer/gradients/fc1/add_grad/Sum+adam_optimizer/gradients/fc1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
+adam_optimizer/gradients/fc1/add_grad/Sum_1Sum/adam_optimizer/gradients/fc1/Relu_grad/ReluGrad=adam_optimizer/gradients/fc1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
/adam_optimizer/gradients/fc1/add_grad/Reshape_1Reshape+adam_optimizer/gradients/fc1/add_grad/Sum_1-adam_optimizer/gradients/fc1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:?
?
6adam_optimizer/gradients/fc1/add_grad/tuple/group_depsNoOp.^adam_optimizer/gradients/fc1/add_grad/Reshape0^adam_optimizer/gradients/fc1/add_grad/Reshape_1
?
>adam_optimizer/gradients/fc1/add_grad/tuple/control_dependencyIdentity-adam_optimizer/gradients/fc1/add_grad/Reshape7^adam_optimizer/gradients/fc1/add_grad/tuple/group_deps*
T0*@
_class6
42loc:@adam_optimizer/gradients/fc1/add_grad/Reshape*(
_output_shapes
:??????????
?
@adam_optimizer/gradients/fc1/add_grad/tuple/control_dependency_1Identity/adam_optimizer/gradients/fc1/add_grad/Reshape_17^adam_optimizer/gradients/fc1/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@adam_optimizer/gradients/fc1/add_grad/Reshape_1*
_output_shapes	
:?
?
/adam_optimizer/gradients/fc1/MatMul_grad/MatMulMatMul>adam_optimizer/gradients/fc1/add_grad/tuple/control_dependencyfc1/Variable/read*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b(
?
1adam_optimizer/gradients/fc1/MatMul_grad/MatMul_1MatMulfc1/Reshape>adam_optimizer/gradients/fc1/add_grad/tuple/control_dependency* 
_output_shapes
:
??*
transpose_a(*
transpose_b( *
T0
?
9adam_optimizer/gradients/fc1/MatMul_grad/tuple/group_depsNoOp0^adam_optimizer/gradients/fc1/MatMul_grad/MatMul2^adam_optimizer/gradients/fc1/MatMul_grad/MatMul_1
?
Aadam_optimizer/gradients/fc1/MatMul_grad/tuple/control_dependencyIdentity/adam_optimizer/gradients/fc1/MatMul_grad/MatMul:^adam_optimizer/gradients/fc1/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@adam_optimizer/gradients/fc1/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
Cadam_optimizer/gradients/fc1/MatMul_grad/tuple/control_dependency_1Identity1adam_optimizer/gradients/fc1/MatMul_grad/MatMul_1:^adam_optimizer/gradients/fc1/MatMul_grad/tuple/group_deps*D
_class:
86loc:@adam_optimizer/gradients/fc1/MatMul_grad/MatMul_1* 
_output_shapes
:
??*
T0
|
/adam_optimizer/gradients/fc1/Reshape_grad/ShapeShapepool2/MaxPool*
T0*
out_type0*
_output_shapes
:
?
1adam_optimizer/gradients/fc1/Reshape_grad/ReshapeReshapeAadam_optimizer/gradients/fc1/MatMul_grad/tuple/control_dependency/adam_optimizer/gradients/fc1/Reshape_grad/Shape*/
_output_shapes
:?????????@*
T0*
Tshape0
?
7adam_optimizer/gradients/pool2/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv2/Relupool2/MaxPool1adam_optimizer/gradients/fc1/Reshape_grad/Reshape*
paddingSAME*/
_output_shapes
:?????????@*
T0*
data_formatNHWC*
strides
*
ksize

?
1adam_optimizer/gradients/conv2/Relu_grad/ReluGradReluGrad7adam_optimizer/gradients/pool2/MaxPool_grad/MaxPoolGrad
conv2/Relu*
T0*/
_output_shapes
:?????????@
y
-adam_optimizer/gradients/conv2/add_grad/ShapeShapeconv2/Conv2D*
T0*
out_type0*
_output_shapes
:
y
/adam_optimizer/gradients/conv2/add_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
?
=adam_optimizer/gradients/conv2/add_grad/BroadcastGradientArgsBroadcastGradientArgs-adam_optimizer/gradients/conv2/add_grad/Shape/adam_optimizer/gradients/conv2/add_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
+adam_optimizer/gradients/conv2/add_grad/SumSum1adam_optimizer/gradients/conv2/Relu_grad/ReluGrad=adam_optimizer/gradients/conv2/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
/adam_optimizer/gradients/conv2/add_grad/ReshapeReshape+adam_optimizer/gradients/conv2/add_grad/Sum-adam_optimizer/gradients/conv2/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:?????????@
?
-adam_optimizer/gradients/conv2/add_grad/Sum_1Sum1adam_optimizer/gradients/conv2/Relu_grad/ReluGrad?adam_optimizer/gradients/conv2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
1adam_optimizer/gradients/conv2/add_grad/Reshape_1Reshape-adam_optimizer/gradients/conv2/add_grad/Sum_1/adam_optimizer/gradients/conv2/add_grad/Shape_1*
_output_shapes
:@*
T0*
Tshape0
?
8adam_optimizer/gradients/conv2/add_grad/tuple/group_depsNoOp0^adam_optimizer/gradients/conv2/add_grad/Reshape2^adam_optimizer/gradients/conv2/add_grad/Reshape_1
?
@adam_optimizer/gradients/conv2/add_grad/tuple/control_dependencyIdentity/adam_optimizer/gradients/conv2/add_grad/Reshape9^adam_optimizer/gradients/conv2/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@adam_optimizer/gradients/conv2/add_grad/Reshape*/
_output_shapes
:?????????@
?
Badam_optimizer/gradients/conv2/add_grad/tuple/control_dependency_1Identity1adam_optimizer/gradients/conv2/add_grad/Reshape_19^adam_optimizer/gradients/conv2/add_grad/tuple/group_deps*
_output_shapes
:@*
T0*D
_class:
86loc:@adam_optimizer/gradients/conv2/add_grad/Reshape_1
}
0adam_optimizer/gradients/conv2/Conv2D_grad/ShapeShapepool1/MaxPool*
out_type0*
_output_shapes
:*
T0
?
>adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0adam_optimizer/gradients/conv2/Conv2D_grad/Shapeconv2/Variable/read@adam_optimizer/gradients/conv2/add_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4????????????????????????????????????*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
2adam_optimizer/gradients/conv2/Conv2D_grad/Shape_1Const*%
valueB"          @   *
dtype0*
_output_shapes
:
?
?adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpool1/MaxPool2adam_optimizer/gradients/conv2/Conv2D_grad/Shape_1@adam_optimizer/gradients/conv2/add_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @*
T0
?
;adam_optimizer/gradients/conv2/Conv2D_grad/tuple/group_depsNoOp?^adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropInput@^adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropFilter
?
Cadam_optimizer/gradients/conv2/Conv2D_grad/tuple/control_dependencyIdentity>adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropInput<^adam_optimizer/gradients/conv2/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:????????? 
?
Eadam_optimizer/gradients/conv2/Conv2D_grad/tuple/control_dependency_1Identity?adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropFilter<^adam_optimizer/gradients/conv2/Conv2D_grad/tuple/group_deps*&
_output_shapes
: @*
T0*R
_classH
FDloc:@adam_optimizer/gradients/conv2/Conv2D_grad/Conv2DBackpropFilter
?
7adam_optimizer/gradients/pool1/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv1/Relupool1/MaxPoolCadam_optimizer/gradients/conv2/Conv2D_grad/tuple/control_dependency*/
_output_shapes
:????????? *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
?
1adam_optimizer/gradients/conv1/Relu_grad/ReluGradReluGrad7adam_optimizer/gradients/pool1/MaxPool_grad/MaxPoolGrad
conv1/Relu*
T0*/
_output_shapes
:????????? 
y
-adam_optimizer/gradients/conv1/add_grad/ShapeShapeconv1/Conv2D*
_output_shapes
:*
T0*
out_type0
y
/adam_optimizer/gradients/conv1/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
?
=adam_optimizer/gradients/conv1/add_grad/BroadcastGradientArgsBroadcastGradientArgs-adam_optimizer/gradients/conv1/add_grad/Shape/adam_optimizer/gradients/conv1/add_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
+adam_optimizer/gradients/conv1/add_grad/SumSum1adam_optimizer/gradients/conv1/Relu_grad/ReluGrad=adam_optimizer/gradients/conv1/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
/adam_optimizer/gradients/conv1/add_grad/ReshapeReshape+adam_optimizer/gradients/conv1/add_grad/Sum-adam_optimizer/gradients/conv1/add_grad/Shape*
Tshape0*/
_output_shapes
:????????? *
T0
?
-adam_optimizer/gradients/conv1/add_grad/Sum_1Sum1adam_optimizer/gradients/conv1/Relu_grad/ReluGrad?adam_optimizer/gradients/conv1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
1adam_optimizer/gradients/conv1/add_grad/Reshape_1Reshape-adam_optimizer/gradients/conv1/add_grad/Sum_1/adam_optimizer/gradients/conv1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
?
8adam_optimizer/gradients/conv1/add_grad/tuple/group_depsNoOp0^adam_optimizer/gradients/conv1/add_grad/Reshape2^adam_optimizer/gradients/conv1/add_grad/Reshape_1
?
@adam_optimizer/gradients/conv1/add_grad/tuple/control_dependencyIdentity/adam_optimizer/gradients/conv1/add_grad/Reshape9^adam_optimizer/gradients/conv1/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@adam_optimizer/gradients/conv1/add_grad/Reshape*/
_output_shapes
:????????? 
?
Badam_optimizer/gradients/conv1/add_grad/tuple/control_dependency_1Identity1adam_optimizer/gradients/conv1/add_grad/Reshape_19^adam_optimizer/gradients/conv1/add_grad/tuple/group_deps*
_output_shapes
: *
T0*D
_class:
86loc:@adam_optimizer/gradients/conv1/add_grad/Reshape_1

0adam_optimizer/gradients/conv1/Conv2D_grad/ShapeShapereshape/Reshape*
out_type0*
_output_shapes
:*
T0
?
>adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput0adam_optimizer/gradients/conv1/Conv2D_grad/Shapeconv1/Variable/read@adam_optimizer/gradients/conv1/add_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*J
_output_shapes8
6:4????????????????????????????????????*
T0
?
2adam_optimizer/gradients/conv1/Conv2D_grad/Shape_1Const*%
valueB"             *
dtype0*
_output_shapes
:
?
?adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterreshape/Reshape2adam_optimizer/gradients/conv1/Conv2D_grad/Shape_1@adam_optimizer/gradients/conv1/add_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: *
T0
?
;adam_optimizer/gradients/conv1/Conv2D_grad/tuple/group_depsNoOp?^adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropInput@^adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
?
Cadam_optimizer/gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity>adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropInput<^adam_optimizer/gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:?????????
?
Eadam_optimizer/gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity?adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter<^adam_optimizer/gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*R
_classH
FDloc:@adam_optimizer/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
?
(adam_optimizer/beta1_power/initial_valueConst*
valueB
 *fff?*!
_class
loc:@conv1/Variable*
dtype0*
_output_shapes
: 
?
adam_optimizer/beta1_power
VariableV2*!
_class
loc:@conv1/Variable*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
?
!adam_optimizer/beta1_power/AssignAssignadam_optimizer/beta1_power(adam_optimizer/beta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@conv1/Variable*
validate_shape(
?
adam_optimizer/beta1_power/readIdentityadam_optimizer/beta1_power*
_output_shapes
: *
T0*!
_class
loc:@conv1/Variable
?
(adam_optimizer/beta2_power/initial_valueConst*
valueB
 *w??*!
_class
loc:@conv1/Variable*
dtype0*
_output_shapes
: 
?
adam_optimizer/beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@conv1/Variable
?
!adam_optimizer/beta2_power/AssignAssignadam_optimizer/beta2_power(adam_optimizer/beta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@conv1/Variable
?
adam_optimizer/beta2_power/readIdentityadam_optimizer/beta2_power*
T0*!
_class
loc:@conv1/Variable*
_output_shapes
: 
?
%conv1/Variable/Adam/Initializer/zerosConst*!
_class
loc:@conv1/Variable*%
valueB *    *
dtype0*&
_output_shapes
: 
?
conv1/Variable/Adam
VariableV2*
shared_name *!
_class
loc:@conv1/Variable*
	container *
shape: *
dtype0*&
_output_shapes
: 
?
conv1/Variable/Adam/AssignAssignconv1/Variable/Adam%conv1/Variable/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@conv1/Variable
?
conv1/Variable/Adam/readIdentityconv1/Variable/Adam*
T0*!
_class
loc:@conv1/Variable*&
_output_shapes
: 
?
'conv1/Variable/Adam_1/Initializer/zerosConst*!
_class
loc:@conv1/Variable*%
valueB *    *
dtype0*&
_output_shapes
: 
?
conv1/Variable/Adam_1
VariableV2*
shape: *
dtype0*&
_output_shapes
: *
shared_name *!
_class
loc:@conv1/Variable*
	container 
?
conv1/Variable/Adam_1/AssignAssignconv1/Variable/Adam_1'conv1/Variable/Adam_1/Initializer/zeros*!
_class
loc:@conv1/Variable*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
?
conv1/Variable/Adam_1/readIdentityconv1/Variable/Adam_1*&
_output_shapes
: *
T0*!
_class
loc:@conv1/Variable
?
'conv1/Variable_1/Adam/Initializer/zerosConst*#
_class
loc:@conv1/Variable_1*
valueB *    *
dtype0*
_output_shapes
: 
?
conv1/Variable_1/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *#
_class
loc:@conv1/Variable_1*
	container *
shape: 
?
conv1/Variable_1/Adam/AssignAssignconv1/Variable_1/Adam'conv1/Variable_1/Adam/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@conv1/Variable_1*
validate_shape(
?
conv1/Variable_1/Adam/readIdentityconv1/Variable_1/Adam*
T0*#
_class
loc:@conv1/Variable_1*
_output_shapes
: 
?
)conv1/Variable_1/Adam_1/Initializer/zerosConst*#
_class
loc:@conv1/Variable_1*
valueB *    *
dtype0*
_output_shapes
: 
?
conv1/Variable_1/Adam_1
VariableV2*
shared_name *#
_class
loc:@conv1/Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: 
?
conv1/Variable_1/Adam_1/AssignAssignconv1/Variable_1/Adam_1)conv1/Variable_1/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@conv1/Variable_1
?
conv1/Variable_1/Adam_1/readIdentityconv1/Variable_1/Adam_1*
T0*#
_class
loc:@conv1/Variable_1*
_output_shapes
: 
?
%conv2/Variable/Adam/Initializer/zerosConst*!
_class
loc:@conv2/Variable*%
valueB @*    *
dtype0*&
_output_shapes
: @
?
conv2/Variable/Adam
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *!
_class
loc:@conv2/Variable
?
conv2/Variable/Adam/AssignAssignconv2/Variable/Adam%conv2/Variable/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@conv2/Variable*
validate_shape(*&
_output_shapes
: @
?
conv2/Variable/Adam/readIdentityconv2/Variable/Adam*
T0*!
_class
loc:@conv2/Variable*&
_output_shapes
: @
?
'conv2/Variable/Adam_1/Initializer/zerosConst*&
_output_shapes
: @*!
_class
loc:@conv2/Variable*%
valueB @*    *
dtype0
?
conv2/Variable/Adam_1
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *!
_class
loc:@conv2/Variable*
	container *
shape: @
?
conv2/Variable/Adam_1/AssignAssignconv2/Variable/Adam_1'conv2/Variable/Adam_1/Initializer/zeros*
T0*!
_class
loc:@conv2/Variable*
validate_shape(*&
_output_shapes
: @*
use_locking(
?
conv2/Variable/Adam_1/readIdentityconv2/Variable/Adam_1*
T0*!
_class
loc:@conv2/Variable*&
_output_shapes
: @
?
'conv2/Variable_1/Adam/Initializer/zerosConst*
_output_shapes
:@*#
_class
loc:@conv2/Variable_1*
valueB@*    *
dtype0
?
conv2/Variable_1/Adam
VariableV2*
shared_name *#
_class
loc:@conv2/Variable_1*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
conv2/Variable_1/Adam/AssignAssignconv2/Variable_1/Adam'conv2/Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@conv2/Variable_1*
validate_shape(*
_output_shapes
:@
?
conv2/Variable_1/Adam/readIdentityconv2/Variable_1/Adam*
T0*#
_class
loc:@conv2/Variable_1*
_output_shapes
:@
?
)conv2/Variable_1/Adam_1/Initializer/zerosConst*#
_class
loc:@conv2/Variable_1*
valueB@*    *
dtype0*
_output_shapes
:@
?
conv2/Variable_1/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *#
_class
loc:@conv2/Variable_1*
	container *
shape:@
?
conv2/Variable_1/Adam_1/AssignAssignconv2/Variable_1/Adam_1)conv2/Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@conv2/Variable_1*
validate_shape(*
_output_shapes
:@
?
conv2/Variable_1/Adam_1/readIdentityconv2/Variable_1/Adam_1*
_output_shapes
:@*
T0*#
_class
loc:@conv2/Variable_1
?
#fc1/Variable/Adam/Initializer/zerosConst*
_class
loc:@fc1/Variable*
valueB
??*    *
dtype0* 
_output_shapes
:
??
?
fc1/Variable/Adam
VariableV2*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *
_class
loc:@fc1/Variable
?
fc1/Variable/Adam/AssignAssignfc1/Variable/Adam#fc1/Variable/Adam/Initializer/zeros*
_class
loc:@fc1/Variable*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
fc1/Variable/Adam/readIdentityfc1/Variable/Adam*
_class
loc:@fc1/Variable* 
_output_shapes
:
??*
T0
?
%fc1/Variable/Adam_1/Initializer/zerosConst*
_class
loc:@fc1/Variable*
valueB
??*    *
dtype0* 
_output_shapes
:
??
?
fc1/Variable/Adam_1
VariableV2*
shared_name *
_class
loc:@fc1/Variable*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??
?
fc1/Variable/Adam_1/AssignAssignfc1/Variable/Adam_1%fc1/Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc1/Variable*
validate_shape(* 
_output_shapes
:
??
?
fc1/Variable/Adam_1/readIdentityfc1/Variable/Adam_1* 
_output_shapes
:
??*
T0*
_class
loc:@fc1/Variable
?
%fc1/Variable_1/Adam/Initializer/zerosConst*!
_class
loc:@fc1/Variable_1*
valueB?*    *
dtype0*
_output_shapes	
:?
?
fc1/Variable_1/Adam
VariableV2*!
_class
loc:@fc1/Variable_1*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
fc1/Variable_1/Adam/AssignAssignfc1/Variable_1/Adam%fc1/Variable_1/Adam/Initializer/zeros*
T0*!
_class
loc:@fc1/Variable_1*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
fc1/Variable_1/Adam/readIdentityfc1/Variable_1/Adam*
_output_shapes	
:?*
T0*!
_class
loc:@fc1/Variable_1
?
'fc1/Variable_1/Adam_1/Initializer/zerosConst*!
_class
loc:@fc1/Variable_1*
valueB?*    *
dtype0*
_output_shapes	
:?
?
fc1/Variable_1/Adam_1
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *!
_class
loc:@fc1/Variable_1*
	container *
shape:?
?
fc1/Variable_1/Adam_1/AssignAssignfc1/Variable_1/Adam_1'fc1/Variable_1/Adam_1/Initializer/zeros*!
_class
loc:@fc1/Variable_1*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
fc1/Variable_1/Adam_1/readIdentityfc1/Variable_1/Adam_1*
T0*!
_class
loc:@fc1/Variable_1*
_output_shapes	
:?
?
#fc2/Variable/Adam/Initializer/zerosConst*
_class
loc:@fc2/Variable*
valueB	?
*    *
dtype0*
_output_shapes
:	?

?
fc2/Variable/Adam
VariableV2*
dtype0*
_output_shapes
:	?
*
shared_name *
_class
loc:@fc2/Variable*
	container *
shape:	?

?
fc2/Variable/Adam/AssignAssignfc2/Variable/Adam#fc2/Variable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc2/Variable*
validate_shape(*
_output_shapes
:	?

?
fc2/Variable/Adam/readIdentityfc2/Variable/Adam*
T0*
_class
loc:@fc2/Variable*
_output_shapes
:	?

?
%fc2/Variable/Adam_1/Initializer/zerosConst*
_output_shapes
:	?
*
_class
loc:@fc2/Variable*
valueB	?
*    *
dtype0
?
fc2/Variable/Adam_1
VariableV2*
dtype0*
_output_shapes
:	?
*
shared_name *
_class
loc:@fc2/Variable*
	container *
shape:	?

?
fc2/Variable/Adam_1/AssignAssignfc2/Variable/Adam_1%fc2/Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc2/Variable*
validate_shape(*
_output_shapes
:	?

?
fc2/Variable/Adam_1/readIdentityfc2/Variable/Adam_1*
_output_shapes
:	?
*
T0*
_class
loc:@fc2/Variable
?
%fc2/Variable_1/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*!
_class
loc:@fc2/Variable_1*
valueB
*    
?
fc2/Variable_1/Adam
VariableV2*
shape:
*
dtype0*
_output_shapes
:
*
shared_name *!
_class
loc:@fc2/Variable_1*
	container 
?
fc2/Variable_1/Adam/AssignAssignfc2/Variable_1/Adam%fc2/Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@fc2/Variable_1*
validate_shape(*
_output_shapes
:

?
fc2/Variable_1/Adam/readIdentityfc2/Variable_1/Adam*
_output_shapes
:
*
T0*!
_class
loc:@fc2/Variable_1
?
'fc2/Variable_1/Adam_1/Initializer/zerosConst*
_output_shapes
:
*!
_class
loc:@fc2/Variable_1*
valueB
*    *
dtype0
?
fc2/Variable_1/Adam_1
VariableV2*
_output_shapes
:
*
shared_name *!
_class
loc:@fc2/Variable_1*
	container *
shape:
*
dtype0
?
fc2/Variable_1/Adam_1/AssignAssignfc2/Variable_1/Adam_1'fc2/Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@fc2/Variable_1*
validate_shape(*
_output_shapes
:

?
fc2/Variable_1/Adam_1/readIdentityfc2/Variable_1/Adam_1*
T0*!
_class
loc:@fc2/Variable_1*
_output_shapes
:

f
!adam_optimizer/Adam/learning_rateConst*
valueB
 *??8*
dtype0*
_output_shapes
: 
^
adam_optimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
^
adam_optimizer/Adam/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
`
adam_optimizer/Adam/epsilonConst*
_output_shapes
: *
valueB
 *w?+2*
dtype0
?
3adam_optimizer/Adam/update_conv1/Variable/ApplyAdam	ApplyAdamconv1/Variableconv1/Variable/Adamconv1/Variable/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilonEadam_optimizer/gradients/conv1/Conv2D_grad/tuple/control_dependency_1*!
_class
loc:@conv1/Variable*
use_nesterov( *&
_output_shapes
: *
use_locking( *
T0
?
5adam_optimizer/Adam/update_conv1/Variable_1/ApplyAdam	ApplyAdamconv1/Variable_1conv1/Variable_1/Adamconv1/Variable_1/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilonBadam_optimizer/gradients/conv1/add_grad/tuple/control_dependency_1*
T0*#
_class
loc:@conv1/Variable_1*
use_nesterov( *
_output_shapes
: *
use_locking( 
?
3adam_optimizer/Adam/update_conv2/Variable/ApplyAdam	ApplyAdamconv2/Variableconv2/Variable/Adamconv2/Variable/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilonEadam_optimizer/gradients/conv2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@conv2/Variable*
use_nesterov( *&
_output_shapes
: @
?
5adam_optimizer/Adam/update_conv2/Variable_1/ApplyAdam	ApplyAdamconv2/Variable_1conv2/Variable_1/Adamconv2/Variable_1/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilonBadam_optimizer/gradients/conv2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@conv2/Variable_1*
use_nesterov( *
_output_shapes
:@
?
1adam_optimizer/Adam/update_fc1/Variable/ApplyAdam	ApplyAdamfc1/Variablefc1/Variable/Adamfc1/Variable/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilonCadam_optimizer/gradients/fc1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( * 
_output_shapes
:
??*
use_locking( *
T0*
_class
loc:@fc1/Variable
?
3adam_optimizer/Adam/update_fc1/Variable_1/ApplyAdam	ApplyAdamfc1/Variable_1fc1/Variable_1/Adamfc1/Variable_1/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilon@adam_optimizer/gradients/fc1/add_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@fc1/Variable_1*
use_nesterov( *
_output_shapes	
:?
?
1adam_optimizer/Adam/update_fc2/Variable/ApplyAdam	ApplyAdamfc2/Variablefc2/Variable/Adamfc2/Variable/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilonCadam_optimizer/gradients/fc2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@fc2/Variable*
use_nesterov( *
_output_shapes
:	?

?
3adam_optimizer/Adam/update_fc2/Variable_1/ApplyAdam	ApplyAdamfc2/Variable_1fc2/Variable_1/Adamfc2/Variable_1/Adam_1adam_optimizer/beta1_power/readadam_optimizer/beta2_power/read!adam_optimizer/Adam/learning_rateadam_optimizer/Adam/beta1adam_optimizer/Adam/beta2adam_optimizer/Adam/epsilon@adam_optimizer/gradients/fc2/add_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@fc2/Variable_1*
use_nesterov( *
_output_shapes
:

?
adam_optimizer/Adam/mulMuladam_optimizer/beta1_power/readadam_optimizer/Adam/beta14^adam_optimizer/Adam/update_conv1/Variable/ApplyAdam6^adam_optimizer/Adam/update_conv1/Variable_1/ApplyAdam4^adam_optimizer/Adam/update_conv2/Variable/ApplyAdam6^adam_optimizer/Adam/update_conv2/Variable_1/ApplyAdam2^adam_optimizer/Adam/update_fc1/Variable/ApplyAdam4^adam_optimizer/Adam/update_fc1/Variable_1/ApplyAdam2^adam_optimizer/Adam/update_fc2/Variable/ApplyAdam4^adam_optimizer/Adam/update_fc2/Variable_1/ApplyAdam*
_output_shapes
: *
T0*!
_class
loc:@conv1/Variable
?
adam_optimizer/Adam/AssignAssignadam_optimizer/beta1_poweradam_optimizer/Adam/mul*
use_locking( *
T0*!
_class
loc:@conv1/Variable*
validate_shape(*
_output_shapes
: 
?
adam_optimizer/Adam/mul_1Muladam_optimizer/beta2_power/readadam_optimizer/Adam/beta24^adam_optimizer/Adam/update_conv1/Variable/ApplyAdam6^adam_optimizer/Adam/update_conv1/Variable_1/ApplyAdam4^adam_optimizer/Adam/update_conv2/Variable/ApplyAdam6^adam_optimizer/Adam/update_conv2/Variable_1/ApplyAdam2^adam_optimizer/Adam/update_fc1/Variable/ApplyAdam4^adam_optimizer/Adam/update_fc1/Variable_1/ApplyAdam2^adam_optimizer/Adam/update_fc2/Variable/ApplyAdam4^adam_optimizer/Adam/update_fc2/Variable_1/ApplyAdam*
T0*!
_class
loc:@conv1/Variable*
_output_shapes
: 
?
adam_optimizer/Adam/Assign_1Assignadam_optimizer/beta2_poweradam_optimizer/Adam/mul_1*
use_locking( *
T0*!
_class
loc:@conv1/Variable*
validate_shape(*
_output_shapes
: 
?
adam_optimizer/AdamNoOp4^adam_optimizer/Adam/update_conv1/Variable/ApplyAdam6^adam_optimizer/Adam/update_conv1/Variable_1/ApplyAdam4^adam_optimizer/Adam/update_conv2/Variable/ApplyAdam6^adam_optimizer/Adam/update_conv2/Variable_1/ApplyAdam2^adam_optimizer/Adam/update_fc1/Variable/ApplyAdam4^adam_optimizer/Adam/update_fc1/Variable_1/ApplyAdam2^adam_optimizer/Adam/update_fc2/Variable/ApplyAdam4^adam_optimizer/Adam/update_fc2/Variable_1/ApplyAdam^adam_optimizer/Adam/Assign^adam_optimizer/Adam/Assign_1
[
accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
accuracy/ArgMaxArgMaxfc2/addaccuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:?????????*

Tidx0*
T0
]
accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
?
accuracy/ArgMax_1ArgMaxPlaceholder_1accuracy/ArgMax_1/dimension*#
_output_shapes
:?????????*

Tidx0*
T0*
output_type0	
i
accuracy/EqualEqualaccuracy/ArgMaxaccuracy/ArgMax_1*
T0	*#
_output_shapes
:?????????
b
accuracy/CastCastaccuracy/Equal*

SrcT0
*#
_output_shapes
:?????????*

DstT0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
d
Mean_1Meanaccuracy/CastConst_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
O

tf_examplePlaceholder*
dtype0*
_output_shapes
:*
shape:
U
ParseExample/ConstConst*
dtype0*
_output_shapes
: *
valueB 
b
ParseExample/ParseExample/namesConst*
dtype0*
_output_shapes
: *
valueB 
h
&ParseExample/ParseExample/dense_keys_0Const*
value	B Bx*
dtype0*
_output_shapes
: 
?
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
Tdense
2*
Ndense*(
_output_shapes
:??????????*
Nsparse *
dense_shapes	
:?*
sparse_types
 
?
initNoOp^conv1/Variable/Assign^conv1/Variable_1/Assign^conv2/Variable/Assign^conv2/Variable_1/Assign^fc1/Variable/Assign^fc1/Variable_1/Assign^fc2/Variable/Assign^fc2/Variable_1/Assign"^adam_optimizer/beta1_power/Assign"^adam_optimizer/beta2_power/Assign^conv1/Variable/Adam/Assign^conv1/Variable/Adam_1/Assign^conv1/Variable_1/Adam/Assign^conv1/Variable_1/Adam_1/Assign^conv2/Variable/Adam/Assign^conv2/Variable/Adam_1/Assign^conv2/Variable_1/Adam/Assign^conv2/Variable_1/Adam_1/Assign^fc1/Variable/Adam/Assign^fc1/Variable/Adam_1/Assign^fc1/Variable_1/Adam/Assign^fc1/Variable_1/Adam_1/Assign^fc2/Variable/Adam/Assign^fc2/Variable/Adam_1/Assign^fc2/Variable_1/Adam/Assign^fc2/Variable_1/Adam_1/Assign
4
init_all_tablesNoOp^index_to_string/table_init
(
legacy_init_opNoOp^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_842c9527c12f42fbb81fb3df5a16daba/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*?
value?B?Badam_optimizer/beta1_powerBadam_optimizer/beta2_powerBconv1/VariableBconv1/Variable/AdamBconv1/Variable/Adam_1Bconv1/Variable_1Bconv1/Variable_1/AdamBconv1/Variable_1/Adam_1Bconv2/VariableBconv2/Variable/AdamBconv2/Variable/Adam_1Bconv2/Variable_1Bconv2/Variable_1/AdamBconv2/Variable_1/Adam_1Bfc1/VariableBfc1/Variable/AdamBfc1/Variable/Adam_1Bfc1/Variable_1Bfc1/Variable_1/AdamBfc1/Variable_1/Adam_1Bfc2/VariableBfc2/Variable/AdamBfc2/Variable/Adam_1Bfc2/Variable_1Bfc2/Variable_1/AdamBfc2/Variable_1/Adam_1*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesadam_optimizer/beta1_poweradam_optimizer/beta2_powerconv1/Variableconv1/Variable/Adamconv1/Variable/Adam_1conv1/Variable_1conv1/Variable_1/Adamconv1/Variable_1/Adam_1conv2/Variableconv2/Variable/Adamconv2/Variable/Adam_1conv2/Variable_1conv2/Variable_1/Adamconv2/Variable_1/Adam_1fc1/Variablefc1/Variable/Adamfc1/Variable/Adam_1fc1/Variable_1fc1/Variable_1/Adamfc1/Variable_1/Adam_1fc2/Variablefc2/Variable/Adamfc2/Variable/Adam_1fc2/Variable_1fc2/Variable_1/Adamfc2/Variable_1/Adam_1*(
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
_output_shapes
:*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst*
_output_shapes
:*/
value&B$Badam_optimizer/beta1_power*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/AssignAssignadam_optimizer/beta1_powersave/RestoreV2*
use_locking(*
T0*!
_class
loc:@conv1/Variable*
validate_shape(*
_output_shapes
: 
?
save/RestoreV2_1/tensor_namesConst*/
value&B$Badam_optimizer/beta2_power*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_1Assignadam_optimizer/beta2_powersave/RestoreV2_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@conv1/Variable
t
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*#
valueBBconv1/Variable
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_2Assignconv1/Variablesave/RestoreV2_2*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@conv1/Variable
y
save/RestoreV2_3/tensor_namesConst*
_output_shapes
:*(
valueBBconv1/Variable/Adam*
dtype0
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_3Assignconv1/Variable/Adamsave/RestoreV2_3*
use_locking(*
T0*!
_class
loc:@conv1/Variable*
validate_shape(*&
_output_shapes
: 
{
save/RestoreV2_4/tensor_namesConst*
_output_shapes
:**
value!BBconv1/Variable/Adam_1*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_4Assignconv1/Variable/Adam_1save/RestoreV2_4*!
_class
loc:@conv1/Variable*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
v
save/RestoreV2_5/tensor_namesConst*%
valueBBconv1/Variable_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_5Assignconv1/Variable_1save/RestoreV2_5*
_output_shapes
: *
use_locking(*
T0*#
_class
loc:@conv1/Variable_1*
validate_shape(
{
save/RestoreV2_6/tensor_namesConst**
value!BBconv1/Variable_1/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_6Assignconv1/Variable_1/Adamsave/RestoreV2_6*
use_locking(*
T0*#
_class
loc:@conv1/Variable_1*
validate_shape(*
_output_shapes
: 
}
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*,
value#B!Bconv1/Variable_1/Adam_1
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_7Assignconv1/Variable_1/Adam_1save/RestoreV2_7*
use_locking(*
T0*#
_class
loc:@conv1/Variable_1*
validate_shape(*
_output_shapes
: 
t
save/RestoreV2_8/tensor_namesConst*#
valueBBconv2/Variable*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
?
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_8Assignconv2/Variablesave/RestoreV2_8*
use_locking(*
T0*!
_class
loc:@conv2/Variable*
validate_shape(*&
_output_shapes
: @
y
save/RestoreV2_9/tensor_namesConst*(
valueBBconv2/Variable/Adam*
dtype0*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_9Assignconv2/Variable/Adamsave/RestoreV2_9*
T0*!
_class
loc:@conv2/Variable*
validate_shape(*&
_output_shapes
: @*
use_locking(
|
save/RestoreV2_10/tensor_namesConst**
value!BBconv2/Variable/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_10Assignconv2/Variable/Adam_1save/RestoreV2_10*!
_class
loc:@conv2/Variable*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
w
save/RestoreV2_11/tensor_namesConst*%
valueBBconv2/Variable_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_11Assignconv2/Variable_1save/RestoreV2_11*
use_locking(*
T0*#
_class
loc:@conv2/Variable_1*
validate_shape(*
_output_shapes
:@
|
save/RestoreV2_12/tensor_namesConst**
value!BBconv2/Variable_1/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
?
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_12Assignconv2/Variable_1/Adamsave/RestoreV2_12*
use_locking(*
T0*#
_class
loc:@conv2/Variable_1*
validate_shape(*
_output_shapes
:@
~
save/RestoreV2_13/tensor_namesConst*,
value#B!Bconv2/Variable_1/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_13Assignconv2/Variable_1/Adam_1save/RestoreV2_13*#
_class
loc:@conv2/Variable_1*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
s
save/RestoreV2_14/tensor_namesConst*!
valueBBfc1/Variable*
dtype0*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_14Assignfc1/Variablesave/RestoreV2_14* 
_output_shapes
:
??*
use_locking(*
T0*
_class
loc:@fc1/Variable*
validate_shape(
x
save/RestoreV2_15/tensor_namesConst*&
valueBBfc1/Variable/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
?
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_15Assignfc1/Variable/Adamsave/RestoreV2_15*
use_locking(*
T0*
_class
loc:@fc1/Variable*
validate_shape(* 
_output_shapes
:
??
z
save/RestoreV2_16/tensor_namesConst*(
valueBBfc1/Variable/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_16Assignfc1/Variable/Adam_1save/RestoreV2_16* 
_output_shapes
:
??*
use_locking(*
T0*
_class
loc:@fc1/Variable*
validate_shape(
u
save/RestoreV2_17/tensor_namesConst*#
valueBBfc1/Variable_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_17Assignfc1/Variable_1save/RestoreV2_17*!
_class
loc:@fc1/Variable_1*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
z
save/RestoreV2_18/tensor_namesConst*(
valueBBfc1/Variable_1/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_18Assignfc1/Variable_1/Adamsave/RestoreV2_18*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*!
_class
loc:@fc1/Variable_1
|
save/RestoreV2_19/tensor_namesConst**
value!BBfc1/Variable_1/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_19Assignfc1/Variable_1/Adam_1save/RestoreV2_19*
use_locking(*
T0*!
_class
loc:@fc1/Variable_1*
validate_shape(*
_output_shapes	
:?
s
save/RestoreV2_20/tensor_namesConst*!
valueBBfc2/Variable*
dtype0*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_20Assignfc2/Variablesave/RestoreV2_20*
_class
loc:@fc2/Variable*
validate_shape(*
_output_shapes
:	?
*
use_locking(*
T0
x
save/RestoreV2_21/tensor_namesConst*&
valueBBfc2/Variable/Adam*
dtype0*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_21Assignfc2/Variable/Adamsave/RestoreV2_21*
use_locking(*
T0*
_class
loc:@fc2/Variable*
validate_shape(*
_output_shapes
:	?

z
save/RestoreV2_22/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBfc2/Variable/Adam_1
k
"save/RestoreV2_22/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_22Assignfc2/Variable/Adam_1save/RestoreV2_22*
_class
loc:@fc2/Variable*
validate_shape(*
_output_shapes
:	?
*
use_locking(*
T0
u
save/RestoreV2_23/tensor_namesConst*#
valueBBfc2/Variable_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_23Assignfc2/Variable_1save/RestoreV2_23*
use_locking(*
T0*!
_class
loc:@fc2/Variable_1*
validate_shape(*
_output_shapes
:

z
save/RestoreV2_24/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBfc2/Variable_1/Adam
k
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
?
save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_24Assignfc2/Variable_1/Adamsave/RestoreV2_24*!
_class
loc:@fc2/Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0
|
save/RestoreV2_25/tensor_namesConst**
value!BBfc2/Variable_1/Adam_1*
dtype0*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
?
save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes
:*
dtypes
2
?
save/Assign_25Assignfc2/Variable_1/Adam_1save/RestoreV2_25*
_output_shapes
:
*
use_locking(*
T0*!
_class
loc:@fc2/Variable_1*
validate_shape(
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
trainable_variables??
@
conv1/Variable:0conv1/Variable/Assignconv1/Variable/read:0
F
conv1/Variable_1:0conv1/Variable_1/Assignconv1/Variable_1/read:0
@
conv2/Variable:0conv2/Variable/Assignconv2/Variable/read:0
F
conv2/Variable_1:0conv2/Variable_1/Assignconv2/Variable_1/read:0
:
fc1/Variable:0fc1/Variable/Assignfc1/Variable/read:0
@
fc1/Variable_1:0fc1/Variable_1/Assignfc1/Variable_1/read:0
:
fc2/Variable:0fc2/Variable/Assignfc2/Variable/read:0
@
fc2/Variable_1:0fc2/Variable_1/Assignfc2/Variable_1/read:0"#
train_op

adam_optimizer/Adam"?
	variables??
@
conv1/Variable:0conv1/Variable/Assignconv1/Variable/read:0
F
conv1/Variable_1:0conv1/Variable_1/Assignconv1/Variable_1/read:0
@
conv2/Variable:0conv2/Variable/Assignconv2/Variable/read:0
F
conv2/Variable_1:0conv2/Variable_1/Assignconv2/Variable_1/read:0
:
fc1/Variable:0fc1/Variable/Assignfc1/Variable/read:0
@
fc1/Variable_1:0fc1/Variable_1/Assignfc1/Variable_1/read:0
:
fc2/Variable:0fc2/Variable/Assignfc2/Variable/read:0
@
fc2/Variable_1:0fc2/Variable_1/Assignfc2/Variable_1/read:0
d
adam_optimizer/beta1_power:0!adam_optimizer/beta1_power/Assign!adam_optimizer/beta1_power/read:0
d
adam_optimizer/beta2_power:0!adam_optimizer/beta2_power/Assign!adam_optimizer/beta2_power/read:0
O
conv1/Variable/Adam:0conv1/Variable/Adam/Assignconv1/Variable/Adam/read:0
U
conv1/Variable/Adam_1:0conv1/Variable/Adam_1/Assignconv1/Variable/Adam_1/read:0
U
conv1/Variable_1/Adam:0conv1/Variable_1/Adam/Assignconv1/Variable_1/Adam/read:0
[
conv1/Variable_1/Adam_1:0conv1/Variable_1/Adam_1/Assignconv1/Variable_1/Adam_1/read:0
O
conv2/Variable/Adam:0conv2/Variable/Adam/Assignconv2/Variable/Adam/read:0
U
conv2/Variable/Adam_1:0conv2/Variable/Adam_1/Assignconv2/Variable/Adam_1/read:0
U
conv2/Variable_1/Adam:0conv2/Variable_1/Adam/Assignconv2/Variable_1/Adam/read:0
[
conv2/Variable_1/Adam_1:0conv2/Variable_1/Adam_1/Assignconv2/Variable_1/Adam_1/read:0
I
fc1/Variable/Adam:0fc1/Variable/Adam/Assignfc1/Variable/Adam/read:0
O
fc1/Variable/Adam_1:0fc1/Variable/Adam_1/Assignfc1/Variable/Adam_1/read:0
O
fc1/Variable_1/Adam:0fc1/Variable_1/Adam/Assignfc1/Variable_1/Adam/read:0
U
fc1/Variable_1/Adam_1:0fc1/Variable_1/Adam_1/Assignfc1/Variable_1/Adam_1/read:0
I
fc2/Variable/Adam:0fc2/Variable/Adam/Assignfc2/Variable/Adam/read:0
O
fc2/Variable/Adam_1:0fc2/Variable/Adam_1/Assignfc2/Variable/Adam_1/read:0
O
fc2/Variable_1/Adam:0fc2/Variable_1/Adam/Assignfc2/Variable_1/Adam/read:0
U
fc2/Variable_1/Adam_1:0fc2/Variable_1/Adam_1/Assignfc2/Variable_1/Adam_1/read:0"$
legacy_init_op

legacy_init_op"3
table_initializer

index_to_string/table_init*?
serving_default?

inputs
tf_example:0:
classes/
index_to_string_Lookup:0?????????
)
scores
TopKV2:0?????????
tensorflow/serving/classify*?
predict_images?
*
	keep_prob
dropout/Placeholder:0
/
images%
Placeholder:0??????????*
scores 
	fc2/add:0?????????
tensorflow/serving/predict