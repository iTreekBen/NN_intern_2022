	wd�6��A@wd�6��A@!wd�6��A@	�3��ѿ?�3��ѿ?!�3��ѿ?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$wd�6��A@�	MK��?A��B��A@Yu�?*	{�G�P@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice`9B��?!E,�ޙ�<@)`9B��?1E,�ޙ�<@:Preprocessing2F
Iterator::Model������?!fշ[�D@)]��t�?1D��>��6@:Preprocessing2U
Iterator::Model::ParallelMapV2�7�-:�?!���x3@)�7�-:�?1���x3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatE,b�aL�?!}���3@)���e��?1��dV}�/@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorf�ʉve?!� [�D@)f�ʉve?1� [�D@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip���&�+�?!�*H��M@)
��d?1�&>��N@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�2R臭�?!�	�8�#A@)'��@jc?1%|��n@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��Z�a/�?!�C��d�>@)׆�q�&T?1$wQC���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�3��ѿ?I�?��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�	MK��?�	MK��?!�	MK��?      ��!       "      ��!       *      ��!       2	��B��A@��B��A@!��B��A@:      ��!       B      ��!       J	u�?u�?!u�?R      ��!       Z	u�?u�?!u�?b      ��!       JCPU_ONLYY�3��ѿ?b q�?��X@