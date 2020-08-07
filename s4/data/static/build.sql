-- S4 - A security and statistics focussed Discord bot.
-- Copyright (C) 2020  Ethan Henderson

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.

-- Ethan Henderson
-- parafoxia@carberra.xyz

CREATE TABLE IF NOT EXISTS bot (
    Key text PRIMARY KEY,
    Value text
);

INSERT OR IGNORE INTO bot VALUES ("last commit", CURRENT_TIMESTAMP);

CREATE TABLE IF NOT EXISTS errors (
    Ref text PRIMARY KEY,
    ErrorTime text DEFAULT CURRENT_TIMESTAMP,
    Cause text,
    Traceback text
);

CREATE TABLE IF NOT EXISTS system (
    GuildID integer PRIMARY KEY,
    RunFTS integer DEFAULT 0,
    Prefix text DEFAULT ">>",
    DefaultLogChannelID integer,
    LogChannelID integer,
    DefaultAdminRoleID interger,
    AdminRoleID integer
);

CREATE TABLE IF NOT EXISTS gateway (
	GuildID integer PRIMARY KEY,
	Active integer DEFAULT 0,
	RulesChannelID integer,
	GateMessageID integer,
	BlockingRoleID integer,
	MemberRoleIDs text,
	ExceptionRoleIDs text,
	WelcomeChannelID integer,
	GoodbyeChannelID integer,
	Timeout integer,
	GateText text,
	WelcomeText text,
	WelcomeBotText text,
	GoodbyeText text,
	GoodbyeBotText text
);

CREATE TABLE IF NOT EXISTS entrants (
	GuildID integer,
	UserID integer,
	Timeout text,
	PRIMARY KEY (GuildID, UserID)
);

CREATE TABLE IF NOT EXISTS accepted (
	GuildID integer,
	UserID integer,
	PRIMARY KEY (GuildID, UserID)
);
