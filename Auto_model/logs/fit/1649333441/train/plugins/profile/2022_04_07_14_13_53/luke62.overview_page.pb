�	OqN�4@OqN�4@!OqN�4@	񸣥(c�?񸣥(c�?!񸣥(c�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$OqN�4@Q0c
�8�?A��ZC��4@Y��]���?*	$��C�T@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicenh�N?��?!t���B@@)nh�N?��?1t���B@@:Preprocessing2U
Iterator::Model::ParallelMapV2�J�4�?!]�8�:4@)�J�4�?1]�8�:4@:Preprocessing2F
Iterator::Model)�� l�?!�P-yPOC@)z4Փ�G�?13Dy�d2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat+5{��?!cWf�F5@)ʊ�� ��?1��g��/0@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�)�TPq?!0Ǽ��[@)�)�TPq?10Ǽ��[@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip9F�G��?!\�҆��N@)��d�<h?1�-7�
H@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate'2s��c�?!��"�uGA@)���*ø[?1H�0eL @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapU��N��?!ΰ$�HB@)겘�|\[?1���$ @:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9񸣥(c�?IG\Zל�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	Q0c
�8�?Q0c
�8�?!Q0c
�8�?      ��!       "      ��!       *      ��!       2	��ZC��4@��ZC��4@!��ZC��4@:      ��!       B      ��!       J	��]���?��]���?!��]���?R      ��!       Z	��]���?��]���?!��]���?b      ��!       JCPU_ONLYY񸣥(c�?b qG\Zל�X@Y      Y@q� �g���?"�
device�Your program is NOT input-bound because only 0.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
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