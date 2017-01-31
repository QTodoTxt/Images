all:
	pyrcc5 dark/res.qrc -o dark/qTodoTxt_dark_style_rc.py
	pyrcc5 white/res.qrc -o white/qTodoTxt_style_rc.py
	cp white/qTodoTxt_style_rc.py ../qtodotxt/ui/
	cp dark/qTodoTxt_dark_style_rc.py ../qtodotxt/ui/

