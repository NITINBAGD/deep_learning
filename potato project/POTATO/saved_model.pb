зЗ 
щ»
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
Т
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758АО
И
random_rotation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_namerandom_rotation/StateVar
Б
,random_rotation/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation/StateVar*
_output_shapes
:*
dtype0	
А
random_zoom/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_zoom/StateVar
y
(random_zoom/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom/StateVar*
_output_shapes
:*
dtype0	
А
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
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
А
Adam/v/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_13/bias
y
(Adam/v/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_13/bias
y
(Adam/m/dense_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/bias*
_output_shapes
:*
dtype0
Й
Adam/v/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	*'
shared_nameAdam/v/dense_13/kernel
В
*Adam/v/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_13/kernel*
_output_shapes
:	А	*
dtype0
Й
Adam/m/dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	*'
shared_nameAdam/m/dense_13/kernel
В
*Adam/m/dense_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_13/kernel*
_output_shapes
:	А	*
dtype0
В
Adam/v/conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_63/bias
{
)Adam/v/conv2d_63/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_63/bias*
_output_shapes
: *
dtype0
В
Adam/m/conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_63/bias
{
)Adam/m/conv2d_63/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_63/bias*
_output_shapes
: *
dtype0
Т
Adam/v/conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/v/conv2d_63/kernel
Л
+Adam/v/conv2d_63/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_63/kernel*&
_output_shapes
:@ *
dtype0
Т
Adam/m/conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/m/conv2d_63/kernel
Л
+Adam/m/conv2d_63/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_63/kernel*&
_output_shapes
:@ *
dtype0
В
Adam/v/conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_62/bias
{
)Adam/v/conv2d_62/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_62/bias*
_output_shapes
:@*
dtype0
В
Adam/m/conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_62/bias
{
)Adam/m/conv2d_62/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_62/bias*
_output_shapes
:@*
dtype0
У
Adam/v/conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*(
shared_nameAdam/v/conv2d_62/kernel
М
+Adam/v/conv2d_62/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_62/kernel*'
_output_shapes
:А@*
dtype0
У
Adam/m/conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*(
shared_nameAdam/m/conv2d_62/kernel
М
+Adam/m/conv2d_62/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_62/kernel*'
_output_shapes
:А@*
dtype0
Г
Adam/v/conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/v/conv2d_61/bias
|
)Adam/v/conv2d_61/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_61/bias*
_output_shapes	
:А*
dtype0
Г
Adam/m/conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/m/conv2d_61/bias
|
)Adam/m/conv2d_61/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_61/bias*
_output_shapes	
:А*
dtype0
У
Adam/v/conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/v/conv2d_61/kernel
М
+Adam/v/conv2d_61/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_61/kernel*'
_output_shapes
:@А*
dtype0
У
Adam/m/conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/m/conv2d_61/kernel
М
+Adam/m/conv2d_61/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_61/kernel*'
_output_shapes
:@А*
dtype0
В
Adam/v/conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_60/bias
{
)Adam/v/conv2d_60/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_60/bias*
_output_shapes
:@*
dtype0
В
Adam/m/conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_60/bias
{
)Adam/m/conv2d_60/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_60/bias*
_output_shapes
:@*
dtype0
Т
Adam/v/conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_60/kernel
Л
+Adam/v/conv2d_60/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_60/kernel*&
_output_shapes
: @*
dtype0
Т
Adam/m/conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_60/kernel
Л
+Adam/m/conv2d_60/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_60/kernel*&
_output_shapes
: @*
dtype0
В
Adam/v/conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_59/bias
{
)Adam/v/conv2d_59/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_59/bias*
_output_shapes
: *
dtype0
В
Adam/m/conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_59/bias
{
)Adam/m/conv2d_59/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_59/bias*
_output_shapes
: *
dtype0
Т
Adam/v/conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/v/conv2d_59/kernel
Л
+Adam/v/conv2d_59/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_59/kernel*&
_output_shapes
: *
dtype0
Т
Adam/m/conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/m/conv2d_59/kernel
Л
+Adam/m/conv2d_59/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_59/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:*
dtype0
{
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	* 
shared_namedense_13/kernel
t
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes
:	А	*
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
: *
dtype0
Д
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:@*
dtype0
Е
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:А@*!
shared_nameconv2d_62/kernel
~
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*'
_output_shapes
:А@*
dtype0
u
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_61/bias
n
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes	
:А*
dtype0
Е
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_61/kernel
~
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*'
_output_shapes
:@А*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:@*
dtype0
Д
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_59/bias
m
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes
: *
dtype0
Д
conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_59/kernel
}
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*&
_output_shapes
: *
dtype0
Ч
 serving_default_sequential_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
Ь
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_13/kerneldense_13/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_29056

NoOpNoOp
чИ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*±И
value¶ИBҐИ BЪИ
Ґ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
®
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Ј
 layer-0
!layer-1
"layer-2
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
»
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*
О
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
»
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op*
О
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
»
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op*
О
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
»
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
 ^_jit_compiled_convolution_op*
О
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses* 
»
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op*
О
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
О
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
®
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
Аkernel
	Бbias*
\
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
А10
Б11*
\
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
А10
Б11*
* 
µ
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Зtrace_0
Иtrace_1
Йtrace_2
Кtrace_3* 
:
Лtrace_0
Мtrace_1
Нtrace_2
Оtrace_3* 
* 
И
П
_variables
Р_iterations
С_learning_rate
Т_index_dict
У
_momentums
Ф_velocities
Х_update_step_xla*

Цserving_default* 
Ф
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses* 
Ф
Э	variables
Юtrainable_variables
Яregularization_losses
†	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
:
®trace_0
©trace_1
™trace_2
Ђtrace_3* 
:
ђtrace_0
≠trace_1
Ѓtrace_2
ѓtrace_3* 
Ѓ
∞	variables
±trainable_variables
≤regularization_losses
≥	keras_api
і__call__
+µ&call_and_return_all_conditional_losses
ґ_random_generator*
Ѓ
Ј	variables
Єtrainable_variables
єregularization_losses
Ї	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses
љ_random_generator*
Ѓ
Њ	variables
њtrainable_variables
јregularization_losses
Ѕ	keras_api
¬__call__
+√&call_and_return_all_conditional_losses
ƒ_random_generator*
* 
* 
* 
Ш
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
:
 trace_0
Ћtrace_1
ћtrace_2
Ќtrace_3* 
:
ќtrace_0
ѕtrace_1
–trace_2
—trace_3* 

/0
01*

/0
01*
* 
Ш
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

„trace_0* 

Ўtrace_0* 
`Z
VARIABLE_VALUEconv2d_59/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_59/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

ёtrace_0* 

яtrace_0* 

>0
?1*

>0
?1*
* 
Ш
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

еtrace_0* 

жtrace_0* 
`Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 

M0
N1*

M0
N1*
* 
Ш
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
`Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

ъtrace_0* 

ыtrace_0* 

\0
]1*

\0
]1*
* 
Ш
ьnon_trainable_variables
эlayers
юmetrics
 €layer_regularization_losses
Аlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

Бtrace_0* 

Вtrace_0* 
`Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

Иtrace_0* 

Йtrace_0* 

k0
l1*

k0
l1*
* 
Ш
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

Пtrace_0* 

Рtrace_0* 
`Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

Цtrace_0* 

Чtrace_0* 
* 
* 
* 
Ц
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

Эtrace_0* 

Юtrace_0* 

А0
Б1*

А0
Б1*
* 
Ш
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

§trace_0* 

•trace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

¶0
І1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
џ
Р0
®1
©2
™3
Ђ4
ђ5
≠6
Ѓ7
ѓ8
∞9
±10
≤11
≥12
і13
µ14
ґ15
Ј16
Є17
є18
Ї19
ї20
Љ21
љ22
Њ23
њ24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
®0
™1
ђ2
Ѓ3
∞4
≤5
і6
ґ7
Є8
Ї9
Љ10
Њ11*
f
©0
Ђ1
≠2
ѓ3
±4
≥5
µ6
Ј7
є8
ї9
љ10
њ11*
* 
* 
* 
* 
* 
Ь
јnon_trainable_variables
Ѕlayers
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses* 

≈trace_0* 

∆trace_0* 
* 
* 
* 
Ь
«non_trainable_variables
»layers
…metrics
  layer_regularization_losses
Ћlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses* 

ћtrace_0* 

Ќtrace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ь
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
∞	variables
±trainable_variables
≤regularization_losses
і__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses* 

”trace_0
‘trace_1* 

’trace_0
÷trace_1* 

„
_generator*
* 
* 
* 
Ь
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
Ј	variables
Єtrainable_variables
єregularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses* 

Ёtrace_0
ёtrace_1* 

яtrace_0
аtrace_1* 

б
_generator*
* 
* 
* 
Ь
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Њ	variables
њtrainable_variables
јregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses* 

зtrace_0
иtrace_1* 

йtrace_0
кtrace_1* 

л
_generator*
* 

 0
!1
"2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
м	variables
н	keras_api

оtotal

пcount*
M
р	variables
с	keras_api

тtotal

уcount
ф
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_59/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_59/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_59/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_59/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_60/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_60/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_60/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_60/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_61/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_61/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_61/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_61/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_62/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_62/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_62/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_62/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_63/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_63/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_63/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_63/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_13/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_13/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_13/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_13/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

х
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

ц
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

ч
_state_var*

о0
п1*

м	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

т0
у1*

р	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Аz
VARIABLE_VALUErandom_flip/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUErandom_zoom/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUErandom_rotation/StateVarRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ќ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_13/kerneldense_13/bias	iterationlearning_rateAdam/m/conv2d_59/kernelAdam/v/conv2d_59/kernelAdam/m/conv2d_59/biasAdam/v/conv2d_59/biasAdam/m/conv2d_60/kernelAdam/v/conv2d_60/kernelAdam/m/conv2d_60/biasAdam/v/conv2d_60/biasAdam/m/conv2d_61/kernelAdam/v/conv2d_61/kernelAdam/m/conv2d_61/biasAdam/v/conv2d_61/biasAdam/m/conv2d_62/kernelAdam/v/conv2d_62/kernelAdam/m/conv2d_62/biasAdam/v/conv2d_62/biasAdam/m/conv2d_63/kernelAdam/v/conv2d_63/kernelAdam/m/conv2d_63/biasAdam/v/conv2d_63/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biastotal_1count_1totalcountrandom_flip/StateVarrandom_zoom/StateVarrandom_rotation/StateVarConst*:
Tin3
12/*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_30822
»	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_59/kernelconv2d_59/biasconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasdense_13/kerneldense_13/bias	iterationlearning_rateAdam/m/conv2d_59/kernelAdam/v/conv2d_59/kernelAdam/m/conv2d_59/biasAdam/v/conv2d_59/biasAdam/m/conv2d_60/kernelAdam/v/conv2d_60/kernelAdam/m/conv2d_60/biasAdam/v/conv2d_60/biasAdam/m/conv2d_61/kernelAdam/v/conv2d_61/kernelAdam/m/conv2d_61/biasAdam/v/conv2d_61/biasAdam/m/conv2d_62/kernelAdam/v/conv2d_62/kernelAdam/m/conv2d_62/biasAdam/v/conv2d_62/biasAdam/m/conv2d_63/kernelAdam/v/conv2d_63/kernelAdam/m/conv2d_63/biasAdam/v/conv2d_63/biasAdam/m/dense_13/kernelAdam/v/dense_13/kernelAdam/m/dense_13/biasAdam/v/dense_13/biastotal_1count_1totalcountrandom_flip/StateVarrandom_zoom/StateVarrandom_rotation/StateVar*9
Tin2
02.*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_30967ЩТ
£

х
C__inference_dense_13_layer_call_and_return_conditional_losses_30111

inputs1
matmul_readvariableop_resource:	А	-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_60_layer_call_fn_30075

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_28562Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_30050

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њА
√
J__inference_random_rotation_layer_call_and_return_conditional_losses_30510

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::нѕm
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ф
b
F__inference_random_flip_layer_call_and_return_conditional_losses_30262

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≈
E
)__inference_rescaling_layer_call_fn_30127

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27995j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
И
ю
D__inference_conv2d_62_layer_call_and_return_conditional_losses_30040

inputs9
conv2d_readvariableop_resource:А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_28526

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≠
_
C__inference_resizing_layer_call_and_return_conditional_losses_30122

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
М
€
D__inference_conv2d_61_layer_call_and_return_conditional_losses_30010

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€<<Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€<<Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
я
N
*__inference_sequential_layer_call_fn_28027
resizing_input
identity¬
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28024j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
∆

/__inference_random_rotation_layer_call_fn_30387

inputs
unknown:	
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_28392y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ф
b
F__inference_random_zoom_layer_call_and_return_conditional_losses_30380

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
И
ю
D__inference_conv2d_62_layer_call_and_return_conditional_losses_28645

inputs9
conv2d_readvariableop_resource:А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
м
i
E__inference_sequential_layer_call_and_return_conditional_losses_28004
resizing_input
identity…
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_27985ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27995t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
«
F
*__inference_sequential_layer_call_fn_29567

inputs
identityЇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28024j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
М
€
D__inference_conv2d_61_layer_call_and_return_conditional_losses_28627

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€<<Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€<<Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
ЮI
л	
H__inference_sequential_16_layer_call_and_return_conditional_losses_29557

inputsB
(conv2d_59_conv2d_readvariableop_resource: 7
)conv2d_59_biasadd_readvariableop_resource: B
(conv2d_60_conv2d_readvariableop_resource: @7
)conv2d_60_biasadd_readvariableop_resource:@C
(conv2d_61_conv2d_readvariableop_resource:@А8
)conv2d_61_biasadd_readvariableop_resource:	АC
(conv2d_62_conv2d_readvariableop_resource:А@7
)conv2d_62_biasadd_readvariableop_resource:@B
(conv2d_63_conv2d_readvariableop_resource:@ 7
)conv2d_63_biasadd_readvariableop_resource: :
'dense_13_matmul_readvariableop_resource:	А	6
(dense_13_biasadd_readvariableop_resource:
identityИҐ conv2d_59/BiasAdd/ReadVariableOpҐconv2d_59/Conv2D/ReadVariableOpҐ conv2d_60/BiasAdd/ReadVariableOpҐconv2d_60/Conv2D/ReadVariableOpҐ conv2d_61/BiasAdd/ReadVariableOpҐconv2d_61/Conv2D/ReadVariableOpҐ conv2d_62/BiasAdd/ReadVariableOpҐconv2d_62/Conv2D/ReadVariableOpҐ conv2d_63/BiasAdd/ReadVariableOpҐconv2d_63/Conv2D/ReadVariableOpҐdense_13/BiasAdd/ReadVariableOpҐdense_13/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      √
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААР
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0∆
conv2d_59/Conv2DConv2Dsequential/rescaling/add:z:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
Ж
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю n
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю Ѓ
max_pooling2d_56/MaxPoolMaxPoolconv2d_59/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0…
conv2d_60/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
Ж
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@l
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@Ѓ
max_pooling2d_57/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
С
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0 
conv2d_61/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<А*
paddingVALID*
strides
З
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<Аm
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€<<Аѓ
max_pooling2d_58/MaxPoolMaxPoolconv2d_61/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
С
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0…
conv2d_62/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_59/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0…
conv2d_63/Conv2DConv2D!max_pooling2d_59/MaxPool:output:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ж
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ l
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ≠
max_pooling2d_60/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  О
flatten_14/ReshapeReshape!max_pooling2d_60/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	З
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0Р
dense_13/MatMulMatMulflatten_14/Reshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€i
IdentityIdentitydense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€в
NoOpNoOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ц
`
D__inference_rescaling_layer_call_and_return_conditional_losses_30135

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
о
†
)__inference_conv2d_61_layer_call_fn_29999

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€<<А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_28627x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€<<А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€>>@
 
_user_specified_nameinputs
Т
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_30080

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
к
Ю
)__inference_conv2d_63_layer_call_fn_30059

inputs!
unknown:@ 
	unknown_0: 
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_28663w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
м
i
E__inference_sequential_layer_call_and_return_conditional_losses_27998
resizing_input
identity…
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_27985ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27995t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
ъ
n
G__inference_sequential_1_layer_call_and_return_conditional_losses_28416
random_flip_input
identity“
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_28403е
random_zoom/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_28408н
random_rotation/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_28413z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
Ш
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_28413

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_60_layer_call_and_return_conditional_losses_29980

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ґ8
ф
H__inference_sequential_16_layer_call_and_return_conditional_losses_28866

inputs)
conv2d_59_28829: 
conv2d_59_28831: )
conv2d_60_28835: @
conv2d_60_28837:@*
conv2d_61_28841:@А
conv2d_61_28843:	А*
conv2d_62_28847:А@
conv2d_62_28849:@)
conv2d_63_28853:@ 
conv2d_63_28855: !
dense_13_28860:	А	
dense_13_28862:
identityИҐ!conv2d_59/StatefulPartitionedCallҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCall≈
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28024ж
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28450Ъ
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_59_28829conv2d_59_28831*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_28591у
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_28514Ь
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_60_28835conv2d_60_28837*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_28609у
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_28526Э
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_61_28841conv2d_61_28843*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€<<А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_28627ф
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_28538Ь
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_62_28847conv2d_62_28849*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_28645у
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_28550Ь
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_63_28853conv2d_63_28855*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_28663у
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_28562я
flatten_14/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_28676К
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_13_28860dense_13_28862*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_28689x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Э
NoOpNoOp"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
—
K
/__inference_random_rotation_layer_call_fn_30392

inputs
identityњ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_28413j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ђ„
п
H__inference_sequential_16_layer_call_and_return_conditional_losses_29498

inputsX
Jsequential_1_random_flip_stateful_uniform_full_int_rngreadandskip_resource:	O
Asequential_1_random_zoom_stateful_uniform_rngreadandskip_resource:	S
Esequential_1_random_rotation_stateful_uniform_rngreadandskip_resource:	B
(conv2d_59_conv2d_readvariableop_resource: 7
)conv2d_59_biasadd_readvariableop_resource: B
(conv2d_60_conv2d_readvariableop_resource: @7
)conv2d_60_biasadd_readvariableop_resource:@C
(conv2d_61_conv2d_readvariableop_resource:@А8
)conv2d_61_biasadd_readvariableop_resource:	АC
(conv2d_62_conv2d_readvariableop_resource:А@7
)conv2d_62_biasadd_readvariableop_resource:@B
(conv2d_63_conv2d_readvariableop_resource:@ 7
)conv2d_63_biasadd_readvariableop_resource: :
'dense_13_matmul_readvariableop_resource:	А	6
(dense_13_biasadd_readvariableop_resource:
identityИҐ conv2d_59/BiasAdd/ReadVariableOpҐconv2d_59/Conv2D/ReadVariableOpҐ conv2d_60/BiasAdd/ReadVariableOpҐconv2d_60/Conv2D/ReadVariableOpҐ conv2d_61/BiasAdd/ReadVariableOpҐconv2d_61/Conv2D/ReadVariableOpҐ conv2d_62/BiasAdd/ReadVariableOpҐconv2d_62/Conv2D/ReadVariableOpҐ conv2d_63/BiasAdd/ReadVariableOpҐconv2d_63/Conv2D/ReadVariableOpҐdense_13/BiasAdd/ReadVariableOpҐdense_13/MatMul/ReadVariableOpҐAsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipҐCsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkipҐ<sequential_1/random_rotation/stateful_uniform/RngReadAndSkipҐ8sequential_1/random_zoom/stateful_uniform/RngReadAndSkipp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      √
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
8sequential_1/random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:В
8sequential_1/random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ж
7sequential_1/random_flip/stateful_uniform_full_int/ProdProdAsequential_1/random_flip/stateful_uniform_full_int/shape:output:0Asequential_1/random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9sequential_1/random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :≥
9sequential_1/random_flip/stateful_uniform_full_int/Cast_1Cast@sequential_1/random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Њ
Asequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipJsequential_1_random_flip_stateful_uniform_full_int_rngreadandskip_resourceBsequential_1/random_flip/stateful_uniform_full_int/Cast/x:output:0=sequential_1/random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Р
Fsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Т
Hsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
Hsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
@sequential_1/random_flip/stateful_uniform_full_int/strided_sliceStridedSliceIsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Osequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack:output:0Qsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Qsequential_1/random_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЅ
:sequential_1/random_flip/stateful_uniform_full_int/BitcastBitcastIsequential_1/random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Т
Hsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ф
Jsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
Jsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
Bsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1StridedSliceIsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Ssequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Ssequential_1/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:≈
<sequential_1/random_flip/stateful_uniform_full_int/Bitcast_1BitcastKsequential_1/random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6sequential_1/random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :О
2sequential_1/random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV2Asequential_1/random_flip/stateful_uniform_full_int/shape:output:0Esequential_1/random_flip/stateful_uniform_full_int/Bitcast_1:output:0Csequential_1/random_flip/stateful_uniform_full_int/Bitcast:output:0?sequential_1/random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#sequential_1/random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R √
sequential_1/random_flip/stackPack;sequential_1/random_flip/stateful_uniform_full_int:output:0,sequential_1/random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:}
,sequential_1/random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.sequential_1/random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.sequential_1/random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ф
&sequential_1/random_flip/strided_sliceStridedSlice'sequential_1/random_flip/stack:output:05sequential_1/random_flip/strided_slice/stack:output:07sequential_1/random_flip/strided_slice/stack_1:output:07sequential_1/random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskя
Lsequential_1/random_flip/stateless_random_flip_left_right/control_dependencyIdentitysequential/rescaling/add:z:0*
T0*+
_class!
loc:@sequential/rescaling/add*1
_output_shapes
:€€€€€€€€€АА“
?sequential_1/random_flip/stateless_random_flip_left_right/ShapeShapeUsequential_1/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕЧ
Msequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Щ
Osequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Щ
Osequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
Gsequential_1/random_flip/stateless_random_flip_left_right/strided_sliceStridedSliceHsequential_1/random_flip/stateless_random_flip_left_right/Shape:output:0Vsequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Xsequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Xsequential_1/random_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskа
Xsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackPsequential_1/random_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:Ы
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ы
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?в
osequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/sequential_1/random_flip/strided_slice:output:0* 
_output_shapes
::±
osequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ы
ksequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2asequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0usequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ysequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€ј
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subSub_sequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_sequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ё
Vsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMultsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€∆
Rsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Zsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_sequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Л
Isequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Л
Isequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Л
Isequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ћ
Gsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shapePackPsequential_1/random_flip/stateless_random_flip_left_right/strided_slice:output:0Rsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Rsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Rsequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:∞
Asequential_1/random_flip/stateless_random_flip_left_right/ReshapeReshapeVsequential_1/random_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Psequential_1/random_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ќ
?sequential_1/random_flip/stateless_random_flip_left_right/RoundRoundJsequential_1/random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
Hsequential_1/random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ґ
Csequential_1/random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Usequential_1/random_flip/stateless_random_flip_left_right/control_dependency:output:0Qsequential_1/random_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААУ
=sequential_1/random_flip/stateless_random_flip_left_right/mulMulCsequential_1/random_flip/stateless_random_flip_left_right/Round:y:0Lsequential_1/random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААД
?sequential_1/random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Н
=sequential_1/random_flip/stateless_random_flip_left_right/subSubHsequential_1/random_flip/stateless_random_flip_left_right/sub/x:output:0Csequential_1/random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
?sequential_1/random_flip/stateless_random_flip_left_right/mul_1MulAsequential_1/random_flip/stateless_random_flip_left_right/sub:z:0Usequential_1/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААК
=sequential_1/random_flip/stateless_random_flip_left_right/addAddV2Asequential_1/random_flip/stateless_random_flip_left_right/mul:z:0Csequential_1/random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ААД
:sequential_1/random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_1/random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: м
9sequential_1/random_flip/stateful_uniform_full_int_1/ProdProdCsequential_1/random_flip/stateful_uniform_full_int_1/shape:output:0Csequential_1/random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;sequential_1/random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ј
;sequential_1/random_flip/stateful_uniform_full_int_1/Cast_1CastBsequential_1/random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: И
Csequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipJsequential_1_random_flip_stateful_uniform_full_int_rngreadandskip_resourceDsequential_1/random_flip/stateful_uniform_full_int_1/Cast/x:output:0?sequential_1/random_flip/stateful_uniform_full_int_1/Cast_1:y:0B^sequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Т
Hsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ф
Jsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
Jsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
Bsequential_1/random_flip/stateful_uniform_full_int_1/strided_sliceStridedSliceKsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Ssequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Ssequential_1/random_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask≈
<sequential_1/random_flip/stateful_uniform_full_int_1/BitcastBitcastKsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ф
Jsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц
Lsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
Lsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
Dsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSliceKsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Ssequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Usequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Usequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:…
>sequential_1/random_flip/stateful_uniform_full_int_1/Bitcast_1BitcastMsequential_1/random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8sequential_1/random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ш
4sequential_1/random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Csequential_1/random_flip/stateful_uniform_full_int_1/shape:output:0Gsequential_1/random_flip/stateful_uniform_full_int_1/Bitcast_1:output:0Esequential_1/random_flip/stateful_uniform_full_int_1/Bitcast:output:0Asequential_1/random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%sequential_1/random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R …
 sequential_1/random_flip/stack_1Pack=sequential_1/random_flip/stateful_uniform_full_int_1:output:0.sequential_1/random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.sequential_1/random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0sequential_1/random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Б
0sequential_1/random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ю
(sequential_1/random_flip/strided_slice_1StridedSlice)sequential_1/random_flip/stack_1:output:07sequential_1/random_flip/strided_slice_1/stack:output:09sequential_1/random_flip/strided_slice_1/stack_1:output:09sequential_1/random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask¶
Isequential_1/random_flip/stateless_random_flip_up_down/control_dependencyIdentityAsequential_1/random_flip/stateless_random_flip_left_right/add:z:0*
T0*P
_classF
DBloc:@sequential_1/random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€ААћ
<sequential_1/random_flip/stateless_random_flip_up_down/ShapeShapeRsequential_1/random_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕФ
Jsequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ц
Lsequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
Lsequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:д
Dsequential_1/random_flip/stateless_random_flip_up_down/strided_sliceStridedSliceEsequential_1/random_flip/stateless_random_flip_up_down/Shape:output:0Ssequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Usequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Usequential_1/random_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЏ
Usequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePackMsequential_1/random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Ш
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ш
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?б
lsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1sequential_1/random_flip/strided_slice_1:output:0* 
_output_shapes
::Ѓ
lsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :м
hsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0usequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Ј
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/subSub\sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ‘
Ssequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMulqsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€љ
Osequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Wsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\sequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€И
Fsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :И
Fsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :И
Fsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Љ
Dsequential_1/random_flip/stateless_random_flip_up_down/Reshape/shapePackMsequential_1/random_flip/stateless_random_flip_up_down/strided_slice:output:0Osequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Osequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Osequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:І
>sequential_1/random_flip/stateless_random_flip_up_down/ReshapeReshapeSsequential_1/random_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0Msequential_1/random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€»
<sequential_1/random_flip/stateless_random_flip_up_down/RoundRoundGsequential_1/random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€П
Esequential_1/random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:≠
@sequential_1/random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Rsequential_1/random_flip/stateless_random_flip_up_down/control_dependency:output:0Nsequential_1/random_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААК
:sequential_1/random_flip/stateless_random_flip_up_down/mulMul@sequential_1/random_flip/stateless_random_flip_up_down/Round:y:0Isequential_1/random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААБ
<sequential_1/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Д
:sequential_1/random_flip/stateless_random_flip_up_down/subSubEsequential_1/random_flip/stateless_random_flip_up_down/sub/x:output:0@sequential_1/random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€У
<sequential_1/random_flip/stateless_random_flip_up_down/mul_1Mul>sequential_1/random_flip/stateless_random_flip_up_down/sub:z:0Rsequential_1/random_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААБ
:sequential_1/random_flip/stateless_random_flip_up_down/addAddV2>sequential_1/random_flip/stateless_random_flip_up_down/mul:z:0@sequential_1/random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ААЪ
sequential_1/random_zoom/ShapeShape>sequential_1/random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::нѕv
,sequential_1/random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_1/random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_1/random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&sequential_1/random_zoom/strided_sliceStridedSlice'sequential_1/random_zoom/Shape:output:05sequential_1/random_zoom/strided_slice/stack:output:07sequential_1/random_zoom/strided_slice/stack_1:output:07sequential_1/random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
.sequential_1/random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€Г
0sequential_1/random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€z
0sequential_1/random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(sequential_1/random_zoom/strided_slice_1StridedSlice'sequential_1/random_zoom/Shape:output:07sequential_1/random_zoom/strided_slice_1/stack:output:09sequential_1/random_zoom/strided_slice_1/stack_1:output:09sequential_1/random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
sequential_1/random_zoom/CastCast1sequential_1/random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Б
.sequential_1/random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Г
0sequential_1/random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€z
0sequential_1/random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
(sequential_1/random_zoom/strided_slice_2StridedSlice'sequential_1/random_zoom/Shape:output:07sequential_1/random_zoom/strided_slice_2/stack:output:09sequential_1/random_zoom/strided_slice_2/stack_1:output:09sequential_1/random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskК
sequential_1/random_zoom/Cast_1Cast1sequential_1/random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: s
1sequential_1/random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :“
/sequential_1/random_zoom/stateful_uniform/shapePack/sequential_1/random_zoom/strided_slice:output:0:sequential_1/random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:r
-sequential_1/random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?r
-sequential_1/random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ?y
/sequential_1/random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ћ
.sequential_1/random_zoom/stateful_uniform/ProdProd8sequential_1/random_zoom/stateful_uniform/shape:output:08sequential_1/random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: r
0sequential_1/random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :°
0sequential_1/random_zoom/stateful_uniform/Cast_1Cast7sequential_1/random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ъ
8sequential_1/random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkipAsequential_1_random_zoom_stateful_uniform_rngreadandskip_resource9sequential_1/random_zoom/stateful_uniform/Cast/x:output:04sequential_1/random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:З
=sequential_1/random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?sequential_1/random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?sequential_1/random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
7sequential_1/random_zoom/stateful_uniform/strided_sliceStridedSlice@sequential_1/random_zoom/stateful_uniform/RngReadAndSkip:value:0Fsequential_1/random_zoom/stateful_uniform/strided_slice/stack:output:0Hsequential_1/random_zoom/stateful_uniform/strided_slice/stack_1:output:0Hsequential_1/random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskѓ
1sequential_1/random_zoom/stateful_uniform/BitcastBitcast@sequential_1/random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Й
?sequential_1/random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Л
Asequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Asequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
9sequential_1/random_zoom/stateful_uniform/strided_slice_1StridedSlice@sequential_1/random_zoom/stateful_uniform/RngReadAndSkip:value:0Hsequential_1/random_zoom/stateful_uniform/strided_slice_1/stack:output:0Jsequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0Jsequential_1/random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:≥
3sequential_1/random_zoom/stateful_uniform/Bitcast_1BitcastBsequential_1/random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0И
Fsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :М
Bsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV28sequential_1/random_zoom/stateful_uniform/shape:output:0<sequential_1/random_zoom/stateful_uniform/Bitcast_1:output:0:sequential_1/random_zoom/stateful_uniform/Bitcast:output:0Osequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€≈
-sequential_1/random_zoom/stateful_uniform/subSub6sequential_1/random_zoom/stateful_uniform/max:output:06sequential_1/random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: ж
-sequential_1/random_zoom/stateful_uniform/mulMulKsequential_1/random_zoom/stateful_uniform/StatelessRandomUniformV2:output:01sequential_1/random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€ѕ
)sequential_1/random_zoom/stateful_uniformAddV21sequential_1/random_zoom/stateful_uniform/mul:z:06sequential_1/random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€f
$sequential_1/random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :у
sequential_1/random_zoom/concatConcatV2-sequential_1/random_zoom/stateful_uniform:z:0-sequential_1/random_zoom/stateful_uniform:z:0-sequential_1/random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Р
*sequential_1/random_zoom/zoom_matrix/ShapeShape(sequential_1/random_zoom/concat:output:0*
T0*
_output_shapes
::нѕВ
8sequential_1/random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Д
:sequential_1/random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_1/random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
2sequential_1/random_zoom/zoom_matrix/strided_sliceStridedSlice3sequential_1/random_zoom/zoom_matrix/Shape:output:0Asequential_1/random_zoom/zoom_matrix/strided_slice/stack:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice/stack_1:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
*sequential_1/random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?™
(sequential_1/random_zoom/zoom_matrix/subSub#sequential_1/random_zoom/Cast_1:y:03sequential_1/random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: s
.sequential_1/random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @њ
,sequential_1/random_zoom/zoom_matrix/truedivRealDiv,sequential_1/random_zoom/zoom_matrix/sub:z:07sequential_1/random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: П
:sequential_1/random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            С
<sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           С
<sequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ѕ
4sequential_1/random_zoom/zoom_matrix/strided_slice_1StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_1/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskq
,sequential_1/random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ў
*sequential_1/random_zoom/zoom_matrix/sub_1Sub5sequential_1/random_zoom/zoom_matrix/sub_1/x:output:0=sequential_1/random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€√
(sequential_1/random_zoom/zoom_matrix/mulMul0sequential_1/random_zoom/zoom_matrix/truediv:z:0.sequential_1/random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€q
,sequential_1/random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ђ
*sequential_1/random_zoom/zoom_matrix/sub_2Sub!sequential_1/random_zoom/Cast:y:05sequential_1/random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: u
0sequential_1/random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @≈
.sequential_1/random_zoom/zoom_matrix/truediv_1RealDiv.sequential_1/random_zoom/zoom_matrix/sub_2:z:09sequential_1/random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: П
:sequential_1/random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           С
<sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           С
<sequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ѕ
4sequential_1/random_zoom/zoom_matrix/strided_slice_2StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_2/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskq
,sequential_1/random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ў
*sequential_1/random_zoom/zoom_matrix/sub_3Sub5sequential_1/random_zoom/zoom_matrix/sub_3/x:output:0=sequential_1/random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€«
*sequential_1/random_zoom/zoom_matrix/mul_1Mul2sequential_1/random_zoom/zoom_matrix/truediv_1:z:0.sequential_1/random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€П
:sequential_1/random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            С
<sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           С
<sequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ѕ
4sequential_1/random_zoom/zoom_matrix/strided_slice_3StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_3/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masku
3sequential_1/random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :в
1sequential_1/random_zoom/zoom_matrix/zeros/packedPack;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0<sequential_1/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0sequential_1/random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    џ
*sequential_1/random_zoom/zoom_matrix/zerosFill:sequential_1/random_zoom/zoom_matrix/zeros/packed:output:09sequential_1/random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€w
5sequential_1/random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ж
3sequential_1/random_zoom/zoom_matrix/zeros_1/packedPack;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0>sequential_1/random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:w
2sequential_1/random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_1/random_zoom/zoom_matrix/zeros_1Fill<sequential_1/random_zoom/zoom_matrix/zeros_1/packed:output:0;sequential_1/random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€П
:sequential_1/random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           С
<sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           С
<sequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ѕ
4sequential_1/random_zoom/zoom_matrix/strided_slice_4StridedSlice(sequential_1/random_zoom/concat:output:0Csequential_1/random_zoom/zoom_matrix/strided_slice_4/stack:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_1:output:0Esequential_1/random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskw
5sequential_1/random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ж
3sequential_1/random_zoom/zoom_matrix/zeros_2/packedPack;sequential_1/random_zoom/zoom_matrix/strided_slice:output:0>sequential_1/random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:w
2sequential_1/random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_1/random_zoom/zoom_matrix/zeros_2Fill<sequential_1/random_zoom/zoom_matrix/zeros_2/packed:output:0;sequential_1/random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€r
0sequential_1/random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ђ
+sequential_1/random_zoom/zoom_matrix/concatConcatV2=sequential_1/random_zoom/zoom_matrix/strided_slice_3:output:03sequential_1/random_zoom/zoom_matrix/zeros:output:0,sequential_1/random_zoom/zoom_matrix/mul:z:05sequential_1/random_zoom/zoom_matrix/zeros_1:output:0=sequential_1/random_zoom/zoom_matrix/strided_slice_4:output:0.sequential_1/random_zoom/zoom_matrix/mul_1:z:05sequential_1/random_zoom/zoom_matrix/zeros_2:output:09sequential_1/random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€§
(sequential_1/random_zoom/transform/ShapeShape>sequential_1/random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::нѕА
6sequential_1/random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:В
8sequential_1/random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8sequential_1/random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
0sequential_1/random_zoom/transform/strided_sliceStridedSlice1sequential_1/random_zoom/transform/Shape:output:0?sequential_1/random_zoom/transform/strided_slice/stack:output:0Asequential_1/random_zoom/transform/strided_slice/stack_1:output:0Asequential_1/random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:r
-sequential_1/random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    є
=sequential_1/random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3>sequential_1/random_flip/stateless_random_flip_up_down/add:z:04sequential_1/random_zoom/zoom_matrix/concat:output:09sequential_1/random_zoom/transform/strided_slice:output:06sequential_1/random_zoom/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR≤
"sequential_1/random_rotation/ShapeShapeRsequential_1/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::нѕz
0sequential_1/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_1/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_1/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*sequential_1/random_rotation/strided_sliceStridedSlice+sequential_1/random_rotation/Shape:output:09sequential_1/random_rotation/strided_slice/stack:output:0;sequential_1/random_rotation/strided_slice/stack_1:output:0;sequential_1/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
2sequential_1/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€З
4sequential_1/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€~
4sequential_1/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
,sequential_1/random_rotation/strided_slice_1StridedSlice+sequential_1/random_rotation/Shape:output:0;sequential_1/random_rotation/strided_slice_1/stack:output:0=sequential_1/random_rotation/strided_slice_1/stack_1:output:0=sequential_1/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
!sequential_1/random_rotation/CastCast5sequential_1/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Е
2sequential_1/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€З
4sequential_1/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€~
4sequential_1/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
,sequential_1/random_rotation/strided_slice_2StridedSlice+sequential_1/random_rotation/Shape:output:0;sequential_1/random_rotation/strided_slice_2/stack:output:0=sequential_1/random_rotation/strided_slice_2/stack_1:output:0=sequential_1/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
#sequential_1/random_rotation/Cast_1Cast5sequential_1/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Ю
3sequential_1/random_rotation/stateful_uniform/shapePack3sequential_1/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:v
1sequential_1/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њv
1sequential_1/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?}
3sequential_1/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: „
2sequential_1/random_rotation/stateful_uniform/ProdProd<sequential_1/random_rotation/stateful_uniform/shape:output:0<sequential_1/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: v
4sequential_1/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :©
4sequential_1/random_rotation/stateful_uniform/Cast_1Cast;sequential_1/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ™
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipEsequential_1_random_rotation_stateful_uniform_rngreadandskip_resource=sequential_1/random_rotation/stateful_uniform/Cast/x:output:08sequential_1/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:Л
Asequential_1/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Н
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Н
Csequential_1/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
;sequential_1/random_rotation/stateful_uniform/strided_sliceStridedSliceDsequential_1/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential_1/random_rotation/stateful_uniform/strided_slice/stack:output:0Lsequential_1/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Lsequential_1/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЈ
5sequential_1/random_rotation/stateful_uniform/BitcastBitcastDsequential_1/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Н
Csequential_1/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:П
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:П
Esequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
=sequential_1/random_rotation/stateful_uniform/strided_slice_1StridedSliceDsequential_1/random_rotation/stateful_uniform/RngReadAndSkip:value:0Lsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Nsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Nsequential_1/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ї
7sequential_1/random_rotation/stateful_uniform/Bitcast_1BitcastFsequential_1/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0М
Jsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ь
Fsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2<sequential_1/random_rotation/stateful_uniform/shape:output:0@sequential_1/random_rotation/stateful_uniform/Bitcast_1:output:0>sequential_1/random_rotation/stateful_uniform/Bitcast:output:0Ssequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€—
1sequential_1/random_rotation/stateful_uniform/subSub:sequential_1/random_rotation/stateful_uniform/max:output:0:sequential_1/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: о
1sequential_1/random_rotation/stateful_uniform/mulMulOsequential_1/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:05sequential_1/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€„
-sequential_1/random_rotation/stateful_uniformAddV25sequential_1/random_rotation/stateful_uniform/mul:z:0:sequential_1/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€w
2sequential_1/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Њ
0sequential_1/random_rotation/rotation_matrix/subSub'sequential_1/random_rotation/Cast_1:y:0;sequential_1/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: Ш
0sequential_1/random_rotation/rotation_matrix/CosCos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€y
4sequential_1/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
2sequential_1/random_rotation/rotation_matrix/sub_1Sub'sequential_1/random_rotation/Cast_1:y:0=sequential_1/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ”
0sequential_1/random_rotation/rotation_matrix/mulMul4sequential_1/random_rotation/rotation_matrix/Cos:y:06sequential_1/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ш
0sequential_1/random_rotation/rotation_matrix/SinSin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€y
4sequential_1/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ј
2sequential_1/random_rotation/rotation_matrix/sub_2Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ’
2sequential_1/random_rotation/rotation_matrix/mul_1Mul4sequential_1/random_rotation/rotation_matrix/Sin:y:06sequential_1/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€’
2sequential_1/random_rotation/rotation_matrix/sub_3Sub4sequential_1/random_rotation/rotation_matrix/mul:z:06sequential_1/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€’
2sequential_1/random_rotation/rotation_matrix/sub_4Sub4sequential_1/random_rotation/rotation_matrix/sub:z:06sequential_1/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_1/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ж
4sequential_1/random_rotation/rotation_matrix/truedivRealDiv6sequential_1/random_rotation/rotation_matrix/sub_4:z:0?sequential_1/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€y
4sequential_1/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ј
2sequential_1/random_rotation/rotation_matrix/sub_5Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Ъ
2sequential_1/random_rotation/rotation_matrix/Sin_1Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€y
4sequential_1/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
2sequential_1/random_rotation/rotation_matrix/sub_6Sub'sequential_1/random_rotation/Cast_1:y:0=sequential_1/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: „
2sequential_1/random_rotation/rotation_matrix/mul_2Mul6sequential_1/random_rotation/rotation_matrix/Sin_1:y:06sequential_1/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ъ
2sequential_1/random_rotation/rotation_matrix/Cos_1Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€y
4sequential_1/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ј
2sequential_1/random_rotation/rotation_matrix/sub_7Sub%sequential_1/random_rotation/Cast:y:0=sequential_1/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: „
2sequential_1/random_rotation/rotation_matrix/mul_3Mul6sequential_1/random_rotation/rotation_matrix/Cos_1:y:06sequential_1/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€„
0sequential_1/random_rotation/rotation_matrix/addAddV26sequential_1/random_rotation/rotation_matrix/mul_2:z:06sequential_1/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€’
2sequential_1/random_rotation/rotation_matrix/sub_8Sub6sequential_1/random_rotation/rotation_matrix/sub_5:z:04sequential_1/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_1/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
6sequential_1/random_rotation/rotation_matrix/truediv_1RealDiv6sequential_1/random_rotation/rotation_matrix/sub_8:z:0Asequential_1/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€°
2sequential_1/random_rotation/rotation_matrix/ShapeShape1sequential_1/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::нѕК
@sequential_1/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: М
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
Bsequential_1/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≤
:sequential_1/random_rotation/rotation_matrix/strided_sliceStridedSlice;sequential_1/random_rotation/rotation_matrix/Shape:output:0Isequential_1/random_rotation/rotation_matrix/strided_slice/stack:output:0Ksequential_1/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Ksequential_1/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЪ
2sequential_1/random_rotation/rotation_matrix/Cos_2Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€У
Bsequential_1/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
<sequential_1/random_rotation/rotation_matrix/strided_slice_1StridedSlice6sequential_1/random_rotation/rotation_matrix/Cos_2:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЪ
2sequential_1/random_rotation/rotation_matrix/Sin_2Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€У
Bsequential_1/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
<sequential_1/random_rotation/rotation_matrix/strided_slice_2StridedSlice6sequential_1/random_rotation/rotation_matrix/Sin_2:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask∞
0sequential_1/random_rotation/rotation_matrix/NegNegEsequential_1/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€У
Bsequential_1/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
<sequential_1/random_rotation/rotation_matrix/strided_slice_3StridedSlice8sequential_1/random_rotation/rotation_matrix/truediv:z:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЪ
2sequential_1/random_rotation/rotation_matrix/Sin_3Sin1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€У
Bsequential_1/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
<sequential_1/random_rotation/rotation_matrix/strided_slice_4StridedSlice6sequential_1/random_rotation/rotation_matrix/Sin_3:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЪ
2sequential_1/random_rotation/rotation_matrix/Cos_3Cos1sequential_1/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€У
Bsequential_1/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      е
<sequential_1/random_rotation/rotation_matrix/strided_slice_5StridedSlice6sequential_1/random_rotation/rotation_matrix/Cos_3:y:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskУ
Bsequential_1/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Х
Dsequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
<sequential_1/random_rotation/rotation_matrix/strided_slice_6StridedSlice:sequential_1/random_rotation/rotation_matrix/truediv_1:z:0Ksequential_1/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Msequential_1/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask}
;sequential_1/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ъ
9sequential_1/random_rotation/rotation_matrix/zeros/packedPackCsequential_1/random_rotation/rotation_matrix/strided_slice:output:0Dsequential_1/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:}
8sequential_1/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    у
2sequential_1/random_rotation/rotation_matrix/zerosFillBsequential_1/random_rotation/rotation_matrix/zeros/packed:output:0Asequential_1/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€z
8sequential_1/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :У
3sequential_1/random_rotation/rotation_matrix/concatConcatV2Esequential_1/random_rotation/rotation_matrix/strided_slice_1:output:04sequential_1/random_rotation/rotation_matrix/Neg:y:0Esequential_1/random_rotation/rotation_matrix/strided_slice_3:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_4:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_5:output:0Esequential_1/random_rotation/rotation_matrix/strided_slice_6:output:0;sequential_1/random_rotation/rotation_matrix/zeros:output:0Asequential_1/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Љ
,sequential_1/random_rotation/transform/ShapeShapeRsequential_1/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::нѕД
:sequential_1/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Ж
<sequential_1/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ж
<sequential_1/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
4sequential_1/random_rotation/transform/strided_sliceStridedSlice5sequential_1/random_rotation/transform/Shape:output:0Csequential_1/random_rotation/transform/strided_slice/stack:output:0Esequential_1/random_rotation/transform/strided_slice/stack_1:output:0Esequential_1/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:v
1sequential_1/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    б
Asequential_1/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Rsequential_1/random_zoom/transform/ImageProjectiveTransformV3:transformed_images:0<sequential_1/random_rotation/rotation_matrix/concat:output:0=sequential_1/random_rotation/transform/strided_slice:output:0:sequential_1/random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARР
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0А
conv2d_59/Conv2DConv2DVsequential_1/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
Ж
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Э
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю n
conv2d_59/ReluReluconv2d_59/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю Ѓ
max_pooling2d_56/MaxPoolMaxPoolconv2d_59/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0…
conv2d_60/Conv2DConv2D!max_pooling2d_56/MaxPool:output:0'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
Ж
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@l
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@Ѓ
max_pooling2d_57/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
С
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0 
conv2d_61/Conv2DConv2D!max_pooling2d_57/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<А*
paddingVALID*
strides
З
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<Аm
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€<<Аѓ
max_pooling2d_58/MaxPoolMaxPoolconv2d_61/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
С
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0…
conv2d_62/Conv2DConv2D!max_pooling2d_58/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ж
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_59/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Р
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0…
conv2d_63/Conv2DConv2D!max_pooling2d_59/MaxPool:output:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ж
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ l
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ≠
max_pooling2d_60/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
a
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  О
flatten_14/ReshapeReshape!max_pooling2d_60/MaxPool:output:0flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	З
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0Р
dense_13/MatMulMatMulflatten_14/Reshape:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€i
IdentityIdentitydense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ж
NoOpNoOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOpB^sequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipD^sequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip=^sequential_1/random_rotation/stateful_uniform/RngReadAndSkip9^sequential_1/random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€АА: : : : : : : : : : : : : : : 2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2Ж
Asequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkipAsequential_1/random_flip/stateful_uniform_full_int/RngReadAndSkip2К
Csequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkipCsequential_1/random_flip/stateful_uniform_full_int_1/RngReadAndSkip2|
<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip<sequential_1/random_rotation/stateful_uniform/RngReadAndSkip2t
8sequential_1/random_zoom/stateful_uniform/RngReadAndSkip8sequential_1/random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Д
э
D__inference_conv2d_60_layer_call_and_return_conditional_losses_28609

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Х
c
G__inference_sequential_1_layer_call_and_return_conditional_losses_29930

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
м
S
,__inference_sequential_1_layer_call_fn_28453
random_flip_input
identity«
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28450j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
Д
э
D__inference_conv2d_63_layer_call_and_return_conditional_losses_30070

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
‘8
ю
H__inference_sequential_16_layer_call_and_return_conditional_losses_28738
sequential_input)
conv2d_59_28701: 
conv2d_59_28703: )
conv2d_60_28707: @
conv2d_60_28709:@*
conv2d_61_28713:@А
conv2d_61_28715:	А*
conv2d_62_28719:А@
conv2d_62_28721:@)
conv2d_63_28725:@ 
conv2d_63_28727: !
dense_13_28732:	А	
dense_13_28734:
identityИҐ!conv2d_59/StatefulPartitionedCallҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallѕ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28024ж
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28450Ъ
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_59_28701conv2d_59_28703*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_28591у
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_28514Ь
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_60_28707conv2d_60_28709*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_28609у
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_28526Э
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_61_28713conv2d_61_28715*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€<<А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_28627ф
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_28538Ь
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_62_28719conv2d_62_28721*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_28645у
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_28550Ь
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_63_28725conv2d_63_28727*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_28663у
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_28562я
flatten_14/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_28676К
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_13_28732dense_13_28734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_28689x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Э
NoOpNoOp"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Р
э
D__inference_conv2d_59_layer_call_and_return_conditional_losses_28591

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€юю w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
н
Я
)__inference_conv2d_62_layer_call_fn_30029

inputs"
unknown:А@
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_28645w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_29577

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ≠
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ќ
я
-__inference_sequential_16_layer_call_fn_28893
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А$
	unknown_5:А@
	unknown_6:@#
	unknown_7:@ 
	unknown_8: 
	unknown_9:	А	

unknown_10:
identityИҐStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_28866o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
«
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_30091

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
«
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_28676

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
«∆
џ)
__inference__traced_save_30822
file_prefixA
'read_disablecopyonread_conv2d_59_kernel: 5
'read_1_disablecopyonread_conv2d_59_bias: C
)read_2_disablecopyonread_conv2d_60_kernel: @5
'read_3_disablecopyonread_conv2d_60_bias:@D
)read_4_disablecopyonread_conv2d_61_kernel:@А6
'read_5_disablecopyonread_conv2d_61_bias:	АD
)read_6_disablecopyonread_conv2d_62_kernel:А@5
'read_7_disablecopyonread_conv2d_62_bias:@C
)read_8_disablecopyonread_conv2d_63_kernel:@ 5
'read_9_disablecopyonread_conv2d_63_bias: <
)read_10_disablecopyonread_dense_13_kernel:	А	5
'read_11_disablecopyonread_dense_13_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: K
1read_14_disablecopyonread_adam_m_conv2d_59_kernel: K
1read_15_disablecopyonread_adam_v_conv2d_59_kernel: =
/read_16_disablecopyonread_adam_m_conv2d_59_bias: =
/read_17_disablecopyonread_adam_v_conv2d_59_bias: K
1read_18_disablecopyonread_adam_m_conv2d_60_kernel: @K
1read_19_disablecopyonread_adam_v_conv2d_60_kernel: @=
/read_20_disablecopyonread_adam_m_conv2d_60_bias:@=
/read_21_disablecopyonread_adam_v_conv2d_60_bias:@L
1read_22_disablecopyonread_adam_m_conv2d_61_kernel:@АL
1read_23_disablecopyonread_adam_v_conv2d_61_kernel:@А>
/read_24_disablecopyonread_adam_m_conv2d_61_bias:	А>
/read_25_disablecopyonread_adam_v_conv2d_61_bias:	АL
1read_26_disablecopyonread_adam_m_conv2d_62_kernel:А@L
1read_27_disablecopyonread_adam_v_conv2d_62_kernel:А@=
/read_28_disablecopyonread_adam_m_conv2d_62_bias:@=
/read_29_disablecopyonread_adam_v_conv2d_62_bias:@K
1read_30_disablecopyonread_adam_m_conv2d_63_kernel:@ K
1read_31_disablecopyonread_adam_v_conv2d_63_kernel:@ =
/read_32_disablecopyonread_adam_m_conv2d_63_bias: =
/read_33_disablecopyonread_adam_v_conv2d_63_bias: C
0read_34_disablecopyonread_adam_m_dense_13_kernel:	А	C
0read_35_disablecopyonread_adam_v_dense_13_kernel:	А	<
.read_36_disablecopyonread_adam_m_dense_13_bias:<
.read_37_disablecopyonread_adam_v_dense_13_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: <
.read_42_disablecopyonread_random_flip_statevar:	<
.read_43_disablecopyonread_random_zoom_statevar:	@
2read_44_disablecopyonread_random_rotation_statevar:	
savev2_const
identity_91ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_59_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_59_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_59_bias"/device:CPU:0*
_output_shapes
 £
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_59_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_60_kernel"/device:CPU:0*
_output_shapes
 ±
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_60_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_60_bias"/device:CPU:0*
_output_shapes
 £
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_60_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_61_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_61_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0v

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аl

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*'
_output_shapes
:@А{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_61_bias"/device:CPU:0*
_output_shapes
 §
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_61_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_62_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_62_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_62_bias"/device:CPU:0*
_output_shapes
 £
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_62_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_63_kernel"/device:CPU:0*
_output_shapes
 ±
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_63_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ {
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_63_bias"/device:CPU:0*
_output_shapes
 £
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_63_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_dense_13_kernel"/device:CPU:0*
_output_shapes
 ђ
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_dense_13_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А	*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А	f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А	|
Read_11/DisableCopyOnReadDisableCopyOnRead'read_11_disablecopyonread_dense_13_bias"/device:CPU:0*
_output_shapes
 •
Read_11/ReadVariableOpReadVariableOp'read_11_disablecopyonread_dense_13_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_14/DisableCopyOnReadDisableCopyOnRead1read_14_disablecopyonread_adam_m_conv2d_59_kernel"/device:CPU:0*
_output_shapes
 ї
Read_14/ReadVariableOpReadVariableOp1read_14_disablecopyonread_adam_m_conv2d_59_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ж
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_adam_v_conv2d_59_kernel"/device:CPU:0*
_output_shapes
 ї
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_adam_v_conv2d_59_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
: Д
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_conv2d_59_bias"/device:CPU:0*
_output_shapes
 ≠
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_conv2d_59_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_conv2d_59_bias"/device:CPU:0*
_output_shapes
 ≠
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_conv2d_59_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv2d_60_kernel"/device:CPU:0*
_output_shapes
 ї
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv2d_60_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Ж
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv2d_60_kernel"/device:CPU:0*
_output_shapes
 ї
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv2d_60_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Д
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv2d_60_bias"/device:CPU:0*
_output_shapes
 ≠
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv2d_60_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv2d_60_bias"/device:CPU:0*
_output_shapes
 ≠
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv2d_60_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_22/DisableCopyOnReadDisableCopyOnRead1read_22_disablecopyonread_adam_m_conv2d_61_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_22/ReadVariableOpReadVariableOp1read_22_disablecopyonread_adam_m_conv2d_61_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АЖ
Read_23/DisableCopyOnReadDisableCopyOnRead1read_23_disablecopyonread_adam_v_conv2d_61_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_23/ReadVariableOpReadVariableOp1read_23_disablecopyonread_adam_v_conv2d_61_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АД
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_m_conv2d_61_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_m_conv2d_61_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_25/DisableCopyOnReadDisableCopyOnRead/read_25_disablecopyonread_adam_v_conv2d_61_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_25/ReadVariableOpReadVariableOp/read_25_disablecopyonread_adam_v_conv2d_61_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЖ
Read_26/DisableCopyOnReadDisableCopyOnRead1read_26_disablecopyonread_adam_m_conv2d_62_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_26/ReadVariableOpReadVariableOp1read_26_disablecopyonread_adam_m_conv2d_62_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0x
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@n
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@Ж
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_v_conv2d_62_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_v_conv2d_62_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0x
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@n
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@Д
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_conv2d_62_bias"/device:CPU:0*
_output_shapes
 ≠
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_conv2d_62_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_conv2d_62_bias"/device:CPU:0*
_output_shapes
 ≠
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_conv2d_62_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_30/DisableCopyOnReadDisableCopyOnRead1read_30_disablecopyonread_adam_m_conv2d_63_kernel"/device:CPU:0*
_output_shapes
 ї
Read_30/ReadVariableOpReadVariableOp1read_30_disablecopyonread_adam_m_conv2d_63_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ Ж
Read_31/DisableCopyOnReadDisableCopyOnRead1read_31_disablecopyonread_adam_v_conv2d_63_kernel"/device:CPU:0*
_output_shapes
 ї
Read_31/ReadVariableOpReadVariableOp1read_31_disablecopyonread_adam_v_conv2d_63_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ Д
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_m_conv2d_63_bias"/device:CPU:0*
_output_shapes
 ≠
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_m_conv2d_63_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_33/DisableCopyOnReadDisableCopyOnRead/read_33_disablecopyonread_adam_v_conv2d_63_bias"/device:CPU:0*
_output_shapes
 ≠
Read_33/ReadVariableOpReadVariableOp/read_33_disablecopyonread_adam_v_conv2d_63_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_dense_13_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_dense_13_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А	*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А	f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	А	Е
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_dense_13_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_dense_13_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А	*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А	f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	А	Г
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_dense_13_bias"/device:CPU:0*
_output_shapes
 ђ
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_dense_13_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_dense_13_bias"/device:CPU:0*
_output_shapes
 ђ
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_dense_13_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_random_flip_statevar"/device:CPU:0*
_output_shapes
 ђ
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_random_flip_statevar^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0	*
_output_shapes
:Г
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_random_zoom_statevar"/device:CPU:0*
_output_shapes
 ђ
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_random_zoom_statevar^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0	*
_output_shapes
:З
Read_44/DisableCopyOnReadDisableCopyOnRead2read_44_disablecopyonread_random_rotation_statevar"/device:CPU:0*
_output_shapes
 ∞
Read_44/ReadVariableOpReadVariableOp2read_44_disablecopyonread_random_rotation_statevar^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0	*
_output_shapes
:∞
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ў
valueѕBћ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH…
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ё	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *<
dtypes2
02.				Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_90Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_91IdentityIdentity_90:output:0^NoOp*
T0*
_output_shapes
: Ф
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_91Identity_91:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:.

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Њ
{
+__inference_random_flip_layer_call_fn_30142

inputs
unknown:	
identityИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_28164y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≥;
Л
H__inference_sequential_16_layer_call_and_return_conditional_losses_28696
sequential_input 
sequential_1_28573:	 
sequential_1_28575:	 
sequential_1_28577:	)
conv2d_59_28592: 
conv2d_59_28594: )
conv2d_60_28610: @
conv2d_60_28612:@*
conv2d_61_28628:@А
conv2d_61_28630:	А*
conv2d_62_28646:А@
conv2d_62_28648:@)
conv2d_63_28664:@ 
conv2d_63_28666: !
dense_13_28690:	А	
dense_13_28692:
identityИҐ!conv2d_59/StatefulPartitionedCallҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ$sequential_1/StatefulPartitionedCallѕ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28013µ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_28573sequential_1_28575sequential_1_28577*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28432Ґ
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0conv2d_59_28592conv2d_59_28594*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_28591у
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_28514Ь
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_60_28610conv2d_60_28612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_28609у
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_28526Э
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_61_28628conv2d_61_28630*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€<<А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_28627ф
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_28538Ь
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_62_28646conv2d_62_28648*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_28645у
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_28550Ь
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_63_28664conv2d_63_28666*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_28663у
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_28562я
flatten_14/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_28676К
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_13_28690dense_13_28692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_28689x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ƒ
NoOpNoOp"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€АА: : : : : : : : : : : : : : : 2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_29587

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ≠
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_29960

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
√
Ц
(__inference_dense_13_layer_call_fn_30100

inputs
unknown:	А	
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_28689o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
±
F
*__inference_flatten_14_layer_call_fn_30085

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_28676a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_28514

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њА
√
J__inference_random_rotation_layer_call_and_return_conditional_losses_28392

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::нѕm
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≥n
њ
F__inference_random_zoom_layer_call_and_return_conditional_losses_28270

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::нѕi
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Л 
П
G__inference_sequential_1_layer_call_and_return_conditional_losses_29926

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	B
4random_zoom_stateful_uniform_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identityИҐ4random_flip/stateful_uniform_full_int/RngReadAndSkipҐ6random_flip/stateful_uniform_full_int_1/RngReadAndSkipҐ/random_rotation/stateful_uniform/RngReadAndSkipҐ+random_zoom/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: њ
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: К
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Г
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskІ
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ќ
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ь
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≥
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask™
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€ААЄ
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕК
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≤
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask∆
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?»
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::§
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ї
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Щ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ґ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€Я
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :К
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Й
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€і
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Е
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:П
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААм
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААw
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ж
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€х
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААг
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ААw
-random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
,random_flip/stateful_uniform_full_int_1/ProdProd6random_flip/stateful_uniform_full_int_1/shape:output:06random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: p
.random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Э
.random_flip/stateful_uniform_full_int_1/Cast_1Cast5random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: «
6random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource7random_flip/stateful_uniform_full_int_1/Cast/x:output:02random_flip/stateful_uniform_full_int_1/Cast_1:y:05^random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Е
;random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
5random_flip/stateful_uniform_full_int_1/strided_sliceStridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЂ
/random_flip/stateful_uniform_full_int_1/BitcastBitcast>random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0З
=random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
7random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ѓ
1random_flip/stateful_uniform_full_int_1/Bitcast_1Bitcast@random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :„
'random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV26random_flip/stateful_uniform_full_int_1/shape:output:0:random_flip/stateful_uniform_full_int_1/Bitcast_1:output:08random_flip/stateful_uniform_full_int_1/Bitcast:output:04random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R Ґ
random_flip/stack_1Pack0random_flip/stateful_uniform_full_int_1:output:0!random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:r
!random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      љ
random_flip/strided_slice_1StridedSlicerandom_flip/stack_1:output:0*random_flip/strided_slice_1/stack:output:0,random_flip/strided_slice_1/stack_1:output:0,random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask€
<random_flip/stateless_random_flip_up_down/control_dependencyIdentity4random_flip/stateless_random_flip_left_right/add:z:0*
T0*C
_class9
75loc:@random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€АА≤
/random_flip/stateless_random_flip_up_down/ShapeShapeErandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕЗ
=random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
7random_flip/stateless_random_flip_up_down/strided_sliceStridedSlice8random_flip/stateless_random_flip_up_down/Shape:output:0Frandom_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskј
Hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?«
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip/strided_slice_1:output:0* 
_output_shapes
::°
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ђ
[random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Qrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0erandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0irandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Р
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/subSubOrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ≠
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMuldrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ц
Brandom_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€{
9random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ы
7random_flip/stateless_random_flip_up_down/Reshape/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:А
1random_flip/stateless_random_flip_up_down/ReshapeReshapeFrandom_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0@random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ѓ
/random_flip/stateless_random_flip_up_down/RoundRound:random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€В
8random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ж
3random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0Arandom_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААг
-random_flip/stateless_random_flip_up_down/mulMul3random_flip/stateless_random_flip_up_down/Round:y:0<random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААt
/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ё
-random_flip/stateless_random_flip_up_down/subSub8random_flip/stateless_random_flip_up_down/sub/x:output:03random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€м
/random_flip/stateless_random_flip_up_down/mul_1Mul1random_flip/stateless_random_flip_up_down/sub:z:0Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААЏ
-random_flip/stateless_random_flip_up_down/addAddV21random_flip/stateless_random_flip_up_down/mul:z:03random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ААА
random_zoom/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::нѕi
random_zoom/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!random_zoom/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!random_zoom/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
random_zoom/strided_sliceStridedSlicerandom_zoom/Shape:output:0(random_zoom/strided_slice/stack:output:0*random_zoom/strided_slice/stack_1:output:0*random_zoom/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
!random_zoom/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€v
#random_zoom/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€m
#random_zoom/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
random_zoom/strided_slice_1StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_1/stack:output:0,random_zoom/strided_slice_1/stack_1:output:0,random_zoom/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
random_zoom/CastCast$random_zoom/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: t
!random_zoom/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€v
#random_zoom/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€m
#random_zoom/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
random_zoom/strided_slice_2StridedSlicerandom_zoom/Shape:output:0*random_zoom/strided_slice_2/stack:output:0,random_zoom/strided_slice_2/stack_1:output:0,random_zoom/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
random_zoom/Cast_1Cast$random_zoom/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: f
$random_zoom/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ђ
"random_zoom/stateful_uniform/shapePack"random_zoom/strided_slice:output:0-random_zoom/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:e
 random_zoom/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?e
 random_zoom/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ?l
"random_zoom/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: §
!random_zoom/stateful_uniform/ProdProd+random_zoom/stateful_uniform/shape:output:0+random_zoom/stateful_uniform/Const:output:0*
T0*
_output_shapes
: e
#random_zoom/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :З
#random_zoom/stateful_uniform/Cast_1Cast*random_zoom/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ж
+random_zoom/stateful_uniform/RngReadAndSkipRngReadAndSkip4random_zoom_stateful_uniform_rngreadandskip_resource,random_zoom/stateful_uniform/Cast/x:output:0'random_zoom/stateful_uniform/Cast_1:y:0*
_output_shapes
:z
0random_zoom/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2random_zoom/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2random_zoom/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
*random_zoom/stateful_uniform/strided_sliceStridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:09random_zoom/stateful_uniform/strided_slice/stack:output:0;random_zoom/stateful_uniform/strided_slice/stack_1:output:0;random_zoom/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskХ
$random_zoom/stateful_uniform/BitcastBitcast3random_zoom/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0|
2random_zoom/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
,random_zoom/stateful_uniform/strided_slice_1StridedSlice3random_zoom/stateful_uniform/RngReadAndSkip:value:0;random_zoom/stateful_uniform/strided_slice_1/stack:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_1:output:0=random_zoom/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Щ
&random_zoom/stateful_uniform/Bitcast_1Bitcast5random_zoom/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0{
9random_zoom/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ћ
5random_zoom/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2+random_zoom/stateful_uniform/shape:output:0/random_zoom/stateful_uniform/Bitcast_1:output:0-random_zoom/stateful_uniform/Bitcast:output:0Brandom_zoom/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€Ю
 random_zoom/stateful_uniform/subSub)random_zoom/stateful_uniform/max:output:0)random_zoom/stateful_uniform/min:output:0*
T0*
_output_shapes
: њ
 random_zoom/stateful_uniform/mulMul>random_zoom/stateful_uniform/StatelessRandomUniformV2:output:0$random_zoom/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€®
random_zoom/stateful_uniformAddV2$random_zoom/stateful_uniform/mul:z:0)random_zoom/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
random_zoom/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :њ
random_zoom/concatConcatV2 random_zoom/stateful_uniform:z:0 random_zoom/stateful_uniform:z:0 random_zoom/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€v
random_zoom/zoom_matrix/ShapeShaperandom_zoom/concat:output:0*
T0*
_output_shapes
::нѕu
+random_zoom/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-random_zoom/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
%random_zoom/zoom_matrix/strided_sliceStridedSlice&random_zoom/zoom_matrix/Shape:output:04random_zoom/zoom_matrix/strided_slice/stack:output:06random_zoom/zoom_matrix/strided_slice/stack_1:output:06random_zoom/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
random_zoom/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
random_zoom/zoom_matrix/subSubrandom_zoom/Cast_1:y:0&random_zoom/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: f
!random_zoom/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
random_zoom/zoom_matrix/truedivRealDivrandom_zoom/zoom_matrix/sub:z:0*random_zoom/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: В
-random_zoom/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Д
/random_zoom/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_1StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_1/stack:output:08random_zoom/zoom_matrix/strided_slice_1/stack_1:output:08random_zoom/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≤
random_zoom/zoom_matrix/sub_1Sub(random_zoom/zoom_matrix/sub_1/x:output:00random_zoom/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
random_zoom/zoom_matrix/mulMul#random_zoom/zoom_matrix/truediv:z:0!random_zoom/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
random_zoom/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
random_zoom/zoom_matrix/sub_2Subrandom_zoom/Cast:y:0(random_zoom/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: h
#random_zoom/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
!random_zoom/zoom_matrix/truediv_1RealDiv!random_zoom/zoom_matrix/sub_2:z:0,random_zoom/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: В
-random_zoom/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_2StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_2/stack:output:08random_zoom/zoom_matrix/strided_slice_2/stack_1:output:08random_zoom/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskd
random_zoom/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≤
random_zoom/zoom_matrix/sub_3Sub(random_zoom/zoom_matrix/sub_3/x:output:00random_zoom/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€†
random_zoom/zoom_matrix/mul_1Mul%random_zoom/zoom_matrix/truediv_1:z:0!random_zoom/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€В
-random_zoom/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Д
/random_zoom/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_3StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_3/stack:output:08random_zoom/zoom_matrix/strided_slice_3/stack_1:output:08random_zoom/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskh
&random_zoom/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ї
$random_zoom/zoom_matrix/zeros/packedPack.random_zoom/zoom_matrix/strided_slice:output:0/random_zoom/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#random_zoom/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    і
random_zoom/zoom_matrix/zerosFill-random_zoom/zoom_matrix/zeros/packed:output:0,random_zoom/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
(random_zoom/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :њ
&random_zoom/zoom_matrix/zeros_1/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
random_zoom/zoom_matrix/zeros_1Fill/random_zoom/zoom_matrix/zeros_1/packed:output:0.random_zoom/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
-random_zoom/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Д
/random_zoom/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         О
'random_zoom/zoom_matrix/strided_slice_4StridedSlicerandom_zoom/concat:output:06random_zoom/zoom_matrix/strided_slice_4/stack:output:08random_zoom/zoom_matrix/strided_slice_4/stack_1:output:08random_zoom/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :њ
&random_zoom/zoom_matrix/zeros_2/packedPack.random_zoom/zoom_matrix/strided_slice:output:01random_zoom/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
random_zoom/zoom_matrix/zeros_2Fill/random_zoom/zoom_matrix/zeros_2/packed:output:0.random_zoom/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€e
#random_zoom/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
random_zoom/zoom_matrix/concatConcatV20random_zoom/zoom_matrix/strided_slice_3:output:0&random_zoom/zoom_matrix/zeros:output:0random_zoom/zoom_matrix/mul:z:0(random_zoom/zoom_matrix/zeros_1:output:00random_zoom/zoom_matrix/strided_slice_4:output:0!random_zoom/zoom_matrix/mul_1:z:0(random_zoom/zoom_matrix/zeros_2:output:0,random_zoom/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€К
random_zoom/transform/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::нѕs
)random_zoom/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+random_zoom/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
#random_zoom/transform/strided_sliceStridedSlice$random_zoom/transform/Shape:output:02random_zoom/transform/strided_slice/stack:output:04random_zoom/transform/strided_slice/stack_1:output:04random_zoom/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:e
 random_zoom/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ш
0random_zoom/transform/ImageProjectiveTransformV3ImageProjectiveTransformV31random_flip/stateless_random_flip_up_down/add:z:0'random_zoom/zoom_matrix/concat:output:0,random_zoom/transform/strided_slice:output:0)random_zoom/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARШ
random_rotation/ShapeShapeErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::нѕm
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†њi
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў†?p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :П
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ц
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЭ
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0А
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:°
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :џ
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€™
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: «
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€∞
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ђ
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Ѓ
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ѓ
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ѓ
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @њ
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: А
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ∞
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ∞
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€∞
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ѓ
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @√
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€З
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::нѕ}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskА
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ж
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      §
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ж
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      §
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЦ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ж
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      §
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ж
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      §
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЖ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :”
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ћ
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ю
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ґ
random_rotation/transform/ShapeShapeErandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::нѕw
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    †
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Erandom_zoom/transform/ImageProjectiveTransformV3:transformed_images:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARҐ
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААЦ
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip7^random_flip/stateful_uniform_full_int_1/RngReadAndSkip0^random_rotation/stateful_uniform/RngReadAndSkip,^random_zoom/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2p
6random_flip/stateful_uniform_full_int_1/RngReadAndSkip6random_flip/stateful_uniform_full_int_1/RngReadAndSkip2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip2Z
+random_zoom/stateful_uniform/RngReadAndSkip+random_zoom/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
√
D
(__inference_resizing_layer_call_fn_30116

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_27985j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
√Њ
¬
!__inference__traced_restore_30967
file_prefix;
!assignvariableop_conv2d_59_kernel: /
!assignvariableop_1_conv2d_59_bias: =
#assignvariableop_2_conv2d_60_kernel: @/
!assignvariableop_3_conv2d_60_bias:@>
#assignvariableop_4_conv2d_61_kernel:@А0
!assignvariableop_5_conv2d_61_bias:	А>
#assignvariableop_6_conv2d_62_kernel:А@/
!assignvariableop_7_conv2d_62_bias:@=
#assignvariableop_8_conv2d_63_kernel:@ /
!assignvariableop_9_conv2d_63_bias: 6
#assignvariableop_10_dense_13_kernel:	А	/
!assignvariableop_11_dense_13_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: E
+assignvariableop_14_adam_m_conv2d_59_kernel: E
+assignvariableop_15_adam_v_conv2d_59_kernel: 7
)assignvariableop_16_adam_m_conv2d_59_bias: 7
)assignvariableop_17_adam_v_conv2d_59_bias: E
+assignvariableop_18_adam_m_conv2d_60_kernel: @E
+assignvariableop_19_adam_v_conv2d_60_kernel: @7
)assignvariableop_20_adam_m_conv2d_60_bias:@7
)assignvariableop_21_adam_v_conv2d_60_bias:@F
+assignvariableop_22_adam_m_conv2d_61_kernel:@АF
+assignvariableop_23_adam_v_conv2d_61_kernel:@А8
)assignvariableop_24_adam_m_conv2d_61_bias:	А8
)assignvariableop_25_adam_v_conv2d_61_bias:	АF
+assignvariableop_26_adam_m_conv2d_62_kernel:А@F
+assignvariableop_27_adam_v_conv2d_62_kernel:А@7
)assignvariableop_28_adam_m_conv2d_62_bias:@7
)assignvariableop_29_adam_v_conv2d_62_bias:@E
+assignvariableop_30_adam_m_conv2d_63_kernel:@ E
+assignvariableop_31_adam_v_conv2d_63_kernel:@ 7
)assignvariableop_32_adam_m_conv2d_63_bias: 7
)assignvariableop_33_adam_v_conv2d_63_bias: =
*assignvariableop_34_adam_m_dense_13_kernel:	А	=
*assignvariableop_35_adam_v_dense_13_kernel:	А	6
(assignvariableop_36_adam_m_dense_13_bias:6
(assignvariableop_37_adam_v_dense_13_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 6
(assignvariableop_42_random_flip_statevar:	6
(assignvariableop_43_random_zoom_statevar:	:
,assignvariableop_44_random_rotation_statevar:	
identity_46ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9≥
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ў
valueѕBћ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHћ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B З
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ќ
_output_shapesї
Є::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_59_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_59_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_60_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_60_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_61_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_61_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_62_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_62_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_63_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_63_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_13_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_13_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_m_conv2d_59_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_v_conv2d_59_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_conv2d_59_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_conv2d_59_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_60_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_60_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_60_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_60_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_m_conv2d_61_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_v_conv2d_61_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_m_conv2d_61_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_v_conv2d_61_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_m_conv2d_62_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_v_conv2d_62_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_conv2d_62_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_conv2d_62_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_m_conv2d_63_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_v_conv2d_63_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_m_conv2d_63_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_v_conv2d_63_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_13_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_13_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_13_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_13_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:Ѕ
AssignVariableOp_42AssignVariableOp(assignvariableop_42_random_flip_statevarIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0	*
_output_shapes
:Ѕ
AssignVariableOp_43AssignVariableOp(assignvariableop_43_random_zoom_statevarIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0	*
_output_shapes
:≈
AssignVariableOp_44AssignVariableOp,assignvariableop_44_random_rotation_statevarIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ≠
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: Ъ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ь
’
#__inference_signature_wrapper_29056
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А$
	unknown_5:А@
	unknown_6:@#
	unknown_7:@ 
	unknown_8: 
	unknown_9:	А	

unknown_10:
identityИҐStatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_27975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Т
g
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_28562

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ц
`
D__inference_rescaling_layer_call_and_return_conditional_losses_27995

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЮЧ
ю
F__inference_random_flip_layer_call_and_return_conditional_losses_28164

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐ*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ч
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА†
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕ~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ю
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ы
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ќ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:е
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:л
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА»
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€—
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААњ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskџ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€ААЪ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕ{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ѓ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :п
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€м
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€т
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :њ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:№
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААњ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€»
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААґ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
я
N
*__inference_sequential_layer_call_fn_28016
resizing_input
identity¬
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28013j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:a ]
1
_output_shapes
:€€€€€€€€€АА
(
_user_specified_nameresizing_input
Д
э
D__inference_conv2d_63_layer_call_and_return_conditional_losses_28663

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ф
b
F__inference_random_zoom_layer_call_and_return_conditional_losses_28408

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
…
≠
-__inference_sequential_16_layer_call_fn_28822
sequential_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@$
	unknown_6:@А
	unknown_7:	А$
	unknown_8:А@
	unknown_9:@$

unknown_10:@ 

unknown_11: 

unknown_12:	А	

unknown_13:
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_28789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€АА: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Ь
ќ
G__inference_sequential_1_layer_call_and_return_conditional_losses_28397
random_flip_input
random_flip_28165:	
random_zoom_28271:	#
random_rotation_28393:	
identityИҐ#random_flip/StatefulPartitionedCallҐ'random_rotation/StatefulPartitionedCallҐ#random_zoom/StatefulPartitionedCallц
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_28165*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_28164С
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_zoom_28271*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_28270Э
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_zoom/StatefulPartitionedCall:output:0random_rotation_28393*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_28392Й
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААЉ
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
∞
’
-__inference_sequential_16_layer_call_fn_29120

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А$
	unknown_5:А@
	unknown_6:@#
	unknown_7:@ 
	unknown_8: 
	unknown_9:	А	

unknown_10:
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_28866o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
∞
є
,__inference_sequential_1_layer_call_fn_28441
random_flip_input
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28432y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:€€€€€€€€€АА
+
_user_specified_namerandom_flip_input
ы
√
G__inference_sequential_1_layer_call_and_return_conditional_losses_28432

inputs
random_flip_28422:	
random_zoom_28425:	#
random_rotation_28428:	
identityИҐ#random_flip/StatefulPartitionedCallҐ'random_rotation/StatefulPartitionedCallҐ#random_zoom/StatefulPartitionedCallл
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_28422*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_28164С
#random_zoom/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_zoom_28425*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_28270Э
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_zoom/StatefulPartitionedCall:output:0random_rotation_28428*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_28392Й
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААЉ
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall$^random_zoom/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall2J
#random_zoom/StatefulPartitionedCall#random_zoom/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЮЧ
ю
F__inference_random_flip_layer_call_and_return_conditional_losses_30258

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐ*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ч
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€АА†
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::нѕ~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ю
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ы
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ќ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:е
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:л
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА»
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€—
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААњ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskџ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€ААЪ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::нѕ{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ѓ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :п
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€м
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€т
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :њ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:№
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААњ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€»
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААґ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_28550

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Х;
Б
H__inference_sequential_16_layer_call_and_return_conditional_losses_28789

inputs 
sequential_1_28745:	 
sequential_1_28747:	 
sequential_1_28749:	)
conv2d_59_28752: 
conv2d_59_28754: )
conv2d_60_28758: @
conv2d_60_28760:@*
conv2d_61_28764:@А
conv2d_61_28766:	А*
conv2d_62_28770:А@
conv2d_62_28772:@)
conv2d_63_28776:@ 
conv2d_63_28778: !
dense_13_28783:	А	
dense_13_28785:
identityИҐ!conv2d_59/StatefulPartitionedCallҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ dense_13/StatefulPartitionedCallҐ$sequential_1/StatefulPartitionedCall≈
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28013µ
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_28745sequential_1_28747sequential_1_28749*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28432Ґ
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0conv2d_59_28752conv2d_59_28754*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_28591у
 max_pooling2d_56/PartitionedCallPartitionedCall*conv2d_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_28514Ь
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_56/PartitionedCall:output:0conv2d_60_28758conv2d_60_28760*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_28609у
 max_pooling2d_57/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_28526Э
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_57/PartitionedCall:output:0conv2d_61_28764conv2d_61_28766*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€<<А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_28627ф
 max_pooling2d_58/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_28538Ь
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_58/PartitionedCall:output:0conv2d_62_28770conv2d_62_28772*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_28645у
 max_pooling2d_59/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_28550Ь
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_59/PartitionedCall:output:0conv2d_63_28776conv2d_63_28778*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_28663у
 max_pooling2d_60/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_28562я
flatten_14/PartitionedCallPartitionedCall)max_pooling2d_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_28676К
 dense_13/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_13_28783dense_13_28785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_13_layer_call_and_return_conditional_losses_28689x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ƒ
NoOpNoOp"^conv2d_59/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€АА: : : : : : : : : : : : : : : 2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
т
Ю
)__inference_conv2d_59_layer_call_fn_29939

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_28591y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€юю `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_56_layer_call_fn_29955

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_28514Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_59_layer_call_fn_30045

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_28550Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥n
њ
F__inference_random_zoom_layer_call_and_return_conditional_losses_30376

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::нѕi
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€S
transform/ShapeShapeinputs*
T0*
_output_shapes
::нѕg
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ф
b
F__inference_random_flip_layer_call_and_return_conditional_losses_28403

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_28538

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
£

х
C__inference_dense_13_layer_call_and_return_conditional_losses_28689

inputs1
matmul_readvariableop_resource:	А	-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А	
 
_user_specified_nameinputs
Ш
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_30514

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Њ
{
+__inference_random_zoom_layer_call_fn_30269

inputs
unknown:	
identityИҐStatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_28270y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≠
_
C__inference_resizing_layer_call_and_return_conditional_losses_27985

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
…
G
+__inference_random_flip_layer_call_fn_30147

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_28403j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ђ
£
-__inference_sequential_16_layer_call_fn_29091

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@$
	unknown_6:@А
	unknown_7:	А$
	unknown_8:А@
	unknown_9:@$

unknown_10:@ 

unknown_11: 

unknown_12:	А	

unknown_13:
identityИҐStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_16_layer_call_and_return_conditional_losses_28789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:€€€€€€€€€АА: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_57_layer_call_fn_29985

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_28526Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
‘
a
E__inference_sequential_layer_call_and_return_conditional_losses_28013

inputs
identityЅ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_27985ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27995t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
к
Ю
)__inference_conv2d_60_layer_call_fn_29969

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_28609w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
‘
a
E__inference_sequential_layer_call_and_return_conditional_losses_28024

inputs
identityЅ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_27985ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_27995t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Р
э
D__inference_conv2d_59_layer_call_and_return_conditional_losses_29950

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€юю w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
«
F
*__inference_sequential_layer_call_fn_29562

inputs
identityЇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_28013j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
П
Ѓ
,__inference_sequential_1_layer_call_fn_29598

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28432y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЊZ
Э
 __inference__wrapped_model_27975
sequential_inputP
6sequential_16_conv2d_59_conv2d_readvariableop_resource: E
7sequential_16_conv2d_59_biasadd_readvariableop_resource: P
6sequential_16_conv2d_60_conv2d_readvariableop_resource: @E
7sequential_16_conv2d_60_biasadd_readvariableop_resource:@Q
6sequential_16_conv2d_61_conv2d_readvariableop_resource:@АF
7sequential_16_conv2d_61_biasadd_readvariableop_resource:	АQ
6sequential_16_conv2d_62_conv2d_readvariableop_resource:А@E
7sequential_16_conv2d_62_biasadd_readvariableop_resource:@P
6sequential_16_conv2d_63_conv2d_readvariableop_resource:@ E
7sequential_16_conv2d_63_biasadd_readvariableop_resource: H
5sequential_16_dense_13_matmul_readvariableop_resource:	А	D
6sequential_16_dense_13_biasadd_readvariableop_resource:
identityИҐ.sequential_16/conv2d_59/BiasAdd/ReadVariableOpҐ-sequential_16/conv2d_59/Conv2D/ReadVariableOpҐ.sequential_16/conv2d_60/BiasAdd/ReadVariableOpҐ-sequential_16/conv2d_60/Conv2D/ReadVariableOpҐ.sequential_16/conv2d_61/BiasAdd/ReadVariableOpҐ-sequential_16/conv2d_61/Conv2D/ReadVariableOpҐ.sequential_16/conv2d_62/BiasAdd/ReadVariableOpҐ-sequential_16/conv2d_62/Conv2D/ReadVariableOpҐ.sequential_16/conv2d_63/BiasAdd/ReadVariableOpҐ-sequential_16/conv2d_63/Conv2D/ReadVariableOpҐ-sequential_16/dense_13/BiasAdd/ReadVariableOpҐ,sequential_16/dense_13/MatMul/ReadVariableOp~
-sequential_16/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      й
7sequential_16/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input6sequential_16/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
half_pixel_centers(n
)sequential_16/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;p
+sequential_16/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    з
&sequential_16/sequential/rescaling/mulMulHsequential_16/sequential/resizing/resize/ResizeBilinear:resized_images:02sequential_16/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААЌ
&sequential_16/sequential/rescaling/addAddV2*sequential_16/sequential/rescaling/mul:z:04sequential_16/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААђ
-sequential_16/conv2d_59/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0р
sequential_16/conv2d_59/Conv2DConv2D*sequential_16/sequential/rescaling/add:z:05sequential_16/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю *
paddingVALID*
strides
Ґ
.sequential_16/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0«
sequential_16/conv2d_59/BiasAddBiasAdd'sequential_16/conv2d_59/Conv2D:output:06sequential_16/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю К
sequential_16/conv2d_59/ReluRelu(sequential_16/conv2d_59/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю  
&sequential_16/max_pooling2d_56/MaxPoolMaxPool*sequential_16/conv2d_59/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
ђ
-sequential_16/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0у
sequential_16/conv2d_60/Conv2DConv2D/sequential_16/max_pooling2d_56/MaxPool:output:05sequential_16/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@*
paddingVALID*
strides
Ґ
.sequential_16/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_16/conv2d_60/BiasAddBiasAdd'sequential_16/conv2d_60/Conv2D:output:06sequential_16/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€}}@И
sequential_16/conv2d_60/ReluRelu(sequential_16/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€}}@ 
&sequential_16/max_pooling2d_57/MaxPoolMaxPool*sequential_16/conv2d_60/Relu:activations:0*/
_output_shapes
:€€€€€€€€€>>@*
ksize
*
paddingVALID*
strides
≠
-sequential_16/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_61_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ф
sequential_16/conv2d_61/Conv2DConv2D/sequential_16/max_pooling2d_57/MaxPool:output:05sequential_16/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<А*
paddingVALID*
strides
£
.sequential_16/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_61_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0∆
sequential_16/conv2d_61/BiasAddBiasAdd'sequential_16/conv2d_61/Conv2D:output:06sequential_16/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€<<АЙ
sequential_16/conv2d_61/ReluRelu(sequential_16/conv2d_61/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€<<АЋ
&sequential_16/max_pooling2d_58/MaxPoolMaxPool*sequential_16/conv2d_61/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
≠
-sequential_16/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_62_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0у
sequential_16/conv2d_62/Conv2DConv2D/sequential_16/max_pooling2d_58/MaxPool:output:05sequential_16/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
Ґ
.sequential_16/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0≈
sequential_16/conv2d_62/BiasAddBiasAdd'sequential_16/conv2d_62/Conv2D:output:06sequential_16/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@И
sequential_16/conv2d_62/ReluRelu(sequential_16/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@ 
&sequential_16/max_pooling2d_59/MaxPoolMaxPool*sequential_16/conv2d_62/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
ђ
-sequential_16/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_16_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0у
sequential_16/conv2d_63/Conv2DConv2D/sequential_16/max_pooling2d_59/MaxPool:output:05sequential_16/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ґ
.sequential_16/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_16_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0≈
sequential_16/conv2d_63/BiasAddBiasAdd'sequential_16/conv2d_63/Conv2D:output:06sequential_16/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ И
sequential_16/conv2d_63/ReluRelu(sequential_16/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ …
&sequential_16/max_pooling2d_60/MaxPoolMaxPool*sequential_16/conv2d_63/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
o
sequential_16/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  Є
 sequential_16/flatten_14/ReshapeReshape/sequential_16/max_pooling2d_60/MaxPool:output:0'sequential_16/flatten_14/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А	£
,sequential_16/dense_13/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_13_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0Ї
sequential_16/dense_13/MatMulMatMul)sequential_16/flatten_14/Reshape:output:04sequential_16/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
-sequential_16/dense_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_13_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ї
sequential_16/dense_13/BiasAddBiasAdd'sequential_16/dense_13/MatMul:product:05sequential_16/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
sequential_16/dense_13/SoftmaxSoftmax'sequential_16/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€w
IdentityIdentity(sequential_16/dense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€К
NoOpNoOp/^sequential_16/conv2d_59/BiasAdd/ReadVariableOp.^sequential_16/conv2d_59/Conv2D/ReadVariableOp/^sequential_16/conv2d_60/BiasAdd/ReadVariableOp.^sequential_16/conv2d_60/Conv2D/ReadVariableOp/^sequential_16/conv2d_61/BiasAdd/ReadVariableOp.^sequential_16/conv2d_61/Conv2D/ReadVariableOp/^sequential_16/conv2d_62/BiasAdd/ReadVariableOp.^sequential_16/conv2d_62/Conv2D/ReadVariableOp/^sequential_16/conv2d_63/BiasAdd/ReadVariableOp.^sequential_16/conv2d_63/Conv2D/ReadVariableOp.^sequential_16/dense_13/BiasAdd/ReadVariableOp-^sequential_16/dense_13/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€АА: : : : : : : : : : : : 2`
.sequential_16/conv2d_59/BiasAdd/ReadVariableOp.sequential_16/conv2d_59/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_59/Conv2D/ReadVariableOp-sequential_16/conv2d_59/Conv2D/ReadVariableOp2`
.sequential_16/conv2d_60/BiasAdd/ReadVariableOp.sequential_16/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_60/Conv2D/ReadVariableOp-sequential_16/conv2d_60/Conv2D/ReadVariableOp2`
.sequential_16/conv2d_61/BiasAdd/ReadVariableOp.sequential_16/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_61/Conv2D/ReadVariableOp-sequential_16/conv2d_61/Conv2D/ReadVariableOp2`
.sequential_16/conv2d_62/BiasAdd/ReadVariableOp.sequential_16/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_62/Conv2D/ReadVariableOp-sequential_16/conv2d_62/Conv2D/ReadVariableOp2`
.sequential_16/conv2d_63/BiasAdd/ReadVariableOp.sequential_16/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_16/conv2d_63/Conv2D/ReadVariableOp-sequential_16/conv2d_63/Conv2D/ReadVariableOp2^
-sequential_16/dense_13/BiasAdd/ReadVariableOp-sequential_16/dense_13/BiasAdd/ReadVariableOp2\
,sequential_16/dense_13/MatMul/ReadVariableOp,sequential_16/dense_13/MatMul/ReadVariableOp:c _
1
_output_shapes
:€€€€€€€€€АА
*
_user_specified_namesequential_input
Ћ
H
,__inference_sequential_1_layer_call_fn_29603

inputs
identityЉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_28450j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_30020

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_58_layer_call_fn_30015

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_28538Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ў
c
G__inference_sequential_1_layer_call_and_return_conditional_losses_28450

inputs
identity«
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_28403е
random_zoom/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_28408н
random_rotation/PartitionedCallPartitionedCall$random_zoom/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_28413z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_29990

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
…
G
+__inference_random_zoom_layer_call_fn_30274

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_zoom_layer_call_and_return_conditional_losses_28408j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default≥
W
sequential_inputC
"serving_default_sequential_input:0€€€€€€€€€АА<
dense_130
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ка
Љ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer-12
layer_with_weights-5
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
ƒ
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
—
 layer-0
!layer-1
"layer-2
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ё
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
•
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
•
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op"
_tf_keras_layer
•
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
 ^_jit_compiled_convolution_op"
_tf_keras_layer
•
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias
 m_jit_compiled_convolution_op"
_tf_keras_layer
•
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
•
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
љ
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
Аkernel
	Бbias"
_tf_keras_layer
x
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
А10
Б11"
trackable_list_wrapper
x
/0
01
>2
?3
M4
N5
\6
]7
k8
l9
А10
Б11"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
з
Зtrace_0
Иtrace_1
Йtrace_2
Кtrace_32ф
-__inference_sequential_16_layer_call_fn_28822
-__inference_sequential_16_layer_call_fn_28893
-__inference_sequential_16_layer_call_fn_29091
-__inference_sequential_16_layer_call_fn_29120µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0zИtrace_1zЙtrace_2zКtrace_3
”
Лtrace_0
Мtrace_1
Нtrace_2
Оtrace_32а
H__inference_sequential_16_layer_call_and_return_conditional_losses_28696
H__inference_sequential_16_layer_call_and_return_conditional_losses_28738
H__inference_sequential_16_layer_call_and_return_conditional_losses_29498
H__inference_sequential_16_layer_call_and_return_conditional_losses_29557µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0zМtrace_1zНtrace_2zОtrace_3
‘B—
 __inference__wrapped_model_27975sequential_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
П
_variables
Р_iterations
С_learning_rate
Т_index_dict
У
_momentums
Ф_velocities
Х_update_step_xla"
experimentalOptimizer
-
Цserving_default"
signature_map
Ђ
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Э	variables
Юtrainable_variables
Яregularization_losses
†	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
£non_trainable_variables
§layers
•metrics
 ¶layer_regularization_losses
Іlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
џ
®trace_0
©trace_1
™trace_2
Ђtrace_32и
*__inference_sequential_layer_call_fn_28016
*__inference_sequential_layer_call_fn_28027
*__inference_sequential_layer_call_fn_29562
*__inference_sequential_layer_call_fn_29567µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0z©trace_1z™trace_2zЂtrace_3
«
ђtrace_0
≠trace_1
Ѓtrace_2
ѓtrace_32‘
E__inference_sequential_layer_call_and_return_conditional_losses_27998
E__inference_sequential_layer_call_and_return_conditional_losses_28004
E__inference_sequential_layer_call_and_return_conditional_losses_29577
E__inference_sequential_layer_call_and_return_conditional_losses_29587µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zђtrace_0z≠trace_1zЃtrace_2zѓtrace_3
√
∞	variables
±trainable_variables
≤regularization_losses
≥	keras_api
і__call__
+µ&call_and_return_all_conditional_losses
ґ_random_generator"
_tf_keras_layer
√
Ј	variables
Єtrainable_variables
єregularization_losses
Ї	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses
љ_random_generator"
_tf_keras_layer
√
Њ	variables
њtrainable_variables
јregularization_losses
Ѕ	keras_api
¬__call__
+√&call_and_return_all_conditional_losses
ƒ_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
г
 trace_0
Ћtrace_1
ћtrace_2
Ќtrace_32р
,__inference_sequential_1_layer_call_fn_28441
,__inference_sequential_1_layer_call_fn_28453
,__inference_sequential_1_layer_call_fn_29598
,__inference_sequential_1_layer_call_fn_29603µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z trace_0zЋtrace_1zћtrace_2zЌtrace_3
ѕ
ќtrace_0
ѕtrace_1
–trace_2
—trace_32№
G__inference_sequential_1_layer_call_and_return_conditional_losses_28397
G__inference_sequential_1_layer_call_and_return_conditional_losses_28416
G__inference_sequential_1_layer_call_and_return_conditional_losses_29926
G__inference_sequential_1_layer_call_and_return_conditional_losses_29930µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zќtrace_0zѕtrace_1z–trace_2z—trace_3
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
е
„trace_02∆
)__inference_conv2d_59_layer_call_fn_29939Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z„trace_0
А
Ўtrace_02б
D__inference_conv2d_59_layer_call_and_return_conditional_losses_29950Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЎtrace_0
*:( 2conv2d_59/kernel
: 2conv2d_59/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
м
ёtrace_02Ќ
0__inference_max_pooling2d_56_layer_call_fn_29955Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zёtrace_0
З
яtrace_02и
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_29960Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zяtrace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
е
еtrace_02∆
)__inference_conv2d_60_layer_call_fn_29969Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zеtrace_0
А
жtrace_02б
D__inference_conv2d_60_layer_call_and_return_conditional_losses_29980Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zжtrace_0
*:( @2conv2d_60/kernel
:@2conv2d_60/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
м
мtrace_02Ќ
0__inference_max_pooling2d_57_layer_call_fn_29985Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zмtrace_0
З
нtrace_02и
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_29990Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zнtrace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
е
уtrace_02∆
)__inference_conv2d_61_layer_call_fn_29999Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0
А
фtrace_02б
D__inference_conv2d_61_layer_call_and_return_conditional_losses_30010Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zфtrace_0
+:)@А2conv2d_61/kernel
:А2conv2d_61/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
м
ъtrace_02Ќ
0__inference_max_pooling2d_58_layer_call_fn_30015Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zъtrace_0
З
ыtrace_02и
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_30020Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zыtrace_0
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ьnon_trainable_variables
эlayers
юmetrics
 €layer_regularization_losses
Аlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
е
Бtrace_02∆
)__inference_conv2d_62_layer_call_fn_30029Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
А
Вtrace_02б
D__inference_conv2d_62_layer_call_and_return_conditional_losses_30040Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zВtrace_0
+:)А@2conv2d_62/kernel
:@2conv2d_62/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
м
Иtrace_02Ќ
0__inference_max_pooling2d_59_layer_call_fn_30045Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
З
Йtrace_02и
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_30050Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЙtrace_0
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
е
Пtrace_02∆
)__inference_conv2d_63_layer_call_fn_30059Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zПtrace_0
А
Рtrace_02б
D__inference_conv2d_63_layer_call_and_return_conditional_losses_30070Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0
*:(@ 2conv2d_63/kernel
: 2conv2d_63/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
м
Цtrace_02Ќ
0__inference_max_pooling2d_60_layer_call_fn_30075Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0
З
Чtrace_02и
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_30080Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЧtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
ж
Эtrace_02«
*__inference_flatten_14_layer_call_fn_30085Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0
Б
Юtrace_02в
E__inference_flatten_14_layer_call_and_return_conditional_losses_30091Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0
0
А0
Б1"
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
д
§trace_02≈
(__inference_dense_13_layer_call_fn_30100Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0
€
•trace_02а
C__inference_dense_13_layer_call_and_return_conditional_losses_30111Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z•trace_0
": 	А	2dense_13/kernel
:2dense_13/bias
 "
trackable_list_wrapper
Ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
¶0
І1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
-__inference_sequential_16_layer_call_fn_28822sequential_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
-__inference_sequential_16_layer_call_fn_28893sequential_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
-__inference_sequential_16_layer_call_fn_29091inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
-__inference_sequential_16_layer_call_fn_29120inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
H__inference_sequential_16_layer_call_and_return_conditional_losses_28696sequential_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
H__inference_sequential_16_layer_call_and_return_conditional_losses_28738sequential_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
H__inference_sequential_16_layer_call_and_return_conditional_losses_29498inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
H__inference_sequential_16_layer_call_and_return_conditional_losses_29557inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ч
Р0
®1
©2
™3
Ђ4
ђ5
≠6
Ѓ7
ѓ8
∞9
±10
≤11
≥12
і13
µ14
ґ15
Ј16
Є17
є18
Ї19
ї20
Љ21
љ22
Њ23
њ24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
®0
™1
ђ2
Ѓ3
∞4
≤5
і6
ґ7
Є8
Ї9
Љ10
Њ11"
trackable_list_wrapper
В
©0
Ђ1
≠2
ѓ3
±4
≥5
µ6
Ј7
є8
ї9
љ10
њ11"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
”B–
#__inference_signature_wrapper_29056sequential_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
јnon_trainable_variables
Ѕlayers
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
д
≈trace_02≈
(__inference_resizing_layer_call_fn_30116Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≈trace_0
€
∆trace_02а
C__inference_resizing_layer_call_and_return_conditional_losses_30122Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
«non_trainable_variables
»layers
…metrics
  layer_regularization_losses
Ћlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
е
ћtrace_02∆
)__inference_rescaling_layer_call_fn_30127Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
А
Ќtrace_02б
D__inference_rescaling_layer_call_and_return_conditional_losses_30135Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
щBц
*__inference_sequential_layer_call_fn_28016resizing_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
*__inference_sequential_layer_call_fn_28027resizing_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
*__inference_sequential_layer_call_fn_29562inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
*__inference_sequential_layer_call_fn_29567inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
E__inference_sequential_layer_call_and_return_conditional_losses_27998resizing_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
E__inference_sequential_layer_call_and_return_conditional_losses_28004resizing_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
МBЙ
E__inference_sequential_layer_call_and_return_conditional_losses_29577inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
МBЙ
E__inference_sequential_layer_call_and_return_conditional_losses_29587inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
∞	variables
±trainable_variables
≤regularization_losses
і__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
Ѕ
”trace_0
‘trace_12Ж
+__inference_random_flip_layer_call_fn_30142
+__inference_random_flip_layer_call_fn_30147©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0z‘trace_1
ч
’trace_0
÷trace_12Љ
F__inference_random_flip_layer_call_and_return_conditional_losses_30258
F__inference_random_flip_layer_call_and_return_conditional_losses_30262©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z’trace_0z÷trace_1
/
„
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ўnon_trainable_variables
ўlayers
Џmetrics
 џlayer_regularization_losses
№layer_metrics
Ј	variables
Єtrainable_variables
єregularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
Ѕ
Ёtrace_0
ёtrace_12Ж
+__inference_random_zoom_layer_call_fn_30269
+__inference_random_zoom_layer_call_fn_30274©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЁtrace_0zёtrace_1
ч
яtrace_0
аtrace_12Љ
F__inference_random_zoom_layer_call_and_return_conditional_losses_30376
F__inference_random_zoom_layer_call_and_return_conditional_losses_30380©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zяtrace_0zаtrace_1
/
б
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
Њ	variables
њtrainable_variables
јregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
…
зtrace_0
иtrace_12О
/__inference_random_rotation_layer_call_fn_30387
/__inference_random_rotation_layer_call_fn_30392©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zзtrace_0zиtrace_1
€
йtrace_0
кtrace_12ƒ
J__inference_random_rotation_layer_call_and_return_conditional_losses_30510
J__inference_random_rotation_layer_call_and_return_conditional_losses_30514©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zйtrace_0zкtrace_1
/
л
_generator"
_generic_user_object
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
,__inference_sequential_1_layer_call_fn_28441random_flip_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
,__inference_sequential_1_layer_call_fn_28453random_flip_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_sequential_1_layer_call_fn_29598inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
,__inference_sequential_1_layer_call_fn_29603inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
G__inference_sequential_1_layer_call_and_return_conditional_losses_28397random_flip_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
G__inference_sequential_1_layer_call_and_return_conditional_losses_28416random_flip_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_sequential_1_layer_call_and_return_conditional_losses_29926inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
G__inference_sequential_1_layer_call_and_return_conditional_losses_29930inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
”B–
)__inference_conv2d_59_layer_call_fn_29939inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_59_layer_call_and_return_conditional_losses_29950inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
0__inference_max_pooling2d_56_layer_call_fn_29955inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_29960inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
”B–
)__inference_conv2d_60_layer_call_fn_29969inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_60_layer_call_and_return_conditional_losses_29980inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
0__inference_max_pooling2d_57_layer_call_fn_29985inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_29990inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
”B–
)__inference_conv2d_61_layer_call_fn_29999inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_61_layer_call_and_return_conditional_losses_30010inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
0__inference_max_pooling2d_58_layer_call_fn_30015inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_30020inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
”B–
)__inference_conv2d_62_layer_call_fn_30029inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_62_layer_call_and_return_conditional_losses_30040inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
0__inference_max_pooling2d_59_layer_call_fn_30045inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_30050inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
”B–
)__inference_conv2d_63_layer_call_fn_30059inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_63_layer_call_and_return_conditional_losses_30070inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЏB„
0__inference_max_pooling2d_60_layer_call_fn_30075inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_30080inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
‘B—
*__inference_flatten_14_layer_call_fn_30085inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_flatten_14_layer_call_and_return_conditional_losses_30091inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
“Bѕ
(__inference_dense_13_layer_call_fn_30100inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_13_layer_call_and_return_conditional_losses_30111inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
м	variables
н	keras_api

оtotal

пcount"
_tf_keras_metric
c
р	variables
с	keras_api

тtotal

уcount
ф
_fn_kwargs"
_tf_keras_metric
/:- 2Adam/m/conv2d_59/kernel
/:- 2Adam/v/conv2d_59/kernel
!: 2Adam/m/conv2d_59/bias
!: 2Adam/v/conv2d_59/bias
/:- @2Adam/m/conv2d_60/kernel
/:- @2Adam/v/conv2d_60/kernel
!:@2Adam/m/conv2d_60/bias
!:@2Adam/v/conv2d_60/bias
0:.@А2Adam/m/conv2d_61/kernel
0:.@А2Adam/v/conv2d_61/kernel
": А2Adam/m/conv2d_61/bias
": А2Adam/v/conv2d_61/bias
0:.А@2Adam/m/conv2d_62/kernel
0:.А@2Adam/v/conv2d_62/kernel
!:@2Adam/m/conv2d_62/bias
!:@2Adam/v/conv2d_62/bias
/:-@ 2Adam/m/conv2d_63/kernel
/:-@ 2Adam/v/conv2d_63/kernel
!: 2Adam/m/conv2d_63/bias
!: 2Adam/v/conv2d_63/bias
':%	А	2Adam/m/dense_13/kernel
':%	А	2Adam/v/dense_13/kernel
 :2Adam/m/dense_13/bias
 :2Adam/v/dense_13/bias
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
“Bѕ
(__inference_resizing_layer_call_fn_30116inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_resizing_layer_call_and_return_conditional_losses_30122inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
”B–
)__inference_rescaling_layer_call_fn_30127inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_rescaling_layer_call_and_return_conditional_losses_30135inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
жBг
+__inference_random_flip_layer_call_fn_30142inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_random_flip_layer_call_fn_30147inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_random_flip_layer_call_and_return_conditional_losses_30258inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_random_flip_layer_call_and_return_conditional_losses_30262inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
/
х
_state_var"
_generic_user_object
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
жBг
+__inference_random_zoom_layer_call_fn_30269inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_random_zoom_layer_call_fn_30274inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_random_zoom_layer_call_and_return_conditional_losses_30376inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_random_zoom_layer_call_and_return_conditional_losses_30380inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
/
ц
_state_var"
_generic_user_object
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
кBз
/__inference_random_rotation_layer_call_fn_30387inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
кBз
/__inference_random_rotation_layer_call_fn_30392inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
J__inference_random_rotation_layer_call_and_return_conditional_losses_30510inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
J__inference_random_rotation_layer_call_and_return_conditional_losses_30514inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
/
ч
_state_var"
_generic_user_object
0
о0
п1"
trackable_list_wrapper
.
м	variables"
_generic_user_object
:  (2total
:  (2count
0
т0
у1"
trackable_list_wrapper
.
р	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 :	2random_flip/StateVar
 :	2random_zoom/StateVar
$:"	2random_rotation/StateVarѓ
 __inference__wrapped_model_27975К/0>?MN\]klАБCҐ@
9Ґ6
4К1
sequential_input€€€€€€€€€АА
™ "3™0
.
dense_13"К
dense_13€€€€€€€€€њ
D__inference_conv2d_59_layer_call_and_return_conditional_losses_29950w/09Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "6Ґ3
,К)
tensor_0€€€€€€€€€юю 
Ъ Щ
)__inference_conv2d_59_layer_call_fn_29939l/09Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "+К(
unknown€€€€€€€€€юю ї
D__inference_conv2d_60_layer_call_and_return_conditional_losses_29980s>?7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€}}@
Ъ Х
)__inference_conv2d_60_layer_call_fn_29969h>?7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ")К&
unknown€€€€€€€€€}}@Љ
D__inference_conv2d_61_layer_call_and_return_conditional_losses_30010tMN7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>>@
™ "5Ґ2
+К(
tensor_0€€€€€€€€€<<А
Ъ Ц
)__inference_conv2d_61_layer_call_fn_29999iMN7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€>>@
™ "*К'
unknown€€€€€€€€€<<АЉ
D__inference_conv2d_62_layer_call_and_return_conditional_losses_30040t\]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Ц
)__inference_conv2d_62_layer_call_fn_30029i\]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ")К&
unknown€€€€€€€€€@ї
D__inference_conv2d_63_layer_call_and_return_conditional_losses_30070skl7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "4Ґ1
*К'
tensor_0€€€€€€€€€ 
Ъ Х
)__inference_conv2d_63_layer_call_fn_30059hkl7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ")К&
unknown€€€€€€€€€ ≠
C__inference_dense_13_layer_call_and_return_conditional_losses_30111fАБ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А	
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
(__inference_dense_13_layer_call_fn_30100[АБ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А	
™ "!К
unknown€€€€€€€€€±
E__inference_flatten_14_layer_call_and_return_conditional_losses_30091h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А	
Ъ Л
*__inference_flatten_14_layer_call_fn_30085]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ""К
unknown€€€€€€€€€А	х
K__inference_max_pooling2d_56_layer_call_and_return_conditional_losses_29960•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_56_layer_call_fn_29955ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€х
K__inference_max_pooling2d_57_layer_call_and_return_conditional_losses_29990•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_57_layer_call_fn_29985ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€х
K__inference_max_pooling2d_58_layer_call_and_return_conditional_losses_30020•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_58_layer_call_fn_30015ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€х
K__inference_max_pooling2d_59_layer_call_and_return_conditional_losses_30050•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_59_layer_call_fn_30045ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€х
K__inference_max_pooling2d_60_layer_call_and_return_conditional_losses_30080•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_60_layer_call_fn_30075ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€≈
F__inference_random_flip_layer_call_and_return_conditional_losses_30258{х=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Ѕ
F__inference_random_flip_layer_call_and_return_conditional_losses_30262w=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Я
+__inference_random_flip_layer_call_fn_30142pх=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "+К(
unknown€€€€€€€€€ААЫ
+__inference_random_flip_layer_call_fn_30147l=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "+К(
unknown€€€€€€€€€АА…
J__inference_random_rotation_layer_call_and_return_conditional_losses_30510{ч=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ ≈
J__inference_random_rotation_layer_call_and_return_conditional_losses_30514w=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ £
/__inference_random_rotation_layer_call_fn_30387pч=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "+К(
unknown€€€€€€€€€ААЯ
/__inference_random_rotation_layer_call_fn_30392l=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "+К(
unknown€€€€€€€€€АА≈
F__inference_random_zoom_layer_call_and_return_conditional_losses_30376{ц=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Ѕ
F__inference_random_zoom_layer_call_and_return_conditional_losses_30380w=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Я
+__inference_random_zoom_layer_call_fn_30269pц=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "+К(
unknown€€€€€€€€€ААЫ
+__inference_random_zoom_layer_call_fn_30274l=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "+К(
unknown€€€€€€€€€ААї
D__inference_rescaling_layer_call_and_return_conditional_losses_30135s9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Х
)__inference_rescaling_layer_call_fn_30127h9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "+К(
unknown€€€€€€€€€ААЇ
C__inference_resizing_layer_call_and_return_conditional_losses_30122s9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Ф
(__inference_resizing_layer_call_fn_30116h9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "+К(
unknown€€€€€€€€€ААё
H__inference_sequential_16_layer_call_and_return_conditional_losses_28696Схцч/0>?MN\]klАБKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ў
H__inference_sequential_16_layer_call_and_return_conditional_losses_28738Л/0>?MN\]klАБKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ‘
H__inference_sequential_16_layer_call_and_return_conditional_losses_29498Зхцч/0>?MN\]klАБAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ќ
H__inference_sequential_16_layer_call_and_return_conditional_losses_29557Б/0>?MN\]klАБAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Є
-__inference_sequential_16_layer_call_fn_28822Жхцч/0>?MN\]klАБKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p

 
™ "!К
unknown€€€€€€€€€≤
-__inference_sequential_16_layer_call_fn_28893А/0>?MN\]klАБKҐH
AҐ>
4К1
sequential_input€€€€€€€€€АА
p 

 
™ "!К
unknown€€€€€€€€€≠
-__inference_sequential_16_layer_call_fn_29091|хцч/0>?MN\]klАБAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "!К
unknown€€€€€€€€€І
-__inference_sequential_16_layer_call_fn_29120v/0>?MN\]klАБAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "!К
unknown€€€€€€€€€Џ
G__inference_sequential_1_layer_call_and_return_conditional_losses_28397ОхцчLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ “
G__inference_sequential_1_layer_call_and_return_conditional_losses_28416ЖLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p 

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ ѕ
G__inference_sequential_1_layer_call_and_return_conditional_losses_29926ГхцчAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ ∆
G__inference_sequential_1_layer_call_and_return_conditional_losses_29930{AҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ і
,__inference_sequential_1_layer_call_fn_28441ГхцчLҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p

 
™ "+К(
unknown€€€€€€€€€ААЂ
,__inference_sequential_1_layer_call_fn_28453{LҐI
BҐ?
5К2
random_flip_input€€€€€€€€€АА
p 

 
™ "+К(
unknown€€€€€€€€€АА®
,__inference_sequential_1_layer_call_fn_29598xхцчAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "+К(
unknown€€€€€€€€€АА†
,__inference_sequential_1_layer_call_fn_29603pAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "+К(
unknown€€€€€€€€€ААЌ
E__inference_sequential_layer_call_and_return_conditional_losses_27998ГIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ Ќ
E__inference_sequential_layer_call_and_return_conditional_losses_28004ГIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p 

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ ƒ
E__inference_sequential_layer_call_and_return_conditional_losses_29577{AҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ ƒ
E__inference_sequential_layer_call_and_return_conditional_losses_29587{AҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€АА
Ъ ¶
*__inference_sequential_layer_call_fn_28016xIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p

 
™ "+К(
unknown€€€€€€€€€АА¶
*__inference_sequential_layer_call_fn_28027xIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€АА
p 

 
™ "+К(
unknown€€€€€€€€€ААЮ
*__inference_sequential_layer_call_fn_29562pAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "+К(
unknown€€€€€€€€€ААЮ
*__inference_sequential_layer_call_fn_29567pAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "+К(
unknown€€€€€€€€€АА∆
#__inference_signature_wrapper_29056Ю/0>?MN\]klАБWҐT
Ґ 
M™J
H
sequential_input4К1
sequential_input€€€€€€€€€АА"3™0
.
dense_13"К
dense_13€€€€€€€€€