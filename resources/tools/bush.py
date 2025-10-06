import random
# 自动种草机
# 参数设置
x_start = 7      # 起始X
x_end = 51       # 终止X
x_step = 2       # 每组间隔
y_min, y_max = -2.2, -1.6  # 草丛高度上下浮动范围
z_step = 5        # 前后间隔
bush_per_group = 5  # 每组贴图数量
repeat_prefix = "bushR"    # 前缀（bushL/bushR）
group_start_index = 2      # 从哪一组编号开始（比如已有到bushL3，就从bushL4开始）

# 自动生成
group_index = group_start_index + 1
for x in range(x_start + x_step, x_end - 1, x_step):
    for i in range(1, bush_per_group + 1):
        y = round(random.uniform(y_min, y_max), 1)
        z = (i - 1) * z_step
        print(f"    Repeater['{repeat_prefix}{group_index}{i}'].Begin('ground',{x},{y},{z}, , , ,3,5,25,'bush{i}');")
    print()
    group_index += 1
