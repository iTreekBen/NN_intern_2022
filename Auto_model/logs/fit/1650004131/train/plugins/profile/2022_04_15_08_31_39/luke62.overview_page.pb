�	�<�r�"@�<�r�"@!�<�r�"@	��e��?��e��?!��e��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�<�r�"@f/�N[#�?A��-I�"@Y�*q�?*	e;�O��S@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicey�ߢ���?!E�nuy�;@)y�ߢ���?1E�nuy�;@:Preprocessing2U
Iterator::Model::ParallelMapV2���$���?!�'9�N�4@)���$���?1�'9�N�4@:Preprocessing2F
Iterator::Model�v��?!�h�S�C@):�S���?1al�-Y 3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatx�1!�?!�_;��@7@)`���Y�?1�r_�)�2@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�⪲?!�5��2N@)�*k��qq?1d���v@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?�Ң>�m?!r�o�#S@)?�Ң>�m?1r�o�#S@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�
ҌEә?!e���?@)J��	�y[?1�YCN� @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��2���?!�AI)��=@)ˆ5�EaW?1�8�=k��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.6% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��e��?I0�b4s�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	f/�N[#�?f/�N[#�?!f/�N[#�?      ��!       "      ��!       *      ��!       2	��-I�"@��-I�"@!��-I�"@:      ��!       B      ��!       J	�*q�?�*q�?!�*q�?R      ��!       Z	�*q�?�*q�?!�*q�?b      ��!       JCPU_ONLYY��e��?b q0�b4s�X@Y      Y@q�ނZ8�*@"�	
device�Your program is NOT input-bound because only 0.6% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQb�13.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 