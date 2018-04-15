function baseFormat(hf, ha)

%set(ha, 'LineWidth', 2);

ar = 0.5913;

set(hf, 'PaperUnits', 'centimeters');
set(hf, 'PaperPosition', [0, 0, 10, 10 * ar]);
set(hf, 'PaperPositionMode', 'manual');

set(hf, 'Units', 'centimeters');
%set(hf, 'Position', [10, 10, 10 10]);

set(ha, 'FontName', 'Helvetica');
set(ha, 'FontSize', 14);
set(ha, 'Box', 'off');
set(ha, 'PlotBoxAspectRatio', [1, ar, 1]);

set(ha,'TickDir','out')

set(hf, 'Color', 'white');

end