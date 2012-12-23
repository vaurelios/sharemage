#define PURPLE_PLUGINS

#include "sharemage.h"
#include "parse.c"

static gboolean plugin_load(PurplePlugin *plugin){
	purple_notify_message(plugin, PURPLE_NOTIFY_MSG_INFO, "Hello World!",
							"This is the Hello World! plugin :)", NULL, NULL, NULL);
							
	return TRUE;
}

static PurplePluginInfo info = {
	PURPLE_PLUGIN_MAGIC,
	PURPLE_MAJOR_VERSION,
	PURPLE_MINOR_VERSION,
	PURPLE_PLUGIN_STANDARD,
	PIDGIN_PLUGIN_TYPE,
	0,
	NULL,
	PURPLE_PRIORITY_DEFAULT,

	"sharemage_core",
	"ShareMage",
	"0.1",

	"Use this plugin to share image in all protocols",
	"This plugin add share image with yours friends using image host services.",
	"Victor Aurélio <victor.feradecs@gmail.com>",
	"https://github.com/hotvic/sharemage",

	plugin_load,
	NULL,
	NULL,

	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
};

static void init_plugin(PurplePlugin *plugin){
}

PURPLE_INIT_PLUGIN(hello_world, init_plugin, info)
