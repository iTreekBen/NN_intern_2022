�	 ��X�@ ��X�@! ��X�@	�jNM�?�jNM�?!�jNM�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$ ��X�@�LnY�?A���8m@Y��A%�c�?*	��� �ZT@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�30�&�?!���Ñ:@)�30�&�?1���Ñ:@:Preprocessing2U
Iterator::Model::ParallelMapV2ʨ2��A�?!J^�*L8@)ʨ2��A�?1J^�*L8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatbۢ���?!��p�Ŵ8@)vT5A�}�?1g6����3@:Preprocessing2F
Iterator::Model+Q��r��?!N;{�iD@)�sCSv�?1�0�K��/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��-�lp?!�Z�w�@)��-�lp?1�Z�w�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip����
�?!�ĄW��M@)��%��n?1 0?��v@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�UfJ�o�?!�؈�ł>@)�M�G��]?1C����@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateǀ��?!�f˗C<@)-��;��V?1n�� ��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 4.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9�jNM�?I�*�ce�X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�LnY�?�LnY�?!�LnY�?      ��!       "      ��!       *      ��!       2	���8m@���8m@!���8m@:      ��!       B      ��!       J	��A%�c�?��A%�c�?!��A%�c�?R      ��!       Z	��A%�c�?��A%�c�?!��A%�c�?b      ��!       JCPU_ONLYY�jNM�?b q�*�ce�X@Y      Y@q-��g �?"�
both�Your program is POTENTIALLY input-bound because 4.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
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