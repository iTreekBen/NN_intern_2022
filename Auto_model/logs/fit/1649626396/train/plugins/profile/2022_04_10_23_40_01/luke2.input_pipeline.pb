	0�AC��6@0�AC��6@!0�AC��6@	{�.+i	�?{�.+i	�?!{�.+i	�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$0�AC��6@�5x_���?AGx$p5@Y#��fF?�?*	�����?f@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice>�
Yݪ?!��G?z=@)>�
Yݪ?1��G?z=@:Preprocessing2U
Iterator::Model::ParallelMapV2���̓k�?!O��`864@)���̓k�?1O��`864@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�J�h�?!�Ԧ6�)8@),-#��ʡ?14	�曅3@:Preprocessing2F
Iterator::Model>&R���?!��TqW�B@)ᛦ���?1�s�v�0@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��]ؚ��?!o���wO@)�Գ ���?1���w�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�u��$�?!�.�?e�@)�u��$�?1�.�?e�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapB����׮?!��b���@@)�óu?1p�ɵ@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�<+i�7�?!��2]�>@)q��Ŧe?1��:����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 4.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9{�.+i	�?I���-��X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�5x_���?�5x_���?!�5x_���?      ��!       "      ��!       *      ��!       2	Gx$p5@Gx$p5@!Gx$p5@:      ��!       B      ��!       J	#��fF?�?#��fF?�?!#��fF?�?R      ��!       Z	#��fF?�?#��fF?�?!#��fF?�?b      ��!       JCPU_ONLYY{�.+i	�?b q���-��X@