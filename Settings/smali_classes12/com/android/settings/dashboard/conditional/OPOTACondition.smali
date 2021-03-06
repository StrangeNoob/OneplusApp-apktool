.class public Lcom/android/settings/dashboard/conditional/OPOTACondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "OPOTACondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/OPOTACondition$Receiver;
    }
.end annotation


# static fields
.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final OEM_BOOT_BROADCAST:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field private static final STRONG_PROMPT_OTA:Ljava/lang/String; = "strong_prompt_ota"

.field private static final TAG:Ljava/lang/String; = "OPOTACondition"


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 29
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 20
    invoke-static {}, Lcom/android/settings/dashboard/conditional/OPOTACondition;->activeRefresh()Z

    move-result v0

    return v0
.end method

.method private static activeRefresh()Z
    .locals 5

    .line 39
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return v1

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 44
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "has_new_version_to_update"

    .line 43
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 45
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 48
    .local v0, "systemHasUpdate":Z
    :goto_0
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 47
    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "strong_prompt_ota"

    .line 46
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 48
    move v1, v2

    nop

    .line 49
    .local v1, "strongPromptOTA":Z
    :cond_2
    const-string v2, "OPOTACondition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemHasUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "    strongPromptOTA = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move v2, v0

    .line 52
    .local v2, "active":Z
    return v2
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 1

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 87
    const/16 v0, 0x270f

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120c13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120c13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 0
    .param p1, "index"    # I

    .line 83
    return-void
.end method

.method public onPrimaryClick()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.CheckUpdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public refreshState()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/settings/dashboard/conditional/OPOTACondition;->activeRefresh()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/OPOTACondition;->setActive(Z)V

    .line 35
    return-void
.end method
