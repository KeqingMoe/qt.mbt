///|
using @qt {
  type NullptrError,
  type QApplication,
  type QBoxLayout,
  type QBrush,
  type QColor,
  type QGraphicsPathItem,
  type QGraphicsProxyWidget,
  type QGraphicsScene,
  type QGraphicsView,
  type QLabel,
  type QObject,
  type QPainterPath,
  type QPointF,
  type QPen,
  type QPushButton,
  type QRectF,
  type QWidget,
}

///|
struct CommitNode {
  id : Int
  parent : Int
  children : Array[Int]
  mut x : Double
  mut y : Double
  hash : String
  button : QPushButton
  button_proxy : QGraphicsProxyWidget
  edge_from_parent : QGraphicsPathItem?
}

///|
struct DemoState {
  nodes : Array[CommitNode]
  mut head_id : Int
  mut selected_id : Int
  scene : QGraphicsScene
  view : QGraphicsView
  selected_info : QLabel
  head_info : QLabel
  mut head_badge : QLabel?
  mut head_badge_proxy : QGraphicsProxyWidget?
}

///|
let node_width = 58

///|
let node_height = 34

///|
let node_span = 132.0

///|
let horizontal_gap = 48.0

///|
let vertical_gap = 96.0

///|
let top_margin = 48.0

///|
fn pad6(value : Int) -> String {
  let text = value.to_string()
  if value < 10 {
    "00000" + text
  } else if value < 100 {
    "0000" + text
  } else if value < 1000 {
    "000" + text
  } else if value < 10000 {
    "00" + text
  } else if value < 100000 {
    "0" + text
  } else {
    text
  }
}

///|
fn make_hash(id : Int) -> String {
  let value = (912345 + id * 7919) % 1000000
  pad6(value)
}

///|
fn style_sheet() -> String {
  let style =
    #|QWidget {
    #|  background: #f3f5f7;
    #|  color: #1f2937;
    #|  font-size: 14px;
    #|}
    #|
    #|QWidget#sidebarCard,
    #|QWidget#canvasCard {
    #|  background: #ffffff;
    #|  border: 1px solid #d8dee6;
    #|  border-radius: 14px;
    #|}
    #|
    #|QLabel#title {
    #|  font-size: 24px;
    #|  font-weight: 700;
    #|  color: #111827;
    #|}
    #|
    #|QLabel#muted {
    #|  color: #6b7280;
    #|}
    #|
    #|QLabel#section {
    #|  color: #6b7280;
    #|  font-size: 12px;
    #|  font-weight: 700;
    #|  letter-spacing: 1px;
    #|}
    #|
    #|QLabel#panel {
    #|  background: #f8fafc;
    #|  border: 1px solid #dbe3ec;
    #|  border-radius: 10px;
    #|  padding: 10px;
    #|}
    #|
    #|QPushButton {
    #|  background: #ffffff;
    #|  border: 1px solid #cfd7df;
    #|  border-radius: 10px;
    #|  padding: 8px 12px;
    #|}
    #|
    #|QPushButton:hover {
    #|  background: #f8fafc;
    #|}
    #|
    #|QPushButton#primary {
    #|  background: #2563eb;
    #|  color: #ffffff;
    #|  border: 1px solid #2563eb;
    #|}
    #|
    #|QPushButton#primary:hover {
    #|  background: #1d4ed8;
    #|}
    #|
    #|QGraphicsView {
    #|  background: #f6f7fb;
    #|  border: 1px solid #d8dee6;
    #|  border-radius: 12px;
    #|}
  style
}

///|
fn title_label(text : String) -> QLabel raise NullptrError {
  let label = QLabel::new()
  label.setObjectName("title")
  label.setText(text)
  label
}

///|
fn muted_label(text : String) -> QLabel raise NullptrError {
  let label = QLabel::new()
  label.setObjectName("muted")
  label.setText(text)
  label.setWordWrap(true)
  label
}

///|
fn section_label(text : String) -> QLabel raise NullptrError {
  let label = QLabel::new()
  label.setObjectName("section")
  label.setText(text)
  label
}

///|
fn panel_label(text : String) -> QLabel raise NullptrError {
  let label = QLabel::new()
  label.setObjectName("panel")
  label.setText(text)
  label.setWordWrap(true)
  label
}

///|
fn sidebar_button(
  text : String,
  primary? : Bool = false,
) -> QPushButton raise NullptrError {
  let button = QPushButton::new()
  button.setText(text)
  if primary {
    button.setObjectName("primary")
  }
  button
}

///|
fn subtree_width(state : DemoState, id : Int) -> Double {
  let children = state.nodes[id].children
  if children.length() == 0 {
    return node_span
  }

  let mut total = 0.0
  for i in 0..<children.length() {
    total += subtree_width(state, children[i])
    if i + 1 < children.length() {
      total += horizontal_gap
    }
  }

  if total > node_span {
    total
  } else {
    node_span
  }
}

///|
fn assign_positions(
  state : DemoState,
  id : Int,
  left : Double,
  depth : Int,
) -> Unit {
  let children = state.nodes[id].children
  let total_width = subtree_width(state, id)

  if children.length() == 0 {
    state.nodes[id].x = left + total_width / 2.0
    state.nodes[id].y = top_margin + depth.to_double() * vertical_gap
    return
  }

  let mut children_width = 0.0
  for i in 0..<children.length() {
    children_width += subtree_width(state, children[i])
    if i + 1 < children.length() {
      children_width += horizontal_gap
    }
  }

  let mut child_left = left + (total_width - children_width) / 2.0
  for child in children {
    assign_positions(state, child, child_left, depth + 1)
    child_left += subtree_width(state, child) + horizontal_gap
  }

  let first_x = state.nodes[children[0]].x
  let last_x = state.nodes[children[children.length() - 1]].x
  state.nodes[id].x = (first_x + last_x) / 2.0
  state.nodes[id].y = top_margin + depth.to_double() * vertical_gap
}

///|
fn apply_node_style(
  button : QPushButton,
  is_head : Bool,
  is_selected : Bool,
) -> Unit raise NullptrError {
  let style = if is_head && is_selected {
    "QPushButton { background: #ecfdf5; color: #111827; border: 2px solid #3b82f6; border-radius: 10px; font-weight: 700; }"
  } else if is_head {
    "QPushButton { background: #ecfdf5; color: #111827; border: 2px solid #10b981; border-radius: 10px; font-weight: 700; }"
  } else if is_selected {
    "QPushButton { background: #eff6ff; color: #111827; border: 2px solid #3b82f6; border-radius: 10px; font-weight: 700; }"
  } else {
    "QPushButton { background: #ffffff; color: #111827; border: 1px solid #9ca3af; border-radius: 10px; font-weight: 700; }"
  }
  button.setStyleSheet(style)
}

///|
fn is_on_head_path(state : DemoState, id : Int) -> Bool {
  let mut cursor = state.head_id
  while cursor >= 0 {
    if cursor == id {
      return true
    }
    cursor = state.nodes[cursor].parent
  }
  false
}

///|
fn update_info(state : DemoState) -> Unit raise NullptrError {
  if state.selected_id >= 0 && state.selected_id < state.nodes.length() {
    let node = state.nodes[state.selected_id]
    let parent_text = if node.parent >= 0 { "#\{node.parent}" } else { "root" }
    let selected_text = "Selected: #\{node.id}\nHash: \{node.hash}\nParent: \{parent_text}\nChildren: \{node.children.length()}"
    state.selected_info.setText(selected_text)
  } else {
    state.selected_info.setText("Selected: none")
  }

  if state.head_id >= 0 && state.head_id < state.nodes.length() {
    let head = state.nodes[state.head_id]
    let parts : Array[String] = []
    let mut cursor = state.head_id
    while cursor >= 0 {
      parts.push("#\{cursor}")
      cursor = state.nodes[cursor].parent
    }
    let path_text = parts.join(" <- ")
    let head_text = "HEAD: #\{head.id}\nHash: \{head.hash}\nPath: \{path_text}"
    state.head_info.setText(head_text)
  } else {
    state.head_info.setText("HEAD: none")
  }
}

///|
fn update_head_badge(state : DemoState) -> Unit raise NullptrError {
  match state.head_badge {
    None => ()
    Some(badge) =>
      match state.head_badge_proxy {
        None => ()
        Some(proxy) =>
          if state.head_id >= 0 && state.head_id < state.nodes.length() {
            let node = state.nodes[state.head_id]
            badge.adjustSize()
            let size = badge.sizeHint()
            proxy.setPos(
              node.x - size.width().to_double() / 2.0,
              node.y - node_height.to_double() / 2.0 - 26.0,
            )
            proxy.setVisible(true)
          } else {
            proxy.setVisible(false)
          }
      }
  }
}

///|
fn update_visuals(state : DemoState) -> Unit raise NullptrError {
  for i in 0..<state.nodes.length() {
    let node = state.nodes[i]
    let is_head = node.id == state.head_id
    let is_selected = node.id == state.selected_id
    let highlighted = is_on_head_path(state, node.id)

    apply_node_style(node.button, is_head, is_selected)

    match node.edge_from_parent {
      None => ()
      Some(edge) => {
        let edge_color = if highlighted { "#18a56f" } else { "#9aa4b2" }
        let pen = QPen::newWithColor(QColor::newWithName(edge_color))
        pen.setWidthF(if highlighted { 2.8 } else { 2.0 })
        edge.setPen(pen)
      }
    }
  }

  update_head_badge(state)
  update_info(state)
}

///|
fn update_edge(state : DemoState, id : Int) -> Unit {
  let node = state.nodes[id]
  match node.edge_from_parent {
    None => ()
    Some(edge) => {
      let parent = state.nodes[node.parent]
      let start = QPointF::new(
        parent.x,
        parent.y + node_height.to_double() / 2.0,
      )
      let end = QPointF::new(node.x, node.y - node_height.to_double() / 2.0)
      let mid_y = (start.y() + end.y()) / 2.0
      let path = QPainterPath::new()
      path.moveTo(start)
      path.cubicTo(
        QPointF::new(start.x(), mid_y),
        QPointF::new(end.x(), mid_y),
        end,
      )
      edge.setPath(path)
      edge.setZValue(1.0)
    }
  }
}

///|
fn rebuild_head_badge(state : DemoState) -> Unit raise NullptrError {
  let badge = QLabel::new()
  badge.setText("HEAD")
  badge.setStyleSheet(
    "QLabel { background: #10b981; color: #ffffff; border-radius: 8px; padding: 2px 6px; font-size: 12px; font-weight: 700; }",
  )
  let proxy = state.scene.addWidget(badge)
  proxy.setZValue(20.0)
  proxy.setVisible(false)
  state.head_badge = Some(badge)
  state.head_badge_proxy = Some(proxy)
}

///|
fn relayout(state : DemoState) -> Unit raise NullptrError {
  if state.nodes.length() == 0 {
    let box = QRectF::new(-120.0, -80.0, 240.0, 160.0)
    state.scene.setSceneRect(box)
    update_visuals(state)
    return
  }

  let roots : Array[Int] = []
  for node in state.nodes {
    if node.parent < 0 {
      roots.push(node.id)
    }
  }

  let mut left = 0.0
  for root_id in roots {
    let root_width = subtree_width(state, root_id)
    assign_positions(state, root_id, left, 0)
    left += root_width + 72.0
  }

  for i in 0..<state.nodes.length() {
    let node = state.nodes[i]
    node.button_proxy.setPos(
      node.x - node_width.to_double() / 2.0,
      node.y - node_height.to_double() / 2.0,
    )
    node.button_proxy.setZValue(10.0)
    update_edge(state, i)
  }

  let raw_box = state.scene.itemsBoundingRect()
  let box = if raw_box.isValid() && !raw_box.isNull() {
    raw_box.adjusted(-40.0, -40.0, 40.0, 40.0)
  } else {
    QRectF::new(-120.0, -80.0, 240.0, 160.0)
  }
  state.scene.setSceneRect(box)
  update_visuals(state)
}

///|
fn fit_view(state : DemoState) -> Unit raise NullptrError {
  let raw_box = state.scene.itemsBoundingRect()
  let box = if raw_box.isValid() && !raw_box.isNull() {
    raw_box.adjusted(-40.0, -40.0, 40.0, 40.0)
  } else {
    QRectF::new(-120.0, -80.0, 240.0, 160.0)
  }
  state.view.fitInView(box, mode=Keep)
}

///|
fn center_on_head(state : DemoState) -> Unit raise NullptrError {
  if state.head_id >= 0 && state.head_id < state.nodes.length() {
    let node = state.nodes[state.head_id]
    state.view.centerOn(QPointF::new(node.x, node.y))
  }
}

///|
fn create_commit(
  state : DemoState,
  parent_id : Int,
  move_head : Bool,
) -> Int raise NullptrError {
  let id = state.nodes.length()
  let hash = make_hash(id)

  let button = QPushButton::new()
  button.setText("#\{id}")
  button.setFixedSize(node_width, node_height)
  button.setToolTip("hash: \{hash}")

  let button_proxy = state.scene.addWidget(button)
  button_proxy.setZValue(10.0)

  let edge_from_parent = if parent_id >= 0 {
    let pen = QPen::newWithColor(QColor::newWithName("#9aa4b2"))
    pen.setWidthF(2.0)
    Some(state.scene.addPath(QPainterPath::new(), pen))
  } else {
    None
  }

  let node = CommitNode::{
    id,
    parent: parent_id,
    children: [],
    x: 0.0,
    y: 0.0,
    hash,
    button,
    button_proxy,
    edge_from_parent,
  }
  state.nodes.push(node)

  if parent_id >= 0 {
    state.nodes[parent_id].children.push(id)
  }

  let _ = QObject::connect(button.clicked(), _ => {
    state.selected_id = id
    update_visuals(state)
  })

  if move_head {
    state.head_id = id
    state.selected_id = id
  }

  relayout(state)
  id
}

///|
fn reset_demo_tree(state : DemoState) -> Unit raise NullptrError {
  state.scene.clear()
  state.nodes.clear()
  state.head_id = -1
  state.selected_id = -1
  state.head_badge = None
  state.head_badge_proxy = None

  rebuild_head_badge(state)

  let n0 = create_commit(state, -1, true)
  let n1 = create_commit(state, n0, true)
  let n2 = create_commit(state, n1, true)

  state.head_id = n1
  state.selected_id = n1
  let n3 = create_commit(state, n1, true)
  let _ = create_commit(state, n3, true)

  state.head_id = n2
  state.selected_id = n2
  let _ = create_commit(state, n2, true)

  relayout(state)
  fit_view(state)
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())
  let _ = app.setStyle("Fusion")

  let title = title_label("Commit Graph")
  let hint = muted_label(
    "A shallow, lighter demo that keeps the cubic commit edges. Click a node to select it, move HEAD, then add a commit to branch from older history.",
  )

  let add_commit = sidebar_button("Add Commit", primary=true)
  let move_head = sidebar_button("Move HEAD")
  let fit_button = sidebar_button("Fit View")
  let reset_button = sidebar_button("Reset")

  let selected_title = section_label("SELECTED")
  let selected_info = panel_label("Selected: none")
  let head_title = section_label("HEAD")
  let head_info = panel_label("HEAD: none")

  let sidebar_layout = QBoxLayout::vertical()
  sidebar_layout.setContentsMargins(20, 20, 20, 20)
  sidebar_layout.setSpacing(12)
  sidebar_layout.addWidget(title)
  sidebar_layout.addWidget(hint)
  sidebar_layout.addSpacing(4)
  sidebar_layout.addWidget(add_commit)
  sidebar_layout.addWidget(move_head)
  sidebar_layout.addWidget(fit_button)
  sidebar_layout.addWidget(reset_button)
  sidebar_layout.addSpacing(12)
  sidebar_layout.addWidget(selected_title)
  sidebar_layout.addWidget(selected_info)
  sidebar_layout.addWidget(head_title)
  sidebar_layout.addWidget(head_info)
  sidebar_layout.addStretch()

  let sidebar_card = QWidget::new()
  sidebar_card.setObjectName("sidebarCard")
  sidebar_card.setFixedWidth(300)
  sidebar_card.setLayout(sidebar_layout)

  let canvas_title = section_label("GRAPH")
  let canvas_hint = muted_label(
    "Bezier curves are kept intentionally; drag the canvas to pan.",
  )

  let scene = QGraphicsScene::new()
  scene.setBackgroundBrush(QBrush::newWithColor(QColor::newWithName("#f6f7fb")))

  let view = QGraphicsView::new()
  view.setScene(scene)
  view.setRenderHint(Antialiasing)
  view.setRenderHint(TextAntialiasing)
  view.setDragMode(ScrollHandDrag)
  view.setViewportUpdateMode(BoundingRectViewportUpdate)
  view.setTransformationAnchor(AnchorUnderMouse)
  view.setResizeAnchor(AnchorViewCenter)
  view.setFrameShape(NoFrame)
  view.setMinimumSize(640, 520)

  let canvas_layout = QBoxLayout::vertical()
  canvas_layout.setContentsMargins(20, 20, 20, 20)
  canvas_layout.setSpacing(12)
  canvas_layout.addWidget(canvas_title)
  canvas_layout.addWidget(canvas_hint)
  canvas_layout.addWidget(view, stretch=1)

  let canvas_card = QWidget::new()
  canvas_card.setObjectName("canvasCard")
  canvas_card.setLayout(canvas_layout)

  let root_layout = QBoxLayout::horizontal()
  root_layout.setContentsMargins(18, 18, 18, 18)
  root_layout.setSpacing(16)
  root_layout.addWidget(sidebar_card)
  root_layout.addWidget(canvas_card, stretch=1)

  let window = QWidget::new()
  window.setWindowTitle("Graphics Commit Demo")
  window.resize(1080, 680)
  window.setStyleSheet(style_sheet())
  window.setLayout(root_layout)

  let state = DemoState::{
    nodes: [],
    head_id: -1,
    selected_id: -1,
    scene,
    view,
    selected_info,
    head_info,
    head_badge: None,
    head_badge_proxy: None,
  }

  let _ = QObject::connect(add_commit.clicked(), _ => {
    if state.head_id < 0 {
      let _ = create_commit(state, -1, true)
    } else {
      let _ = create_commit(state, state.head_id, true)
    }
    center_on_head(state)
  })

  let _ = QObject::connect(move_head.clicked(), _ => {
    if state.selected_id >= 0 && state.selected_id < state.nodes.length() {
      state.head_id = state.selected_id
      update_visuals(state)
      center_on_head(state)
    }
  })

  let _ = QObject::connect(fit_button.clicked(), _ => fit_view(state))
  let _ = QObject::connect(reset_button.clicked(), _ => reset_demo_tree(state))

  reset_demo_tree(state)

  window.show()
  let _ = app.exec()
}
