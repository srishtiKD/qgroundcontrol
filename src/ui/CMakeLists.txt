add_subdirectory(preferences)
add_subdirectory(toolbar)

RESOURCES = qgroundcontrol.qrc

add_library(ui
	QGCPluginHost.cc
	QGCPluginHost.h

	# UI
	QGCPluginHost.ui
	QMap3D.ui
)

add_custom_target(uiQml
	SOURCES
		AppSettings.qml
		ExitWithErrorWindow.qml
		MainRootWindow.qml
                AuthWindow.qml
                AuthTest.qml
                LoginPage.qml
                SignupPage.qml
                CButton.qml
                PasswordResetPage.qml

)

target_link_libraries(ui
	PUBLIC
		qgc
)

target_include_directories(ui
	INTERFACE
		${CMAKE_CURRENT_SOURCE_DIR}
                ${CMAKE_CURRENT_BINARY_DIR}
	PRIVATE
		linechart
)

