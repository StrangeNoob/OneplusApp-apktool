.class public Lcom/android/settings/notification/OPZenModeTurnOnSettings;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "OPZenModeTurnOnSettings.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_ZEN_TURN_ON:Ljava/lang/String; = "zen_turn_on"

.field private static final TAG:Ljava/lang/String; = "OPZenModeTurnOnSettings"


# instance fields
.field private mFragment:Landroid/app/FragmentManager;

.field private mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

.field mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Landroid/app/FragmentManager;

    .line 39
    const-string v0, "zen_turn_on"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 101
    new-instance v0, Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;-><init>(Lcom/android/settings/notification/OPZenModeTurnOnSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 40
    iput-object p3, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mFragment:Landroid/app/FragmentManager;

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 79
    const-string v0, "zen_turn_on"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 80
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;-><init>(Lcom/android/settings/notification/OPZenModeTurnOnSettings;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    .line 83
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "zen_turn_on"

    return-object v0
.end method

.method protected getPreferenceSummary()Ljava/lang/String;
    .locals 14

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 182
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    const-string v1, ""

    .line 183
    .local v1, "preferenceSummary":Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 186
    .local v2, "latestEndTime":J
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 187
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 188
    .local v4, "id":Landroid/net/Uri;
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 190
    sget-object v7, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "appOwner":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 192
    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f1215fc

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .end local v7    # "appOwner":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    if-nez v4, :cond_2

    .line 197
    iget-object v5, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f1215fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 200
    :cond_2
    sget-object v7, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-virtual {v7, v4}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v2

    .line 201
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_3

    .line 202
    sget-object v7, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 202
    invoke-virtual {v7, v2, v3, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v7

    .line 204
    .local v7, "formattedTime":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f1215fd

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .end local v4    # "id":Landroid/net/Uri;
    .end local v7    # "formattedTime":Ljava/lang/CharSequence;
    :cond_3
    :goto_0
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 214
    .local v7, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 216
    sget-object v8, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v8

    const v9, 0x7f1215fb

    if-nez v8, :cond_4

    .line 217
    iget-object v4, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v8, v6, v5

    invoke-virtual {v4, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 221
    :cond_4
    sget-object v8, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v10}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v10

    .line 223
    .local v10, "endTime":J
    cmp-long v8, v10, v2

    if-lez v8, :cond_5

    .line 224
    move-wide v2, v10

    .line 225
    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    new-array v12, v6, [Ljava/lang/Object;

    iget-object v13, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v13, v12, v5

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .end local v7    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v10    # "endTime":J
    :cond_5
    goto :goto_1

    .line 231
    :cond_6
    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 111
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zen_turn_on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 115
    return v1

    .line 117
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 118
    const-string v0, "OPZenModeTurnOnSettings"

    const-string v1, "Click true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getZenDuration()I

    move-result v0

    .line 120
    .local v0, "zenDuration":I
    packed-switch v0, :pswitch_data_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeBackend;->setZenModeForDuration(I)V

    .end local v0    # "zenDuration":I
    goto :goto_0

    .line 128
    .restart local v0    # "zenDuration":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    .line 129
    goto :goto_0

    .line 122
    :pswitch_1
    new-instance v1, Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v3, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 124
    .local v1, "mDialog":Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 126
    nop

    .line 134
    .end local v0    # "zenDuration":I
    .end local v1    # "mDialog":Landroid/app/Dialog;
    :goto_0
    goto :goto_1

    .line 135
    :cond_2
    const-string v0, "OPZenModeTurnOnSettings"

    const-string v3, "Click off"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    .line 138
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .line 48
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 92
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getPreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getPreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    nop

    .line 72
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
