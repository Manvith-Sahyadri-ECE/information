clc;
p = [0.5,0.5];
h_error_free = -sum(p.*log2(p));
p_crossover = 0.1;
p_channel = [1 - p_crossover, p_crossover; p_crossover, 1 - p_crossover];
h_binary_symmetric = -sum(p.*sum(p_channel.*log2(p_channel),2));
joint_probs_binary_symmetric = [p.*(1 - p_crossover), p.*p_crossover; p*p_crossover, p*(1 - p_crossover)];
h_conditional_binary_symmetric = -sum(sum(joint_probs_binary_symmetric.*log2(joint_probs_binary_symmetric)));
i_binary_symmetric = h_error_free - h_conditional_binary_symmetric;
disp('for the binary symmetric channel:');
disp(['conditional entrophy(h(x/y)):',num2str(h_conditional_binary_symmetric)]);
disp(['mutual information(i):',num2str(i_binary_symmetric)]);


