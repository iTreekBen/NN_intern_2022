	�Qԙ{0.@�Qԙ{0.@!�Qԙ{0.@	j��4ƍ�?j��4ƍ�?!j��4ƍ�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�Qԙ{0.@C����c�?Ac��	��-@Y����g�?*	gffff>S@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceLK?�?!���@@)LK?�?1���@@:Preprocessing2F
Iterator::ModelU�=ϟ6�?!
���̠@@)$���?1�@���3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��G�)s�?!�|�s�8@)�ՏM�#�?1�����3@:Preprocessing2U
Iterator::Model::ParallelMapV2�\��7��?!I:�-hM+@)�\��7��?1I:�-hM+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor���qq?!'���9@)���qq?1'���9@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipS=��M�?!{���P@)pD��k�l?1	���`5@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapL�K�1��?!B���B@)/��$�\?1�(�w�Z@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate9Q�?Û?!��7�d�A@)�/��CX?1�����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9j��4ƍ�?III�9r�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	C����c�?C����c�?!C����c�?      ��!       "      ��!       *      ��!       2	c��	��-@c��	��-@!c��	��-@:      ��!       B      ��!       J	����g�?����g�?!����g�?R      ��!       Z	����g�?����g�?!����g�?b      ��!       JCPU_ONLYYj��4ƍ�?b qII�9r�X@