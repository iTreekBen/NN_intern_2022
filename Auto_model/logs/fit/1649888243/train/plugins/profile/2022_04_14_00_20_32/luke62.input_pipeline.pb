	�Y��f@�Y��f@!�Y��f@	d�.�?d�.�?!d�.�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�Y��f@�Ü�M�?A{�L�x�@Y�C�|��?*	.���vU@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice)^emS<�?!3�_�02A@))^emS<�?13�_�02A@:Preprocessing2U
Iterator::Model::ParallelMapV2�����?!��f��4@)�����?1��f��4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat~�u�r��?!�X���O5@)a��q6�?1�U3�?�0@:Preprocessing2F
Iterator::Modele�u7�?!��r��A@)f���-=�?1�s����-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��lXSY�?!$�ƨ}P@)�$�@q?1�ۅN��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor6!�1�p?!�T�?�@)6!�1�p?1�T�?�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapPp��Ӡ?!|���#C@)�&�5�`?1ud���@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�[�~l��?!,;"���A@)�ُ�aU?1�I�R�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 6.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9d�.�?I��gƣ�X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�Ü�M�?�Ü�M�?!�Ü�M�?      ��!       "      ��!       *      ��!       2	{�L�x�@{�L�x�@!{�L�x�@:      ��!       B      ��!       J	�C�|��?�C�|��?!�C�|��?R      ��!       Z	�C�|��?�C�|��?!�C�|��?b      ��!       JCPU_ONLYYd�.�?b q��gƣ�X@