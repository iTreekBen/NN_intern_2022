	��9#J�$@��9#J�$@!��9#J�$@	t1;�ɖ�?t1;�ɖ�?!t1;�ɖ�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��9#J�$@F�6�X�?A���&�"#@Y)�A&9�?*	�|?5^�P@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�V�I��?!ш�w�6@)�V�I��?1ш�w�6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�?�&M��?!�.��:@)�g�?1���(�_5@:Preprocessing2U
Iterator::Model::ParallelMapV2���׌?!@�ya��4@)���׌?1@�ya��4@:Preprocessing2F
Iterator::ModelΦ#��ś?!�g��D@)��0��?1O��W3@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor.2�n?!�%P�@).2�n?1�%P�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipr����?!9��WW�M@)���q�jm?1"F��N@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�D(b�?!���g�;@)eQ�E�_?1�}U��v@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatej��%!�?!k�d܇�8@)K?���2Y?1��Z@@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 6.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9t1;�ɖ�?I��yl��X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	F�6�X�?F�6�X�?!F�6�X�?      ��!       "      ��!       *      ��!       2	���&�"#@���&�"#@!���&�"#@:      ��!       B      ��!       J	)�A&9�?)�A&9�?!)�A&9�?R      ��!       Z	)�A&9�?)�A&9�?!)�A&9�?b      ��!       JCPU_ONLYYt1;�ɖ�?b q��yl��X@