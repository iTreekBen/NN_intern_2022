	����S@����S@!����S@	82�s��?82�s��?!82�s��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$����S@!\�z��?A|�?mT�@Y�S���
�?*	��/ݔP@2U
Iterator::Model::ParallelMapV2#�k$	�?!�{�d!�:@)#�k$	�?1�{�d!�:@:Preprocessing2F
Iterator::Model���E��?!�X�Q�qH@)D�.l�V�?1�5�>�U6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�St$���?!~��#9@)|DL�$z�?1�6q�~�2@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��|	�?!�*��s�4@)l%t��Y�?1�a-;�)@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlicef�ʉvu?!(�����@)f�ʉvu?1(�����@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorC�8
q?!tJR�@)C�8
q?1tJR�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip���5[�?!=� �	�I@)��{bm?1դ�J�@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.8% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no982�s��?I�S���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	!\�z��?!\�z��?!!\�z��?      ��!       "      ��!       *      ��!       2	|�?mT�@|�?mT�@!|�?mT�@:      ��!       B      ��!       J	�S���
�?�S���
�?!�S���
�?R      ��!       Z	�S���
�?�S���
�?!�S���
�?b      ��!       JCPU_ONLYY82�s��?b q�S���X@