	�ڋh;�)@�ڋh;�)@!�ڋh;�)@	sc�K���?sc�K���?!sc�K���?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�ڋh;�)@s��o��?A����h)@Y� ��?*	&1��S@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�#����?!,'�j�>@)�#����?1,'�j�>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat/N|��8�?!W�u8��<@)�P�y�?1�o�j7@:Preprocessing2F
Iterator::Modeli9�Cm�?!�E�_�;@)��=�W�?1�Y��].@:Preprocessing2U
Iterator::Model::ParallelMapV2�{b�*߃?!�1u��(@)�{b�*߃?1�1u��(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�C����?!����R@)P�,�cyw?1�VC�H@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor���5?�r?!�����@)���5?�r?1�����@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapv�S��?!�?�KB@)�Ϲ���d?1cuXB@�	@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��E��\�?!F�fGbq@@)�����[?1	KZ��:@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.4% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9tc�K���?I��IG�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	s��o��?s��o��?!s��o��?      ��!       "      ��!       *      ��!       2	����h)@����h)@!����h)@:      ��!       B      ��!       J	� ��?� ��?!� ��?R      ��!       Z	� ��?� ��?!� ��?b      ��!       JCPU_ONLYYtc�K���?b q��IG�X@