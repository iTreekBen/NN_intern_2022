	��ajK�$@��ajK�$@!��ajK�$@	����U#�?����U#�?!����U#�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��ajK�$@K\Ǹ���?A1_^�}$@YGˁj۰?*	G�z��U@2U
Iterator::Model::ParallelMapV2��j���?!�,����:@)��j���?1�,����:@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�}r 
�?!��F���8@)�}r 
�?1��F���8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat=�Е�?!�H��6@)�q�@H�?1�6��"2@:Preprocessing2F
Iterator::Model��Ҥt�?!rPM���E@)��"���?1Dt�l3N1@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�[�~l�o?!�|�>�@)�[�~l�o?1�|�>�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipL7�A`�?!���ShL@)��#��o?1	im1�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap<�ݭ,љ?!�nA�?=@)¾�D�a?1	��m@�@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenated<J%<��?!�؊���:@)��{�qY?10pBԫ��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 3.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9����U#�?I��T��X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	K\Ǹ���?K\Ǹ���?!K\Ǹ���?      ��!       "      ��!       *      ��!       2	1_^�}$@1_^�}$@!1_^�}$@:      ��!       B      ��!       J	Gˁj۰?Gˁj۰?!Gˁj۰?R      ��!       Z	Gˁj۰?Gˁj۰?!Gˁj۰?b      ��!       JCPU_ONLYY����U#�?b q��T��X@