�	��Wt�@��Wt�@!��Wt�@	k�Dg&�?k�Dg&�?!k�Dg&�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��Wt�@��c> б?Ab��!)@Y��gB�Ī?*	��Q��O@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice� �bG�?!ZhIɎ�9@)� �bG�?1ZhIɎ�9@:Preprocessing2F
Iterator::Model@�,��?!����҈E@)o���׍?1�%�o��6@:Preprocessing2U
Iterator::Model::ParallelMapV2!���3�?!��{'�"4@)!���3�?1��{'�"4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�� Z+ڌ?!��u�+6@)���,'��?1��*3��/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�T[rp?!d����F@)�T[rp?1d����F@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�V�f��?!> u4-wL@)$��Pe?1���Va@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�Y.��?!H����>@)�ôo�^?1x�ǩ��@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatet34��?!���e�;@)W��mUR?1�K�Wr-�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.8% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9l�Dg&�?I�v�1��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��c> б?��c> б?!��c> б?      ��!       "      ��!       *      ��!       2	b��!)@b��!)@!b��!)@:      ��!       B      ��!       J	��gB�Ī?��gB�Ī?!��gB�Ī?R      ��!       Z	��gB�Ī?��gB�Ī?!��gB�Ī?b      ��!       JCPU_ONLYYl�Dg&�?b q�v�1��X@Y      Y@q�z�<���?"�
device�Your program is NOT input-bound because only 0.8% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 