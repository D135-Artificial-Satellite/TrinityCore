SET @ENTRY := 16880;

UPDATE `quest_template` SET `RequiredSpellCast1`=0 WHERE `Id`=10255;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;

-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 33909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hulking Helboar - On Aggro - Cast Hulk'),
(@ENTRY, 0, 1, 0, 8, 0, 100, 1, 34665, 0, 0, 0, 33, 16992, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Hulking Helboar - On Spellhit Administer Antidote - Quest Credit');