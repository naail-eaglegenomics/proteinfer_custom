��
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
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
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12unknown8��

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
_output_shapes
: *
T0	
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
%batched_one_hot_sequences_placeholderPlaceholder*)
shape :������������������*
dtype0*4
_output_shapes"
 :������������������
v
sequence_length_placeholderPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
J
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
r
set_padding_to_sentinel/ShapeShape%batched_one_hot_sequences_placeholder*
T0*
_output_shapes
:
u
+set_padding_to_sentinel/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
w
-set_padding_to_sentinel/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
w
-set_padding_to_sentinel/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
%set_padding_to_sentinel/strided_sliceStridedSliceset_padding_to_sentinel/Shape+set_padding_to_sentinel/strided_slice/stack-set_padding_to_sentinel/strided_slice/stack_1-set_padding_to_sentinel/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
t
set_padding_to_sentinel/Shape_1Shape%batched_one_hot_sequences_placeholder*
_output_shapes
:*
T0
w
-set_padding_to_sentinel/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/set_padding_to_sentinel/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/set_padding_to_sentinel/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
'set_padding_to_sentinel/strided_slice_1StridedSliceset_padding_to_sentinel/Shape_1-set_padding_to_sentinel/strided_slice_1/stack/set_padding_to_sentinel/strided_slice_1/stack_1/set_padding_to_sentinel/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
l
*set_padding_to_sentinel/SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
n
,set_padding_to_sentinel/SequenceMask/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
*set_padding_to_sentinel/SequenceMask/RangeRange*set_padding_to_sentinel/SequenceMask/Const%set_padding_to_sentinel/strided_slice,set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
~
3set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholder3set_padding_to_sentinel/SequenceMask/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
)set_padding_to_sentinel/SequenceMask/CastCast/set_padding_to_sentinel/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
)set_padding_to_sentinel/SequenceMask/LessLess*set_padding_to_sentinel/SequenceMask/Range)set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
p
&set_padding_to_sentinel/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
�
"set_padding_to_sentinel/ExpandDims
ExpandDims)set_padding_to_sentinel/SequenceMask/Less&set_padding_to_sentinel/ExpandDims/dim*4
_output_shapes"
 :������������������*
T0

j
(set_padding_to_sentinel/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
j
(set_padding_to_sentinel/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
&set_padding_to_sentinel/Tile/multiplesPack(set_padding_to_sentinel/Tile/multiples/0(set_padding_to_sentinel/Tile/multiples/1'set_padding_to_sentinel/strided_slice_1*
_output_shapes
:*
T0*
N
�
set_padding_to_sentinel/TileTile"set_padding_to_sentinel/ExpandDims&set_padding_to_sentinel/Tile/multiples*=
_output_shapes+
):'���������������������������*
T0

�
"set_padding_to_sentinel/zeros_like	ZerosLike%batched_one_hot_sequences_placeholder*
T0*4
_output_shapes"
 :������������������
�
set_padding_to_sentinel/addAdd"set_padding_to_sentinel/zeros_likeConst*4
_output_shapes"
 :������������������*
T0
�
set_padding_to_sentinel/SelectSelectset_padding_to_sentinel/Tile%batched_one_hot_sequences_placeholderset_padding_to_sentinel/add*4
_output_shapes"
 :������������������*
T0
�
.conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"      
   * 
_class
loc:@conv1d/kernel*
dtype0*
_output_shapes
:
�
,conv1d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�2��* 
_class
loc:@conv1d/kernel
�
,conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *�2�>* 
_class
loc:@conv1d/kernel*
dtype0*
_output_shapes
: 
�
6conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv1d/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:
*
T0* 
_class
loc:@conv1d/kernel
�
,conv1d/kernel/Initializer/random_uniform/subSub,conv1d/kernel/Initializer/random_uniform/max,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel*
_output_shapes
: 
�
,conv1d/kernel/Initializer/random_uniform/mulMul6conv1d/kernel/Initializer/random_uniform/RandomUniform,conv1d/kernel/Initializer/random_uniform/sub*"
_output_shapes
:
*
T0* 
_class
loc:@conv1d/kernel
�
(conv1d/kernel/Initializer/random_uniformAdd,conv1d/kernel/Initializer/random_uniform/mul,conv1d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv1d/kernel*"
_output_shapes
:

�
conv1d/kernel
VariableV2*
shape:
* 
_class
loc:@conv1d/kernel*
dtype0*"
_output_shapes
:

�
conv1d/kernel/AssignAssignconv1d/kernel(conv1d/kernel/Initializer/random_uniform*"
_output_shapes
:
*
T0* 
_class
loc:@conv1d/kernel
|
conv1d/kernel/readIdentityconv1d/kernel* 
_class
loc:@conv1d/kernel*"
_output_shapes
:
*
T0
�
conv1d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *
_class
loc:@conv1d/bias
s
conv1d/bias
VariableV2*
shape:
*
_class
loc:@conv1d/bias*
dtype0*
_output_shapes
:

�
conv1d/bias/AssignAssignconv1d/biasconv1d/bias/Initializer/zeros*
T0*
_class
loc:@conv1d/bias*
_output_shapes
:

n
conv1d/bias/readIdentityconv1d/bias*
_output_shapes
:
*
T0*
_class
loc:@conv1d/bias
^
conv1d/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB:
^
conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
conv1d/conv1d/ExpandDims
ExpandDimsset_padding_to_sentinel/Selectconv1d/conv1d/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
`
conv1d/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
conv1d/conv1d/ExpandDims_1
ExpandDimsconv1d/kernel/readconv1d/conv1d/ExpandDims_1/dim*&
_output_shapes
:
*
T0
�
conv1d/conv1dConv2Dconv1d/conv1d/ExpandDimsconv1d/conv1d/ExpandDims_1*
strides
*
T0*
paddingSAME*8
_output_shapes&
$:"������������������

�
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d*
T0*
squeeze_dims
*4
_output_shapes"
 :������������������

�
conv1d/BiasAddBiasAddconv1d/conv1d/Squeezeconv1d/bias/read*
T0*4
_output_shapes"
 :������������������

L
Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
set_padding_to_sentinel_1/ShapeShapeconv1d/BiasAdd*
_output_shapes
:*
T0
w
-set_padding_to_sentinel_1/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/set_padding_to_sentinel_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/set_padding_to_sentinel_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
'set_padding_to_sentinel_1/strided_sliceStridedSliceset_padding_to_sentinel_1/Shape-set_padding_to_sentinel_1/strided_slice/stack/set_padding_to_sentinel_1/strided_slice/stack_1/set_padding_to_sentinel_1/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
_
!set_padding_to_sentinel_1/Shape_1Shapeconv1d/BiasAdd*
_output_shapes
:*
T0
y
/set_padding_to_sentinel_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
{
1set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
{
1set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
)set_padding_to_sentinel_1/strided_slice_1StridedSlice!set_padding_to_sentinel_1/Shape_1/set_padding_to_sentinel_1/strided_slice_1/stack1set_padding_to_sentinel_1/strided_slice_1/stack_11set_padding_to_sentinel_1/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
n
,set_padding_to_sentinel_1/SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
p
.set_padding_to_sentinel_1/SequenceMask/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
,set_padding_to_sentinel_1/SequenceMask/RangeRange,set_padding_to_sentinel_1/SequenceMask/Const'set_padding_to_sentinel_1/strided_slice.set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
5set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
1set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholder5set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_1/SequenceMask/CastCast1set_padding_to_sentinel_1/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_1/SequenceMask/LessLess,set_padding_to_sentinel_1/SequenceMask/Range+set_padding_to_sentinel_1/SequenceMask/Cast*0
_output_shapes
:������������������*
T0
r
(set_padding_to_sentinel_1/ExpandDims/dimConst*
dtype0*
_output_shapes
:*
valueB:
�
$set_padding_to_sentinel_1/ExpandDims
ExpandDims+set_padding_to_sentinel_1/SequenceMask/Less(set_padding_to_sentinel_1/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
l
*set_padding_to_sentinel_1/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
l
*set_padding_to_sentinel_1/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
(set_padding_to_sentinel_1/Tile/multiplesPack*set_padding_to_sentinel_1/Tile/multiples/0*set_padding_to_sentinel_1/Tile/multiples/1)set_padding_to_sentinel_1/strided_slice_1*
T0*
N*
_output_shapes
:
�
set_padding_to_sentinel_1/TileTile$set_padding_to_sentinel_1/ExpandDims(set_padding_to_sentinel_1/Tile/multiples*=
_output_shapes+
):'���������������������������*
T0

�
$set_padding_to_sentinel_1/zeros_like	ZerosLikeconv1d/BiasAdd*
T0*4
_output_shapes"
 :������������������

�
set_padding_to_sentinel_1/addAdd$set_padding_to_sentinel_1/zeros_likeConst_1*4
_output_shapes"
 :������������������
*
T0
�
 set_padding_to_sentinel_1/SelectSelectset_padding_to_sentinel_1/Tileconv1d/BiasAddset_padding_to_sentinel_1/add*4
_output_shapes"
 :������������������
*
T0
�
;residual_block_0/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:
*
valueB
*  �?*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma
�
*residual_block_0/batch_normalization/gamma
VariableV2*
shape:
*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
dtype0*
_output_shapes
:

�
1residual_block_0/batch_normalization/gamma/AssignAssign*residual_block_0/batch_normalization/gamma;residual_block_0/batch_normalization/gamma/Initializer/ones*
T0*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:

�
/residual_block_0/batch_normalization/gamma/readIdentity*residual_block_0/batch_normalization/gamma*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:
*
T0
�
;residual_block_0/batch_normalization/beta/Initializer/zerosConst*
valueB
*    *<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
dtype0*
_output_shapes
:

�
)residual_block_0/batch_normalization/beta
VariableV2*
shape:
*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
dtype0*
_output_shapes
:

�
0residual_block_0/batch_normalization/beta/AssignAssign)residual_block_0/batch_normalization/beta;residual_block_0/batch_normalization/beta/Initializer/zeros*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:
*
T0
�
.residual_block_0/batch_normalization/beta/readIdentity)residual_block_0/batch_normalization/beta*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:
*
T0
�
Bresidual_block_0/batch_normalization/moving_mean/Initializer/zerosConst*
valueB
*    *C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
dtype0*
_output_shapes
:

�
0residual_block_0/batch_normalization/moving_mean
VariableV2*
dtype0*
_output_shapes
:
*
shape:
*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean
�
7residual_block_0/batch_normalization/moving_mean/AssignAssign0residual_block_0/batch_normalization/moving_meanBresidual_block_0/batch_normalization/moving_mean/Initializer/zeros*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:
*
T0
�
5residual_block_0/batch_normalization/moving_mean/readIdentity0residual_block_0/batch_normalization/moving_mean*
T0*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:

�
Eresidual_block_0/batch_normalization/moving_variance/Initializer/onesConst*
valueB
*  �?*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
dtype0*
_output_shapes
:

�
4residual_block_0/batch_normalization/moving_variance
VariableV2*
shape:
*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
dtype0*
_output_shapes
:

�
;residual_block_0/batch_normalization/moving_variance/AssignAssign4residual_block_0/batch_normalization/moving_varianceEresidual_block_0/batch_normalization/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance*
_output_shapes
:

�
9residual_block_0/batch_normalization/moving_variance/readIdentity4residual_block_0/batch_normalization/moving_variance*
_output_shapes
:
*
T0*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance
y
4residual_block_0/batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
2residual_block_0/batch_normalization/batchnorm/addAdd9residual_block_0/batch_normalization/moving_variance/read4residual_block_0/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
4residual_block_0/batch_normalization/batchnorm/RsqrtRsqrt2residual_block_0/batch_normalization/batchnorm/add*
_output_shapes
:
*
T0
�
2residual_block_0/batch_normalization/batchnorm/mulMul4residual_block_0/batch_normalization/batchnorm/Rsqrt/residual_block_0/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
4residual_block_0/batch_normalization/batchnorm/mul_1Mul set_padding_to_sentinel_1/Select2residual_block_0/batch_normalization/batchnorm/mul*
T0*4
_output_shapes"
 :������������������

�
4residual_block_0/batch_normalization/batchnorm/mul_2Mul5residual_block_0/batch_normalization/moving_mean/read2residual_block_0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
2residual_block_0/batch_normalization/batchnorm/subSub.residual_block_0/batch_normalization/beta/read4residual_block_0/batch_normalization/batchnorm/mul_2*
_output_shapes
:
*
T0
�
4residual_block_0/batch_normalization/batchnorm/add_1Add4residual_block_0/batch_normalization/batchnorm/mul_12residual_block_0/batch_normalization/batchnorm/sub*
T0*4
_output_shapes"
 :������������������

�
residual_block_0/ReluRelu4residual_block_0/batch_normalization/batchnorm/add_1*
T0*4
_output_shapes"
 :������������������

[
residual_block_0/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
.residual_block_0/set_padding_to_sentinel/ShapeShaperesidual_block_0/Relu*
T0*
_output_shapes
:
�
<residual_block_0/set_padding_to_sentinel/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
>residual_block_0/set_padding_to_sentinel/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
>residual_block_0/set_padding_to_sentinel/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
6residual_block_0/set_padding_to_sentinel/strided_sliceStridedSlice.residual_block_0/set_padding_to_sentinel/Shape<residual_block_0/set_padding_to_sentinel/strided_slice/stack>residual_block_0/set_padding_to_sentinel/strided_slice/stack_1>residual_block_0/set_padding_to_sentinel/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
u
0residual_block_0/set_padding_to_sentinel/Shape_1Shaperesidual_block_0/Relu*
T0*
_output_shapes
:
�
>residual_block_0/set_padding_to_sentinel/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
8residual_block_0/set_padding_to_sentinel/strided_slice_1StridedSlice0residual_block_0/set_padding_to_sentinel/Shape_1>residual_block_0/set_padding_to_sentinel/strided_slice_1/stack@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_1@residual_block_0/set_padding_to_sentinel/strided_slice_1/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
}
;residual_block_0/set_padding_to_sentinel/SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 

=residual_block_0/set_padding_to_sentinel/SequenceMask/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
;residual_block_0/set_padding_to_sentinel/SequenceMask/RangeRange;residual_block_0/set_padding_to_sentinel/SequenceMask/Const6residual_block_0/set_padding_to_sentinel/strided_slice=residual_block_0/set_padding_to_sentinel/SequenceMask/Const_1*#
_output_shapes
:���������
�
Dresidual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
@residual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderDresidual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims/dim*'
_output_shapes
:���������*
T0
�
:residual_block_0/set_padding_to_sentinel/SequenceMask/CastCast@residual_block_0/set_padding_to_sentinel/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
:residual_block_0/set_padding_to_sentinel/SequenceMask/LessLess;residual_block_0/set_padding_to_sentinel/SequenceMask/Range:residual_block_0/set_padding_to_sentinel/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
7residual_block_0/set_padding_to_sentinel/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
�
3residual_block_0/set_padding_to_sentinel/ExpandDims
ExpandDims:residual_block_0/set_padding_to_sentinel/SequenceMask/Less7residual_block_0/set_padding_to_sentinel/ExpandDims/dim*4
_output_shapes"
 :������������������*
T0

{
9residual_block_0/set_padding_to_sentinel/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
{
9residual_block_0/set_padding_to_sentinel/Tile/multiples/1Const*
dtype0*
_output_shapes
: *
value	B :
�
7residual_block_0/set_padding_to_sentinel/Tile/multiplesPack9residual_block_0/set_padding_to_sentinel/Tile/multiples/09residual_block_0/set_padding_to_sentinel/Tile/multiples/18residual_block_0/set_padding_to_sentinel/strided_slice_1*
T0*
N*
_output_shapes
:
�
-residual_block_0/set_padding_to_sentinel/TileTile3residual_block_0/set_padding_to_sentinel/ExpandDims7residual_block_0/set_padding_to_sentinel/Tile/multiples*
T0
*=
_output_shapes+
):'���������������������������
�
3residual_block_0/set_padding_to_sentinel/zeros_like	ZerosLikeresidual_block_0/Relu*4
_output_shapes"
 :������������������
*
T0
�
,residual_block_0/set_padding_to_sentinel/addAdd3residual_block_0/set_padding_to_sentinel/zeros_likeresidual_block_0/Const*4
_output_shapes"
 :������������������
*
T0
�
/residual_block_0/set_padding_to_sentinel/SelectSelect-residual_block_0/set_padding_to_sentinel/Tileresidual_block_0/Relu,residual_block_0/set_padding_to_sentinel/add*4
_output_shapes"
 :������������������
*
T0
�
?residual_block_0/conv1d/kernel/Initializer/random_uniform/shapeConst*!
valueB"   
      *1
_class'
%#loc:@residual_block_0/conv1d/kernel*
dtype0*
_output_shapes
:
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/minConst*
valueB
 *����*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
dtype0*
_output_shapes
: 
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/maxConst*
valueB
 *���>*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
dtype0*
_output_shapes
: 
�
Gresidual_block_0/conv1d/kernel/Initializer/random_uniform/RandomUniformRandomUniform?residual_block_0/conv1d/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:
*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/subSub=residual_block_0/conv1d/kernel/Initializer/random_uniform/max=residual_block_0/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
_output_shapes
: 
�
=residual_block_0/conv1d/kernel/Initializer/random_uniform/mulMulGresidual_block_0/conv1d/kernel/Initializer/random_uniform/RandomUniform=residual_block_0/conv1d/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:

�
9residual_block_0/conv1d/kernel/Initializer/random_uniformAdd=residual_block_0/conv1d/kernel/Initializer/random_uniform/mul=residual_block_0/conv1d/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:

�
residual_block_0/conv1d/kernel
VariableV2*
shape:
*1
_class'
%#loc:@residual_block_0/conv1d/kernel*
dtype0*"
_output_shapes
:

�
%residual_block_0/conv1d/kernel/AssignAssignresidual_block_0/conv1d/kernel9residual_block_0/conv1d/kernel/Initializer/random_uniform*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:
*
T0
�
#residual_block_0/conv1d/kernel/readIdentityresidual_block_0/conv1d/kernel*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:

�
.residual_block_0/conv1d/bias/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@residual_block_0/conv1d/bias*
dtype0*
_output_shapes
:
�
residual_block_0/conv1d/bias
VariableV2*
shape:*/
_class%
#!loc:@residual_block_0/conv1d/bias*
dtype0*
_output_shapes
:
�
#residual_block_0/conv1d/bias/AssignAssignresidual_block_0/conv1d/bias.residual_block_0/conv1d/bias/Initializer/zeros*
T0*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:
�
!residual_block_0/conv1d/bias/readIdentityresidual_block_0/conv1d/bias*
T0*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:
o
%residual_block_0/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
o
-residual_block_0/conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
)residual_block_0/conv1d/conv1d/ExpandDims
ExpandDims/residual_block_0/set_padding_to_sentinel/Select-residual_block_0/conv1d/conv1d/ExpandDims/dim*8
_output_shapes&
$:"������������������
*
T0
q
/residual_block_0/conv1d/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
+residual_block_0/conv1d/conv1d/ExpandDims_1
ExpandDims#residual_block_0/conv1d/kernel/read/residual_block_0/conv1d/conv1d/ExpandDims_1/dim*&
_output_shapes
:
*
T0
�
residual_block_0/conv1d/conv1dConv2D)residual_block_0/conv1d/conv1d/ExpandDims+residual_block_0/conv1d/conv1d/ExpandDims_1*8
_output_shapes&
$:"������������������*
strides
*
T0*
paddingSAME
�
&residual_block_0/conv1d/conv1d/SqueezeSqueezeresidual_block_0/conv1d/conv1d*
T0*
squeeze_dims
*4
_output_shapes"
 :������������������
�
residual_block_0/conv1d/BiasAddBiasAdd&residual_block_0/conv1d/conv1d/Squeeze!residual_block_0/conv1d/bias/read*4
_output_shapes"
 :������������������*
T0
]
residual_block_0/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 

0residual_block_0/set_padding_to_sentinel_1/ShapeShaperesidual_block_0/conv1d/BiasAdd*
T0*
_output_shapes
:
�
>residual_block_0/set_padding_to_sentinel_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
�
@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
8residual_block_0/set_padding_to_sentinel_1/strided_sliceStridedSlice0residual_block_0/set_padding_to_sentinel_1/Shape>residual_block_0/set_padding_to_sentinel_1/strided_slice/stack@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_1@residual_block_0/set_padding_to_sentinel_1/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
�
2residual_block_0/set_padding_to_sentinel_1/Shape_1Shaperesidual_block_0/conv1d/BiasAdd*
_output_shapes
:*
T0
�
@residual_block_0/set_padding_to_sentinel_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Bresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Bresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
:residual_block_0/set_padding_to_sentinel_1/strided_slice_1StridedSlice2residual_block_0/set_padding_to_sentinel_1/Shape_1@residual_block_0/set_padding_to_sentinel_1/strided_slice_1/stackBresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_1Bresidual_block_0/set_padding_to_sentinel_1/strided_slice_1/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 

=residual_block_0/set_padding_to_sentinel_1/SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
�
?residual_block_0/set_padding_to_sentinel_1/SequenceMask/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
=residual_block_0/set_padding_to_sentinel_1/SequenceMask/RangeRange=residual_block_0/set_padding_to_sentinel_1/SequenceMask/Const8residual_block_0/set_padding_to_sentinel_1/strided_slice?residual_block_0/set_padding_to_sentinel_1/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Bresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_1/SequenceMask/CastCastBresidual_block_0/set_padding_to_sentinel_1/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_1/SequenceMask/LessLess=residual_block_0/set_padding_to_sentinel_1/SequenceMask/Range<residual_block_0/set_padding_to_sentinel_1/SequenceMask/Cast*
T0*0
_output_shapes
:������������������
�
9residual_block_0/set_padding_to_sentinel_1/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
�
5residual_block_0/set_padding_to_sentinel_1/ExpandDims
ExpandDims<residual_block_0/set_padding_to_sentinel_1/SequenceMask/Less9residual_block_0/set_padding_to_sentinel_1/ExpandDims/dim*4
_output_shapes"
 :������������������*
T0

}
;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
}
;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
9residual_block_0/set_padding_to_sentinel_1/Tile/multiplesPack;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/0;residual_block_0/set_padding_to_sentinel_1/Tile/multiples/1:residual_block_0/set_padding_to_sentinel_1/strided_slice_1*
_output_shapes
:*
T0*
N
�
/residual_block_0/set_padding_to_sentinel_1/TileTile5residual_block_0/set_padding_to_sentinel_1/ExpandDims9residual_block_0/set_padding_to_sentinel_1/Tile/multiples*=
_output_shapes+
):'���������������������������*
T0

�
5residual_block_0/set_padding_to_sentinel_1/zeros_like	ZerosLikeresidual_block_0/conv1d/BiasAdd*4
_output_shapes"
 :������������������*
T0
�
.residual_block_0/set_padding_to_sentinel_1/addAdd5residual_block_0/set_padding_to_sentinel_1/zeros_likeresidual_block_0/Const_1*
T0*4
_output_shapes"
 :������������������
�
1residual_block_0/set_padding_to_sentinel_1/SelectSelect/residual_block_0/set_padding_to_sentinel_1/Tileresidual_block_0/conv1d/BiasAdd.residual_block_0/set_padding_to_sentinel_1/add*
T0*4
_output_shapes"
 :������������������
�
=residual_block_0/batch_normalization_1/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*
valueB*  �?*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma
�
,residual_block_0/batch_normalization_1/gamma
VariableV2*
shape:*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*
dtype0*
_output_shapes
:
�
3residual_block_0/batch_normalization_1/gamma/AssignAssign,residual_block_0/batch_normalization_1/gamma=residual_block_0/batch_normalization_1/gamma/Initializer/ones*
_output_shapes
:*
T0*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma
�
1residual_block_0/batch_normalization_1/gamma/readIdentity,residual_block_0/batch_normalization_1/gamma*
T0*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma*
_output_shapes
:
�
=residual_block_0/batch_normalization_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *>
_class4
20loc:@residual_block_0/batch_normalization_1/beta
�
+residual_block_0/batch_normalization_1/beta
VariableV2*
shape:*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*
dtype0*
_output_shapes
:
�
2residual_block_0/batch_normalization_1/beta/AssignAssign+residual_block_0/batch_normalization_1/beta=residual_block_0/batch_normalization_1/beta/Initializer/zeros*
_output_shapes
:*
T0*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta
�
0residual_block_0/batch_normalization_1/beta/readIdentity+residual_block_0/batch_normalization_1/beta*
_output_shapes
:*
T0*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta
�
Dresidual_block_0/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB*    *E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:
�
2residual_block_0/batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shape:*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean
�
9residual_block_0/batch_normalization_1/moving_mean/AssignAssign2residual_block_0/batch_normalization_1/moving_meanDresidual_block_0/batch_normalization_1/moving_mean/Initializer/zeros*
_output_shapes
:*
T0*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean
�
7residual_block_0/batch_normalization_1/moving_mean/readIdentity2residual_block_0/batch_normalization_1/moving_mean*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
_output_shapes
:*
T0
�
Gresidual_block_0/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB*  �?*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:
�
6residual_block_0/batch_normalization_1/moving_variance
VariableV2*
dtype0*
_output_shapes
:*
shape:*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance
�
=residual_block_0/batch_normalization_1/moving_variance/AssignAssign6residual_block_0/batch_normalization_1/moving_varianceGresidual_block_0/batch_normalization_1/moving_variance/Initializer/ones*
T0*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:
�
;residual_block_0/batch_normalization_1/moving_variance/readIdentity6residual_block_0/batch_normalization_1/moving_variance*
T0*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:
{
6residual_block_0/batch_normalization_1/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
4residual_block_0/batch_normalization_1/batchnorm/addAdd;residual_block_0/batch_normalization_1/moving_variance/read6residual_block_0/batch_normalization_1/batchnorm/add/y*
_output_shapes
:*
T0
�
6residual_block_0/batch_normalization_1/batchnorm/RsqrtRsqrt4residual_block_0/batch_normalization_1/batchnorm/add*
T0*
_output_shapes
:
�
4residual_block_0/batch_normalization_1/batchnorm/mulMul6residual_block_0/batch_normalization_1/batchnorm/Rsqrt1residual_block_0/batch_normalization_1/gamma/read*
T0*
_output_shapes
:
�
6residual_block_0/batch_normalization_1/batchnorm/mul_1Mul1residual_block_0/set_padding_to_sentinel_1/Select4residual_block_0/batch_normalization_1/batchnorm/mul*4
_output_shapes"
 :������������������*
T0
�
6residual_block_0/batch_normalization_1/batchnorm/mul_2Mul7residual_block_0/batch_normalization_1/moving_mean/read4residual_block_0/batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:
�
4residual_block_0/batch_normalization_1/batchnorm/subSub0residual_block_0/batch_normalization_1/beta/read6residual_block_0/batch_normalization_1/batchnorm/mul_2*
T0*
_output_shapes
:
�
6residual_block_0/batch_normalization_1/batchnorm/add_1Add6residual_block_0/batch_normalization_1/batchnorm/mul_14residual_block_0/batch_normalization_1/batchnorm/sub*4
_output_shapes"
 :������������������*
T0
�
residual_block_0/Relu_1Relu6residual_block_0/batch_normalization_1/batchnorm/add_1*4
_output_shapes"
 :������������������*
T0
]
residual_block_0/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *    
w
0residual_block_0/set_padding_to_sentinel_2/ShapeShaperesidual_block_0/Relu_1*
_output_shapes
:*
T0
�
>residual_block_0/set_padding_to_sentinel_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
8residual_block_0/set_padding_to_sentinel_2/strided_sliceStridedSlice0residual_block_0/set_padding_to_sentinel_2/Shape>residual_block_0/set_padding_to_sentinel_2/strided_slice/stack@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_1@residual_block_0/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
y
2residual_block_0/set_padding_to_sentinel_2/Shape_1Shaperesidual_block_0/Relu_1*
_output_shapes
:*
T0
�
@residual_block_0/set_padding_to_sentinel_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Bresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Bresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
:residual_block_0/set_padding_to_sentinel_2/strided_slice_1StridedSlice2residual_block_0/set_padding_to_sentinel_2/Shape_1@residual_block_0/set_padding_to_sentinel_2/strided_slice_1/stackBresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_1Bresidual_block_0/set_padding_to_sentinel_2/strided_slice_1/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 

=residual_block_0/set_padding_to_sentinel_2/SequenceMask/ConstConst*
dtype0*
_output_shapes
: *
value	B : 
�
?residual_block_0/set_padding_to_sentinel_2/SequenceMask/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
=residual_block_0/set_padding_to_sentinel_2/SequenceMask/RangeRange=residual_block_0/set_padding_to_sentinel_2/SequenceMask/Const8residual_block_0/set_padding_to_sentinel_2/strided_slice?residual_block_0/set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Bresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_2/SequenceMask/CastCastBresidual_block_0/set_padding_to_sentinel_2/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_2/SequenceMask/LessLess=residual_block_0/set_padding_to_sentinel_2/SequenceMask/Range<residual_block_0/set_padding_to_sentinel_2/SequenceMask/Cast*0
_output_shapes
:������������������*
T0
�
9residual_block_0/set_padding_to_sentinel_2/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
�
5residual_block_0/set_padding_to_sentinel_2/ExpandDims
ExpandDims<residual_block_0/set_padding_to_sentinel_2/SequenceMask/Less9residual_block_0/set_padding_to_sentinel_2/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
}
;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
9residual_block_0/set_padding_to_sentinel_2/Tile/multiplesPack;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/0;residual_block_0/set_padding_to_sentinel_2/Tile/multiples/1:residual_block_0/set_padding_to_sentinel_2/strided_slice_1*
T0*
N*
_output_shapes
:
�
/residual_block_0/set_padding_to_sentinel_2/TileTile5residual_block_0/set_padding_to_sentinel_2/ExpandDims9residual_block_0/set_padding_to_sentinel_2/Tile/multiples*=
_output_shapes+
):'���������������������������*
T0

�
5residual_block_0/set_padding_to_sentinel_2/zeros_like	ZerosLikeresidual_block_0/Relu_1*4
_output_shapes"
 :������������������*
T0
�
.residual_block_0/set_padding_to_sentinel_2/addAdd5residual_block_0/set_padding_to_sentinel_2/zeros_likeresidual_block_0/Const_2*
T0*4
_output_shapes"
 :������������������
�
1residual_block_0/set_padding_to_sentinel_2/SelectSelect/residual_block_0/set_padding_to_sentinel_2/Tileresidual_block_0/Relu_1.residual_block_0/set_padding_to_sentinel_2/add*
T0*4
_output_shapes"
 :������������������
�
Aresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/shapeConst*!
valueB"      
   *3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
dtype0*
_output_shapes
:
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *��!�*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
dtype0*
_output_shapes
: 
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *��!?*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
dtype0*
_output_shapes
: 
�
Iresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformAresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/shape*
dtype0*"
_output_shapes
:
*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/subSub?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/max?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
_output_shapes
: 
�
?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/mulMulIresidual_block_0/conv1d_1/kernel/Initializer/random_uniform/RandomUniform?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/sub*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:
*
T0
�
;residual_block_0/conv1d_1/kernel/Initializer/random_uniformAdd?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/mul?residual_block_0/conv1d_1/kernel/Initializer/random_uniform/min*"
_output_shapes
:
*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel
�
 residual_block_0/conv1d_1/kernel
VariableV2*
shape:
*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*
dtype0*"
_output_shapes
:

�
'residual_block_0/conv1d_1/kernel/AssignAssign residual_block_0/conv1d_1/kernel;residual_block_0/conv1d_1/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:

�
%residual_block_0/conv1d_1/kernel/readIdentity residual_block_0/conv1d_1/kernel*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel*"
_output_shapes
:

�
0residual_block_0/conv1d_1/bias/Initializer/zerosConst*
valueB
*    *1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
dtype0*
_output_shapes
:

�
residual_block_0/conv1d_1/bias
VariableV2*
dtype0*
_output_shapes
:
*
shape:
*1
_class'
%#loc:@residual_block_0/conv1d_1/bias
�
%residual_block_0/conv1d_1/bias/AssignAssignresidual_block_0/conv1d_1/bias0residual_block_0/conv1d_1/bias/Initializer/zeros*
T0*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
_output_shapes
:

�
#residual_block_0/conv1d_1/bias/readIdentityresidual_block_0/conv1d_1/bias*
_output_shapes
:
*
T0*1
_class'
%#loc:@residual_block_0/conv1d_1/bias
q
'residual_block_0/conv1d_1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
q
/residual_block_0/conv1d_1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
+residual_block_0/conv1d_1/conv1d/ExpandDims
ExpandDims1residual_block_0/set_padding_to_sentinel_2/Select/residual_block_0/conv1d_1/conv1d/ExpandDims/dim*
T0*8
_output_shapes&
$:"������������������
s
1residual_block_0/conv1d_1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
-residual_block_0/conv1d_1/conv1d/ExpandDims_1
ExpandDims%residual_block_0/conv1d_1/kernel/read1residual_block_0/conv1d_1/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:

�
 residual_block_0/conv1d_1/conv1dConv2D+residual_block_0/conv1d_1/conv1d/ExpandDims-residual_block_0/conv1d_1/conv1d/ExpandDims_1*8
_output_shapes&
$:"������������������
*
strides
*
T0*
paddingSAME
�
(residual_block_0/conv1d_1/conv1d/SqueezeSqueeze residual_block_0/conv1d_1/conv1d*
T0*
squeeze_dims
*4
_output_shapes"
 :������������������

�
!residual_block_0/conv1d_1/BiasAddBiasAdd(residual_block_0/conv1d_1/conv1d/Squeeze#residual_block_0/conv1d_1/bias/read*4
_output_shapes"
 :������������������
*
T0
]
residual_block_0/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
�
0residual_block_0/set_padding_to_sentinel_3/ShapeShape!residual_block_0/conv1d_1/BiasAdd*
_output_shapes
:*
T0
�
>residual_block_0/set_padding_to_sentinel_3/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
8residual_block_0/set_padding_to_sentinel_3/strided_sliceStridedSlice0residual_block_0/set_padding_to_sentinel_3/Shape>residual_block_0/set_padding_to_sentinel_3/strided_slice/stack@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_1@residual_block_0/set_padding_to_sentinel_3/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
�
2residual_block_0/set_padding_to_sentinel_3/Shape_1Shape!residual_block_0/conv1d_1/BiasAdd*
_output_shapes
:*
T0
�
@residual_block_0/set_padding_to_sentinel_3/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Bresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Bresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
:residual_block_0/set_padding_to_sentinel_3/strided_slice_1StridedSlice2residual_block_0/set_padding_to_sentinel_3/Shape_1@residual_block_0/set_padding_to_sentinel_3/strided_slice_1/stackBresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_1Bresidual_block_0/set_padding_to_sentinel_3/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0

=residual_block_0/set_padding_to_sentinel_3/SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
�
?residual_block_0/set_padding_to_sentinel_3/SequenceMask/Const_1Const*
dtype0*
_output_shapes
: *
value	B :
�
=residual_block_0/set_padding_to_sentinel_3/SequenceMask/RangeRange=residual_block_0/set_padding_to_sentinel_3/SequenceMask/Const8residual_block_0/set_padding_to_sentinel_3/strided_slice?residual_block_0/set_padding_to_sentinel_3/SequenceMask/Const_1*#
_output_shapes
:���������
�
Fresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Bresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholderFresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_3/SequenceMask/CastCastBresidual_block_0/set_padding_to_sentinel_3/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
<residual_block_0/set_padding_to_sentinel_3/SequenceMask/LessLess=residual_block_0/set_padding_to_sentinel_3/SequenceMask/Range<residual_block_0/set_padding_to_sentinel_3/SequenceMask/Cast*0
_output_shapes
:������������������*
T0
�
9residual_block_0/set_padding_to_sentinel_3/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
�
5residual_block_0/set_padding_to_sentinel_3/ExpandDims
ExpandDims<residual_block_0/set_padding_to_sentinel_3/SequenceMask/Less9residual_block_0/set_padding_to_sentinel_3/ExpandDims/dim*
T0
*4
_output_shapes"
 :������������������
}
;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
}
;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
9residual_block_0/set_padding_to_sentinel_3/Tile/multiplesPack;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/0;residual_block_0/set_padding_to_sentinel_3/Tile/multiples/1:residual_block_0/set_padding_to_sentinel_3/strided_slice_1*
_output_shapes
:*
T0*
N
�
/residual_block_0/set_padding_to_sentinel_3/TileTile5residual_block_0/set_padding_to_sentinel_3/ExpandDims9residual_block_0/set_padding_to_sentinel_3/Tile/multiples*=
_output_shapes+
):'���������������������������*
T0

�
5residual_block_0/set_padding_to_sentinel_3/zeros_like	ZerosLike!residual_block_0/conv1d_1/BiasAdd*4
_output_shapes"
 :������������������
*
T0
�
.residual_block_0/set_padding_to_sentinel_3/addAdd5residual_block_0/set_padding_to_sentinel_3/zeros_likeresidual_block_0/Const_3*
T0*4
_output_shapes"
 :������������������

�
1residual_block_0/set_padding_to_sentinel_3/SelectSelect/residual_block_0/set_padding_to_sentinel_3/Tile!residual_block_0/conv1d_1/BiasAdd.residual_block_0/set_padding_to_sentinel_3/add*
T0*4
_output_shapes"
 :������������������

�
residual_block_0/addAdd set_padding_to_sentinel_1/Select1residual_block_0/set_padding_to_sentinel_3/Select*4
_output_shapes"
 :������������������
*
T0
o
representationIdentityresidual_block_0/add*4
_output_shapes"
 :������������������
*
T0
L
Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *    
]
set_padding_to_sentinel_2/ShapeShaperepresentation*
_output_shapes
:*
T0
w
-set_padding_to_sentinel_2/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
y
/set_padding_to_sentinel_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/set_padding_to_sentinel_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
'set_padding_to_sentinel_2/strided_sliceStridedSliceset_padding_to_sentinel_2/Shape-set_padding_to_sentinel_2/strided_slice/stack/set_padding_to_sentinel_2/strided_slice/stack_1/set_padding_to_sentinel_2/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
_
!set_padding_to_sentinel_2/Shape_1Shaperepresentation*
T0*
_output_shapes
:
y
/set_padding_to_sentinel_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
{
1set_padding_to_sentinel_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
{
1set_padding_to_sentinel_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
)set_padding_to_sentinel_2/strided_slice_1StridedSlice!set_padding_to_sentinel_2/Shape_1/set_padding_to_sentinel_2/strided_slice_1/stack1set_padding_to_sentinel_2/strided_slice_1/stack_11set_padding_to_sentinel_2/strided_slice_1/stack_2*
T0*
_output_shapes
: *
Index0*
shrink_axis_mask
n
,set_padding_to_sentinel_2/SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
p
.set_padding_to_sentinel_2/SequenceMask/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
�
,set_padding_to_sentinel_2/SequenceMask/RangeRange,set_padding_to_sentinel_2/SequenceMask/Const'set_padding_to_sentinel_2/strided_slice.set_padding_to_sentinel_2/SequenceMask/Const_1*#
_output_shapes
:���������
�
5set_padding_to_sentinel_2/SequenceMask/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
1set_padding_to_sentinel_2/SequenceMask/ExpandDims
ExpandDimssequence_length_placeholder5set_padding_to_sentinel_2/SequenceMask/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_2/SequenceMask/CastCast1set_padding_to_sentinel_2/SequenceMask/ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
�
+set_padding_to_sentinel_2/SequenceMask/LessLess,set_padding_to_sentinel_2/SequenceMask/Range+set_padding_to_sentinel_2/SequenceMask/Cast*0
_output_shapes
:������������������*
T0
r
(set_padding_to_sentinel_2/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
�
$set_padding_to_sentinel_2/ExpandDims
ExpandDims+set_padding_to_sentinel_2/SequenceMask/Less(set_padding_to_sentinel_2/ExpandDims/dim*4
_output_shapes"
 :������������������*
T0

l
*set_padding_to_sentinel_2/Tile/multiples/0Const*
dtype0*
_output_shapes
: *
value	B :
l
*set_padding_to_sentinel_2/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
(set_padding_to_sentinel_2/Tile/multiplesPack*set_padding_to_sentinel_2/Tile/multiples/0*set_padding_to_sentinel_2/Tile/multiples/1)set_padding_to_sentinel_2/strided_slice_1*
_output_shapes
:*
T0*
N
�
set_padding_to_sentinel_2/TileTile$set_padding_to_sentinel_2/ExpandDims(set_padding_to_sentinel_2/Tile/multiples*
T0
*=
_output_shapes+
):'���������������������������
�
$set_padding_to_sentinel_2/zeros_like	ZerosLikerepresentation*4
_output_shapes"
 :������������������
*
T0
�
set_padding_to_sentinel_2/addAdd$set_padding_to_sentinel_2/zeros_likeConst_2*
T0*4
_output_shapes"
 :������������������

�
 set_padding_to_sentinel_2/SelectSelectset_padding_to_sentinel_2/Tilerepresentationset_padding_to_sentinel_2/add*4
_output_shapes"
 :������������������
*
T0
Y
ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
w

ExpandDims
ExpandDimssequence_length_placeholderExpandDims/dim*'
_output_shapes
:���������*
T0
W
Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
u
SumSum set_padding_to_sentinel_2/SelectSum/reduction_indices*
T0*'
_output_shapes
:���������

Y
CastCast
ExpandDims*

SrcT0*

DstT0*'
_output_shapes
:���������
O
truedivRealDivSumCast*
T0*'
_output_shapes
:���������

\
pooled_representationIdentitytruediv*'
_output_shapes
:���������
*
T0
�
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"
      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *w��*
_class
loc:@dense/kernel
�
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *w�?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:

�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel*
_output_shapes

:
*
T0
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
_output_shapes

:
*
T0
}
dense/kernel
VariableV2*
shape
:
*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:

�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

u
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

�
dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense/bias
q

dense/bias
VariableV2*
shape:*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
_output_shapes
:*
T0*
_class
loc:@dense/bias
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
_output_shapes
:*
T0
r
dense/MatMulMatMulpooled_representationdense/kernel/read*
T0*'
_output_shapes
:���������
i
dense/BiasAddBiasAdddense/MatMuldense/bias/read*'
_output_shapes
:���������*
T0
S
SigmoidSigmoiddense/BiasAdd*'
_output_shapes
:���������*
T0
R
predictionsIdentitySigmoid*'
_output_shapes
:���������*
T0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_73b891c7fc7645938d7230aa8ea11c0c/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�Bconv1d/biasBconv1d/kernelB
dense/biasBdense/kernelBglobal_stepB)residual_block_0/batch_normalization/betaB*residual_block_0/batch_normalization/gammaB0residual_block_0/batch_normalization/moving_meanB4residual_block_0/batch_normalization/moving_varianceB+residual_block_0/batch_normalization_1/betaB,residual_block_0/batch_normalization_1/gammaB2residual_block_0/batch_normalization_1/moving_meanB6residual_block_0/batch_normalization_1/moving_varianceBresidual_block_0/conv1d/biasBresidual_block_0/conv1d/kernelBresidual_block_0/conv1d_1/biasB residual_block_0/conv1d_1/kernel*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv1d/biasconv1d/kernel
dense/biasdense/kernelglobal_step)residual_block_0/batch_normalization/beta*residual_block_0/batch_normalization/gamma0residual_block_0/batch_normalization/moving_mean4residual_block_0/batch_normalization/moving_variance+residual_block_0/batch_normalization_1/beta,residual_block_0/batch_normalization_1/gamma2residual_block_0/batch_normalization_1/moving_mean6residual_block_0/batch_normalization_1/moving_varianceresidual_block_0/conv1d/biasresidual_block_0/conv1d/kernelresidual_block_0/conv1d_1/bias residual_block_0/conv1d_1/kernel"/device:CPU:0*
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Bconv1d/biasBconv1d/kernelB
dense/biasBdense/kernelBglobal_stepB)residual_block_0/batch_normalization/betaB*residual_block_0/batch_normalization/gammaB0residual_block_0/batch_normalization/moving_meanB4residual_block_0/batch_normalization/moving_varianceB+residual_block_0/batch_normalization_1/betaB,residual_block_0/batch_normalization_1/gammaB2residual_block_0/batch_normalization_1/moving_meanB6residual_block_0/batch_normalization_1/moving_varianceBresidual_block_0/conv1d/biasBresidual_block_0/conv1d/kernelBresidual_block_0/conv1d_1/biasB residual_block_0/conv1d_1/kernel*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*X
_output_shapesF
D:::::::::::::::::
w
save/AssignAssignconv1d/biassave/RestoreV2*
T0*
_class
loc:@conv1d/bias*
_output_shapes
:

�
save/Assign_1Assignconv1d/kernelsave/RestoreV2:1* 
_class
loc:@conv1d/kernel*"
_output_shapes
:
*
T0
y
save/Assign_2Assign
dense/biassave/RestoreV2:2*
T0*
_class
loc:@dense/bias*
_output_shapes
:
�
save/Assign_3Assigndense/kernelsave/RestoreV2:3*
_class
loc:@dense/kernel*
_output_shapes

:
*
T0
w
save/Assign_4Assignglobal_stepsave/RestoreV2:4*
T0	*
_class
loc:@global_step*
_output_shapes
: 
�
save/Assign_5Assign)residual_block_0/batch_normalization/betasave/RestoreV2:5*<
_class2
0.loc:@residual_block_0/batch_normalization/beta*
_output_shapes
:
*
T0
�
save/Assign_6Assign*residual_block_0/batch_normalization/gammasave/RestoreV2:6*
T0*=
_class3
1/loc:@residual_block_0/batch_normalization/gamma*
_output_shapes
:

�
save/Assign_7Assign0residual_block_0/batch_normalization/moving_meansave/RestoreV2:7*
T0*C
_class9
75loc:@residual_block_0/batch_normalization/moving_mean*
_output_shapes
:

�
save/Assign_8Assign4residual_block_0/batch_normalization/moving_variancesave/RestoreV2:8*
_output_shapes
:
*
T0*G
_class=
;9loc:@residual_block_0/batch_normalization/moving_variance
�
save/Assign_9Assign+residual_block_0/batch_normalization_1/betasave/RestoreV2:9*
T0*>
_class4
20loc:@residual_block_0/batch_normalization_1/beta*
_output_shapes
:
�
save/Assign_10Assign,residual_block_0/batch_normalization_1/gammasave/RestoreV2:10*
_output_shapes
:*
T0*?
_class5
31loc:@residual_block_0/batch_normalization_1/gamma
�
save/Assign_11Assign2residual_block_0/batch_normalization_1/moving_meansave/RestoreV2:11*
T0*E
_class;
97loc:@residual_block_0/batch_normalization_1/moving_mean*
_output_shapes
:
�
save/Assign_12Assign6residual_block_0/batch_normalization_1/moving_variancesave/RestoreV2:12*
T0*I
_class?
=;loc:@residual_block_0/batch_normalization_1/moving_variance*
_output_shapes
:
�
save/Assign_13Assignresidual_block_0/conv1d/biassave/RestoreV2:13*/
_class%
#!loc:@residual_block_0/conv1d/bias*
_output_shapes
:*
T0
�
save/Assign_14Assignresidual_block_0/conv1d/kernelsave/RestoreV2:14*
T0*1
_class'
%#loc:@residual_block_0/conv1d/kernel*"
_output_shapes
:

�
save/Assign_15Assignresidual_block_0/conv1d_1/biassave/RestoreV2:15*
T0*1
_class'
%#loc:@residual_block_0/conv1d_1/bias*
_output_shapes
:

�
save/Assign_16Assign residual_block_0/conv1d_1/kernelsave/RestoreV2:16*"
_output_shapes
:
*
T0*3
_class)
'%loc:@residual_block_0/conv1d_1/kernel
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
trainable_variables��
k
conv1d/kernel:0conv1d/kernel/Assignconv1d/kernel/read:02*conv1d/kernel/Initializer/random_uniform:08
Z
conv1d/bias:0conv1d/bias/Assignconv1d/bias/read:02conv1d/bias/Initializer/zeros:08
�
,residual_block_0/batch_normalization/gamma:01residual_block_0/batch_normalization/gamma/Assign1residual_block_0/batch_normalization/gamma/read:02=residual_block_0/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_0/batch_normalization/beta:00residual_block_0/batch_normalization/beta/Assign0residual_block_0/batch_normalization/beta/read:02=residual_block_0/batch_normalization/beta/Initializer/zeros:08
�
 residual_block_0/conv1d/kernel:0%residual_block_0/conv1d/kernel/Assign%residual_block_0/conv1d/kernel/read:02;residual_block_0/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_0/conv1d/bias:0#residual_block_0/conv1d/bias/Assign#residual_block_0/conv1d/bias/read:020residual_block_0/conv1d/bias/Initializer/zeros:08
�
.residual_block_0/batch_normalization_1/gamma:03residual_block_0/batch_normalization_1/gamma/Assign3residual_block_0/batch_normalization_1/gamma/read:02?residual_block_0/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_0/batch_normalization_1/beta:02residual_block_0/batch_normalization_1/beta/Assign2residual_block_0/batch_normalization_1/beta/read:02?residual_block_0/batch_normalization_1/beta/Initializer/zeros:08
�
"residual_block_0/conv1d_1/kernel:0'residual_block_0/conv1d_1/kernel/Assign'residual_block_0/conv1d_1/kernel/read:02=residual_block_0/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_0/conv1d_1/bias:0%residual_block_0/conv1d_1/bias/Assign%residual_block_0/conv1d_1/bias/read:022residual_block_0/conv1d_1/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08"�
	variables��
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
k
conv1d/kernel:0conv1d/kernel/Assignconv1d/kernel/read:02*conv1d/kernel/Initializer/random_uniform:08
Z
conv1d/bias:0conv1d/bias/Assignconv1d/bias/read:02conv1d/bias/Initializer/zeros:08
�
,residual_block_0/batch_normalization/gamma:01residual_block_0/batch_normalization/gamma/Assign1residual_block_0/batch_normalization/gamma/read:02=residual_block_0/batch_normalization/gamma/Initializer/ones:08
�
+residual_block_0/batch_normalization/beta:00residual_block_0/batch_normalization/beta/Assign0residual_block_0/batch_normalization/beta/read:02=residual_block_0/batch_normalization/beta/Initializer/zeros:08
�
2residual_block_0/batch_normalization/moving_mean:07residual_block_0/batch_normalization/moving_mean/Assign7residual_block_0/batch_normalization/moving_mean/read:02Dresidual_block_0/batch_normalization/moving_mean/Initializer/zeros:0
�
6residual_block_0/batch_normalization/moving_variance:0;residual_block_0/batch_normalization/moving_variance/Assign;residual_block_0/batch_normalization/moving_variance/read:02Gresidual_block_0/batch_normalization/moving_variance/Initializer/ones:0
�
 residual_block_0/conv1d/kernel:0%residual_block_0/conv1d/kernel/Assign%residual_block_0/conv1d/kernel/read:02;residual_block_0/conv1d/kernel/Initializer/random_uniform:08
�
residual_block_0/conv1d/bias:0#residual_block_0/conv1d/bias/Assign#residual_block_0/conv1d/bias/read:020residual_block_0/conv1d/bias/Initializer/zeros:08
�
.residual_block_0/batch_normalization_1/gamma:03residual_block_0/batch_normalization_1/gamma/Assign3residual_block_0/batch_normalization_1/gamma/read:02?residual_block_0/batch_normalization_1/gamma/Initializer/ones:08
�
-residual_block_0/batch_normalization_1/beta:02residual_block_0/batch_normalization_1/beta/Assign2residual_block_0/batch_normalization_1/beta/read:02?residual_block_0/batch_normalization_1/beta/Initializer/zeros:08
�
4residual_block_0/batch_normalization_1/moving_mean:09residual_block_0/batch_normalization_1/moving_mean/Assign9residual_block_0/batch_normalization_1/moving_mean/read:02Fresidual_block_0/batch_normalization_1/moving_mean/Initializer/zeros:0
�
8residual_block_0/batch_normalization_1/moving_variance:0=residual_block_0/batch_normalization_1/moving_variance/Assign=residual_block_0/batch_normalization_1/moving_variance/read:02Iresidual_block_0/batch_normalization_1/moving_variance/Initializer/ones:0
�
"residual_block_0/conv1d_1/kernel:0'residual_block_0/conv1d_1/kernel/Assign'residual_block_0/conv1d_1/kernel/read:02=residual_block_0/conv1d_1/kernel/Initializer/random_uniform:08
�
 residual_block_0/conv1d_1/bias:0%residual_block_0/conv1d_1/bias/Assign%residual_block_0/conv1d_1/bias/read:022residual_block_0/conv1d_1/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps*�
serving_default�
C
sequence_length0
sequence_length_placeholder:0���������
W
sequenceK
'batched_one_hot_sequences_placeholder:0������������������-
label$
predictions:0���������tensorflow/serving/predict