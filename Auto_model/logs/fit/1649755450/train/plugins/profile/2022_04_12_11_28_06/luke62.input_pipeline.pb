	*8� "�.@*8� "�.@!*8� "�.@	#�!�$�?#�!�$�?!#�!�$�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$*8� "�.@7�ُ��?A+j0Ç.@Y 
fL��?*	G�z�WR@2U
Iterator::Model::ParallelMapV2�f��67�?!����=@)�f��67�?1����=@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��"�ng�?!b m�H�4@)��"�ng�?1b m�H�4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatrP�Lۿ�?!"{���8@)k��u��?1����3@:Preprocessing2F
Iterator::Model�x! ?!\�|21NF@)f��
��?1�c�H.@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�)��q?!P�6���@)�)��q?1P�6���@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�`⏢Τ?!���αK@);�f��o?1�/�E@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapl�����?!5�rO#,9@)��>s֧\?1�n��	@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate���4�?!d���6@)>+N�V?1@;�9�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9#�!�$�?Ia����X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	7�ُ��?7�ُ��?!7�ُ��?      ��!       "      ��!       *      ��!       2	+j0Ç.@+j0Ç.@!+j0Ç.@:      ��!       B      ��!       J	 
fL��? 
fL��?! 
fL��?R      ��!       Z	 
fL��? 
fL��?! 
fL��?b      ��!       JCPU_ONLYY#�!�$�?b qa����X@