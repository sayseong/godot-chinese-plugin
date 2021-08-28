tool
extends EditorPlugin


const dict: Dictionary = {
  "Script": "脚本",
  "Config": "设置",
  "Name": "名称",
  "Editor Language": "编辑器语言",
  "Enter": "entered"
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
