	衶s$@衶s$@!衶s$@	�Z�����?�Z�����?!�Z�����?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$衶s$@ڮ����?A��_�|�#@Ye�uʫ?*	����xQ@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceR�U򱻐?!/��yN�7@)R�U򱻐?1/��yN�7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�x�[Y�?!�Mxl ?:@)1���Ǎ?1.q��^L5@:Preprocessing2U
Iterator::Model::ParallelMapV2���~1�?!�����r3@)���~1�?1�����r3@:Preprocessing2F
Iterator::Model� O!W�?!��v��B@)�`���|�?1�;,q:2@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipӼ�ɥ?!3��b)O@)�|�r��l?15n�J�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��-�k?!ir���@)��-�k?1ir���@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapQ�?Û�?!5���>@)��9̗g?1o&�h��@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateKVE�ɨ�?!v�����:@)�/�^|�^?14"��y
@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 3.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9�Z�����?IJ�\`�X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	ڮ����?ڮ����?!ڮ����?      ��!       "      ��!       *      ��!       2	��_�|�#@��_�|�#@!��_�|�#@:      ��!       B      ��!       J	e�uʫ?e�uʫ?!e�uʫ?R      ��!       Z	e�uʫ?e�uʫ?!e�uʫ?b      ��!       JCPU_ONLYY�Z�����?b qJ�\`�X@