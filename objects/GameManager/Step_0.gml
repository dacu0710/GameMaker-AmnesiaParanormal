switch(global.BrightLevel)
{
	case 1:
		UIManager.isSkillCoolUI = true;
		UIManager.isBrightLevelUI = true;
		UIManager.isSanityRateUI = true;
		break;
	case 2:
		UIManager.isSkillCoolUI = true;
		UIManager.isBrightLevelUI = true;
		UIManager.isSanityRateUI = true;
		break;
	case 3:
		UIManager.isSkillCoolUI = true;
		UIManager.isBrightLevelUI = true;
		UIManager.isSanityRateUI = true;
		break;
	case 4:
		UIManager.isSkillCoolUI = false;
		UIManager.isBrightLevelUI = true;
		UIManager.isSanityRateUI = true;
		break;
	case 5:
		UIManager.isSkillCoolUI = false;
		UIManager.isBrightLevelUI = false;
		UIManager.isSanityRateUI = false;
		break;
	default:
		break;
}