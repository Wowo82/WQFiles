//
//  WQLocalize.m
//  WQ Files
//  Simplified Chinese text for the interface.
//
//  English stays the key: every literal the interface shows is passed
//  through wq_text(), which returns the translation below on a Chinese
//  device and the English literal everywhere else. Adding a language
//  means adding a table, not touching the call sites.
//  GPL-3.0-or-later.
//

#import "WQLocalize.h"

// English text -> Simplified Chinese. The keys are exactly the literals
// used in the sources, so a changed English string falls back to English
// instead of silently keeping a stale translation.
static NSDictionary<NSString *, NSString *> *wq_chinese_table(void)
{
    static NSDictionary<NSString *, NSString *> *table;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        table = @{
            // main.m
            @"Open As" :
                @"打开方式",
            @"Plist Editor" :
                @"Plist 编辑器",
            @"Hex Viewer" :
                @"十六进制查看器",
            @"Loading…" :
                @"正在加载…",
            @"The file changed while it was being read. Open it again." :
                @"读取期间文件已改变，请重新打开。",
            @"Could not establish a stable file version. Open it again." :
                @"无法确认文件版本，请重新打开。",
            @"Cannot read this file.\n\n%@" :
                @"无法读取此文件。\n\n%@",
            @"%@ · mode %o · uid %u" :
                @"%@ · 权限 %o · uid %u",
            @"%@ · read only" :
                @"%@ · 只读",
            @"Edit" :
                @"编辑",
            @"Save" :
                @"保存",
            @"Save in progress" :
                @"正在保存",
            @"Wait for the current save to finish before leaving or making more changes." :
                @"请等待当前保存完成后再离开或继续修改。",
            @"Discard changes?" :
                @"放弃更改？",
            @"Your text changes have not been saved." :
                @"文本更改尚未保存。",
            @"Keep Editing" :
                @"继续编辑",
            @"Discard" :
                @"放弃",
            @"Cannot save" :
                @"无法保存",
            @"The file has no verified version snapshot. Reopen it before saving." :
                @"该文件没有已验证的版本快照，请重新打开后再保存。",
            @"Check the XML." :
                @"请检查 XML。",
            @"Not a valid property list" :
                @"不是有效的属性列表",
            @"Cannot encode" :
                @"无法编码",
            @"The text could not be encoded as UTF-8." :
                @"文本无法以 UTF-8 编码。",
            @"%@ will be overwritten in place. The current version is backed up to Backups first." :
                @"将就地覆盖 %@。当前版本会先备份到“备份”。",
            @"Save changes?" :
                @"保存更改？",
            @"Cancel" :
                @"取消",
            @"Save failed" :
                @"保存失败",
            @"Unknown error" :
                @"未知错误",
            @"Cannot open this item" :
                @"无法打开此项",
            @"Symbolic link" :
                @"符号链接",
            @"WQ Files does not follow symbolic links for viewing, sharing or editing." :
                @"WQ Files 不会跟随符号链接来查看、分享或编辑。",
            @"Only regular files can be viewed." :
                @"只能查看普通文件。",
            @"New Folder" :
                @"新建文件夹",
            @"Import File" :
                @"导入文件",
            @"Copy Path" :
                @"复制路径",
            @"Select" :
                @"选择",
            @"Search names and bundle IDs" :
                @"搜索名称和 Bundle ID",
            @"Search this folder" :
                @"搜索此文件夹",
            @"Path copied" :
                @"已复制路径",
            @"Nothing to select" :
                @"没有可选择的项目",
            @"Only complete backup folders can be selected here." :
                @"此处只能选择完整的备份文件夹。",
            @"Done" :
                @"完成",
            @"Delete" :
                @"删除",
            @"Select All" :
                @"全选",
            @"Select Backups" :
                @"选择备份",
            @"This permanently removes %lu complete backup%@ and everything inside them. It cannot be undone." :
                @"这将永久删除 %lu 个完整备份及其中的全部内容，且无法撤销。",
            @"Delete backups?" :
                @"删除备份？",
            @"Could not remove a backup." :
                @"无法删除某个备份。",
            @"%@ Some selected backups may still exist." :
                @"%@ 部分已选备份可能仍然存在。",
            @"Cannot delete backups" :
                @"无法删除备份",
            @"Scanning inodes…" :
                @"正在扫描 inode…",
            @" · about %.0f min left" :
                @" · 约剩 %.0f 分钟",
            @" · less than 2 min left" :
                @" · 剩余不到 2 分钟",
            @"Scanning inodes… %lld%% · %lu found%@" :
                @"正在扫描 inode… %lld%% · 已找到 %lu 个%@",
            @"Reading containers… %lu of %lu" :
                @"正在读取容器… %lu / %lu",
            @"(no label)" :
                @"（无标签）",
            @"NO TOKEN" :
                @"无访问令牌",
            @"File Backups" :
                @"文件备份",
            @"Backups" :
                @"备份",
            @"App Backups" :
                @"应用备份",
            @"Cannot list this folder. Container enumeration failed; see Log." :
                @"无法列出此文件夹。容器枚举失败，详见日志。",
            @"Cannot open this folder" :
                @"无法打开此文件夹",
            @"symlink · " :
                @"符号链接 · ",
            @"WQ Files does not follow symbolic links for viewing, sharing or editing. Use Copy Path to open the target explicitly." :
                @"WQ Files 不会跟随符号链接来查看、分享或编辑。可先用“复制路径”再显式打开目标。",
            @"Symbolic links are not followed for viewing, sharing or editing." :
                @"查看、分享或编辑时不会跟随符号链接。",
            @"Share as ZIP (AirDrop…)" :
                @"以 ZIP 分享（隔空投送…）",
            @"Share" :
                @"分享",
            @"Restore to Original Location" :
                @"恢复到原位置",
            @"Text / Image" :
                @"文本 / 图像",
            @"Copy Identifier" :
                @"复制标识符",
            @"Delete Backup…" :
                @"删除备份…",
            @"Rename" :
                @"重命名",
            @"Name" :
                @"名称",
            @"Create" :
                @"创建",
            @"Cannot create folder" :
                @"无法创建文件夹",
            @"Cannot rename" :
                @"无法重命名",
            @"%@\n\nThis removes every backup for this app. It cannot be undone." :
                @"%@\n\n这将删除此应用的全部备份，且无法撤销。",
            @"%@\n\nThis removes the selected backup. It cannot be undone." :
                @"%@\n\n这将删除所选备份，且无法撤销。",
            @"Delete backup?" :
                @"删除备份？",
            @"Cannot delete backup" :
                @"无法删除备份",
            @"%@\n\nRemoves the symbolic link only; its target is not changed." :
                @"%@\n\n仅删除符号链接，其目标不会被更改。",
            @"%@\n\nOnly empty folders can be deleted." :
                @"%@\n\n只能删除空文件夹。",
            @"%@\n\nA copy is kept in Backups." :
                @"%@\n\n“备份”中会保留一份副本。",
            @"%@\n\nThis special file is removed; no backup is kept." :
                @"%@\n\n将删除此特殊文件，不保留备份。",
            @"Cannot delete" :
                @"无法删除",
            @"Write this backup back to\n%@?\n\nIf a file is there now, it is backed up first." :
                @"要把此备份写回\n%@ 吗？\n\n若该位置已有文件，会先备份。",
            @"Restore" :
                @"恢复",
            @"Restore failed" :
                @"恢复失败",
            @"Import failed" :
                @"导入失败",
            @"Replace existing file?" :
                @"替换现有文件？",
            @"%@ already exists. It is backed up before being replaced." :
                @"%@ 已存在，替换前会先备份。",
            @"Replace" :
                @"替换",
            @"System Groups" :
                @"系统群组",
            @"This folder cannot be listed on this iOS version. Known names that exist are shown; tap + to try another name." :
                @"此 iOS 版本无法列出该文件夹。这里显示已存在的已知名称；点 + 可尝试其他名称。",
            @"Open System Group" :
                @"打开系统群组",
            @"Open" :
                @"打开",
            @"Not found" :
                @"未找到",
            @"Log" :
                @"日志",
            @"App Data" :
                @"应用数据",
            @"App Groups" :
                @"应用群组",
            @"Extension Data" :
                @"扩展数据",
            @"Internal Daemons" :
                @"内部守护进程",
            @"System Data" :
                @"系统数据",
            @"Restore recovery" :
                @"恢复中断处理",
            @"No App Group" :
                @"无应用群组",
            @"This app needs an App Group to reach other folders. Re-sign it with a tool that keeps the App Group entitlement." :
                @"此应用需要 App Group 才能访问其他文件夹。请用保留 App Group 权限的工具重新签名。",
            @"On iOS 26, System Data and System Groups can't be reached (worse_query covers them on iOS 27 only), and Internal Daemons need a scan of every file id: the first one can take most of an hour on a well-used device, later ones only check new files." :
                @"在 iOS 26 上无法访问“系统数据”和“系统群组”（worse_query 仅在 iOS 27 上支持），而“内部守护进程”需要扫描全部文件 ID：在常用设备上首次扫描可能耗时近一小时，之后只检查新增文件。",
            @"Overwritten and deleted files are copied to Backups first (also visible in the Files app). Long-press a backup to restore it." :
                @"被覆盖或删除的文件会先复制到“备份”（在“文件”App 中也能看到）。长按备份可将其恢复。",
            @"Apps" :
                @"应用",
            @"Cache Cleaner" :
                @"缓存清理",
            @"Go to Path…" :
                @"前往路径…",
            @"A folder or file path" :
                @"文件夹或文件路径",
            @"Go to Path" :
                @"前往路径",
            @"Containers" :
                @"容器",
            @"Tools" :
                @"工具",
            @"\n… (only the beginning is shown)\n" :
                @"\n…（仅显示开头部分）\n",
            // WQAccess.m
            @"Out of memory" :
                @"内存不足",
            @"The path is invalid or belongs to backup storage." :
                @"路径无效，或属于备份存储。",
            @"Cannot allocate a backup name." :
                @"无法分配备份名称。",
            @"Not enough free space for a full backup copy" :
                @"可用空间不足，无法完整复制备份",
            @"Backup copy failed." :
                @"备份复制失败。",
            @"The file changed after it was opened. Your edits were not written; reopen it and compare the changes." :
                @"文件在打开后已改变，你的编辑未被写入；请重新打开并比对更改。",
            @"Invalid file path" :
                @"无效的文件路径",
            @"Backup storage cannot be overwritten or deleted through the file browser." :
                @"不能通过文件浏览器覆盖或删除备份存储。",
            @"Backup of the current file failed, nothing was written: %@" :
                @"当前文件的备份失败，未写入任何内容：%@",
            @"unknown error" :
                @"未知错误",
            @"The target path was replaced during writing" :
                @"写入过程中目标路径被替换",
            @"Saved contents could not be verified; possible concurrent modification" :
                @"无法校验已保存的内容，可能存在并发修改",
            @"Write failed" :
                @"写入失败",
            @"the original descriptor contents were restored" :
                @"已恢复原始描述符内容",
            @"rollback failed: " :
                @"回滚失败：",
            @"no rollback was attempted to avoid overwriting concurrent changes" :
                @"为避免覆盖并发更改，未执行回滚",
            @"Close failed: %@. Backup: %@" :
                @"关闭失败：%@。备份：%@",
            @"Cannot list this folder" :
                @"无法列出此文件夹",
            @"Source and destination are the same file" :
                @"源和目标为同一文件",
            @"The source changed while it was being copied" :
                @"复制过程中源已改变",
            @"Backup storage cannot be modified through the file browser." :
                @"不能通过文件浏览器修改备份存储。",
            @"Cannot inspect the copy source" :
                @"无法检查复制源",
            @"Invalid copy path" :
                @"无效的复制路径",
            @"The source changed while it was copied" :
                @"复制时源已改变",
            @"Destination is not a regular file" :
                @"目标不是普通文件",
            @"A change lies past the end of the file" :
                @"更改位置超出文件末尾",
            @"Only a complete backup unit can be deleted here." :
                @"此处只能删除完整的备份单元。",
            @"Could not remove everything inside the backup." :
                @"无法删除备份内的全部内容。",
            @"Invalid folder path" :
                @"无效的文件夹路径",
            @"Only empty folders can be deleted" :
                @"只能删除空文件夹",
            @"Invalid name" :
                @"无效的名称",
            @"Backup storage cannot be renamed through the file browser." :
                @"不能通过文件浏览器重命名备份存储。",
            @"An item with that name already exists" :
                @"已存在同名项目",
            @"Source and destination trees overlap or have invalid paths" :
                @"源和目标目录树重叠，或路径无效",
            @"Cannot safely open distinct source and destination folders" :
                @"无法安全打开不同的源和目标文件夹",
            @"Cannot read the source folder" :
                @"无法读取源文件夹",
            @"A copy root changed during copying" :
                @"复制过程中某个复制根目录已改变",
            @"%@; staging/recovery contents retained at %@" :
                @"%@；暂存/恢复内容保留在 %@",
            @"OK" :
                @"好",
            // WQApps.m
            @"The backup folder cannot be read" :
                @"无法读取备份文件夹",
            @"The backup contains an unexpected item: %@" :
                @"备份中包含意外项目：%@",
            @"The backup part %@ is not a directory" :
                @"备份组成部分 %@ 不是文件夹",
            @"The backup part %@ cannot be read: %@" :
                @"无法读取备份组成部分 %@：%@",
            @"The backup manifest does not match the on-disk parts" :
                @"备份清单与磁盘上的组成部分不一致",
            @"The backup path is outside this app's backup folder" :
                @"备份路径不在此应用的备份文件夹内",
            @"The backup folder is missing" :
                @"备份文件夹不存在",
            @"Cannot inspect the backup manifest (errno %d)" :
                @"无法检查备份清单（errno %d）",
            @"The backup manifest is not a regular file" :
                @"备份清单不是普通文件",
            @"The backup manifest is invalid" :
                @"备份清单无效",
            @"The safety backup has no typed manifest" :
                @"安全备份没有带类型的清单",
            @"The legacy backup cannot be read" :
                @"无法读取旧版备份",
            @"The legacy backup contains an unexpected item: %@" :
                @"旧版备份中包含意外项目：%@",
            @"invalid manifest" :
                @"清单无效",
            @" (older, unverified)" :
                @"（较旧，未校验）",
            @"The app container no longer exists or is not a directory" :
                @"应用容器已不存在或不是文件夹",
            @"The app container was replaced after it was scanned" :
                @"应用容器在扫描后被替换",
            @"The app container identity no longer matches the selected app" :
                @"应用容器标识与所选应用不再匹配",
            @"The copied tree could not be verified (the source changed or the copy is incomplete)" :
                @"无法校验复制结果（源已改变或副本不完整）",
            @"%@ is not a directory" :
                @"%@ 不是文件夹",
            @"Cannot read %@" :
                @"无法读取 %@",
            @"Some items remain in %@; keep the app closed and try again" :
                @"%@ 中仍有残留项目；请保持应用关闭后重试",
            @"The app identifier is not a valid bundle identifier" :
                @"应用标识符不是有效的 Bundle ID",
            @"Cannot locate the app backup folder" :
                @"找不到应用备份文件夹",
            @"Cannot create the backup folder" :
                @"无法创建备份文件夹",
            @"Cannot access %@" :
                @"无法访问 %@",
            @"Cannot hash the staged backup part" :
                @"无法计算暂存备份部分的哈希",
            @"The app data changed while it was being backed up; no snapshot-consistent copy was made" :
                @"备份过程中应用数据已改变，未能生成快照一致的副本",
            @"Cannot write the backup manifest" :
                @"无法写入备份清单",
            @"Cannot finish the backup (errno %d)" :
                @"无法完成备份（errno %d）",
            @"The app container changed while the backup was being finalized" :
                @"备份收尾时应用容器已改变",
            @"Search apps" :
                @"搜索应用",
            @"Finding apps…" :
                @"正在查找应用…",
            @"Finding apps… %lld%%" :
                @"正在查找应用… %lld%%",
            @"Reading app names…" :
                @"正在读取应用名称…",
            @"Measuring %lu/%lu…" :
                @"正在统计 %lu/%lu…",
            @"Unknown container (%@)" :
                @"未知容器（%@）",
            @"Container enumeration failed. See Log for the statfs/inode reason." :
                @"容器枚举失败。请查看日志中的 statfs/inode 原因。",
            @"No app containers were found. Refresh, and check Log for the enumeration reason." :
                @"未找到任何应用容器。请刷新，并在日志中查看枚举原因。",
            @"%lu containers · %lu with limited access, identity, size, or no identifier. See Log." :
                @"%lu 个容器 · %lu 个存在访问、标识或大小受限，或无标识符。详见日志。",
            @"%lu of %lu apps" :
                @"%lu / %lu 个应用",
            @"%lu apps · %@ of app data" :
                @"%lu 个应用 · 应用数据共 %@",
            @"Access unavailable · %@" :
                @"无法访问 · %@",
            @"%@ · %@ · no identifier" :
                @"%@ · %@ · 无标识符",
            @"%@ · %@ · container identity unavailable" :
                @"%@ · %@ · 容器标识不可用",
            @"size unavailable · %@%@" :
                @"大小不可用 · %@%@",
            @" · backed up" :
                @" · 已备份",
            @"The container identity is unavailable or changed. Backup, restore and clear are disabled for this entry." :
                @"容器标识不可用或已改变，此条目的备份、恢复和清除已禁用。",
            @"The container identifier is unavailable. Backup, restore and clear are disabled for this entry." :
                @"容器标识符不可用，此条目的备份、恢复和清除已禁用。",
            @"Sandbox access is unavailable. Check the App Group and see Log; only the container path can be copied." :
                @"沙盒访问不可用。请检查 App Group 并查看日志；只能复制容器路径。",
            @"Open Data Folder" :
                @"打开数据文件夹",
            @"Copy Container Path" :
                @"复制容器路径",
            @"%@ of data" :
                @"%@ 数据",
            @"size unavailable" :
                @"大小不可用",
            @"Back Up Data" :
                @"备份数据",
            @"Restore Backup (%@)" :
                @"恢复备份（%@）",
            @"Restore a Backup… (%lu)" :
                @"恢复某个备份…（%lu）",
            @"Share Latest Backup (AirDrop…)" :
                @"分享最新备份（隔空投送…）",
            @"Clear Data…" :
                @"清除数据…",
            @"Backing up %@…" :
                @"正在备份 %@…",
            @"Backed up" :
                @"已备份",
            @"Backup failed" :
                @"备份失败",
            @"Saved to AppBackups/%@/%@" :
                @"已保存到 AppBackups/%@/%@",
            @"Nothing was saved: %@" :
                @"未保存任何内容：%@",
            @"see Log" :
                @"见日志",
            @"Clearing %@…" :
                @"正在清除 %@…",
            @"Data cleared" :
                @"数据已清除",
            @"Partly cleared" :
                @"部分已清除",
            @"Freed about %@.%@ Open %@ to start fresh." :
                @"已释放约 %@。%@打开 %@ 即可重新开始。",
            @" %@. Keep the app closed and try again." :
                @"（%@。请保持应用关闭后重试。）",
            @"Some items could not be removed (see Log)" :
                @"部分项目无法删除（见日志）",
            @"Clear %@?" :
                @"清除 %@？",
            @"Back Up, Then Clear" :
                @"先备份再清除",
            @"Not cleared" :
                @"未清除",
            @"The backup did not complete, so nothing was deleted." :
                @"备份未完成，因此未删除任何内容。",
            @"Clear Without Backup" :
                @"不备份直接清除",
            @"Restore which backup?" :
                @"恢复哪个备份？",
            @"\n\nThis backup is unverified (%@). WQ Files will re-check its parts before changing anything." :
                @"\n\n此备份未通过校验（%@）。WQ Files 会在更改任何内容前重新检查其组成部分。",
            @"no typed manifest" :
                @"无带类型的清单",
            @"Restore %@?" :
                @"恢复 %@？",
            @"Restoring %@…" :
                @"正在恢复 %@…",
            @"Could not restore %@" :
                @"无法恢复 %@",
            @"The restore recovery journal is unreadable" :
                @"恢复日志无法读取",
            @"Cannot create the restore recovery folder" :
                @"无法创建恢复处理文件夹",
            @"Cannot write the restore recovery journal" :
                @"无法写入恢复日志",
            @"The restore paths are not inside this app's backup folder" :
                @"恢复路径不在此应用的备份文件夹内",
            @"Cannot remove the completed restore journal" :
                @"无法删除已完成的恢复日志",
            @"Cannot remove the restore recovery journal" :
                @"无法删除恢复日志",
            @"The backup has no hash for %@" :
                @"备份缺少 %@ 的哈希",
            @"The backup's %@ contents changed after it was created" :
                @"备份的 %@ 内容在创建后已改变",
            @"An interrupted restore was found with an unknown recovery state. The journal was retained for manual recovery." :
                @"发现一次中断的恢复，其恢复状态未知。日志已保留以便手动恢复。",
            @"An interrupted restore was found, but its recovery journal is invalid. The journal was retained for manual recovery%@." :
                @"发现一次中断的恢复，但其恢复日志无效。日志已保留以便手动恢复%@。",
            @"Automatic recovery of %@ failed: %@. The safety backup is %@; see Log." :
                @"%@ 的自动恢复失败：%@。安全备份为 %@；详见日志。",
            @"An interrupted restore of %@ was recovered, but its journal could not be committed (%@). It will be checked again at the next launch." :
                @"%@ 中断的恢复已完成，但其日志无法提交（%@）。下次启动时会再次检查。",
            @"An interrupted restore of %@ was recovered. Its committed journal will be cleaned up at the next launch (%@)." :
                @"%@ 中断的恢复已完成。其已提交的日志将在下次启动时清理（%@）。",
            @"cleanup failed" :
                @"清理失败",
            @"An interrupted restore of %@ was recovered from its safety backup." :
                @"已从安全备份完成 %@ 中断的恢复。",
            @"Not restored" :
                @"未恢复",
            @"The backup is not safe to restore (%@). Nothing was changed." :
                @"此备份不安全，无法恢复（%@）。未更改任何内容。",
            @"The legacy backup is empty. Nothing was changed." :
                @"旧版备份为空。未更改任何内容。",
            @"The selected app container is no longer safe to use (%@). Nothing was changed." :
                @"所选应用容器已不再安全可用（%@）。未更改任何内容。",
            @"The current data couldn't be backed up first (%@). Nothing was changed." :
                @"无法先备份当前数据（%@）。未更改任何内容。",
            @"%@. Nothing was changed; the safety backup was retained at %@ for manual recovery." :
                @"%@。未更改任何内容；安全备份已保留在 %@ 以便手动恢复。",
            @"The recovery journal could not be written" :
                @"无法写入恢复日志",
            @"The selected backup changed before restore" :
                @"所选备份在恢复前已改变",
            @"The selected backup changed during restore" :
                @"所选备份在恢复过程中已改变",
            @" The recovery journal is committed and will be cleaned up at the next launch." :
                @"恢复日志已提交，将在下次启动时清理。",
            @"Open %@ to use the restored Documents and Library. The data from before is kept as backup %@; tmp was not changed. Keep the app closed during this operation.%@" :
                @"打开 %@ 即可使用已恢复的 Documents 和 Library。此前数据保留为备份 %@；tmp 未被更改。操作期间请保持应用关闭。%@",
            @"The restore finished, but its recovery journal could not be committed (%@)" :
                @"恢复已完成，但其日志无法提交（%@）",
            @"kept for recovery at the next launch" :
                @"保留以便下次启动时恢复",
            @"%@. The previous data was put back.%@" :
                @"%@。此前数据已放回。%@",
            @"Some files couldn't be written" :
                @"部分文件无法写入",
            @" Recovery will run again at the next launch because the journal could not be removed." :
                @" 由于日志无法删除，下次启动时会再次执行恢复。",
            @"%@, and putting the previous data back also failed (%@). It is in backup %@; see the Log.%@" :
                @"%@，且放回此前数据也失败（%@）。数据在备份 %@ 中；详见日志。%@",
            @" Recovery will run again at the next launch." :
                @" 下次启动时会再次执行恢复。",
            @"Restored" :
                @"已恢复",
            // WQCache.m
            @"Delete Library/Caches and tmp for %lu app%@, plus Crash Logs" :
                @"删除 %lu 个应用的 Library/Caches 和 tmp，以及崩溃日志",
            @"Delete Library/Caches and tmp for %lu app%@" :
                @"删除 %lu 个应用的 Library/Caches 和 tmp",
            @"Delete Crash Logs" :
                @"删除崩溃日志",
            @"Delete the selected cache targets" :
                @"删除所选缓存目标",
            @"Deletes selected Crash Logs. This cannot be undone. No backup is kept." :
                @"删除所选崩溃日志。此操作无法撤销，也不保留备份。",
            @"Select app caches or Crash Logs to see the deletion scope. No backup is kept." :
                @"选择应用缓存或崩溃日志以查看删除范围。不保留备份。",
            @"%@ appeared after the scan" :
                @"%@ 在扫描后出现",
            @"%@ changed after the scan" :
                @"%@ 在扫描后已改变",
            @"the scan had limited access" :
                @"扫描时访问受限",
            @"the crash-log target is not the expected canonical directory" :
                @"崩溃日志目标不是预期的规范目录",
            @"the scanned cache targets are incomplete" :
                @"扫描到的缓存目标不完整",
            @"the app container identity or ancestry is unavailable" :
                @"应用容器标识或其上级路径不可用",
            @"%@ no longer has the scanned container identity" :
                @"%@ 已不再具有扫描时的容器标识",
            @"%@ has unsafe path ancestry" :
                @"%@ 的上级路径不安全",
            @"Select None" :
                @"全不选",
            @"Select Large Caches (50 MB+)" :
                @"选择大缓存（50 MB 以上）",
            @"Finding %@… %lld%%" :
                @"正在查找 %@… %lld%%",
            @"Measuring %@ %lu of %lu…" :
                @"正在统计 %@ %lu / %lu…",
            @"failed the path safety check" :
                @"未通过路径安全检查",
            @"refused access" :
                @"拒绝访问",
            @"Crash Logs" :
                @"崩溃日志",
            @"%lu container enumeration%@ failed" :
                @"%lu 个容器的枚举失败",
            @"%lu container%@ had limited access" :
                @"%lu 个容器访问受限",
            @"%lu cache tree measurement%@ was limited" :
                @"%lu 个缓存树的统计受限",
            @"%lu container%@ had no identifier or identity" :
                @"%lu 个容器缺少标识符或标识",
            @"limited rows are excluded; the remaining rows can still be cleaned" :
                @"受限的行已排除，其余行仍可清理",
            @"Scan incomplete: %@. See Log." :
                @"扫描不完整：%@。详见日志。",
            @"No %@ container%@ found." :
                @"未找到 %@ 容器。",
            @"%lu of %lu" :
                @"%lu / %lu",
            @"%lu apps and extensions" :
                @"%lu 个应用和扩展",
            @" Close running apps first." :
                @" 请先关闭正在运行的应用。",
            @"%@ selected in %lu item%@" :
                @"已选 %@，共 %lu 项",
            @"Crash Logs · access limited" :
                @"崩溃日志 · 访问受限",
            @"Crash Logs · osanalytics" :
                @"崩溃日志 · osanalytics",
            @"cache %@ · temp %@%@" :
                @"缓存 %@ · 临时 %@%@",
            @" · access limited" :
                @" · 访问受限",
            @"Not cleanable" :
                @"无法清理",
            @"This row has incomplete access or identity information. Scan again while the app is closed, or use its file browser entry to inspect it." :
                @"此行缺少访问或标识信息。请在应用关闭时重新扫描，或通过文件浏览器中的入口查看。",
            @"Show Crash Logs in File Browser" :
                @"在文件浏览器中显示崩溃日志",
            @"Show Caches in File Browser" :
                @"在文件浏览器中显示缓存",
            @" · Caches" :
                @" · 缓存",
            @"Show tmp in File Browser" :
                @"在文件浏览器中显示 tmp",
            @" · tmp" :
                @" · tmp",
            @"Show App Data in File Browser" :
                @"在文件浏览器中显示应用数据",
            @"Stopping after the current item…" :
                @"将在当前项目完成后停止…",
            @"%@, about %@? This cannot be undone. Close the selected apps first; you can stop between items." :
                @"%@，约 %@？此操作无法撤销。请先关闭所选应用；你可以在项目之间停止。",
            @"Clean caches?" :
                @"清理缓存？",
            @"Clean" :
                @"清理",
            @"identity changed" :
                @"标识已改变",
            @"Clean cancelled: %@. Scan again before retrying." :
                @"清理已取消：%@。请重新扫描后再试。",
            @"Cleaning %lu of %lu: %@" :
                @"正在清理 %lu / %lu：%@",
            @"Stopped. Freed %@.%@" :
                @"已停止。释放 %@。%@",
            @"Freed %@.%@" :
                @"已释放 %@。%@",
            @" Some items could not be removed (see Log)." :
                @" 部分项目无法删除（见日志）。",
            @"Clean stopped: %@. Scan again before retrying." :
                @"清理已停止：%@。请重新扫描后再试。",
            @"Cleaning" :
                @"清理中",
            @"Scanning" :
                @"扫描中",
            @"Reclaimable" :
                @"可回收",
            @"Cleaning…" :
                @"正在清理…",
            @"unknown" :
                @"未知",
            @"Stop" :
                @"停止",
            // WQHexViewer.m
            @"Cannot open this file." :
                @"无法打开此文件。",
            @" · %lu changed" :
                @" · 已修改 %lu 字节",
            @" · Saving…" :
                @" · 正在保存…",
            @"Discard Changes" :
                @"放弃更改",
            @"Go to Offset…" :
                @"跳转到偏移…",
            @"Find Hex Bytes…" :
                @"查找十六进制字节…",
            @"Find Text…" :
                @"查找文本…",
            @"Only the owner may read this file." :
                @"只有文件所有者才能读取此文件。",
            @"Read failed: %@" :
                @"读取失败：%@",
            @"Bytes at 0x%llx" :
                @"0x%llx 处的字节",
            @"Overwrite these %lu bytes (hex). The file size stays the same." :
                @"覆盖这 %lu 个字节（十六进制）。文件大小保持不变。",
            @"Enter exactly %lu bytes in hex." :
                @"请输入正好 %lu 个字节的十六进制值。",
            @"Not changed" :
                @"未更改",
            @"Wait for the save to finish before leaving or changing these edits." :
                @"请等待保存完成后再离开或修改这些编辑。",
            @"Save unavailable" :
                @"无法保存",
            @"The file version could not be verified. Close and reopen it before saving." :
                @"无法确认文件版本。请关闭并重新打开后再保存。",
            @"%lu bytes in %@ are overwritten in place. The current file is backed up first." :
                @"将就地覆盖 %lu 个字节（%@）。当前文件会先备份。",
            @"Your byte changes have not been saved." :
                @"字节更改尚未保存。",
            @"Go to Offset" :
                @"跳转到偏移",
            @"Hex (0x1a2b) or decimal" :
                @"十六进制（0x1a2b）或十进制",
            @"Enter a complete non-negative decimal value or a 0x-prefixed hexadecimal value." :
                @"请输入完整的非负十进制值，或带 0x 前缀的十六进制值。",
            @"Invalid offset" :
                @"无效的偏移",
            @"Offset unavailable" :
                @"偏移不可用",
            @"The file is empty or its size is still loading." :
                @"文件为空，或其大小仍在加载。",
            @"Enter an offset from 0x0 through 0x%llx." :
                @"请输入 0x0 到 0x%llx 之间的偏移。",
            @"Offset out of range" :
                @"偏移超出范围",
            @"Find Hex Bytes" :
                @"查找十六进制字节",
            @"Find Text" :
                @"查找文本",
            @"Searches the saved file forward from the top of the screen." :
                @"从屏幕顶部开始向下搜索已保存的文件。",
            @"Search too large" :
                @"搜索内容过大",
            @"Use at most 1 MiB of UTF-8 search input." :
                @"UTF-8 搜索内容最多 1 MiB。",
            @"Enter hex bytes, e.g. de ad be ef." :
                @"请输入十六进制字节，例如 de ad be ef。",
            @"text" :
                @"文本",
            @"Enter some text." :
                @"请输入文本。",
            @"Nothing to find" :
                @"没有可查找的内容",
            @"No match after offset 0x%llx." :
                @"0x%llx 之后没有匹配。",
            @"Find" :
                @"查找",
            @"Go" :
                @"跳转",
            @"Set" :
                @"设定",
            @"Searching…" :
                @"正在搜索…",
            // WQPlistEditor.m
            @"%lu bytes · %@" :
                @"%lu 字节 · %@",
            @"%lu keys" :
                @"%lu 个键",
            @"%lu items" :
                @"%lu 项",
            @"keyed-archive reference" :
                @"键值归档引用",
            @"Not a property list: %@" :
                @"不是属性列表：%@",
            @"Cannot read this file: %@" :
                @"无法读取此文件：%@",
            @"Done Reordering" :
                @"完成排序",
            @"Reorder Items" :
                @"重新排序",
            @"Open as XML Text" :
                @"以 XML 文本打开",
            @"Open in Hex Viewer" :
                @"在十六进制查看器中打开",
            @"Your edits to this property list have not been saved." :
                @"对此属性列表的编辑尚未保存。",
            @"Read-only format" :
                @"只读格式",
            @"This property list uses an OpenStep/unknown format that cannot be saved by the editor. Use Open as XML Text and choose a supported format explicitly." :
                @"此属性列表使用 OpenStep/未知格式，编辑器无法保存。请使用“以 XML 文本打开”并显式选择受支持的格式。",
            @"Cannot save safely" :
                @"无法安全保存",
            @"The current file version is unavailable. Reopen the file before saving again." :
                @"当前文件版本不可用。请重新打开文件后再保存。",
            @"%@ is overwritten in place (%@ format). The current version is backed up first." :
                @"将就地覆盖 %@（%@ 格式）。当前版本会先备份。",
            @"The edited property list contains an unsupported value." :
                @"编辑后的属性列表包含不支持的值。",
            @"The edited property list is not valid." :
                @"编辑后的属性列表无效。",
            @"The serialized property list is too large (maximum %lu MiB)." :
                @"序列化后的属性列表过大（上限 %lu MiB）。",
            @"The serialized property list could not be validated." :
                @"无法校验序列化后的属性列表。",
            @"read only" :
                @"只读",
            @"read only · writing is not supported" :
                @"只读 · 不支持写入",
            @"%@ property list · %@" :
                @"%@ 格式属性列表 · %@",
            @"%@ property list. Tap a value to edit it, swipe to delete or rename, + to add." :
                @"%@ 格式属性列表。点按值可编辑，轻扫可删除或重命名，点 + 可新增。",
            @"Item %ld" :
                @"项目 %ld",
            @"Keyed-archive references are read-only in this editor. Edit the archived data through its owning key instead." :
                @"键值归档引用在此编辑器中为只读。请通过其所属的键编辑归档数据。",
            @"Reference value" :
                @"引用值",
            @"Data over 4 KB can't be edited in this editor." :
                @"超过 4 KB 的 Data 无法在此编辑器中编辑。",
            @"Too large to edit here" :
                @"过大，无法在此编辑",
            @"Strings over 64 KB can't be edited in this editor." :
                @"超过 64 KB 的字符串无法在此编辑器中编辑。",
            @"Whole number" :
                @"整数",
            @"Hex bytes, e.g. 01 ab ff" :
                @"十六进制字节，例如 01 ab ff",
            @"Scalar values are limited to 64 KB in this editor." :
                @"此编辑器中标量值上限为 64 KB。",
            @"Value too large" :
                @"值过大",
            @"Hex input is limited to 16 KB in this editor." :
                @"此编辑器中十六进制输入上限为 16 KB。",
            @"Data values are limited to 4 KB in this editor." :
                @"此编辑器中 Data 值上限为 4 KB。",
            @"Expected: %@" :
                @"期望：%@",
            @"Not a valid value" :
                @"不是有效值",
            @"Type of the new value" :
                @"新值的类型",
            @"New Item" :
                @"新建项目",
            @"Key exists" :
                @"键已存在",
            @"There is already a key named \"%@\"." :
                @"已存在名为“%@”的键。",
            @"Rename Key" :
                @"重命名键",
            @"Add" :
                @"新增",
            @"Key" :
                @"键",
            @"String" :
                @"字符串",
            @"Number" :
                @"数字",
            @"Real" :
                @"实数",
            @"Boolean" :
                @"布尔",
            @"Date" :
                @"日期",
            @"Data" :
                @"数据",
            @"Dictionary" :
                @"字典",
            @"Array" :
                @"数组",
            @"Reference" :
                @"引用",
            // WQSharing.m
            @"Share in progress" :
                @"正在分享",
            @"Wait for the current share to finish before starting another." :
                @"请等待当前分享完成后再开始新的分享。",
            @"Only regular files can be shared." :
                @"只能分享普通文件。",
            @"Cannot share" :
                @"无法分享",
            @"Could not create a temporary export folder" :
                @"无法创建临时导出文件夹",
            @"Preparing…" :
                @"正在准备…",
            @"Compressing the folder" :
                @"正在压缩文件夹",
            @"Could not create the ZIP" :
                @"无法创建 ZIP",
            @"%@ backups" :
                @"%@ 的备份",
            // shared
            @"%@\n\nThis method only opens containers. Use App Data, App Groups, Extension Data, Internal Daemons or System Groups for the folders inside /private/var." :
                @"%@\n\n此方式只能打开容器。若要访问 /private/var 内的文件夹，请使用“应用数据”“应用群组”“扩展数据”“内部守护进程”或“系统群组”。",
            @"This file belongs to %@ (mode %o) and only its owner may read it. WQ Files reaches the folder, but runs as mobile (uid %d), so no app can open this file." :
                @"此文件属于 %@（权限 %o），只有其所有者才能读取。WQ Files 可以进入该文件夹，但以 mobile（uid %d）身份运行，因此任何应用都无法打开此文件。",
            @"This file belongs to %@ (mode %o) and only its owner may change it. WQ Files reaches the folder, but runs as mobile (uid %d), so no app can change this file." :
                @"此文件属于 %@（权限 %o），只有其所有者才能修改。WQ Files 可以进入该文件夹，但以 mobile（uid %d）身份运行，因此任何应用都无法修改此文件。",
            @"Tap an app to back up, restore or clear its Documents and Library. Close the app first (swipe it away in the app switcher); operations are not snapshot-consistent while it runs. Backups are stored in WQFiles/AppBackups and are visible in the Files app. tmp is cleared when requested but is not backed up or restored." :
                @"点按应用可备份、恢复或清除其 Documents 和 Library。请先关闭该应用（在应用切换器中向上滑动）；应用运行期间的操作无法保证快照一致。备份存放在 WQFiles/AppBackups，可在“文件”App 中查看。按需清除时会清空 tmp，但 tmp 不参与备份和恢复。",
            @"Deletes everything in the app's Documents, Library and tmp, like a fresh install. The optional backup covers Documents and Library only; tmp is discarded and cannot be restored. Logins, settings and offline content are lost. Close the app first." :
                @"删除应用 Documents、Library 和 tmp 中的全部内容，如同全新安装。可选备份仅包含 Documents 和 Library；tmp 会被丢弃且无法恢复。登录状态、设置和离线内容将丢失。请先关闭该应用。",
            @"Replaces the app's current Documents and Library with the backup from %@; tmp is left untouched. The current data is backed up first, and put back if anything fails. Close the app first: a running app can make the operation non-snapshot-consistent.%@" :
                @"将用 %@ 的备份替换应用当前的 Documents 和 Library；tmp 保持不变。当前数据会先备份，若中途失败将放回。请先关闭该应用：应用运行中可能导致操作无法保持快照一致。%@",
            @"Clears each selected app's Library/Caches and tmp, and deletes selected Crash Logs. Apps rebuild their caches as you use them; some keep offline content (music, maps, downloads) there and will download it again. No backup is kept." :
                @"清除所选应用的 Library/Caches 和 tmp，并删除所选崩溃日志。应用会随使用重新生成缓存；部分应用把离线内容（音乐、地图、下载）缓存在其中，之后会重新下载。不保留备份。",
            @"Clears each selected app's Library/Caches and tmp. Apps rebuild their caches as you use them; some keep offline content (music, maps, downloads) there and will download it again. No backup is kept." :
                @"清除所选应用的 Library/Caches 和 tmp。应用会随使用重新生成缓存；部分应用把离线内容（音乐、地图、下载）缓存在其中，之后会重新下载。不保留备份。",
        };
    });
    return table;
}

NSString *wq_text(NSString *english)
{
    if (!english.length) return english;
    static BOOL chinese;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        NSString *language = NSLocale.preferredLanguages.firstObject ?: @"en";
        chinese = [language hasPrefix:@"zh"];
    });
    if (!chinese) return english;
    return wq_chinese_table()[english] ?: english;
}
