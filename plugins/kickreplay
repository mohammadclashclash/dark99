<?php
class kickuser {	
	use mod_features;
	use tag_verify;
	
	public function probe ($r) {
		if($this->pregMatchRaw($r, '/^:pfx:(kick|ban)\b/') && $r->victim['isGroup']) return 3;
	}
	
	public function handle ($r) {
		if(!$this->hasTag($r->culprit,"owner","administrator","globalmod","mod:" . $r->victim['id'])) return $r->r("This feature requires one of the following tags:\nadministrator, globalmod, mod:" . $r->victim['id']);
		
		if(isset($r->replyTicket) && !empty($r->replyTicket->actionUser)) $kickID = $r->replyTicket->actionUser['id']; // if the ticket contains an actionUser (invited user), kick this user instead of the culprit
		elseif(isset($r->replyTicket)) $kickID = $r->replyTicket->culprit['id']; // if the ticket is a normal reply, kick the culprit
		
		if(isset($r->txt[1])) {
			switch(ctype_digit($r->txt[1])) {
				case true: // if the first argument is numeric, treat as userID
					$kickID = $r->txt[1];
					break;
				case false: // if not, treat it as an username and try to resolve it into an ID
					$kickID = $r->resolveUsername($r->txt[1]);
					if(!$kickID) return $r->r("Could not resolve username.");
					break;
			}
		}
		
		/* if none of the above measures set the kickID, return the help */
		if(empty($kickID)) return $r->r("This feature kicks another user.\n\nThis feature can be used in two ways:\n— Reply to the message of a user that is to be kicked.\n— Add the user's ID as an argument (e.g.: #kick 6219499).");
		
		if(in_array("later", $r->switches)) { // #kick --later
			if($r->goAsync()) return;
			
			$r->r("Wait for it ...");
			$rand = mt_rand(30,1200);	
			sleep($rand);
		}
		
		if($this->pregMatchRaw($r, '/^:pfx:(ban)\b/')) { // if this module was triggered using #ban, add the banned:$groupid tag to the user so he cannot rejoin
			if(in_array("global", $r->switches) && $this->hasTag($r->culprit,"owner","administrator")) $r->milterHook['tags']->assignTag($kickID, "globalban", $r->culprit['id']);
			else $r->milterHook['tags']->assignTag($kickID, "banned:" . $r->victim['id'], $r->culprit['id']);
		}
		
		if(empty($kickID)) return $r->r("Error: Unable to read the kick target."); // this should never happen, but as a safety measure it's here
		else $r->kick($kickID);
	}
}
