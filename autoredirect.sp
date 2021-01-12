#include <sourcemod>
#include <server_redirect>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name = "Auto Redirect",
	author = "Vauff",
	description = "Auto redirect to new server",
	version = "1.0",
	url = ""
};

public void OnPluginStart()
{
	RegAdminCmd("sm_redirect", Command_Redirect, ADMFLAG_ROOT, "Redirect all currently connected players");
}

public Action Command_Redirect(int client, int args)
{
	for (int i = 1; i <= i; client++)
		RedirectClient(i, "92.119.148.207:27015");

	return Plugin_Handled;
}

public bool OnClientConnect(int client, char[] rejectmsg, int maxlen)
{
	RedirectClient(client, "92.119.148.207:27015");

	return true;
}