�	B@��
�1@B@��
�1@!B@��
�1@	GP�!�q�?GP�!�q�?!GP�!�q�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$B@��
�1@؃I��	�?A�vR~�1@Y�h o��?*	�K7�A8Q@2U
Iterator::Model::ParallelMapV2����g?�?!�{4��9@)����g?�?1�{4��9@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice���ȑΐ?!���(�7@)���ȑΐ?1���(�7@:Preprocessing2F
Iterator::Model.s���?!I�?��wF@)����l�?1��JY3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat����o�?!�k��I6@)3���Uֆ?1�DNs00@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor���z�2q?!T��b@)���z�2q?1T��b@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��4Lk�?!�b�cG�K@)���:8�k?1����,�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�v稣�?!�#}�/�;@)�&���KZ?1��1�@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateF$
-���?!vR[���9@)�D�A�S?1B����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9GP�!�q�?I�k�f��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	؃I��	�?؃I��	�?!؃I��	�?      ��!       "      ��!       *      ��!       2	�vR~�1@�vR~�1@!�vR~�1@:      ��!       B      ��!       J	�h o��?�h o��?!�h o��?R      ��!       Z	�h o��?�h o��?!�h o��?b      ��!       JCPU_ONLYYGP�!�q�?b q�k�f��X@Y      Y@q�~�P�۾?"�
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