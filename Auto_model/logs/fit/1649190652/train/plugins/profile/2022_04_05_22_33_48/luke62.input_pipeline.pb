	JbI��D,@JbI��D,@!JbI��D,@	6Z�q���?6Z�q���?!6Z�q���?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$JbI��D,@�@�]���?A�#*T7,@Yd�ة?*	d;�O�WQ@2U
Iterator::Model::ParallelMapV2�H��rړ?!����;@)�H��rړ?1����;@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice
�B�Գ�?!���h��7@)
�B�Գ�?1���h��7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat9�d��)�?!�&���)8@)����W�?1�1�"?3@:Preprocessing2F
Iterator::Modelt�!�?!���:��E@)R�b���?1X�Y�/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��V�I�k?!�qʩ@)��V�I�k?1�qʩ@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��O�Y�?!WZt� L@)�� n/f?1t��;@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��z���?!Ê�nK<@)�{�\?1�e��@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateC���-�?!�O�9@)�����W?11+�x]� @:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no97Z�q���?I��\$�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�@�]���?�@�]���?!�@�]���?      ��!       "      ��!       *      ��!       2	�#*T7,@�#*T7,@!�#*T7,@:      ��!       B      ��!       J	d�ة?d�ة?!d�ة?R      ��!       Z	d�ة?d�ة?!d�ة?b      ��!       JCPU_ONLYY7Z�q���?b q��\$�X@