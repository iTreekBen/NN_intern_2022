	l^�Y-`,@l^�Y-`,@!l^�Y-`,@	|^K���?|^K���?!|^K���?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$l^�Y-`,@k�) ��?A��A+@Y�)Wx���?*	
ףp=S@2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceyY|E�?!�\�ry�=@)yY|E�?1�\�ry�=@:Preprocessing2U
Iterator::Model::ParallelMapV2�]��_�?!@1q�
q3@)�]��_�?1@1q�
q3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�kA?!23�)�x6@)�N��C�?1�B��Ѻ2@:Preprocessing2F
Iterator::Modell>��?!��Yh}B@)���rf�?1��Ɖ1@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap~r 
f�?!���^-B@)øDkEk?1���ѡt@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip���QI��?!�]w���O@)o,(�4j?1�ƶ� �@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��)t^cg?!���@)��)t^cg?1���@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatee���\��?!6t�s��?@)���
~[?1w� 	��@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 4.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9|^K���?I��N�_�X@Zno>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	k�) ��?k�) ��?!k�) ��?      ��!       "      ��!       *      ��!       2	��A+@��A+@!��A+@:      ��!       B      ��!       J	�)Wx���?�)Wx���?!�)Wx���?R      ��!       Z	�)Wx���?�)Wx���?!�)Wx���?b      ��!       JCPU_ONLYY|^K���?b q��N�_�X@