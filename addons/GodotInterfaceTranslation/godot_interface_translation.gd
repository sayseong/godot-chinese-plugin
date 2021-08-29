tool
extends EditorPlugin


const dict: Dictionary = {
  "ARVRServer":"ARVR服务"，
  "AudioServer":"音频服务"，
  "CameraServer":"相机服务"，
  "ClassDB":"类数据库"，
  "Engine":"引擎"，
  "Geometry":"几何结构"，
  "Input":"输入"，
  "InputMap":"输入映射"，
  "JavaClassWrapper":"Java类包装器"，
  "NavigationMeshGenerator":"导航网格生成器"，
  "OS":"操作系统"，
  "Performance":"性能"，
  "Physics2Dserver":"2D物理服务"，
  "PhysicsServer":"物理服务"，
  "ProjectSettings":"项目设置"，
  "ResourceLoader":"资源加载器"，
  "ResourceSaver":"资源存储器"，
  "TranslationServer":"翻译服务器"，
  "VisualScriptEditor":"可视化脚本编辑器"，
  "VisualServer":"可视化服务"，
  "End":"末端"，
  "Position":"位置"，
  "Size":"尺寸"，
  "Dialog Autowrap":"对话框自动换行"，
  "Dialog Hide On Ok":"按OK隐藏对话框"，
  "Dialog Text":"对话框文本"，
  "Window Title":"窗口标题"，
  "Animation":"动画"，
  "Centered":"居中"，
  "Flip H":"水平翻转"，
  "Flip V":"垂直翻转"，
  "Frame":"帧"，
  "Frames":"帧组"，
  "Offset":"位置偏移"，
  "Playing":"播放"，
  "Speed Scale":"速度缩放"，
  "Flags":"标记"，
  "Length":"长度"，
  "Loop":"循环"，
  "Step":"步长"，
  "Filter Enabled":"启用过滤"，
  "Sync":"同步"，
  "Max Space":"最大空间"，
  "Min Space":"最小空间"，
  "Snap":"捕获"，
  "Value Label":"数值标签"，
  "Auto Triangles":"自动三角化"，
  "Blend Mode":"混合模式"，
  "X Label":"X标签"，
  "Y Label":"Y标签"，
  "Graph Offset":"图形位置偏移"，
  "Autorestart":"自动重启"，
  "Autorestart Delay":"自动重启延迟"，
  "Autorestart Random Delay":"自动重启随机延迟"，
  "Fadein Time":"淡入时间"，
  "Fadeout Time":"淡出时间"，
  "Resource Local To Scene":"场景本地资源"，
  "Advance Condition":"进行条件"，
  "Auto Advance":"自动进行"，
  "Disabled":"禁用"，
  "Priority":"优先级"，
  "Switch Mode":"切换模式"，
  "Xfade Time":"交叉淡出时间"，
  "Input Count":"输入计数"，
  "Assigned Animation":"指定动画"，
  "Autoplay":"自动播放"，
  "Current Animation":"当前动画"，
  "Current Animation Length":"当前动画长度"，
  "Current Animation Position":"当前动画位置"，
  "Method Call Mode":"方法调用模式"，
  "Playback Active":"启用回放"，
  "Playback Default Blend Time":"回放默认混合时间"，
  "Playback Process Mode":"回放进程模式"，
  "Playback Speed":"回放速度"，
  "Root Node":"根节点"，
  "Active":"激活"，
  "Anim Player":"动画播放器"，
  "Process Mode":"处理模式"，
  "Root Motion Track":"根运动轨迹"，
  "Tree Root":"树的根"，
  "Base Path":"基本路径"，
  "Master Player":"主播放器"，
  "Angular Damp":"角阻尼"，
  "Audio Bus Name":"音频总线名称"，
  "Audio Bus Override":"音频总线覆盖"，
  "Collision Layer":"碰撞层"，
  "Collision Mask":"碰撞遮罩"，
  "Gravity":"重力"，
  "Gravity Distance Scale":"重力距离缩放"，
  "Gravity Point":"重力点"，
  "Gravity Vec":"重力向量"，
  "Linear Damp":"线性阻尼"，
  "Monitorable":"可被检测"，
  "Monitoring":"检测"，
  "Reverb Bus Amount":"混响总线数量"，
  "Reverb Bus Enable":"混响总线启用"，
  "Reverb Bus Name":"混响总线名称"，
  "Reverb Bus Uniformity":"混响总线均匀"，
  "Space Override":"空间覆盖"，
  "Blend Shape Mode":"混合形状模式"，
  "Custom Aabb":"自定义AABB"，
  "Anchor Id":"锚点ID"，
  "Controller Id":"控制器ID"，
  "Rumble":"噪音"，
  "Ar Is Anchor Detection Enabled":"AR启用锚点检测"，
  "Interface Is Initialized":"端口初始化"，
  "Interface Is Primary":"基本接口"，
  "World Scale":"世界缩放"，
  "Primary Interface":"主接口"，
  "Atlas":"图集"，
  "Filter Clip":"裁剪过滤"，
  "Margin":"边缘"，
  "Region":"区域"，
  "Volume Db":"分贝音量"，
  "Dry":"干燥"，
  "Voice":"语音"，
  "Voice Count":"声音计数"，
  "Wet":"湿润"，
  "Attack Us":"攻击我们"，
  "Gain":"获得"，
  "Mix":"混合"，
  "Ratio":"比值"，
  "Release Ms":"释放毫秒"，
  "Sidechain":"侧链"，
  "Threshold":"阈值"，
  "Feedback":"反馈"，
  "Tap1":"点击1"，
  "Tap2":"点击2"，
  "Drive":"驱动"，
  "Keep Hf Hz":"保持一半频率"，
  "Mode":"模式"，
  "Post Gain":"后增益"，
  "Pre Gain":"预增益"，
  "Cutoff Hz":"截止频率"，
  "Db":"分贝"，
  "Resonance":"谐振"，
  "Ceiling Db":"最高分贝"，
  "Soft Clip Db":"软剪切分贝"，
  "Soft Clip Ratio":"软剪切比率"，
  "Threshold Db":"阈值分贝"，
  "Pan":"平移位置"，
  "Depth":"深度"，
  "Range Max Hz":"最大频率范围"，
  "Range Min Hz":"最小频率范围"，
  "Rate Hz":"速度频率"，
  "Fft Size":"傅立叶变换"，
  "Oversampling":"采样"，
  "Pitch Scale":"音阶"，
  "Format":"格式"，
  "Damping":"阻尼"，
  "Hipass":"高通"，
  "Predelay Feedback":"预延迟反馈"，
  "Predelay Msec":"预延迟毫秒"，
  "Room Size":"空间尺寸"，
  "Spread":"传播"，
  "Buffer Length":"缓冲区长度"，
  "Tap Back Pos":"点击回置"，
  "Pan Pullout":"平缓撤出"，
  "Surround":"环绕"，
  "Time Pullout Ms":"撤出毫秒时"，
  "Bus Count":"总线数量"，
  "Device":"设备"，
  "Global Rate Scale":"全局速率缩放"，
  "Mix Rate":"混合速率"，
  "Bus":"总线"，
  "Mix Target":"混合目标"，
  "Stream":"流"，
  "Stream Paused":"暂停流"，
  "Area Mask":"区域遮罩"，
  "Attenuation":"衰减"，
  "Max Distance":"最大距离"，
  "Attenuation Filter Cutoff Hz":"衰减滤波器截止频率"，
  "Attenuation Filter Db":"衰减滤波器分贝"，
  "Attenuation Model":"衰减模型"，
  "Doppler Tracking":"多普勒跟踪"，
  "Emission Angle Degrees":"发射角度"，
  "Emission Angle Enabled":"发射角启用"，
  "Emission Angle Filter Attenuation Db":"发射角滤波器衰减分贝"，
  "Max Db":"最大分贝"，
  "Out Of Range Mode":"超出范围模式"，
  "Unit Db":"单位分贝"，
  "Unit Size":"单位大小"，
  "Audio Stream":"音频流"，
  "Random Pitch":"随机音高"，
  "Data":"数据"，
  "Loop Begin":"循环开始"，
  "Loop End":"循环结束"，
  "Loop Mode":"循环模式"，
  "Stereo":"立体声"，
  "Copy Mode":"复制模式"，
  "Rect":"矩形"，
  "Bake Cell Size":"烘焙单元大小"，
  "Bake Default Texels Per Unit":"烘焙单元默认像素"，
  "Bake Energy":"烘焙能量"，
  "Bake Extents":"烘焙范围"，
  "Bake Hdr":"烘焙HDR"，
  "Bake Mode":"烘焙模式"，
  "Bake Propagation":"烘焙传导"，
  "Bake Quality":"烘焙质量"，
  "Capture Cell Size":"捕获单元大小"，
  "Image Path":"图像路径"，
  "Light Data":"灯光数据"，
  "Bounds":"边界"，
  "Cell Space Transform":"单元空间变换"，
  "Cell Subdiv":"单元细分"，
  "Energy":"能量"，
  "Octree":"八叉树"，
  "Action Mode":"动作模式"，
  "Button Mask":"按钮遮罩"，
  "Enabled Focus Mode":"启用焦点模式"，
  "Focus Mode":"焦点模式"，
  "Group":"组"，
  "Keep Pressed Outside":"保持在外部"，
  "Pressed":"按压"，
  "Shortcut":"快捷键"，
  "Shortcut In Tooltip":"工具提示快捷键"，
  "Toggle Mode":"切换模式"，
  "Ascent":"上升"，
  "Distance Field":"距离区域"，
  "Fallback":"回退"，
  "Height":"高度"，
  "Default Length":"默认长度"，
  "Rest":"休眠"，
  "Bone Name":"骨骼名称"，
  "Alignment":"对齐"，
  "Mouse Filter":"鼠标过滤器"，
  "Extents":"范围"，
  "Align":"对齐"，
  "Clip Text":"裁剪文字"，
  "Expand Icon":"扩展图标"，
  "Flat":"平面"，
  "Icon":"图标"，
  "Text":"文本"，
  "Cull Mask":"剔除遮罩"，
  "Current":"当前"，
  "Environment":"环境"，
  "Far":"远"，
  "Fov":"前方"，
  "Frustum Offset":"视锥位置偏移"，
  "H Offset":"水平位置偏移"，
  "Keep Aspect":"保持方向"，
  "Near":"近"，
  "Projection":"投影"，
  "V Offset":"垂直位置偏移"，
  "Anchor Mode":"锚点模式"，
  "Custom Viewport":"自定义视窗"，
  "Drag Margin Bottom":"拖动下边缘"，
  "Drag Margin H Enabled":"启用拖动水平边缘"，
  "Drag Margin Left":"拖动左边缘"，
  "Drag Margin Right":"拖动右边缘"，
  "Drag Margin Top":"拖动边缘顶部"，
  "Drag Margin V Enabled":"启用拖动垂直边缘"，
  "Editor Draw Drag Margin":"编辑器绘制拖动边缘"，
  "Editor Draw Limits":"编辑器绘制限制范围"，
  "Editor Draw Screen":"编辑器绘制屏幕范围"，
  "Limit Bottom":"下限制"，
  "Limit Left":"左限制"，
  "Limit Right":"右限制"，
  "Limit Smoothed":"平滑限制"，
  "Limit Top":"上限制"，
  "Offset H":"水平位置偏移"，
  "Offset V":"垂直位置偏移"，
  "Rotating":"可旋转的"，
  "Smoothing Enabled":"启用平滑"，
  "Smoothing Speed":"平滑速度"，
  "Zoom":"放大"，
  "Feed Is Active":"反馈处于活动状态"，
  "Feed Transform":"反馈变换"，
  "Camera Feed Id":"相机反馈ID"，
  "Camera Is Active":"相机处于激活状态"，
  "Which Feed":"提供那个"，
  "Light Mask":"光线遮罩"，
  "Material":"材质"，
  "Modulate":"调整"，
  "Self Modulate":"自身调整"，
  "Show Behind Parent":"显示在父级之后"，
  "Show On Top":"显示在顶部"，
  "Use Parent Material":"使用父级材质"，
  "Visible":"可见性"，
  "Light Mode":"灯光模式"，
  "Particles Anim H Frames":"粒子动画水平帧"，
  "Particles Anim Loop":"粒子动画循环"，
  "Particles Anim V Frames":"粒子动画垂直帧"，
  "Particles Animation":"粒子动画"，
  "Follow Viewport Enable":"启用视窗跟随"，
  "Follow Viewport Scale":"跟随视窗缩放"，
  "Layer":"层"，
  "Rotation":"旋转"，
  "Rotation Degrees":"旋转度"，
  "Scale":"缩放"，
  "Transform":"变换"，
  "Color":"颜色"，
  "Mid Height":"中高"，
  "Radial Segments":"径向段数"，
  "Radius":"半径"，
  "Rings":"环数"，
  "Use Top Left":"使用左上"，
  "Absolute Index":"绝对索引"，
  "Character":"字符"，
  "Elapsed Time":"运行时间"，
  "Env":"传递参数"，
  "Relative Index":"相对索引"，
  "Clip To Areas":"裁剪区域"，
  "Clip To Bodies":"裁剪物体"，
  "Input Capture On Drag":"捕获拖动输入"，
  "Input Ray Pickable":"捕获输入射线"，
  "Input Pickable":"捕获输入"，
  "Polygon":"多边形"，
  "Build Mode":"构建模式"，
  "One Way Collision":"单向碰撞"，
  "One Way Collision Margin":"单向碰撞边缘"，
  "Shape":"形状"，
  "Deferred Mode":"延迟模式"，
  "Edit Alpha":"编辑Alpha"，
  "Hsv Mode":"HSV模式"，
  "Presets Enabled":"启用预设"，
  "Presets Visible":"可见性预设"，
  "Raw Mode":"原始模式"，
  "Segments":"线段"，
  "Bias":"偏斜"，
  "Relaxation":"松弛"，
  "Softness":"柔软度"，
  "Swing Span":"摇摆范围"，
  "Twist Span":"扭矩范围"，
  "Rect Min Size":"矩形最小尺寸"，
  "Anchor Bottom":"下锚点"，
  "Anchor Left":"左锚点"，
  "Anchor Right":"右锚点"，
  "Anchor Top":"上锚点"，
  "Focus Neighbour Bottom":"聚焦邻近下边"，
  "Focus Neighbour Left":"聚焦邻近左边"，
  "Focus Neighbour Right":"聚焦邻近右边"，
  "Focus Neighbour Top":"聚焦邻近上边"，
  "Focus Next":"聚焦下一个"，
  "Focus Previous":"聚焦当前"，
  "Grow Horizontal":"水平增长"，
  "Grow Vertical":"垂直增长"，
  "Hint Tooltip":"醒目示意"，
  "Margin Bottom":"下边缘"，
  "Margin Left":"左边缘"，
  "Margin Right":"右边缘"，
  "Margin Top":"上边缘"，
  "Mouse Default Cursor Shape":"鼠标默认光标形状"，
  "Rect Clip Content":"矩形剪切内容"，
  "Rect Global Position":"矩形全局位置"，
  "Rect Pivot Offset":"矩形枢轴位置偏移"，
  "Rect Position":"矩形位置"，
  "Rect Rotation":"矩形旋转"，
  "Rect Scale":"矩形缩放"，
  "Rect Size":"矩形尺寸"，
  "Size Flags Horizontal":"水平尺寸标记"，
  "Size Flags Stretch Ratio":"拉伸尺寸标记"，
  "Size Flags Vertical":"垂直尺寸标记"，
  "Theme":"主题"，
  "Points":"点组"，
  "Amount":"数量"，
  "Angle":"角度"，
  "Angle Curve":"角度曲线"，
  "Angle Random":"角度随机"，
  "Angular Velocity":"角速度"，
  "Angular Velocity Curve":"角速度曲线"，
  "Angular Velocity Random":"角速度随机"，
  "Anim Offset":"动画位置偏移"，
  "Anim Offset Curve":"动画位置偏移曲线"，
  "Anim Offset Random":"动画位置偏移随机"，
  "Anim Speed":"动画速度"，
  "Anim Speed Random":"动画速度随机"，
  "Color Ramp":"颜色渐变"，
  "Damping Curve":"衰减曲线"，
  "Damping Random":"随机衰减"，
  "Direction":"方向"，
  "Draw Order":"绘制顺序"，
  "Emission Box Extents":"发射盒子范围"，
  "Emission Colors":"发射颜色"，
  "Emission Normals":"发射法线"，
  "Emission Points":"发射点组"，
  "Emission Shape":"发射形状"，
  "Emission Sphere Radius":"发射球半径"，
  "Emitting":"发射"，
  "Explosiveness":"爆炸性"，
  "Fixed Fps":"固定FPS"，
  "Flag Align Y":"Y轴对齐标记"，
  "Flag Disable Z":"禁用Z轴标记"，
  "Flag Rotate Y":"Y轴旋转标记"，
  "Flatness":"平整度"，
  "Fract Delta":"分数增量"，
  "Hue Variation":"色调变化"，
  "Hue Variation Curve":"色调变化曲线"，
  "Hue Variation Random":"色相变化随机"，
  "Initial Velocity":"初始速度"，
  "Initial Velocity Random":"初始速度随机"，
  "Lifetime":"生命"，
  "Lifetime Randomness":"生命随机性"，
  "Linear Accel":"线性加速度"，
  "Linear Accel Curve":"线性加速度曲线"，
  "Linear Accel Random":"线性加速度随机"，
  "Local Coords":"局部位置"，
  "Mesh":"网格"，
  "One Shot":"发射一次"，
  "Orbit Velocity":"轨道速度"，
  "Orbit Velocity Curve":"轨道速度曲线"，
  "Orbit Velocity Random":"轨道速度随机"，
  "Preprocess":"预处理"，
  "Radial Accel":"径向加速度"，
  "Radial Accel Curve":"径向加速度曲线"，
  "Radial Accel Random":"径向加速度随机"，
  "Randomness":"随机性"，
  "Scale Amount":"缩放程度"，
  "Scale Amount Curve":"缩放曲线"，
  "Scale Amount Random":"缩放随机"，
  "Tangential Accel":"切向加速度"，
  "Tangential Accel Curve":"切向加速度曲线"，
  "Tangential Accel Random":"切向加速度随机"，
  "Emission Rect Extents":"发射矩形范围"，
  "Normalmap":"法线贴图"，
  "Texture":"贴图"，
  "Lossy Storage Quality":"有损存储质量"，
  "Storage Mode":"存储方式"，
  "Subdivide Depth":"细分深度"，
  "Subdivide Height":"细分高度"，
  "Subdivide Width":"细分宽度"，
  "Bake Resolution":"烘焙分辨率"，
  "Max Value":"最大值"，
  "Min Value":"最小值"，
  "Bake Interval":"烘焙间隔"，
  "Up Vector Enabled":"启用上向量"，
  "Curve":"曲线"，
  "Width":"宽度"，
  "Bottom Radius":"底部半径"，
  "Top Radius":"顶部半径"，
  "Rest Length":"休眠时间"，
  "Stiffness":"刚性"，
  "Directional Shadow Bias Split Scale":"定向阴影偏差分割缩放"，
  "Directional Shadow Blend Splits":"定向阴影混合分割"，
  "Directional Shadow Depth Range":"定向阴影深度范围"，
  "Directional Shadow Max Distance":"定向阴影最大距离"，
  "Directional Shadow Mode":"定向阴影模式"，
  "Directional Shadow Normal Bias":"定向阴影法向偏差"，
  "Directional Shadow Split 1":"定向阴影分割1"，
  "Directional Shadow Split 2":"定向阴影分割2"，
  "Directional Shadow Split 3":"定向阴影分割3"，
  "Shadow Bias":"阴影偏差"，
  "Extra Spacing Bottom":"额外的底部间距"，
  "Extra Spacing Char":"额外的字符间距"，
  "Extra Spacing Space":"额外的空白间距"，
  "Extra Spacing Top":"额外的顶部间距"，
  "Font Data":"字体数据"，
  "Outline Color":"轮廓的颜色"，
  "Outline Size":"轮廓的尺寸"，
  "Use Filter":"使用过滤器"，
  "Use Mipmaps":"使用贴图细化"，
  "Antialiased":"抗锯齿"，
  "Font Path":"字体路径"，
  "Hinting":"微调"，
  "Access":"访问"，
  "Current Dir":"当前目录"，
  "Current File":"当前文件"，
  "Current Path":"当前路径"，
  "Disable Overwrite Warning":"禁用覆盖警告"，
  "Display Mode":"显示模式"，
  "Resizable":"可调整大小"，
  "Show Hidden Files":"显示隐藏文件"，
  "Scroll Horizontal Enabled":"启用水平滚动"，
  "Checkable":"可选"，
  "Checked":"选中"，
  "Draw Red":"绘制红色"，
  "Keying":"按键"，
  "Label":"标签"，
  "Read Only":"只读"，
  "Object Id":"对象ID"，
  "Editor Hint":"编辑器提示"，
  "Iterations Per Second":"每秒迭代次数"，
  "Physics Jitter Fix":"物理抖动修正"，
  "Target Fps":"目标FPS"，
  "Time Scale":"时间缩放"，
  "Adjustment Brightness":"调整亮度"，
  "Adjustment Color Correction":"调整色彩校正"，
  "Adjustment Contrast":"调整对比度"，
  "Adjustment Enabled":"启用调整"，
  "Adjustment Saturation":"调整饱和度"，
  "Ambient Light Color":"环境光颜色"，
  "Ambient Light Energy":"环境光能量"，
  "Ambient Light Sky Contribution":"环境光天空光量"，
  "Auto Exposure Enabled":"启用自动曝光"，
  "Auto Exposure Max Luma":"自动曝光最大亮度"，
  "Auto Exposure Min Luma":"自动曝光最小亮度"，
  "Auto Exposure Scale":"自动曝光量"，
  "Auto Exposure Speed":"自动曝光速度"，
  "Background Camera Feed Id":"背景相机反馈ID"，
  "Background Canvas Max Layer":"背景画布最大图层"，
  "Background Color":"背景颜色"，
  "Background Energy":"背景光量"，
  "Background Mode":"背景模式"，
  "Background Sky":"背景天空"，
  "Background Sky Custom Fov":"背景天空定制视野"，
  "Background Sky Orientation":"背景天空方向"，
  "Background Sky Rotation":"背景天空旋转"，
  "Background Sky Rotation Degrees":"背景天空旋转度"，
  "Dof Blur Far Amount":"景深模糊_远_数量"，
  "Dof Blur Far Distance":"景深模糊_远_距离"，
  "Dof Blur Far Enabled":"景深模糊_远_启用"，
  "Dof Blur Far Quality":"景深模糊_远_质量"，
  "Dof Blur Far Transition":"景深模糊_远_过渡"，
  "Dof Blur Near Amount":"景深模糊_近_数量"，
  "Dof Blur Near Distance":"景深模糊_近_距离"，
  "Dof Blur Near Enabled":"景深模糊_近_启用"，
  "Dof Blur Near Quality":"景深模糊_近_质量"，
  "Dof Blur Near Transition":"景深模糊_近_过渡"，
  "Fog Color":"雾的颜色"，
  "Fog Depth Begin":"雾深起始"，
  "Fog Depth Curve":"雾深曲线"，
  "Fog Depth Enabled":"启用雾深"，
  "Fog Depth End":"雾深末端"，
  "Fog Enabled":"启用雾"，
  "Fog Height Curve":"高度雾曲线"，
  "Fog Height Enabled":"启用高度雾"，
  "Fog Height Max":"高度雾最大值"，
  "Fog Height Min":"高度雾最小值"，
  "Fog Sun Amount":"日光雾强度"，
  "Fog Sun Color":"日光雾颜色"，
  "Fog Transmit Curve":"雾透光率曲线"，
  "Fog Transmit Enabled":"启用雾透光"，
  "Glow Bicubic Upscale":"光晕双立方采样"，
  "Glow Blend Mode":"光晕混合模式"，
  "Glow Bloom":"光晕强度"，
  "Glow Enabled":"启用光晕"，
  "Glow Hdr Luminance Cap":"光晕HDR亮度极限"，
  "Glow Hdr Scale":"光晕HDR缩放"，
  "Glow Hdr Threshold":"光晕HDR阈值"，
  "Glow Intensity":"光晕高亮"，
  "Glow Levels":"光晕级别"，
  "Glow Strength":"光晕强度"，
  "Ss Reflections Depth Tolerance":"屏幕空间反射深度容差"，
  "Ss Reflections Enabled":"启用屏幕空间反射"，
  "Ss Reflections Fade In":"屏幕空间反射淡入"，
  "Ss Reflections Fade Out":"屏幕空间反射淡出"，
  "Ss Reflections Max Steps":"屏幕空间反射最大步数"，
  "Ss Reflections Roughness":"屏幕空间反射粗糙度"，
  "Ssao Ao Channel Affect":"SSAO通道效果"，
  "Ssao Bias":"SSAO偏差"，
  "Ssao Blur":"SSAO模糊"，
  "Ssao Color":"SSAO颜色"，
  "Ssao Edge Sharpness":"SSAO边缘清晰度"，
  "Ssao Enabled":"启用SSAO"，
  "Ssao Intensity":"SSAO强度"，
  "Ssao Intensity2":"SSAO强度2"，
  "Ssao Light Affect":"SSAO光遮挡强度"，
  "Ssao Quality":"SSAO质量"，
  "Ssao Radius":"SSAO半径"，
  "Ssao Radius2":"SSAO半径2"，
  "Tonemap Exposure":"色调映射曝光"，
  "Tonemap Mode":"色调映射模式"，
  "Tonemap White":"色调映射白色"，
  "Endian Swap":"字节存储次序互换"，
  "Filters":"过滤器"，
  "Mode Overrides Title":"覆盖标题模式"，
  "Angular Limit X":"角度极限_X"，
  "Angular Limit Y":"角度极限_Y"，
  "Angular Limit Z":"角度极限_Z"，
  "Angular Motor X":"角向运动_X"，
  "Angular Motor Y":"角向运动_Y"，
  "Angular Motor Z":"角向运动_Z"，
  "Angular Spring X":"角弹簧_X"，
  "Angular Spring Y":"角弹簧_Y"，
  "Angular Spring Z":"角弹簧_Z"，
  "Linear Limit X":"线性极限_X"，
  "Linear Limit Y":"线性极限_Y"，
  "Linear Limit Z":"线性极限_Z"，
  "Linear Motor X":"线性运动_X"，
  "Linear Motor Y":"线性运动_Y"，
  "Linear Motor Z":"线性运动_Z"，
  "Linear Spring X":"线性弹簧_X"，
  "Linear Spring Y":"线性弹簧_Y"，
  "Linear Spring Z":"线性弹簧_Z"，
  "Precision":"精度"，
  "Cast Shadow":"投射阴影"，
  "Extra Cull Margin":"剔除边框"，
  "Lod Max Distance":"LOD最大距离"，
  "Lod Max Hysteresis":"LOD最大凝滞"，
  "Lod Min Distance":"LOD最小距离"，
  "Lod Min Hysteresis":"LOD最小凝滞"，
  "Material Override":"材质覆盖"，
  "Use In Baked Light":"使用光烘焙"，
  "Compress":"压缩"，
  "Dynamic Range":"动态范围"，
  "Interior":"内部"，
  "Normal Bias":"法线偏差"，
  "Propagation":"传播"，
  "Subdiv":"细分"，
  "Cell Size":"单元大小"，
  "Dynamic Data":"动态数据"，
  "To Cell Xform":"单元修改"，
  "Colors":"颜色"，
  "Offsets":"位置偏移"，
  "Gradient":"渐变"，
  "Right Disconnects":"右端断开"，
  "Scroll Offset":"滚动位置偏移"，
  "Snap Distance":"捕获距离"，
  "Use Snap":"使用捕获"，
  "Comment":"注释"，
  "Overlay":"叠加"，
  "Selected":"选择"，
  "Show Close":"显示关闭"，
  "Title":"标题"，
  "Columns":"列"，
  "Initial Offset":"初始位置偏移"，
  "Map Data":"映射数据"，
  "Map Depth":"映射深度"，
  "Map Width":"映射宽度"，
  "Angular Limit":"角度限制"，
  "Motor":"运动"，
  "Params":"参数"，
  "Blocking Mode Enabled":"启用阻塞"，
  "Connection":"连接"，
  "Read Chunk Size":"读取块大小"，
  "Body Size Limit":"主体大小限制"，
  "Download Chunk Size":"下载块大小"，
  "Download File":"下载文件"，
  "Max Redirects":"重定向最大数"，
  "Timeout":"暂停"，
  "Use Threads":"使用线程"，
  "Lossy Quality":"有损质量"，
  "Storage":"存储"，
  "Action":"动作"，
  "Strength":"强度"，
  "Button Index":"按钮索引"，
  "Pressure":"压力"，
  "Axis":"轴"，
  "Axis Value":"轴值"，
  "Echo":"回声"，
  "Scancode":"扫描码"，
  "Factor":"要素"，
  "Channel":"通道"，
  "Controller Number":"控制器编号"，
  "Controller Value":"控制器数值"，
  "Instrument":"仪器"，
  "Message":"信息"，
  "Pitch":"程度"，
  "Velocity":"速度"，
  "Global Position":"全局位置"，
  "Doubleclick":"双击"，
  "Relative":"相对位置"，
  "Speed":"速度"，
  "Tilt":"倾斜"，
  "Delta":"delta"，
  "Index":"索引"，
  "Alt":"Alt"，
  "Command":"命令"，
  "Control":"控制"，
  "Meta":"元"，
  "Shift":"Shift"，
  "Enabled":"启用"，
  "Target":"目标"，
  "Allow Reselect":"允许重选"，
  "Allow Rmb Select":"允许右键选择"，
  "Auto Height":"自动高度"，
  "Fixed Column Width":"固定列宽"，
  "Fixed Icon Size":"固定图标大小"，
  "Icon Mode":"图标模式"，
  "Icon Scale":"图标缩放"，
  "Max Columns":"最大列数"，
  "Max Text Lines":"文字最大行数"，
  "Same Column Width":"相同列宽"，
  "Select Mode":"选择模式"，
  "Collision":"碰撞"，
  "Nodes":"节点"，
  "Solver":"求解器"，
  "Disable Collision":"禁用碰撞"，
  "Node A":"节点A"，
  "Node B":"节点B"，
  "Error":"错误"，
  "Error Line":"错误行"，
  "Error String":"错误字符串"，
  "Result":"结果"，
  "Move Lock X":"移动锁_X"，
  "Move Lock Y":"移动锁_Y"，
  "Move Lock Z":"移动锁_Z"，
  "Motion":"运动"，
  "Collider":"碰撞体"，
  "Collider Id":"碰撞体ID"，
  "Collider Metadata":"碰撞体元数据"，
  "Collider Shape":"碰撞体形状"，
  "Collider Shape Index":"碰撞体形状索引"，
  "Collider Velocity":"碰撞体速度"，
  "Local Shape":"局部形状"，
  "Normal":"正常"，
  "Remainder":"余量"，
  "Travel":"行程"，
  "Autowrap":"自动包裹"，
  "Lines Skipped":"跳过行"，
  "Max Lines Visible":"可见的最大行数"，
  "Percent Visible":"可见百分比"，
  "Uppercase":"大写"，
  "Valign":"垂直对齐"，
  "Visible Characters":"可见字符"，
  "Editor Only":"仅限编辑器"，
  "Light Bake Mode":"灯光烘焙模式"，
  "Light Color":"灯光颜色"，
  "Light Cull Mask":"灯光剔除遮罩"，
  "Light Energy":"灯光能量"，
  "Light Indirect Energy":"间接光能量"，
  "Light Negative":"灯光反转"，
  "Light Specular":"灯光镜面度"，
  "Shadow Color":"阴影颜色"，
  "Shadow Contact":"阴影接触"，
  "Shadow Enabled":"启用阴影"，
  "Shadow Reverse Cull Face":"阴影反向剔除面"，
  "Range Height":"范围_高度"，
  "Range Item Cull Mask":"范围_剔除遮罩"，
  "Range Layer Max":"范围_层最大值"，
  "Range Layer Min":"范围_层最小值"，
  "Range Z Max":"范围_最大Z值"，
  "Range Z Min":"范围_最小Z值"，
  "Shadow Buffer Size":"阴影缓冲区大小"，
  "Shadow Filter":"阴影过滤"，
  "Shadow Filter Smooth":"阴影过滤平滑"，
  "Shadow Gradient Length":"阴影渐变长度"，
  "Shadow Item Cull Mask":"阴影剔除遮罩"，
  "Texture Scale":"贴图缩放"，
  "Occluder":"光线遮挡"，
  "Begin Cap Mode":"开始限制模式"，
  "Default Color":"默认颜色"，
  "End Cap Mode":"末端限制模式"，
  "Joint Mode":"连接模式"，
  "Round Precision":"圆的精度"，
  "Sharp Limit":"锐角限制"，
  "Texture Mode":"贴图模式"，
  "Width Curve":"宽度曲线"，
  "Caret Blink":"插入闪烁符号"，
  "Caret Blink Speed":"插入闪烁符号速度"，
  "Caret Position":"插入位置"，
  "Clear Button Enabled":"启用清除按钮"，
  "Context Menu Enabled":"启用上下文菜单"，
  "Editable":"可编辑的"，
  "Expand To Text Length":"扩展文本长度"，
  "Max Length":"最大长度"，
  "Placeholder Alpha":"预留透明度"，
  "Placeholder Text":"预留文本"，
  "Right Icon":"右侧图标"，
  "Secret":"秘密"，
  "Secret Character":"秘密字符"，
  "Selecting Enabled":"启用选择"，
  "Shortcut Keys Enabled":"启用快捷键"，
  "Underline":"强调"，
  "Next Pass":"下一个"，
  "Render Priority":"渲染优先级"，
  "Switch On Hover":"开启悬停"，
  "Lightmap Size Hint":"光照贴图大小提示"，
  "Skeleton":"骨架"，
  "Skin":"皮肤"，
  "Normal Map":"法线贴图"，
  "Base Texture":"基本贴图"，
  "Image Size":"图片尺寸"，
  "Color Format":"颜色格式"，
  "Custom Data Format":"自定义数据格式"，
  "Instance Count":"实例数量"，
  "Transform Format":"转换格式"，
  "Visible Instance Count":"可见实例数量"，
  "Multimesh":"多重网格"，
  "Allow Object Decoding":"允许对象解码"，
  "Network Peer":"网络对等"，
  "Refuse New Network Connections":"拒绝新的网络连接"，
  "Up Vector":"向上向量"，
  "Agent":"代理"，
  "Cell":"单元"，
  "Detail":"详情"，
  "Edge":"边缘"，
  "Filter":"过滤"，
  "Sample Partition Type":"样本分区类型"，
  "Navmesh":"导航网格"，
  "Navpoly":"导航"，
  "Refuse New Connections":"拒绝新的连接"，
  "Transfer Mode":"传输模式"，
  "Axis Stretch Horizontal":"水平轴拉伸"，
  "Axis Stretch Vertical":"垂直轴拉伸"，
  "Draw Center":"绘制中心"，
  "Patch Margin Bottom":"拼图下边缘"，
  "Patch Margin Left":"拼图左边缘"，
  "Patch Margin Right":"拼图右边缘"，
  "Patch Margin Top":"拼图上边缘"，
  "Region Rect":"矩形区域"，
  "Custom Multiplayer":"自定义多人游戏"，
  "Filename":"文件名"，
  "Multiplayer":"多人游戏"，
  "Name":"名称"，
  "Owner":"所有者"，
  "Pause Mode":"暂停模式"，
  "Process Priority":"进程优先级"，
  "Global Rotation":"全局旋转值"，
  "Global Rotation Degrees":"全局旋转度"，
  "Global Scale":"全局缩放"，
  "Global Transform":"全局变换"，
  "Z As Relative":"相对Z索引"，
  "Z Index":"Z索引"，
  "Closed":"关闭"，
  "Cull Mode":"剔除模式"，
  "Omni Attenuation":"全衰减"，
  "Omni Range":"全范围"，
  "Omni Shadow Detail":"全阴影细节"，
  "Omni Shadow Mode":"全阴影模式"，
  "Clipboard":"剪贴板"，
  "Current Screen":"当前屏幕"，
  "Exit Code":"退出码"，
  "Keep Screen On":"保持屏幕开启"，
  "Low Processor Usage Mode":"低处理器使用率模式"，
  "Low Processor Usage Mode Sleep Usec":"低处理器使用模式休眠用电"，
  "Max Window Size":"最大窗口大小"，
  "Min Window Size":"最小窗口尺寸"，
  "Screen Orientation":"屏幕方向"，
  "Vsync Enabled":"启用垂直同步"，
  "Vsync Via Compositor":"通过合成器进行垂直同步"，
  "Window Borderless":"无边窗"，
  "Window Fullscreen":"全屏窗口"，
  "Window Maximized":"窗口最大化"，
  "Window Minimized":"窗口最小化"，
  "Window Per Pixel Transparency Enabled":"启用窗口每像素透明度"，
  "Window Position":"窗口位置"，
  "Window Resizable":"窗口可调整大小"，
  "Window Size":"窗口尺寸"，
  "Encode Buffer Max Size":"编码缓冲区最大尺寸"，
  "Input Buffer Max Size":"输入缓冲区最大尺寸"，
  "Output Buffer Max Size":"输出缓冲区最大尺寸"，
  "Stream Peer":"流对等"，
  "Panorama":"全景图"，
  "Scroll Base Offset":"滚动基础位置偏移"，
  "Scroll Base Scale":"滚动基础缩放"，
  "Scroll Ignore Camera Zoom":"滚动忽略相机变焦"，
  "Scroll Limit Begin":"滚动限制开始"，
  "Scroll Limit End":"滚动限制末端"，
  "Motion Mirroring":"运动镜像"，
  "Motion Offset":"运动位置偏移"，
  "Motion Scale":"运动缩放"，
  "Draw Pass 1":"绘制1"，
  "Draw Pass 2":"绘制2"，
  "Draw Pass 3":"绘制3"，
  "Draw Pass 4":"绘制4"，
  "Draw Passes":"绘制次数"，
  "Process Material":"处理材质"，
  "Visibility Aabb":"能见度AABB"，
  "Visibility Rect":"能见度矩形"，
  "Emission Color Texture":"发射颜色贴图"，
  "Emission Normal Texture":"发射法线贴图"，
  "Emission Point Count":"发射点数量"，
  "Emission Point Texture":"发射点贴图"，
  "Scale Curve":"缩放曲线"，
  "Scale Random":"缩放随机"，
  "Trail Color Modifier":"尾迹颜色修改器"，
  "Trail Divisor":"尾迹系数"，
  "Trail Size Modifier":"尾迹大小修改器"，
  "Cubic Interp":"三次插值"，
  "Rotation Mode":"旋转方式"，
  "Unit Offset":"单位位置偏移"，
  "Lookahead":"前瞻"，
  "Rotate":"旋转"，
  "Body Offset":"实体位置偏移"，
  "Bounce":"反弹"，
  "Friction":"摩擦"，
  "Gravity Scale":"重力缩放"，
  "Joint Offset":"关节位置偏移"，
  "Joint Type":"关节类型"，
  "Mass":"质量"，
  "Weight":"重量"，
  "Inverse Inertia":"逆惯性"，
  "Inverse Mass":"逆质量"，
  "Linear Velocity":"线性速度"，
  "Sleeping":"休眠"，
  "Total Angular Damp":"持续角度阻尼"，
  "Total Gravity":"持续重力"，
  "Total Linear Damp":"持续线性阻尼"，
  "Collide With Areas":"与区域碰撞"，
  "Collide With Bodies":"与物体碰撞"，
  "Exclude":"排除"，
  "Shape Rid":"形状RID"，
  "Collider Rid":"碰撞体RID"，
  "Collision Normal":"碰撞法线"，
  "Collision Point":"碰撞点"，
  "Motion Remainder":"运动边界"，
  "Layers":"层"，
  "Center Of Mass":"重心"，
  "Principal Inertia Axes":"主惯性轴"，
  "Absorbent":"吸收"，
  "Rough":"粗糙"，
  "Plane":"平面"，
  "Bones":"骨胳"，
  "Internal Vertex Count":"内部顶点数"，
  "Invert Border":"反转边界"，
  "Invert Enable":"启用反转"，
  "Polygons":"多边形"，
  "Texture Offset":"贴图位置偏移"，
  "Texture Rotation":"贴图旋转"，
  "Texture Rotation Degrees":"贴图旋转度"，
  "Vertex Colors":"顶点颜色"，
  "Popup Exclusive":"弹出独占"，
  "Allow Search":"允许搜寻"，
  "Hide On Checkable Item Selection":"隐藏复选项选择"，
  "Hide On Item Selection":"隐藏选择项"，
  "Hide On State Item Selection":"隐藏状态项选择"，
  "Submenu Popup Delay":"子菜单弹出延迟"，
  "Flip Faces":"反转面"，
  "Left To Right":"从左到右"，
  "Ground Bottom Color":"地面底部颜色"，
  "Ground Curve":"地面曲线"，
  "Ground Energy":"地面能量"，
  "Ground Horizon Color":"地面地平线颜色"，
  "Sky Curve":"天空曲线"，
  "Sky Energy":"天空能量"，
  "Sky Horizon Color":"天空地平线颜色"，
  "Sky Top Color":"天空顶部颜色"，
  "Sun Angle Max":"太阳最大角度"，
  "Sun Angle Min":"太阳最小角度"，
  "Sun Color":"太阳颜色"，
  "Sun Curve":"太阳曲线"，
  "Sun Energy":"太阳能量"，
  "Sun Latitude":"太阳纬度"，
  "Sun Longitude":"太阳经度"，
  "Texture Size":"贴图大小"，
  "Android":"安卓"，
  "Application":"应用"，
  "Audio":"音频"，
  "Compression":"压缩"，
  "Debug":"调试"，
  "Display":"显示"，
  "Editor":"编辑"，
  "Input Devices":"输入设备"，
  "Layer Names":"图层名称"，
  "Locale":"地区"，
  "Logging":"日志"，
  "Memory":"内存"，
  "Network":"网络"，
  "Node":"节点"，
  "Physics":"物理"，
  "Rendering":"渲染"，
  "Dispatch Mode":"调度模式"，
  "Grid Radius":"网格半径"，
  "Group Name":"组的名称"，
  "Base":"基础"，
  "Seed":"种子"，
  "Allow Greater":"允许更大"，
  "Allow Lesser":"允许更小"，
  "Exp Edit":"指数编辑"，
  "Page":"页"，
  "Rounded":"四舍五入"，
  "Value":"值"，
  "Cast To":"投射"，
  "Exclude Parent":"排除父级"，
  "Slips On Slope":"沿坡度"，
  "Border Color":"边框颜色"，
  "Box Projection":"盒子投影"，
  "Enable Shadows":"启用阴影"，
  "Intensity":"强度"，
  "Interior Ambient Color":"内部环境颜色"，
  "Interior Ambient Contrib":"内部环境贡献"，
  "Interior Ambient Energy":"内部环境能量"，
  "Interior Enable":"启用内部"，
  "Origin Offset":"原点位置偏移"，
  "Update Mode":"更新模式"，
  "Remote Path":"遥控路径"，
  "Update Position":"更新位置"，
  "Update Rotation":"更新旋转"，
  "Update Scale":"更新缩放"，
  "Use Global Coordinates":"使用全局坐标"，
  "Resource Name":"资源名称"，
  "Resource Path":"资源路径"，
  "Bbcode Enabled":"启用BBcode"，
  "Bbcode Text":"BBcode文字"，
  "Custom Effects":"自定义效果"，
  "Meta Underlined":"带下划线"，
  "Override Selected Font Color":"覆盖选定的字体颜色"，
  "Scroll Active":"激活滚动"，
  "Scroll Following":"滚动跟随"，
  "Selection Enabled":"启用选择"，
  "Tab Size":"标签大小"，
  "Axis Lock Angular X":"X轴角度锁"，
  "Axis Lock Angular Y":"Y轴角度锁"，
  "Axis Lock Angular Z":"Z轴角度锁"，
  "Axis Lock Linear X":"X轴线性锁"，
  "Axis Lock Linear Y":"Y轴线性锁"，
  "Axis Lock Linear Z":"Z轴线性锁"，
  "Can Sleep":"可以休眠"，
  "Contact Monitor":"接触监视"，
  "Contacts Reported":"接触报告"，
  "Continuous Cd":"持续检测"，
  "Custom Integrator":"自定义整合"，
  "Physics Material Override":"覆盖物理材质"，
  "Applied Force":"施加作用力"，
  "Applied Torque":"施加扭矩"，
  "Inertia":"惯性"，
  "Animation Path":"动画路径"，
  "Zero Y":"Y轴零"，
  "Current Scene":"当前场景"，
  "Debug Collisions Hint":"调试碰撞提示"，
  "Debug Navigation Hint":"调试导航提示"，
  "Edited Scene Root":"编辑场景的根"，
  "Multiplayer Poll":"多人提交"，
  "Paused":"暂停"，
  "Root":"根"，
  "Use Font Oversampling":"使用字体采样"，
  "Time Left":"剩余时间"，
  "Source Code":"源代码"，
  "Custom Step":"自定义步骤"，
  "Follow Focus":"跟随焦点"，
  "Scroll Deadzone":"滚动盲区"，
  "Scroll Horizontal":"水平滚动"，
  "Scroll Vertical":"垂直滚动"，
  "Scroll Vertical Enabled":"启用垂直滚动"，
  "Code":"代码"，
  "Shader":"着色器"，
  "Custom Solver Bias":"自定义求解器偏差"，
  "Interpolation":"插值"，
  "Magnet":"磁铁"，
  "Max Iterations":"最大迭代"，
  "Min Distance":"最小距离"，
  "Override Tip Basis":"覆盖基础提示"，
  "Root Bone":"根骨"，
  "Target Node":"目标节点"，
  "Tip Bone":"尖骨"，
  "Use Magnet":"使用磁铁"，
  "Radiance Size":"发光尺寸"，
  "Scrollable":"可滚动"，
  "Tick Count":"刻度值"，
  "Ticks On Borders":"边界刻度"，
  "Angular Motion":"角度运动"，
  "Angular Ortho":"角度正交"，
  "Linear Limit":"线性限制"，
  "Linear Motion":"直线运动"，
  "Linear Ortho":"线性正交"，
  "Areaangular Stiffness":"面积角刚度"，
  "Damping Coefficient":"阻尼系数"，
  "Drag Coefficient":"阻力系数"，
  "Linear Stiffness":"线性刚度"，
  "Parent Collision Ignore":"忽略父级碰撞"，
  "Pose Matching Coefficient":"构成匹配系数"，
  "Pressure Coefficient":"压力系数"，
  "Ray Pickable":"捕获射线"，
  "Simulation Precision":"仿真精度"，
  "Total Mass":"总质量"，
  "Volume Stiffness":"体积刚度"，
  "Gizmo":"装置"，
  "Translation":"转换"，
  "Albedo Color":"反射颜色"，
  "Albedo Texture":"反射贴图"，
  "Anisotropy":"各向异性"，
  "Anisotropy Enabled":"启用各向异性"，
  "Anisotropy Flowmap":"各向异性贴图"，
  "Ao Enabled":"启用环境遮蔽"，
  "Ao Light Affect":"环境光强度"，
  "Ao On Uv2":"UV2环境遮蔽"，
  "Ao Texture":"环境遮蔽贴图"，
  "Ao Texture Channel":"环境遮蔽贴图通道"，
  "Clearcoat":"透明涂层"，
  "Clearcoat Enabled":"启用透明涂层"，
  "Clearcoat Gloss":"透明涂层光泽"，
  "Clearcoat Texture":"透明涂层贴图"，
  "Depth Deep Parallax":"高深度视差"，
  "Depth Enabled":"启用深度"，
  "Depth Flip Binormal":"深度双法线翻转"，
  "Depth Flip Tangent":"深度切线翻转"，
  "Depth Max Layers":"最大深度"，
  "Depth Min Layers":"最小深度"，
  "Depth Scale":"深度缩放"，
  "Depth Texture":"深度贴图"，
  "Detail Albedo":"细节反射率"，
  "Detail Blend Mode":"细节混合模式"，
  "Detail Enabled":"细节启用"，
  "Detail Mask":"细节遮罩"，
  "Detail Normal":"细节法线"，
  "Detail Uv Layer":"细节UV层"，
  "Distance Fade Max Distance":"淡出最大距离"，
  "Distance Fade Min Distance":"淡出最小距离"，
  "Distance Fade Mode":"淡出模式"，
  "Emission":"发射器"，
  "Emission Enabled":"启用发射器"，
  "Emission Energy":"发射器能量"，
  "Emission On Uv2":"UV2上发射器"，
  "Emission Operator":"发射器交互"，
  "Emission Texture":"发射器贴图"，
  "Flags Albedo Tex Force Srgb":"反射率SRGB与TEX标记"，
  "Flags Disable Ambient Light":"禁用环境光标记"，
  "Flags Do Not Receive Shadows":"不接收阴影标记"，
  "Flags Ensure Correct Normals":"确保正确法线标记"，
  "Flags Fixed Size":"固定大小标记"，
  "Flags No Depth Test":"禁用深度测试标记"，
  "Flags Transparent":"透明标记"，
  "Flags Unshaded":"无遮挡标记"，
  "Flags Use Point Size":"使用渲染点大小标记"，
  "Flags Use Shadow To Opacity":"使用阴影使不透明标记"，
  "Flags Vertex Lighting":"顶点光照标记"，
  "Flags World Triplanar":"世界三切面映射标记"，
  "Metallic":"金属"，
  "Metallic Specular":"金属镜面"，
  "Metallic Texture":"金属贴图"，
  "Metallic Texture Channel":"金属贴图通道"，
  "Normal Enabled":"启用法线"，
  "Normal Scale":"法线缩放"，
  "Normal Texture":"法线贴图"，
  "Params Alpha Scissor Threshold":"参数_Alpha裁剪阈值"，
  "Params Billboard Keep Scale":"参数_介绍保持缩放"，
  "Params Billboard Mode":"参数_介绍模式"，
  "Params Blend Mode":"参数_混合模式"，
  "Params Cull Mode":"参数_剔除模式"，
  "Params Depth Draw Mode":"参数_深度绘制模式"，
  "Params Diffuse Mode":"参数_扩散模式"，
  "Params Grow":"参数_增长"，
  "Params Grow Amount":"参数_增长程度"，
  "Params Line Width":"参数_线宽"，
  "Params Point Size":"参数_点大小"，
  "Params Specular Mode":"参数_镜面反射模式"，
  "Params Use Alpha Scissor":"参数_使用Alpha裁切"，
  "Proximity Fade Distance":"邻近淡出距离"，
  "Proximity Fade Enable":"启用邻近淡出"，
  "Refraction Enabled":"启用折射"，
  "Refraction Scale":"折射缩放"，
  "Refraction Texture":"折射贴图"，
  "Refraction Texture Channel":"折射贴图通道"，
  "Rim":"边缘"，
  "Rim Enabled":"启用边缘"，
  "Rim Texture":"边缘贴图"，
  "Rim Tint":"边缘色调"，
  "Roughness":"粗糙度"，
  "Roughness Texture":"粗糙度贴图"，
  "Roughness Texture Channel":"粗糙度贴图通道"，
  "Subsurf Scatter Enabled":"启用表面散射"，
  "Subsurf Scatter Strength":"表面散射强度"，
  "Subsurf Scatter Texture":"表面散射贴图"，
  "Transmission":"透射"，
  "Transmission Enabled":"启用透射"，
  "Transmission Texture":"透射贴图"，
  "Uv1 Offset":"UV1位置偏移"，
  "Uv1 Scale":"UV1缩放"，
  "Uv1 Triplanar":"UV1三面"，
  "Uv1 Triplanar Sharpness":"UV1三面锐度"，
  "Uv2 Offset":"UV2位置偏移"，
  "Uv2 Scale":"UV2缩放"，
  "Uv2 Triplanar":"UV2三面"，
  "Uv2 Triplanar Sharpness":"UV2三面锐度"，
  "Vertex Color Is Srgb":"SRGB顶点颜色"，
  "Vertex Color Use As Albedo":"顶点颜色用作反射"，
  "Track Physics Step":"物理轨道步长"，
  "Is Hemisphere":"半球"，
  "Prefix":"前缀"，
  "Suffix":"后缀"，
  "Collapsed":"收缩"，
  "Dragger Visibility":"拖动器可见性"，
  "Split Offset":"切割位置偏移"，
  "Spot Angle":"聚光灯角度"，
  "Spot Angle Attenuation":"聚光灯角度衰减"，
  "Spot Attenuation":"聚光灯衰减"，
  "Spot Range":"聚光灯范围"，
  "Spring Length":"弹簧长度"，
  "Frame Coords":"帧位置"，
  "Hframes":"水平帧数"，
  "Region Enabled":"启用区域"，
  "Region Filter Clip":"区域滤镜裁剪"，
  "Vframes":"垂直帧数"，
  "Alpha Cut":"阿尔法剪切"，
  "Billboard":"介绍"，
  "Double Sided":"双面贴图"，
  "Opacity":"不透明"，
  "Pixel Size":"像素大小"，
  "Shaded":"阴影"，
  "Transparent":"透明"，
  "Constant Angular Velocity":"恒定角速度"，
  "Constant Linear Velocity":"恒定线速度"，
  "Big Endian":"大字节序"，
  "Data Array":"数据数组"，
  "Blocking Handshake":"阻止握手"，
  "Load Path":"加载路径"，
  "Content Margin Bottom":"内容边缘下侧"，
  "Content Margin Left":"内容边缘左侧"，
  "Content Margin Right":"内容边缘右侧"，
  "Content Margin Top":"内容边缘上侧"，
  "Anti Aliasing":"抗锯齿"，
  "Anti Aliasing Size":"抗锯齿大小"，
  "Bg Color":"背景颜色"，
  "Border Blend":"边界融合"，
  "Border Width Bottom":"边框底部宽度"，
  "Border Width Left":"边框左侧宽度"，
  "Border Width Right":"边框右侧宽度"，
  "Border Width Top":"边框上部宽度"，
  "Corner Detail":"角落细节"，
  "Corner Radius Bottom Left":"拐角半径左下"，
  "Corner Radius Bottom Right":"拐角半径右下"，
  "Corner Radius Top Left":"拐角半径左上"，
  "Corner Radius Top Right":"拐角半径右上"，
  "Expand Margin Bottom":"扩展边缘上侧"，
  "Expand Margin Left":"扩展边缘左侧"，
  "Expand Margin Right":"扩展边缘右侧"，
  "Expand Margin Top":"扩展边缘下侧"，
  "Shadow Offset":"阴影位置偏移"，
  "Shadow Size":"阴影大小"，
  "Grow Begin":"延伸起点"，
  "Grow End":"延伸末端"，
  "Thickness":"厚度"，
  "Vertical":"垂直"，
  "Modulate Color":"调整颜色"，
  "Current Tab":"当前标签"，
  "Drag To Rearrange Enabled":"拖动重新排列"，
  "Tab Align":"制表符对齐"，
  "Tabs Visible":"标签可见"，
  "Use Hidden Tabs For Min Size":"使用隐藏标签最小尺寸"，
  "Scrolling Enabled":"启用滚动"，
  "Tab Close Display Policy":"标签页关闭显示策略"，
  "Breakpoint Gutter":"断点槽"，
  "Caret Block Mode":"插入符号模式"，
  "Caret Moving By Right Click":"右击插入符号"，
  "Draw Spaces":"绘制空格"，
  "Draw Tabs":"绘制标签"，
  "Fold Gutter":"折叠线槽"，
  "Hiding Enabled":"启用隐藏属性"，
  "Highlight All Occurrences":"突出显示所有事件"，
  "Highlight Current Line":"突出显示当前行"，
  "Minimap Draw":"小地图绘制"，
  "Minimap Width":"小地图宽度"，
  "Readonly":"只读"，
  "Show Line Numbers":"显示行号"，
  "Smooth Scrolling":"平滑滚动"，
  "Syntax Highlighting":"语法高亮"，
  "V Scroll Speed":"垂直滚动速度"，
  "Wrap Enabled":"启用包裹"，
  "Expand":"扩展"，
  "Stretch Mode":"拉伸模式"，
  "Texture Click Mask":"贴图点击遮罩"，
  "Texture Disabled":"禁用贴图"，
  "Texture Focused":"焦点贴图"，
  "Texture Hover":"悬停贴图"，
  "Texture Normal":"正常贴图"，
  "Texture Pressed":"按压贴图"，
  "Fill Mode":"填充模式"，
  "Nine Patch Stretch":"九宫格拉伸"，
  "Radial Center Offset":"径向中心位置偏移"，
  "Radial Fill Degrees":"径向填充角度"，
  "Radial Initial Angle":"径向初始角度"，
  "Stretch Margin Bottom":"拉伸边缘下侧"，
  "Stretch Margin Left":"拉伸边缘左侧"，
  "Stretch Margin Right":"拉伸边缘右侧"，
  "Stretch Margin Top":"拉伸边缘上侧"，
  "Texture Over":"上面贴图"，
  "Texture Progress":"进度贴图"，
  "Texture Under":"下面贴图"，
  "Tint Over":"上面着色"，
  "Tint Progress":"进度着色"，
  "Tint Under":"下面着色"，
  "Default Font":"默认字体"，
  "Cell Clip Uv":"裁剪单元UV"，
  "Cell Custom Transform":"自定义单元变换"，
  "Cell Half Offset":"单元半位置偏移"，
  "Cell Quadrant Size":"单元格象限大小"，
  "Cell Tile Origin":"单元瓦片原点"，
  "Cell Y Sort":"单元Y排序"，
  "Centered Textures":"贴图居中"，
  "Collision Bounce":"碰撞反弹"，
  "Collision Friction":"碰撞摩擦"，
  "Collision Use Kinematic":"运动体碰撞"，
  "Collision Use Parent":"使用父级碰撞"，
  "Compatibility Mode":"兼容模式"，
  "Occluder Light Mask":"光线遮蔽遮罩"，
  "Tile Set":"瓦片集合"，
  "Autostart":"自动开启"，
  "Wait Time":"等待时间"，
  "Bitmask":"位数掩码"，
  "Passby Press":"传递按压"，
  "Shape Centered":"形状居中"，
  "Shape Visible":"形状可见"，
  "Visibility Mode":"可见性模式"，
  "Basis":"基础"，
  "Origin":"原点"，
  "Drop Mode Flags":"删除模式标记"，
  "Hide Folding":"隐藏折叠"，
  "Hide Root":"隐藏根"，
  "Custom Minimum Height":"自定义最小高度"，
  "Disable Folding":"禁用折叠"，
  "Repeat":"重复"，
  "Brake":"制动"，
  "Engine Force":"引擎力量"，
  "Steering":"转向"，
  "Damping Compression":"压缩阻尼"，
  "Damping Relaxation":"松弛阻尼"，
  "Suspension Max Force":"悬架最大力量"，
  "Suspension Stiffness":"悬架刚度"，
  "Suspension Travel":"悬挂行程"，
  "Use As Steering":"用作转向"，
  "Use As Traction":"用作牵引力"，
  "Wheel Friction Slip":"车轮摩擦滑移"，
  "Wheel Radius":"车轮半径"，
  "Wheel Rest Length":"车轮静止距离"，
  "Wheel Roll Influence":"车轮侧倾影响"，
  "Audio Track":"音轨"，
  "Buffering Msec":"缓冲毫秒"，
  "Stream Position":"流位置"，
  "Volume":"音量"，
  "Audio Listener Enable 2D":"启用2D音频监听器"，
  "Audio Listener Enable 3D":"启用3d音频监听器"，
  "Canvas Transform":"画布变换"，
  "Debug Draw":"调试绘制"，
  "Disable 3D":"禁用3D"，
  "Global Canvas Transform":"全局画布变换"，
  "Gui Disable Input":"GUI禁用输入"，
  "Gui Snap Controls To Pixels":"GUI控件像素捕获"，
  "Handle Input Locally":"本地输入处理"，
  "Keep 3D Linear":"保持线性3D"，
  "Own World":"自己的世界"，
  "Physics Object Picking":"物理对象拾取"，
  "Render Direct To Screen":"直接渲染到屏幕"，
  "Render Target Clear Mode":"渲染目标清除模式"，
  "Render Target Update Mode":"渲染目标更新模式"，
  "Render Target V Flip":"渲染目标垂直翻转"，
  "Shadow Atlas Quad 0":"阴影图集0"，
  "Shadow Atlas Quad 1":"阴影图集1"，
  "Shadow Atlas Quad 2":"阴影图集2"，
  "Shadow Atlas Quad 3":"阴影图集3"，
  "Shadow Atlas Size":"阴影图集大小"，
  "Size Override Stretch":"尺寸覆盖拉伸"，
  "Transparent Bg":"透明背景"，
  "Usage":"用法"，
  "World":"世界"，
  "World 2D":"2D世界"，
  "Stretch":"拉伸"，
  "Stretch Shrink":"拉伸收缩"，
  "Viewport Path":"视窗路径"，
  "Freeze Bodies":"冻结物体"，
  "Pause Animations":"暂停动画"，
  "Pause Animated Sprites":"暂停动画精灵"，
  "Pause Particles":"暂停粒子"，
  "Physics Process Parent":"物理进程父级"，
  "Process Parent":"进程父级"，
  "Output Port For Preview":"预览输出端口"，
  "Constant":"常量"，
  "Function":"函数"，
  "Operator":"运算符"，
  "Condition":"条件"，
  "Type":"类型"，
  "Cube Map":"立方体贴图"，
  "Source":"资源"，
  "Texture Type":"贴图类型"，
  "Expression":"表达式"，
  "Input Name":"输入名称"，
  "Color Default":"默认颜色"，
  "Uniform Name":"统一名称"，
  "Direct Space State":"直接空间状态"，
  "Fallback Environment":"备用环境"，
  "Scenario":"情景"，
  "Space":"空间"，
  "Canvas":"画布"，
  "Sort Enabled":"启用排序"，
  "Compression Level":"压缩级别"，
  "Long Distance Matching":"长距匹配"，
  "Window Log Size":"窗口日志大小"，
  "Autocomplete Setters And Getters":"自动完成的设置和获取"，
  "Constant Used As Function":"常量用作函数"，
  "Deprecated Keyword":"不推荐使用的关键字"，
  "Enable":"启用"，
  "Exclude Addons":"排除插件"，
  "Function Conflicts Constant":"函数碰撞常量"，
  "Function Conflicts Variable":"函数碰撞变量"，
  "Function May Yield":"函数有可能产生"，
  "Function Used As Property":"函数使用为属性"，
  "Incompatible Ternary":"三元运算符不兼容"，
  "Integer Division":"整数除法"，
  "Narrowing Conversion":"缩小转换"，
  "Property Used As Function":"属性用作函数"，
  "Return Value Discarded":"返回值被丢弃"，
  "Shadowed Variable":"跟踪变量"，
  "Standalone Expression":"独立表达式"，
  "Standalone Ternary":"独立三元表达式"，
  "Treat Warnings As Errors":"将警告视为错误"，
  "Unassigned Variable":"未分配的变量"，
  "Unassigned Variable Op Assign":"未分配的变量赋值"，
  "Unreachable Code":"无法访问的代码"，
  "Unsafe Call Argument":"不安全的调用参数"，
  "Unsafe Cast":"不安全的转换"，
  "Unsafe Method Access":"不安全的方法访问"，
  "Unsafe Property Access":"不安全的属性访问"，
  "Unused Argument":"未使用的参数"，
  "Unused Class Variable":"未使用的成员"，
  "Unused Signal":"未使用的信号"，
  "Unused Variable":"未使用的变量"，
  "Variable Conflicts Function":"变量与函数冲突"，
  "Void Assignment":"无效赋值"，
  "Force Fps":"强制FPS"，
  "Max Call Stack":"最大调用堆栈"，
  "Max Functions":"最大函数量"，
  "Print Fps":"打印FPS"，
  "Verbose Stdout":"详细的标准输出"，
  "Contact Color":"触点颜色"，
  "Max Contacts Displayed":"显示的最大触点数"，
  "Shape Color":"形状颜色"，
  "Disabled Geometry Color":"禁用几何颜色"，
  "Geometry Color":"几何颜色"，
  "Allow Hidpi":"允许HIDPI"，
  "Orientation":"方向"，
  "Hide Home Indicator":"隐藏首页提示"，
  "Allowed":"允许"，
  "Always On Top":"总在最前"，
  "Borderless":"无边框"，
  "Fullscreen":"全屏"，
  "Test Height":"测试高度"，
  "Test Width":"测试宽度"，
  "Use Vsync":"使用VSYNS"，
  "Max Size Kb":"最大KB"，
  "Rid Pool Prealloc":"RID池分配"，
  "Max Chars Per Second":"每秒最大字符数"，
  "Max Errors Per Second":"每秒最大错误数"，
  "Max Messages Per Frame":"每帧最大消息数"，
  "Max Warnings Per Second":"每秒最大警告"，
  "Max Buffer Po2":"最大缓冲区PO2"，
  "Connect Timeout Seconds":"连接超时秒数"，
  "Max Channel In Buffer Kb":"输入缓冲区最大通道KB"，
  "Max In Buffer Kb":"输入缓冲区最大KB"，
  "Max In Packets":"输入最大包数"，
  "Max Out Buffer Kb":"输出缓冲区最大kb"，
  "Max Out Packets":"输出最大包数"，
  "Blend Shape Max Buffer Size Kb":"混合形状最大缓冲区大小KB"，
  "Canvas Polygon Buffer Size Kb":"画布多边形缓冲区大小KB"，
  "Canvas Polygon Index Buffer Size Kb":"画布多边形索引缓冲区大小KB"，
  "Immediate Buffer Size Kb":"直接缓冲区大小KB"，
  "Max Renderable Elements":"最大可渲染元素"，
  "Max Renderable Lights":"最大可渲染灯光"，
  "Max Renderable Reflections":"最大可渲染反射"，
  "Time Rollover Secs":"回滚时间"，
  "Gles2 Use Nvidia Rect Flicker Workaround":"GLES2使用nvidia 矩形闪烁解决方法"，
  "Use Pixel Snap":"使用像素捕获"，
  "Disable For Vendors":"禁用供应商"，
  "Driver Name":"驱动名称"，
  "Fallback To Gles2":"回退到GLES2"，
  "Anisotropic Filter Level":"各向异性过滤级别"，
  "Use Nearest Mipmap Filter":"使用邻近纹理贴图过滤"，
  "Framebuffer Allocation":"帧缓冲区分配"，
  "Framebuffer Allocation.Mobile":"帧缓冲区分配_移动"，
  "Atlas Size":"图集大小"，
  "Atlas Subdiv":"图集细分"，
  "High Quality Ggx":"高品质GGX"，
  "High Quality Ggx.Mobile":"高品质GGX_移动"，
  "Irradiance Max Size":"最大发光度"，
  "Texture Array Reflections":"贴图阵列反射"，
  "Texture Array Reflections.Mobile":"贴图阵列反射_移动"，
  "Force Blinn Over Ggx":"在GGX上强制使用Blinn"，
  "Force Blinn Over Ggx.Mobile":"在GGX上强制使用Blinn_移动"，
  "Force Lambert Over Burley":"强制用Lambert覆盖Burley"，
  "Force Lambert Over Burley.Mobile":"强制用Lambert覆盖Burley_移动"，
  "Force Vertex Shading":"强制顶点着色"，
  "Force Vertex Shading.Mobile":"强制顶点着色_移动"，
  "Quadrant 0 Subdiv":"细分象限0"，
  "Quadrant 1 Subdiv":"细分象限1"，
  "Quadrant 2 Subdiv":"细分象限2"，
  "Quadrant 3 Subdiv":"细分象限3"，
  "Filter Mode":"过滤模式"，
  "Filter Mode.Mobile":"过滤模式_移动"，
  "Follow Surface":"沿着曲面"，
  "Quality":"质量"，
  "Weight Samples":"重度采样"，
  "High Quality":"高质量"，
  "Delay Ms":"延迟毫秒"，
  "Level Db":"分贝级别"，
  "Lowpass":"低通"，
  "Force Limit":"力度限制"，
  "Lower Angle":"沿负角度"，
  "Restitution":"补偿"，
  "Upper Angle":"沿正角度"，
  "Target Velocity":"目标速度"，
  "Equilibrium Point":"平衡点"，
  "Lower Distance":"负距"，
  "Upper Distance":"正距"，
  "Lower":"降低"，
  "Upper":"提升"，
  "Max Impulse":"最大推力"，
  "Exclude Nodes":"排除节点"，
  "Safe Margin":"安全边界"，
  "Sync To Physics":"物理同步"，
  "Max Climb":"最大增值"，
  "Max Slope":"最大斜率"，
  "Sample Distance":"采样距离"，
  "Sample Max Error":"采样最大误差"，
  "Max Error":"最大误差"，
  "Filter Walkable Low Height Spans":"过滤器通过低高度范围"，
  "Ledge Spans":"大跨度"，
  "Low Hanging Obstacles":"低悬置障碍"，
  "Parsed Geometry Type":"解析几何类型"，
  "Source Geometry Mode":"源几何体模式"，
  "Source Group Name":"源组名称"，
  "Verts Per Poly":"每个多边形的顶点数"，
  "Merge Size":"合并大小"，
  "Min Size":"最小尺寸"，
  "Impulse Clamp":"脉冲极限"，
  "Modules":"模块"，
  "Boot Splash":"开机画面"，
  "Config":"配置"，
  "Run":"运行"，
  "Channel Disable Threshold Db":"通道禁用阈值分贝"，
  "Channel Disable Time":"通道禁用时间"，
  "Default Bus Layout":"默认总线布局"，
  "Driver":"驱动"，
  "Enable Audio Input":"启用音频输入"，
  "Output Latency":"输出延迟"，
  "Video Delay Compensation Ms":"视频延迟补偿MS"，
  "Formats":"格式"，
  "Gdscript":"GDSCRIPT"，
  "Settings":"设定"，
  "Shapes":"形状"，
  "Mouse Cursor":"滑鼠游标"，
  "Window":"窗口"，
  "Script Templates Search Path":"脚本模板搜索路径"，
  "Search In File Extensions":"搜索文件扩展名"，
  "Common":"常用"，
  "Timers":"计时器"，
  "Ui Accept":"ui接受"，
  "Ui Cancel":"ui取消"，
  "Ui Down":"ui下"，
  "Ui End":"ui结束"，
  "Ui Focus Next":"ui焦点下一个"，
  "Ui Focus Prev":"ui焦点上一个"，
  "Ui Home":"ui开始"，
  "Ui Left":"ui左"，
  "Ui Page Down":"ui下一页"，
  "Ui Page Up":"ui上一页"，
  "Ui Right":"ui右"，
  "Ui Select":"ui选择"，
  "Ui Up":"ui上"，
  "Pointing":"指示"，
  "2D Physics":"2D物理"，
  "2D Render":"2D渲染"，
  "3D Physics":"3D物理"，
  "3D Render":"3D渲染"，
  "Test":"测试"，
  "File Logging":"文件日志"，
  "Limits":"限制"，
  "Remote Fs":"遥控FS"，
  "Name Casing":"名称框"，
  "Name Num Separator":"名称数字分隔符"，
  "Threads":"线程"，
  "Vram Compression":"VRAM压缩"，
  "Depth Ms":"深度MS"，
  "Fullsize":"全尺寸"，
  "Image":"图片"，
  "Custom User Dir Name":"自定义用户目录名称"，
  "Description":"描述"，
  "Macos Native Icon":"MAC本机图标"，
  "Project Settings Override":"覆盖项目设置"，
  "Use Custom User Dir":"使用自定义用户目录"，
  "Windows Native Icon":"Windows本机图标"，
  "Disable Stderr":"禁用标准错误"，
  "Disable Stdout":"禁用标准输出"，
  "Frame Delay Msec":"帧延迟毫秒数"，
  "Low Processor Mode":"低处理器模式"，
  "Low Processor Mode Sleep Usec":"低处理器模式休眠量"，
  "Main Scene":"主要场景"，
  "Completion":"完成"，
  "Warnings":"警告"，
  "Crash Handler":"碰撞处理程序"，
  "Profiler":"分析工具"，
  "Stdout":"标准输出"，
  "Visual Script":"可视脚本"，
  "Navigation":"导航"，
  "Custom Image":"自定义图片"，
  "Custom Image Hotspot":"自定义图片热点"，
  "Tooltip Position Offset":"工具提示位置偏移"，
  "Dpi":"分辨率"，
  "Energy Saving":"节约能量"，
  "Handheld":"手持设备"，
  "Per Pixel Transparency":"每像素透明度"，
  "Vsync":"垂直同步"，
  "Default Scroll Deadzone":"默认滚动盲区"，
  "Swap Ok Cancel":"交换OK与取消"，
  "Custom":"自定义"，
  "Custom Font":"自定义字体"，
  "Use Hidpi":"使用HiDPI"，
  "Incremental Search Max Interval Msec":"增量搜索最大间隔毫秒"，
  "Text Edit Idle Detect Sec":"文本编辑空闲检测秒数"，
  "Tooltip Delay Sec":"工具提示延迟秒数"，
  "Emulate Mouse From Touch":"模拟触摸鼠标"，
  "Emulate Touch From Mouse":"模拟鼠标触摸"，
  "Layer 1":"第1层"，
  "Layer 10":"第10层"，
  "Layer 11":"第11层"，
  "Layer 12":"第12层"，
  "Layer 13":"第13层"，
  "Layer 14":"第14层"，
  "Layer 15":"第15层"，
  "Layer 16":"第16层"，
  "Layer 17":"第17层"，
  "Layer 18":"第18层"，
  "Layer 19":"第19层"，
  "Layer 2":"第2层"，
  "Layer 20":"第20层"，
  "Layer 3":"第3层"，
  "Layer 4":"第4层"，
  "Layer 5":"第5层"，
  "Layer 6":"第6层"，
  "Layer 7":"第7层"，
  "Layer 8":"第8层"，
  "Layer 9":"第9层"，
  "Enable File Logging":"启用文件日志"，
  "Log Path":"日志路径"，
  "Max Log Files":"最大日志文件数"，
  "Message Queue":"消息队列"，
  "Multithreaded Server":"多线程服务器"，
  "Debugger Stdout":"调试器标准输出"，
  "Packet Peer Stream":"数据包对等流"，
  "Websocket Client":"套接字客户端"，
  "Websocket Server":"套接字服务器"，
  "Page Read Ahead":"预读页面"，
  "Page Size":"页面大小"，
  "Certificates":"CA证书"，
  "Bp Hash Table Size":"BP哈希表大小"，
  "Default Angular Damp":"默认角度阻尼"，
  "Default Gravity":"默认重力"，
  "Default Gravity Vector":"默认重力向量"，
  "Default Linear Damp":"默认线性阻尼"，
  "Large Object Surface Threshold In Cells":"单元中的大物体表面阈值"，
  "Physics Engine":"物理引擎"，
  "Sleep Threshold Angular":"休眠阈值角度"，
  "Sleep Threshold Linear":"休眠阈值线性"，
  "Thread Model":"线程模式"，
  "Time Before Sleep":"休眠前的时间"，
  "Active Soft World":"激活软性世界"，
  "Enable Object Picking":"启用对象捕获"，
  "Physics Fps":"物理FPS"，
  "Default Clear Color":"默认清除颜色"，
  "Default Environment":"默认环境"，
  "Buffers":"缓冲区"，
  "Time":"时间"，
  "Depth Prepass":"深度预处理"，
  "Directional Shadow":"定向阴影"，
  "Intended Usage":"预期用途"，
  "Reflections":"反射"，
  "Shading":"阴影"，
  "Shadow Atlas":"阴影图集"，
  "Shadows":"阴影"，
  "Subsurface Scattering":"表面散射"，
  "Voxel Cone Tracing":"三维像素锥跟踪"，
  "Import Bptc":"导入BPTC"，
  "Import Etc":"导入ETC"，
  "Import Etc2":"导入ETC2"，
  "Import Pvrtc":"导入PVRTC"，
  "Import S3Tc":"导入S3TC"，
  "Interface":"界面"，
  "Scene Tabs":"场景标签"，
  "Dialogs":"对话框"，
  "Editors":"编辑器"，
  "Filesystem":"文件系统"，
  "Directories":"目录"，
  "On Save":"当保存时"，
  "File Dialogs":"文件对话框"，
  "File Server":"文件服务器"，
  "Docks":"停靠"，
  "Scene Tree":"场景树"，
  "Property Editor":"属性编辑器"，
  "Text Editor":"文本编辑器"，
  "Highlighting":"高亮显示"，
  "Indent":"缩进"，
  "Appearance":"外观"，
  "Script List":"脚本列表"，
  "Files":"文档"，
  "Cursor":"光标"，
  "External":"外部"，
  "Open Scripts":"打开脚本"，
  "Poly Editor":"多边形编辑器"，
  "Tile Map":"瓦片地图"，
  "3d Gizmos":"3D装置"，
  "Window Placement":"窗口布置"，
  "Auto Save":"自动保存"，
  "Language Server":"语言服务器"，
  "Builds":"构建"，
  "Editor Language":"编辑器语言"，
  "Display Scale":"显示比例"，
  "Custom Display Scale":"自定义显示比例"，
  "Main Font Size":"主要字体大小"，
  "Code Font Size":"代码字体大小"，
  "Font Antialiased":"字体抗锯齿"，
  "Font Hinting":"字体提示"，
  "Main Font":"主要字体"，
  "Main Font Bold":"主要字体加粗"，
  "Code Font":"代码字体"，
  "Dim Editor On Dialog Popup":"弹出对话框暗淡编辑器"，
  "Unfocused Low Processor Mode Sleep Usec":"失去焦点低处理器休眠模式微秒"，
  "Separate Distraction Mode":"单独分解模式"，
  "Automatically Open Screenshots":"自动打开屏幕截图"，
  "Hide Console Window":"隐藏控制台窗口"，
  "Save Each Scene On Quit":"退出时保存每个场景"，
  "Dim Amount":"暗淡程度"，
  "Dim Transition Time":"暗淡过渡时间"，
  "Hidpi Mode":"HiDPI模式"，
  "Show Type Icons":"显示类型图标"，
  "Capitalize Properties":"大写属性"，
  "Disable Inspector Folding":"禁用检视面板折叠"，
  "Show Update Spinner":"更新显示下拉列表"，
  "Icon And Font Color":"图标和字体颜色"，
  "Base Color":"基本颜色"，
  "Accent Color":"强调颜色"，
  "Contrast":"对比度"，
  "Relationship Line Opacity":"关联线条不透明度"，
  "Highlight Tabs":"高亮显示标签"，
  "Border Size":"边框尺寸"，
  "Use Graph Node Headers":"使用图表节点标题"，
  "Additional Spacing":"附加间距"，
  "Custom Theme":"自制主题"，
  "Show Extension":"显示扩展名"，
  "Show Thumbnail On Hover":"悬停显示缩略图"，
  "Resize If Many Tabs":"如果有多个标签则调整大小"，
  "Minimum Width":"最小宽度"，
  "Show Script Button":"显示脚本按钮"，
  "Always Show Close Button":"始终显示关闭按钮"，
  "Restore Scenes On Load":"在加载时还原场景"，
  "Project Settings Bounds":"项目设置范围"，
  "Editor Settings Bounds":"编辑器设置范围"，
  "Export Bounds":"导出范围"，
  "Create New Node Bounds":"创建新节点范围"，
  "Capitalize ProPerties":"大写属性"，
  "Auto Unfold Foreign Scenes":"自动展开无关场景"，
  "Horizontal Vector 2 Editing":"水平2维向量编辑"，
  "Horizontal Vector Types Editing":"水平向量类型编辑"，
  "Open Resources In Current Inspector":"在当前检查器中打开资源"，
  "Resources To Open In New Inspector":"在新的检查器中打开的资源"，
  "Default Float Step":"默认浮点数位数"，
  "Default Color Picker Mode":"默认拾色器模式"，
  "Derive Script Globals By Name":"通过名称派生脚本全局变量"，
  "Show Scene Tree Root Selection":"显示场景树根选择"，
  "Autoscan Project Path":"自动扫描项目路径"，
  "Default Project Path":"默认项目路径"，
  "Default Project Export Path":"默认项目导出路径"，
  "Compress Binary Resources":"压缩二进制资源"，
  "Safe Save On Backup Then Rename":"安全保存备份然后重命名"，
  "Save Modified External Resources":"保存修改后的外部资源"，
  "Thumbnail Size":"缩略图大小"，
  "Pvrtc Texture Tool":"Pvrtc贴图工具"，
  "Pvrtc Fast Conversion":"Pvrtc快速转换"，
  "Automatic Reimport On Sources Changed":"源文件改变时自动重新导入"，
  "Save Compressed Resources":"保存压缩资源"，
  "Auto Reload Modified Images":"自动重新加载修改的图像"，
  "Port":"端口"，
  "Password":"密码"，
  "Start Create Dialog Fully Expanded":"开始创建对话框时完全展开"，
  "Draw Relationship Lines":"绘制关联线"，
  "Relationship Line Color":"关联线颜色"，
  "Always Show Folders":"总显示文件夹"，
  "Auto Refresh Interval":"自动刷新间隔"，
  "Texture Preview Width":"贴图预览宽度"，
  "Color Theme":"颜色主题"，
  "Line Spacing":"行间距"，
  "Symbol Color":"符号颜色"，
  "Keyword Color":"关键字颜色"，
  "Base Type Color":"基本类型颜色"，
  "Engine Type Color":"引擎类型颜色"，
  "User Type Color":"使用类型颜色"，
  "Comment Color":"注释颜色"，
  "String Color":"字符串颜色"，
  "Completion Background Color":"完成背景色"，
  "Completion Selected Color":"完成所选颜色"，
  "Completion Existing Color":"完成现有颜色"，
  "Completion Scroll Color":"完成滚动颜色"，
  "Completion Font Color":"完成字体颜色"，
  "Text Color":"文本颜色"，
  "Line Number Color":"行号颜色"，
  "Safe Line Number Color":"安全行号颜色"，
  "Caret Color":"插入符号颜色"，
  "Caret Background Color":"插入符号背景色"，
  "Text Selected Color":"文本选择颜色"，
  "Selection Color":"选择颜色"，
  "Brace Mismatch Color":"括号不匹配颜色"，
  "Current Line Color":"当前行颜色"，
  "Line Length Guideline Color":"行长参考颜色"，
  "Word Highlighted Color":"单词高亮颜色"，
  "Number Color":"数字颜色"，
  "Function Color":"函数颜色"，
  "Member Variable Color":"成员变量颜色"，
  "Mark Color":"标记颜色"，
  "Bookmark Color":"标记颜色"，
  "Breakpoint Color":"断点颜色"，
  "Executing Line Color":"执行行颜色"，
  "Code Folding Color":"代码折叠颜色"，
  "Search Result Color":"搜索结果颜色"，
  "Search Result Border Color":"搜索结果边框颜色"，
  "Highlight Type Safe Lines":"高亮显示安全行"，
  "Function Definition Color":"函数定义颜色"，
  "Node Path Color":"节点路径颜色"，
  "Convert Indent On Save":"转换缩进保存"，
  "Show Minimap":"显示小地图"，
  "Line Numbers Zero Padded":"填充零行号"，
  "Show Bookmark Gutter":"显示书签区"，
  "Show Breakpoint Gutter":"显示断点区"，
  "Show Info Gutter":"显示信息区"，
  "Code Folding":"代码折叠"，
  "Word Wrap":"自动换行"，
  "Show Line Length Guideline":"显示行长参考"，
  "Line Length Guideline Column":"行长参考列"，
  "Show Members Overview":"显示成员概述"，
  "Script Temperature Enabled":"启用脚本热度"，
  "Highlight Current Script":"高亮当前脚本"，
  "Script Temperature history Size":"脚本热度历史记录大小"，
  "Current Script Background Color":"当前脚本背景颜色"，
  "Group Help Pages":"分组帮助页面"，
  "Sort Scripts By":"脚本排序依据"，
  "List Script Names As":"列出脚本名称清单"，
  "Trim Trailing Whitespace On Save":"在保存时裁剪尾部空白"，
  "Autosave Interval Secs":"自动保存间隔秒数"，
  "Restore Scripts On Load":"在加载时还原脚本"，
  "Maximum Recent Files":"最近最大文件数"，
  "Auto Reload Scripts On External Change":"在外部更改时自动重新加载脚本"，
  "Auto Reload And Parse Scripts On Save":"保存时自动重新加载和解析脚本"，
  "Open Dominant Script On Scene Change":"在场景更改时打开主脚本"，
  "Create Signal Callbacks":"创建信号回调"，
  "Sort Members Outline Alphabetically":"按字母顺序对成员进行排序"，
  "Scroll Past End Of File":"滚动到文件末尾"，
  "Block Caret":"块插入符"，
  "Right Click Moves Caret":"单击右键插入符号"，
  "Idle Parse Delay":"闲置解析延迟"，
  "Auto Brace Complete":"支持自动完成"，
  "Code Complete Delay":"完成代码延迟"，
  "Callhint Tooltip Offset":"调用提示工具位置偏移"，
  "Complete File Paths":"完整的文件路径"，
  "Add Type Hints":"添加类型提示"，
  "Use Single Quotes":"使用单引号"，
  "Enable Code Completion Delay":"启用代码完成延迟"，
  "Show Help Index":"显示帮助索引"，
  "Help Font Size":"帮助字体大小"，
  "Help Source Font Size":"帮助源字体大小"，
  "Help Title Font Size":"帮助标题字体大小"，
  "Doc Path":"文件路径"，
  "Sort Functions Alphabetically":"按字母排序函数"，
  "Use External Editor":"使用外部编辑器"，
  "Exec Path":"执行路径"，
  "Exec Flags":"执行标记"，
  "Script Temperature Enabled":"启用脚本热度"，
  "Highlight Current Script":"高亮显示当前脚本"，
  "Script Temperature History Size":"脚本热度历史记录大小"，
  "Current Script Background Color":"当前脚本背景色"，
  "Group Help Pages":"分组帮助页面"，
  "Sort Scripts By":"脚本排序依据"，
  "List Script Names As":"列出脚本名称清单"，
  "Pick Distance":"捕获距离"，
  "Preview Size":"预览尺寸"，
  "Palette Min Width":"调色板最小宽度"，
  "Editor Side":"编辑器侧边"，
  "Primary Grid Color":"主网格颜色"，
  "Secondary Grid Color":"次网格颜色"，
  "Grid Size":"网格尺寸"，
  "Primary Grid Steps":"主网格步长"，
  "Default Fov":"默认视角"，
  "Default Z Near":"默认Z近值"，
  "Default Z Far":"默认Z远值"，
  "Grid Color":"网格颜色"，
  "Manipulator Gizmo Size":"操作装置大小"，
  "Manipulator Gizmo Opacity":"操作装置不透明度"，
  "Navigation Scheme":"导航方案"，
  "Invert Y Axis":"反转Y轴"，
  "Zoom Style":"变焦样式"，
  "Emulate 3 Button Mouse":"模拟3键鼠标"，
  "Orbit Modifier":"轨道调节器"，
  "Pan Modifier":"平移调节器"，
  "Warped Mouse Panning":"位置偏移鼠标平移"，
  "Navigation Feel":"触摸导航"，
  "Orbit Sensitivity":"轨道灵敏度"，
  "Orbit Inertia":"轨道惯性"，
  "Translation Inertia":"转换惯性"，
  "Zoom Inertia":"变焦惯性"，
  "Manipulation Orbit Inertia":"操作轨道惯性"，
  "Manipulation Translation Inertia":"操纵平移惯性"，
  "Freelook":"自由视角"，
  "Freelook Inertia":"自由惯性"，
  "Freelook Base Speed":"自由视角基本速度"，
  "Freelook Activation Modifier":"自由视角激活调节器"，
  "Freelook Speed Zoom Link":"自由视角速度变焦链接"，
  "Grid Color":"网格颜色"，
  "Guides Color":"指南颜色"，
  "Smart Snapping Line Color":"智能捕获线颜色"，
  "Bone Width":"骨宽"，
  "Bone Color 1":"骨色1"，
  "Bone Color 2":"骨色2"，
  "Bone Selected Color":"骨选择色"，
  "Bone Ik Color":"骨IK色"，
  "Bone Outline Color":"骨轮廓色"，
  "Bone Outline Size":"骨轮廓尺寸"，
  "Viewport Border Color":"视窗边框颜色"，
  "Constrain Editor View":"约束编辑视图"，
  "Warped Mouse Panning":"位置偏移鼠标平移"，
  "Simple Panning":"简单平移"，
  "Scroll To Pan":"平移滚动"，
  "Pan Speed":"平移速度"，
  "Point Grab Radius":"点抓取半径"，
  "Show Previous Outline":"显示上一个大纲"，
  "Autorename Animation Tracks":"自动重命名动画轨道"，
  "Confirm Insert Track":"确认插入轨道"，
  "Onion Layers Past Color":"洋葱层过去的颜色"，
  "Onion Layers Future Color":"洋葱层未来的颜色"，
  "Preview Size":"预览尺寸"，
  "Palette Item hseparation":"调色板项目分离"，
  "Show Tile Names":"显示图块名称"，
  "Show Tile Ids":"显示图块ID"，
  "Sort Tiles By Name":"图块按名称排序"，
  "Bucket Fill Preview":"批量填充预览"，
  "Show Tile Info On Hover":"在悬停时显示图块信息"，
  "Palette Min Width":"调色板最小宽度"，
  "Editor Side":"编辑侧边"，
  "Gizmo Colors":"装置颜色"，
  "Stream Player 3d":"流播放3D"，
  "Camera":"相机"，
  "Visibility Notifier":"可见性通知"，
  "Reflection Probe":"反射探头"，
  "Gi Probe":"Gi探头"，
  "Baked Indirect Light":"烘焙间接光"，
  "Joint":"关节"，
  "Joint Body A":"关节体A"，
  "Joint Body B":"关节体B"，
  "Navigation Edge":"导航边缘"，
  "Navigation Edge Disabled":"禁用导航边缘"，
  "Navigation Solid":"导航实体"，
  "Navigation Solid Disabled":"禁用导航实体"，
  "Instanced":"实例化"，
  "Rect Custom Position":"自定义矩形位置"，
  "Screen":"屏幕"，
  "Save Before Running":"运行前保存"，
  "Font Size":"字体大小"，
  "Always Clear Output On Play":"播放时始终清除输出"，
  "Always Open Output On Play":"播放时始终打开输出"，
  "Always Close Output On Stop":"停止时始终关闭输出"，
  "Remote Host":"遥控主机"，
  "Remote Port":"遥控端口"，
  "Editor Ssl Certificates":"编辑器SSL证书"，
  "Enable Smart Resolve":"启用智能解析"，
  "Show Native Symbols In Editor":"在编辑器中显示本机符号"，
  "Use Thread":"使用多线程"，
  "Sorting Order":"排序顺序"，
  "Jarsigner":"签名工具"，
  "Debug Keystore":"调试密钥库"，
  "Debug Keystore User":"调试密钥库用户"，
  "Debug Keystore Pass":"调试密钥库传递"，
  "Force System User":"强制系统用户"，
  "Timestamping Authority Url":"时间戳授权网址"，
  "Shutdown Adb On Exit":"退出时关闭Adb"，
  "Custom Build Sdk Path":"自定义构建SDK路径"，
  "Signtool":"签名工具"，
  "Debug Certificate":"调试证书"，
  "Debug Password":"调试密码"，
  "Debug Algorithm":"调试算法"，
  "Rcedit":"重做"，
  "Http Host":"Http主机"，
  "Http Port":"Http端口"，
  "Auto Switch To Remote Scene Tree":"自动切换到遥控场景树"，
  "Remote Scene Tree Refresh Interval":"遥控场景树刷新间隔"，
  "Remote Inspect Refresh Interval":"遥控监视面板刷新间隔"，
  "Profiler Frame History Size":"分析器框架历史记录大小"，
  "Profiler Frame Max Functions":"分析器框架最大函数"，
  "Build Tool":"构建工具"，
  "Print Build Output":"打印构建输出"，
  "Show Info On Start":"在开始时显示信息"，
  "External Editor":"外部编辑器"，
  "Editor Path Optional":"编辑器路径可选"，
  "Visibility":"可见性"，
  "Editor Description":"编辑器说明"，
  "Pause":"暂停"，
  "Dialog":"对话框"，
  "Hide On Ok":"选OK隐藏"，
  "Popup":"弹出"，
  "Exclusive":"唯一"，
  "Anchor":"锚点"，
  "Grow Direction":"生长方向"，
  "Hint":"提示"，
  "Tooltip":"工具提示"，
  "Focus":"焦点"，
  "Neighbour Left":"左相邻"，
  "Neighbour Top":"顶相邻"，
  "Neighbour Right":"右相邻"，
  "Neighbour Bottom":"底相邻"，
  "Mouse":"鼠标"，
  "Default Cursor Shape":"默认光标形状"，
  "Size Flags":"大小标记"，
  "Horizontal":"水平"，
  "Stretch Ratio":"拉伸比例"，
  "Override":"覆盖"，
  "Audio Bus":"音频总线"，
  "Base Offset":"基本位置偏移"，
  "Base Scale":"基本缩放"，
  "Limit Begin":"开始限制"，
  "Limit End":"结束限制"，
  "Ignore Camera Zoom":"忽略相机变焦"，
  "Follow Viewport":"跟随视窗"，
  "Mask":"遮罩"，
  "Pickable":"可捕获"，
  "Matrix":"矩阵"，
  "Bake":"烘培"，
  "Default Texels Per Unit":"默认纹理元素单位"，
  "Drawing":"绘制"，
  "Align Y":"对齐Y"，
  "Rotate Y":"旋转Y"，
  "Disable Z":"禁用Z"，
  "Velocity Random":"速率随机"，
  "Velocity Curve":"速率曲线"，
  "Accel":"加速"，
  "Accel Random":"加速随机"，
  "Accel Curve":"加速曲线"，
  "Variation":"变化"，
  "Variation Random":"变化随机"，
  "Variation Curve":"变化曲线"，
  "Speed Random":"速度随机"，
  "Speed Curve":"速度曲线"，
  "Offset Random":"偏移随机"，
  "Offset Curve":"偏移曲线"，
  "Min Hysteresis":"最小线滞"，
  "Max Hysteresis":"最大线滞"，
  "Reverb Bus":"混响总线"，
  "Uniformity":"均匀性"，
  "Axis Lock":"轴锁定"，
  "Linear X":"线性X"，
  "Linear Y":"线性Y"，
  "Linear Z":"线性Z"，
  "Angular X":"角度X"，
  "Angular Y":"角度Y"，
  "Angular Z":"角度Z"，
  "Damp":"阻尼"，
  "Angular":"角度"，
  "Emission Angle":"发射角"，
  "Filter Attenuation Db":"过滤衰减分贝"，
  "Attenuation Filter":"衰减过滤"，
  "Doppler":"多普勒效应"，
  "Tracking":"跟踪"，
  "Octant Size":"八分尺寸"，
  "Center X":"居中X"，
  "Center Y":"居中Y"，
  "Center Z":"居中Z"，
  "Per- Wheel Motion":"每个车轮运动"，
  "Vehicle Body Motion":"汽车身体运动"，
  "Wheel":"车轮"，
  "Suspension":"悬浮"，
  "Max Force":"最大力"，
  "Custom Icons":"自定义图标"，
  "Custom Styles":"自定义样式"，
  "Custom Fonts":"自定义字体"，
  "Custom Colors":"自定义颜色"，
  "Custom Constants":"自定义常量"，
  "Close Highlight":"关闭强调"，
  "Panel":"面板"，
  "Title Font":"标题字体"，
  "Title Color":"标题颜色"，
  "Close H Ofs":"关闭H Ofs"，
  "Close V Ofs":"关闭V Ofs"，
  "Title Height":"标题高度"，
  "Textures":"贴图"，
  "Clip To":"剪辑"，
  "Areas":"区域"，
  "Bodies":"物体"，
  "Shadow":"阴影"，
  "Contact":"接触"，
  "Reverse Cull Face":"反向剔除面"，
  "Range":"范围"，
  "Omni":"泛光"，
  "Shadow Mode":"阴影模式"，
  "Shadow Detail":"阴影细节"，
  "Spot":"聚光"，
  "Angle Attenuation":"衰减角度"，
  "Collide With":"碰撞"，
  "Scaleborder Size":"缩放边界大小"，
  "Radio Checked":"选中单选按钮"，
  "Radio Unchecked":"未选单选按钮"，
  "Unchecked":"未选"，
  "Labeled Separator Left":"标签分隔左"，
  "Labeled Separator Right":"标签分隔右"，
  "Hover":"悬浮"，
  "Separator":"分隔"，
  "Font Color Disabled":"禁用时字体颜色"，
  "Font Color Accel":"进行时字体颜色"，
  "Font Color":"字体颜色"，
  "Font Color Hover":"悬浮字体颜色"，
  "Vseparation":"垂直间隔"，
  "Hseparation":"水平间隔"，
  "Focused":"焦点时"，
  "Click Mask":"点击遮罩"，
  "Close Color":"关闭颜色"，
  "Resizer Color":"调整颜色"，
  "Port Offset":"端口偏移"，
  "Close Offset":"关闭偏移"，
  "Separation":"距离"，
  "Title Offset":"标题偏移"，
  "Autohide":"自动隐藏"，
  "Increment Highlight":"增加高亮"，
  "Increment":"增加"，
  "Decrement Highlight":"减少高亮"，
  "Decrement":"减少"，
  "Grabber Highlight":"抓取高亮"，
  "Grabber":"抓取"，
  "Scroll Focus":"滚动焦点"，
  "Scroll":"滚动"，
  "Grabber Pressed":"抓取按压"，
  "More":"多出"，
  "Minus":"不足"，
  "Selection Fill":"选择填充"，
  "Activity":"活动"，
  "Selection Stroke":"选择笔划"，
  "Grid Major":"网格主要"，
  "Grid Minor":"网格次要"，
  "Port Grab Distance Vertical":"端口吸取距离垂直"，
  "Port Grab Distance Horizontal":"端口吸取距离水平"，
  "Bezier Len Neg":"贝塞尔长度否定"，
  "Bezier Len Pos":"贝塞尔长度放置"，
  "Updown":"上下按钮"，
  "Tint":"着色"，
  "Under":"下面"，
  "Over":"上面"，
  "Progress":"进度"，
  "Radial Fill":"径向填充"，
  "Initial Angle":"初始角度"，
  "Fill Degress":"填充角度"，
  "Center Offset":"中心偏移"，
  "Guide Color":"辅助颜色"，
  "Font Color Selected":"选择字体颜色"，
  "Line Separation":"线距"，
  "Icon Margin":"图标边距"，
  "Font Outline Modulate":"字体轮廓调节"，
  "Font Color Shadow":"字体颜色阴影"，
  "Placeholder":"占位符"，
  "Caret":"插入符"，
  "Blink":"闪烁符"，
  "Blink Speed":"闪烁速度"，
  "Patch Margin":"片距离"，
  "Axis Stretch":"轴拉伸"，
  "Pivot Offset":"枢纽偏移"，
  "Clip Content":"裁切内容"，
  "Mono Font":"单一字体"，
  "Bold Italics Font":"加粗斜体字体"，
  "Italics Font":"斜体字体"，
  "Bold Font":"加粗字体"，
  "Normal Font":"正常字体"，
  "Table Vseparation":"表格垂直距离"，
  "Shadow Offset X":"阴影偏移X"，
  "Shadow Offset Y":"阴影偏移Y"，
  "Table Hseparation":"表格水平距离"，
  "Line Separation":"行距离"，
  "Shadow As Outline":"阴影作为轮廓"，
  "Tab Disabled":"选项卡禁用"，
  "Button Pressed":"按钮按下"，
  "Label Valign Fg":"标签垂直对齐FG"，
  "Label Valign Bg":"标签垂直对齐BG"，
  "Top Margin":"顶边距"，
  "Draw":"绘制"，
  "Moving By Right Click":"通过右键移动"，
  "Fold":"折叠"，
  "Folded":"褶皱"，
  "Tab":"制表"，
  "Font Color Readonly":"只读字体颜色"，
  "Completion Lines":"完成行"，
  "Completion Max Width":"完成最大宽度"，
  "Completion Scroll Width":"完成滚动宽度"，
  "Arrow":"箭头"，
  "Arrow Collapsed":"收缩箭头"，
  "Select Arrow":"选择箭头"，
  "Custom Button Pressed":"自定义按钮按下"，
  "Title Button Normal":"标题按钮正常"，
  "Custom Button":"自定义按钮"，
  "Title Button Hover":"标题按钮悬停"，
  "Selection Focus":"选择焦点"，
  "Bg Focus":"Bg焦点"，
  "Custom Button Hover":"自定义按钮悬停"，
  "Cursor Unfocused":"自定义失去焦点"，
  "Title Button Pressed":"标题按钮按下"，
  "Drop Position Color":"向下位置颜色"，
  "Limit":"限制"，
  "Smoothing":"平滑"，
  "Drag Margin":"拖动边缘"，
  "Smoothed":"平滑"，
  "Draw Screen":"绘制屏幕"，
  "Draw Limits":"绘制限制"，
  "Draw Drag Margin":"绘制拖动边缘"，
  "Z Min":"Z最小"，
  "Z Max":"Z最大"，
  "Layer Min":"层最小"，
  "Layer Max":"层最大"，
  "Item Cull Mask":"项剔除遮罩"，
  "Buffer Size":"缓冲区大小"，
  "Gradient Length":"梯度长度"，
  "Filter Smooth":"过滤平滑"，
  "Fill":"填充"，
  "Capping":"顶帽"，
  "Border":"边界"，
  "Invert":"反向"，
  "Gizmo Extents":"装置范围"，
  "Quadrant Size":"象限大小"，
  "Custom Transform":"自定义变换"，
  "Half Offset":"半偏移"，
  "Tile Origin":"瓦片原点"，
  "Y Sort":"Y顺序"，
  "Use Parent":"使用父级"，
  "Use kinematic":"使用动态"，
  "Playback Options":"回放选项"，
  "Default Blend Time":"默认混合时间"，
  "Root Motion":"根运动"，
  "Track":"踪迹"，
  "Render Target":"渲染目标"，
  "V Flip":"垂直翻转"，
  "Clear Mode":"清除模式"，
  "Enable 2d":"启用2D"，
  "Enable 3d":"启用3D"，
  "Disable Input":"禁用输入"，
  "Snap Controls To Pixels":"控件像素捕捉"，
  "Quad 0":"象限0"，
  "Quad 1":"象限1"，
  "Quad 2":"象限2"，
  "Quad 3":"象限3"，
  "Box Container":"盒子容器"，
  "Check Box":"单选框"，
  "Check Button":"单选按钮"，
  "Color Picker":"颜色拾取"，
  "Color Picker Button":"颜色拾取按钮"，
  "Editor About":"编辑器相关"，
  "Editor Fonts":"编辑器字体"，
  "Editor Help":"编辑器帮助"，
  "Editor Icons":"编辑器图标"，
  "Editor Settings Dialog":"编辑器设置对话框"，
  "Size Limit":"尺寸限制"，
  "Detect 3d":"检测3D"，
  "Mipmaps":"贴图映射"，
  "Anisotropic":"各向异性"，
  "Srgb":"SRGB"，
  "Process":"处理"，
  "Fix Alpha Border":"混合Alpha边界"，
  "Premult Alpha":"去除Alpha边缘杂色"，
  "Hdr As Srgb":"HDR转换SRGB"，
  "Invert Color":"反色"，
  "Indirect Energy":"间接能量"，
  "Negative":"负数"，
  "Specular":"镜面反射"，
  "Degrees":"角度"，
  "Delay Sec":"延迟秒数"，
  "Seamless":"无缝的"，
  "As Normalmap":"作为法线贴图"，
  "Noise":"噪声"，
  "Local To Scene":"本地场景"，
  "Background":"背景"，
  "Ambient Light":"环境光线"，
  "Sky Contribution":"天空贡献"，
  "Fog":"雾"，
  "Tonemap":"色调映射"，
  "Exposure":"曝光"，
  "White":"白色"，
  "Auto Exposure":"自动曝光"，
  "Ss Reflections":"SS反射"，
  "Dof Far Blur":"景深远模糊"，
  "Dof Near Blur":"景深近模糊"，
  "Glow":"光晕"，
  "Adjustments":"调整"，
  "Hash Table":"哈希表"，
  "Bucket Table":"打包表"，
  "Strings":"字符串"，
  "Load From":"装载"，
  "Font Color Pressed":"按下时字体颜色"，
  "Fonts":"字体"，
  "Styles":"样式"，
  "Icons":"图标"，
  "Hover Pressed":"悬停按压"，
  "Font Color Hover Pressed":"悬停按压字体颜色"，
  "Font Color Pressed":"按压字体颜色"，
  "File Dialog":"文件对话框"，
  "Graph Edit":"图形编辑"，
  "Graph Node":"图形节点"，
  "Grid Container":"表格容器"，
  "H Box Container":"水平盒子容器"，
  "H Scroll Bar":"水平滚动条"，
  "H Separator":"水平间隔"，
  "H Slider":"水平滑块"，
  "H Split Container":"水平分离容器"，
  "Item List":"项列表"，
  "Line Edit":"线编辑"，
  "Link Button":"链接按钮"，
  "Margin Container":"边界容器"，
  "Option Button":"选项按钮"，
  "Panel Container":"面板容器"，
  "Popup Panel":"弹出面板"，
  "Popup Dialog":"弹出对话框"，
  "Popup Menu":"弹出菜单"，
  "Progress Bar":"进度条"，
  "Rich Text Label":"富文本标签"，
  "Scroll Container":"滚动容器"，
  "Spin Box":"选填框"，
  "Tab Container":"选项卡容器"，
  "Tabs":"选项卡"，
  "Text Edit":"文本编辑"，
  "Tool Button":"工具按钮"，
  "Tooltip Label":"示意标签"，
  "Tooltip Panel":"示意面板"，
  "Tree":"树"，
  "V Box Container":"垂直盒子容器"，
  "V Scroll Bar":"垂直滚动条"，
  "V Separator":"垂直间隔"，
  "V Slider":"垂直滑块"，
  "V Split Container":"垂直分离容器"，
  "Window Dialog":"窗口对话框"，
  "Auto Accept Quit":"自动同意退出"，
  "Quit On Go Back":"退出后返回"，
  "Main Loop Type":"主循环类型"，
  "Reimport Missing Imported Files":"新导入丢失的导入文件"，
  "Main Run Args":"主运行参数"，
  "Convert Text Resources To Binary On Export":"在导出时将文本资源转换为二进制文件"，
  "Max Buffer Po 2":"最大缓冲区Po 2"，
  "Fallback To Gles 2":"回退到GLES2"，
  "Gles 2 Use Nvidia Rect Flicker Workaround":"GLES2使用Nvidia矩形闪烁的解决方法"，
  "Size.Mobile":"尺寸移动平台"，
  "Dynamic Fonts":"动态字体"，
  "Use Oversampling":"使用多重采样"，
  "Aspect":"方向"，
  "Shrink":"伸缩"，
  "Open Asset Import":"打开资产导入"，
  "Use Fbx":"使用FBX"，
  "Quit Confirmation":"确认退出"，
  "Ask Save Before Reimport":"在重新导入之前询问保存"，
  "Put Callhint Tooltip Below Current Line":"将调用提示工具放在当前行下方"，
  "Zoom Modifier":"缩放修饰符"，
  "Node":"节点"，
  "Spatial":"空间节点"，
  "ARVRAnchor":"ARVR锚点"，
  "Camera":"摄像机"，
  "ARVRCamera":"ARVR摄像机"，
  "ClipedCamera":"剪辑摄像机"，
  "InterpolatedCamera":"内插式摄像机"，
  "ARVRController":"ARVR控制器"，
  "ARVROrigin":"ARVR原点"，
  "VisualInstance":"虚拟实例"，
  "GeometryInstance":"几何实例"，
  "SpriteBase3D":"基本精灵3D"，
  "AnimatedSprite3D":"精灵动画3D"，
  "Sprite3D":"精灵3D"，
  "CPUParticles":"cpu粒子"，
  "CSGShape":"CSG图形"，
  "CSGPrimitive":"CSG原始图形"，
  "CSGBox":"CSG盒子"，
  "CSGCylinder":"CSG圆柱"，
  "CSGMesh":"CSG网格"，
  "CSGPolygon":"CSG多边形"，
  "CSGSphere":"CSG球体"，
  "CSGTorus":"CSG圆环"，
  "CSGCombiner":"CSG组合体"，
  "ImmediateGeometry":"从代码绘制几何图形"，
  "MeshInstance":"网格实例"，
  "SoftBody":"软性网格体"，
  "MultiMeshInstance":"多网格体"，
  "Particles":"3D粒子发射器"，
  "BakedLightmap":"间接光照贴图"，
  "Light":"光线"，
  "DirectionalLight":"平行光"，
  "OmniLight":"泛光灯"，
  "SpotLight":"斑点光"，
  "GIProbe":"GI探头"，
  "ReflectionProbe":"反射探头"，
  "RootMotionView":"根动作视图"，
  "CollisionObject":"碰撞对象"，
  "Area":"区域检测"，
  "PhysicsBody":"物理物体"，
  "KinematicBody":"动态物体"，
  "PhysicalBone":"物理骨骼"，
  "RigidBody":"刚体"，
  "VehicleBody":"车辆物体"，
  "StaticBody":"静态物体"，
  "AudioStreamPlayer3D":"音频播放器3D"，
  "BoneAttachment":"骨骼附体"，
  "CollisionPolygon":"碰撞多边形"，
  "CollisionShape":"碰撞基本形状"，
  "Joint":"关节"，
  "ConeTwistJoint":"锥扭联合关节"，
  "Generic6DOFJoint":"通用6向关节"，
  "HingeJoint":"铰链关节"，
  "PinJoint":"图钉关节"，
  "SliderJoint":"滑动关节"，
  "GridMap":"网格地图"，
  "Listener":"监听器"，
  "Navigation":"导航器"，
  "NavigationMeshInstance":"导航网格实例"，
  "Path":"路径"，
  "PathFollow":"跟随路径"，
  "Position3D":"坐标点3D"，
  "ProximityGroup":"邻近组"，
  "RayCast":"射线监测"，
  "RemoteTransform":"遥控变换"，
  "Skeleton":"骨架"，
  "SpringArm":"弹簧臂"，
  "VehicleWheel":"车辆轮子"，
  "VisibilityNotifier":"可见性通知"，
  "VisiblityEnabler":"可见性开启"，
  "CanvasItem":"画布节点"，
  "Control":"控制节点"，
  "Popup":"弹出提示"，
  "WindowDialog":"窗口对话框"，
  "AcceptDialog":"接受对话框"，
  "ConfirmationDialog":"确认对话框"，
  "FileDialog":"文件对话框"，
  "PopupDialog":"弹出对话框"，
  "PopupMenu":"子菜单"，
  "PopupPanel":"弹出式面板"，
  "BaseButton":"基础按钮"，
  "Button":"按钮节点"，
  "CheckBox":"多选按钮"，
  "ColorPickerButton":"颜色拾取器"，
  "MenuButton":"菜单按钮"，
  "OptionButton":"选项按钮"，
  "ToolButton":"工具按钮"，
  "LinkButton":"链接按钮"，
  "TextureButton":"纹理按钮"，
  "Container":"容器"，
  "CenterContainer":"中心容器"，
  "BoxContainer":"盒子容器"，
  "ColorPicker":"颜色拾取"，
  "HBoxContainer":"垂直盒子"，
  "VBoxContainer":"水平盒子"，
  "GraphNode":"绘制器节点"，
  "GridContainer":"表格容器"，
  "SplitContainer":"切片容器"，
  "HSplitContainer":"垂直切片"，
  "VSplitContainer":"水平切片"，
  "MarginContainer":"边缘容器"，
  "PanelContainer":"面板容器"，
  "ScrollContainer":"滚动容器"，
  "TabContainer":"选项卡"，
  "ViewportContainer":"视窗容器"，
  "ColorRect":"颜色矩形"，
  "GraphEdit":"图表编辑"，
  "Range":"范围"，
  "ScrollBar":"滚动条"，
  "HScrollBar":"垂直滚动"，
  "VScrollBar":"水平滚动"，
  "Slider":"滑动器"，
  "HSlider":"垂直滑动器"，
  "VSlider":"水平滑动器"，
  "ProgressBar":"进度条"，
  "SpinBox":"微调框"，
  "TextureProgress":"纹理进度条"，
  "Separator":"分隔器"，
  "HSeparator":"垂直分隔器"，
  "VSeparator":"水平分隔器"，
  "ItemList":"项目清单"，
  "Label":"标签"，
  "LineEdit":"线性输入编辑器"，
  "NinePatchRect":"九宫矩形"，
  "Panel":"面板"，
  "ReferenceRect":"参考矩形"，
  "RichTextLabel":"富文本标签"，
  "Tabs":"标号"，
  "TextEdit":"文本编辑器"，
  "TextureRect":"纹理矩形"，
  "Tree":"树"，
  "VideoPlayer":"视频播放器"，
  "Node2D":"节点2D"，
  "AnimatedSprite":"帧动画精灵"，
  "CollisionObject2D":"碰撞器2D"，
  "Area2D":"区域检查2D"，
  "physicsBody2D":"物理物体2D"，
  "KinematicBody2D":"动态体2D"，
  "RigidBody2D":"刚体2D"，
  "StaticBody2D":"静态体2D"，
  "AudioStreamPlayer2D":"音频播放器2D"，
  "BackBufferCopy":"后台缓冲区复制"，
  "Bone2D":"骨骼2D"，
  "CPUParticles2D":"CPU粒子2D"，
  "Camera2D":"相机2D"，
  "CanvasModulate":"画布调整"，
  "CollisionPolygon2D":"多边形碰撞器2D"，
  "CollisionShape2D":"基本图形碰撞器2D"，
  "Joint2D":"关节2D"，
  "DampedSpringJoint2D":"阻尼弹簧2D"，
  "GrooveJoint2D":"凹槽2D"，
  "PinJoint2D":"图钉2D"，
  "Light2D":"灯光2D"，
  "LightOccluder2D":"灯光遮蔽2D"，
  "Line2D":"线条2D"，
  "MeshInstance2D":"网格实例化2D"，
  "MultiMeshInstance2D":"2D网格2D"，
  "Navigation2D":"导航2D"，
  "NavigationPolygonInstance":"导航多边形实例"，
  "ParallaxLayer":"视差层"，
  "Particles2D":"粒子2D"，
  "Path2D":"路径2D"，
  "PathFollow2D":"路径跟随2D"，
  "Polygon2D":"多边形2D"，
  "Position2D":"坐标点2D"，
  "RayCast2D":"射线2D"，
  "RemoteTransform2D":"遥控变换2D"，
  "Skeleton2D":"骨架2D"，
  "Sprite":"精灵"，
  "TileMap":"瓷砖地图"，
  "TouchScreenButton":"屏幕触摸按钮"，
  "VisibilityNotifier2D":"可见性通知2D"，
  "VisibilityEnabler2D":"可见性开启2D"，
  "YSort":"Y轴排序"，
  "AnimationPlayer":"动画播放器"，
  "AnimationTree":"动画树"，
  "AnimationTreePlayer":"动画树播放器"，
  "AudioStreamPlayer":"音频播放器"，
  "CanvasLayer":"画布层"，
  "ParallaxBackground":"视差背景"，
  "HTTPRequest":"HTTP请求"，
  "ResourcePreloader":"资源载入器"，
  "SkeletonIK":"IK骨骼"，
  "Timer":"计时器"，
  "Tween":"渐变器"，
  "Viewport":"视窗"，
  "WorldEnvironment":"世界环境"，
  "CheckButton":"单选按钮"，
  "Flush Stdout On Print":"打印时刷新标准输出"，
  "Flush Stdout On Print.debug":"打印时刷新标准输出.Debug"，
  "Output Latency.web":"输出延迟.Web"，
  "Draw 2d Outlines":"绘制2D轮廓"，
  "Command Queue":"命令队列"，
  "Multithreading Queue Size Kb":"多线程队列大小Kb"，
  "enable_file_logging.pc":"启用文件日志.Pc"，
  "Skinning":"蒙皮"，
  "Software Skinning Fallback":"软件蒙皮回调"，
  "Force Software Skinning":"强制软件蒙皮"，
  "Render Tree Balance":"渲染树平衡"，
  "Spatial Partitioning":"空间分区"，
  "Lightmapping":"光照贴图"，
  "Use Bicubic Sampling":"使用双立方采样"，
  "Use Bicubic Sampling.mobile":"使用双立方采样.Mobile"，
  "Use Nvidia Rect Flicker Workaround":"使用Nvidia矩形闪烁解决方案"，
  "Use Software Skinning":"使用软件蒙皮"，
  "Ninepatch Mode":"九宫模式"，
  "Use Gpu Pixel Snap":"使用Gpu像素捕捉"，
  "Batching Send Null":"批处理发送为空"，
  "Batching Stream":"批处理流"，
  "Legacy Orphan Buffers":"传统孤立缓冲区"，
  "Legacy Stream":"传统流"，
  "Batching":"批处理"，
  "Use Batching":"使用批处理"，
  "Use Batching In Editor":"编辑器使用批处理"，
  "Single Rect Fallback":"单例矩形回调"，
  "Parameters":"参数"，
  "Max Join Item Commands":"最大加入命令条目"，
  "Colored Vertex Format Threshold":"彩色顶点格式阈值"，
  "Batch Buffer Size":"批处理缓冲区大小"，
  "Item Reordering Lookahead":"提前重排项目"，
  "Scissor Area Threshold":"裁剪区域阀值"，
  "Max Join Items":"最大加入条目"，
  "Flash Batching":"交替批处理"，
  "Diagnose Frame":"诊断帧"，
  "Uv Contract":"UV收缩"，
  "Uv Contract Amount":"UV收缩数量"，
  "Compatibility":"兼容性"，
  "Disable Falf Float":"禁用半浮点"，
  "Disable Falf Float.Android":"禁用半浮点.Android"，
  "Cpu Lightmapper":"CPU光照贴图"，
  "Low Quality Ray Count":"低质量光线计数"，
  "Medium Quality Ray Count":"中质量光线计数"，
  "High Quality Ray Count":"高质量光线计数"，
  "Ultra Quality Ray Count":"顶质量光线计数"，
  "Enable Pause Aware Picking":"启用暂停感知拾取"，
  "Touch Delay":"触摸延迟"，
  "Text Edit Undo Stack Max Size":"文本编辑撤销栈最大尺寸"，
  "Max Array Dictionary Items Per Page":"每页最大数组字典条目"，
  "Subresource Hue Tint":"子资源色彩着色"，
  "Selection Box Color":"颜色选择框"，
  "Grid Division Level Max":"网格划分等级MAX"，
  "Grid Division Level Min":"网格划分等级MIN"，
  "Grid Division Level Bias":"网格划分等级Bias"，
  "Grid Xz Plane":"网格Xz平面"，
  "Grid Xy Plane":"网格Xy平面"，
  "Grid Yz Plane":"网格Yz平面"，
  "Invert X Axis":"反转X轴"，
  "Show Viewport Rotation Gizmo":"显示视图旋转工具"，
  "Freelook Navigation Scheme":"自由视角导航方案"，
  "Visual Editors":"可视化编辑器"，
  "Minimap Opacity":"Minimap不透明度"，
  "Available Urls":"可用的url"，
  "Bounces":"反弹数"，
  "Baked Light":"烘焙光照"，
  "Generate Lightmap":"生成光照贴图"，
  "Lightmap Scale":"光照贴图比例"，
  "Blend Splits":"混合分割"，
  "Bias Split Scale":"偏差分割比例"，
  "Depth Range":"深度范围"，
  "Pass On Modal Close Click":"通过模式关闭单击"，
  "Object Picking":"对象拾取"，
  "ClippedCamera":"剪辑相机"，
  "Invert Faces":"反转表面"，
  "Operation":"生效方式"，
  "Calculate Tangents":"计算切线"，
  "Use Collision":"启用碰撞"
}

var inspector_translator = InspectorTranslator.new()
var editor_settings_dialogs: Array


func translate(n: Node) -> void:
  if not n: return
  if n is EditorProperty:
	if dict.has(n.label):
	  n.label = dict[n.label]
  elif n is Tree:
	pass
  elif n.get_child_count() != 0:
	for child in n.get_children(): translate(child)


func _enter_tree() -> void:
  add_inspector_plugin(inspector_translator)

  inspector_translator.inspector = self.get_editor_interface().get_inspector()
  inspector_translator.plugin = self

  for i in self.get_editor_interface().get_base_control().get_children():
	if i is WindowDialog: # 翻译项目设置和编辑器设置
	  editor_settings_dialogs.append(i)
	  i.connect("about_to_show", self, "_on_editor_settings_dialog_about_to_show")


func _on_editor_settings_dialog_about_to_show() -> void:
  yield(get_tree().create_timer(0.01), "timeout")
  for i in editor_settings_dialogs: if i.visible: translate(i)


func _exit_tree() -> void:
  remove_inspector_plugin(inspector_translator)


class InspectorTranslator extends EditorInspectorPlugin:
  tool
  
  var inspector: EditorInspector
  var plugin: EditorPlugin

  func parse_end() -> void: plugin.translate(inspector)

  func can_handle(object: Object) -> bool: return true
