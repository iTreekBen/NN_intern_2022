�	�]L3�_6@�]L3�_6@!�]L3�_6@	�U���?�U���?!�U���?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�]L3�_6@n���+�?A�4��T5@Y
�Y2��?*	����Yu@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceOGɫs�?!�w>c��;@)OGɫs�?1�w>c��;@:Preprocessing2F
Iterator::Model�ګ���?!��>�)0E@)7��t�?1������9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat���	��?!� pN5@)��VC�?1c���R�1@:Preprocessing2U
Iterator::Model::ParallelMapV2�C6�.6�?!�y�i��0@)�C6�.6�?1�y�i��0@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�	�Y2�?!HF�a��L@)�_#I��?1�<4_�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor����?��?!�Z���0@)����?��?1�Z���0@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�St$��?!�\���?@)K?���2y?1!��Cf��?:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�z���?!<�w���=@)�J�óy?1��s���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 3.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9�U���?I������X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	n���+�?n���+�?!n���+�?      ��!       "      ��!       *      ��!       2	�4��T5@�4��T5@!�4��T5@:      ��!       B      ��!       J	
�Y2��?
�Y2��?!
�Y2��?R      ��!       Z	
�Y2��?
�Y2��?!
�Y2��?b      ��!       JCPU_ONLYY�U���?b q������X@Y      Y@q^#j��@"�
both�Your program is POTENTIALLY input-bound because 3.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
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