module gio

pub enum GApplicationFlags {
	flags_none = C.G_APPLICATION_FLAGS_NONE
	is_service = C.G_APPLICATION_IS_SERVICE
	is_launcher = C.G_APPLICATION_IS_LAUNCHER
	handles_open = C.G_APPLICATION_HANDLES_OPEN
	handles_command_line = C.G_APPLICATION_HANDLES_COMMAND_LINE
	send_environment = C.G_APPLICATION_SEND_ENVIRONMENT
	non_unique = C.G_APPLICATION_NON_UNIQUE
	can_override_app_id = C.G_APPLICATION_CAN_OVERRIDE_APP_ID
	allow_replacement = C.G_APPLICATION_ALLOW_REPLACEMENT
	replace = C.G_APPLICATION_REPLACE
}
