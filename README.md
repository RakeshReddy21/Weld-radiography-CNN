# Weld-radiography-CNN

# ABSTRACT

Welding is the most commonly used technique for joining metals. In spite of
technological advances, defects do occur in welds. So before delivering the weld
pieces, Quality Assurance department ensures the quality of the weld piece. i.e., to
check if the weld adheres to the ASME standards. In order to assess the quality of weld,
various diagnostic techniques are already available in literature. Digital radiography is
regarded as the golden standard for post quality assurance. Radiographs are acquired
and are digitized using an appropriate scanner. Having digitized the radiographs, these
radiographs are interpreted for assessing the presence or absence of the defect. If
defect occurs, then the severity of the defect is also obtained. Though various computer
aided techniques are already available, complete automation of radiograph
interpretation is yet to be developed. Hence the proposed research work aims at
developing completely automated techniques for weld defect detection. In this work,
radiographs of AISI Stainless steel welds are considered and the defects are
deliberately introduced. Convolutional Neural Networks are used for extracting the
features and thereby identifying the defect. Initially the feasibility of conventional CNNs
such as SQUEEZENET, ALEXNET for weld defect detection is studied. Having studied
the performance of these networks, these networks are modified to reduce the
computational complexity without affecting the performance of the network.