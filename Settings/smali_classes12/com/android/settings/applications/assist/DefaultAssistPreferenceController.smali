.class public Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultAssistPreferenceController.java"


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mPrefKey:Ljava/lang/String;

.field private final mShowSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefKey"    # Ljava/lang/String;
    .param p3, "showSetting"    # Z

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mShowSetting:Z

    .line 47
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 48
    return-void
.end method


# virtual methods
.method getAssistSettingsActivity(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 103
    new-instance v0, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p3, v1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 105
    .local v0, "voiceInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x0

    return-object v1

    .line 108
    :cond_0
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 89
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhuyang--getDefaultAppInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAssistAppByComponentName(Ljava/lang/String;)V

    .line 98
    :cond_1
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mUserId:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 8
    .param p1, "info"    # Lcom/android/settingslib/applications/DefaultAppInfo;

    .line 52
    iget-boolean v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mShowSetting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return-object v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 56
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 57
    return-object v1

    .line 59
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.voice.VoiceInteractionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, "probe":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 63
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->getAssistSettingsActivity(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "activity":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 70
    return-object v1

    .line 72
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    .line 73
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    return-object v1

    .line 66
    .end local v5    # "activity":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1
.end method

.method public isAvailable()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
