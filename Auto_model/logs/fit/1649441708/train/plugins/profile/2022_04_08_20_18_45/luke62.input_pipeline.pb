	^.�;1�@^.�;1�@!^.�;1�@	p�?A@p�?A@!p�?A@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$^.�;1�@Ҏ~7��?A�XQ�i8@Y�����?*	S���S@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice� :vP�?!�����z?@)� :vP�?1�����z?@:Preprocessing2F
Iterator::Modelʩ�ajK�?!K۽@�6B@)GN��;�?1�Pk4�/4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat>��j�#�?!l{Ί��6@)n�l���?1k: �K2@:Preprocessing2U
Iterator::Model::ParallelMapV2I�V��?!�eMT>0@)I�V��?1�eMT>0@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip���Z`��?!�$B�	�O@)!V�a�r?1�����Q@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7 !�l?!97*�@)7 !�l?197*�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�͍�	K�?!lS%���A@) �o_�Y?1�Qˏy @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�Жs)��?!M�(�Ֆ@@)� ݗ3�U?1�ە��-�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 5.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9o�?A@Im'A�]X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	Ҏ~7��?Ҏ~7��?!Ҏ~7��?      ��!       "      ��!       *      ��!       2	�XQ�i8@�XQ�i8@!�XQ�i8@:      ��!       B      ��!       J	�����?�����?!�����?R      ��!       Z	�����?�����?!�����?b      ��!       JCPU_ONLYYo�?A@b qm'A�]X@