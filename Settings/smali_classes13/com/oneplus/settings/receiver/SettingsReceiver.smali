.class public Lcom/oneplus/settings/receiver/SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsReceiver.java"


# static fields
.field private static final ACTION_OTG_AUTO_SHUTDOWN:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final NO_OEM_FONT_DIALOG:I = 0x0

.field private static final SYSTEM_DEFALUT_FONT:I = 0x1


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUm:Landroid/os/UserManager;

.field private mZenMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    return-void
.end method

.method private setBluetoothScanMode()V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/receiver/SettingsReceiver$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/receiver/SettingsReceiver$2;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    return-void
.end method

.method private setFontMode(I)V
    .locals 3
    .param p1, "value"    # I

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_FONT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "oem_font_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v1, "oem_font_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    .line 58
    const-string v1, "SettingsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->setAppUpdated(Z)V

    .line 66
    :cond_1
    const-string v1, "oneplus.settings.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 67
    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "pkgName":Ljava/lang/String;
    const-string v5, "SettingsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_REMOVED pkgName= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v5, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v5, :cond_2

    .line 70
    const-string v5, "appops"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    iput-object v5, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 72
    :cond_2
    iget-object v5, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v5, :cond_3

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 84
    :cond_3
    :try_start_0
    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 85
    iget-object v5, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 87
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v7, 0x45

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7, v8, v1, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    goto :goto_0

    .line 90
    :catch_0
    move-exception v5

    .line 91
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 93
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const-string v5, "com.oneplus.cloud"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 94
    sput-object v3, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 97
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "com.oneplus.cloud"

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    sput-object v3, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 101
    :cond_6
    const-string v1, "codeaurora.net.conn.TETHER_AUTO_SHUT_DOWN_SOFTAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    const-string v1, "SettingsReceiver"

    const-string v3, "Auto shutdown wifi ap if no device connected in 5 mins "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->stopTethering(Landroid/content/Context;)V

    .line 106
    :cond_7
    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 107
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 110
    :cond_8
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    const-string v1, "App_Tracker"

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "zen_mode"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, "mSharedZenMode":I
    iget v3, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mZenMode:I

    if-eq v1, v3, :cond_9

    .line 113
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPZenModeUtils;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/utils/OPZenModeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/settings/utils/OPZenModeUtils;->sendAppTrackerDelay()V

    .line 117
    .end local v1    # "mSharedZenMode":I
    :cond_9
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 118
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v1

    if-nez v1, :cond_a

    .line 119
    const-string v1, "SettingsReceiver"

    const-string v3, "! isSupportFontStyleSetting Language change"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v2}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    goto :goto_1

    .line 122
    :cond_a
    const-string v1, "SettingsReceiver"

    const-string v3, " isSupportFontStyleSetting Language change"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_font_mode"

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 124
    .local v1, "value":I
    invoke-direct {p0, v1}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setFontMode(I)V

    .line 128
    .end local v1    # "value":I
    :cond_b
    :goto_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 129
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, "state":I
    const-string v3, "SettingsReceiver"

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v3, "oneplus_bluetooth_scan_mode_flag"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPPrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 133
    .local v3, "scanmodestatus":I
    const/16 v5, 0xc

    if-ne v1, v5, :cond_c

    if-nez v3, :cond_c

    .line 134
    invoke-direct {p0}, Lcom/oneplus/settings/receiver/SettingsReceiver;->setBluetoothScanMode()V

    .line 139
    .end local v1    # "state":I
    .end local v3    # "scanmodestatus":I
    :cond_c
    const-string v1, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 142
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->restoreBackupEntranceInLauncher(Landroid/content/Context;)V

    .line 144
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->disableCardPackageEntranceInLauncher(Landroid/content/Context;)V

    .line 145
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->enableAppBgService(Landroid/content/Context;)V

    .line 146
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->enablePackageInstaller(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->disableWirelessAdbDebuging()V

    .line 151
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAllSettings()V

    .line 153
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    .line 155
    iget-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver;->mUm:Landroid/os/UserManager;

    const/16 v3, 0x3e7

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 156
    const-string v1, "SettingsReceiver"

    const-string v5, "Handle Parallel App Requirement"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_1
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 159
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "oem_acc_sensor_three_finger"

    .line 158
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "pointerScreenCapture":I
    sget-object v5, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 163
    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_acc_sensor_three_finger"

    .line 162
    invoke-static {v5, v6, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .end local v1    # "pointerScreenCapture":I
    goto :goto_2

    .line 166
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/oneplus/settings/receiver/SettingsReceiver$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/receiver/SettingsReceiver$1;-><init>(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 187
    :cond_d
    const-string v1, "oneplus.intent.action.otg_auto_shutdown"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 188
    const-string v1, "persist.sys.oem.otg_support"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oneplus_otg_auto_disable"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oneplus_otg_auto_disable_is_first"

    invoke-static {v1, v3, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 191
    .local v1, "is_first":I
    if-nez v1, :cond_e

    .line 192
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v5, "OTG_INTENT_NOTIFICATION_CHANNEL"

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120c15

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    invoke-direct {v3, v5, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 197
    .local v3, "notificationChannel":Landroid/app/NotificationChannel;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, "OTG_INTENT_NOTIFICATION_CHANNEL"

    invoke-direct {v5, p1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x7f08037c

    .line 199
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 200
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 202
    .local v5, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "oneplus.intent.action.OTG_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v6, "resultIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p1, v4, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 206
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    const-string v8, "notification"

    .line 208
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 209
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v8, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 210
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "oneplus_otg_auto_disable_is_first"

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    .end local v1    # "is_first":I
    .end local v3    # "notificationChannel":Landroid/app/NotificationChannel;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "resultIntent":Landroid/content/Intent;
    .end local v8    # "notificationManager":Landroid/app/NotificationManager;
    :cond_e
    return-void
.end method
