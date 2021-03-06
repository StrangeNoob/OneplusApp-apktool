.class public Lcom/oneplus/settings/better/OPNightMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNightMode.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;


# static fields
.field private static final AUTO_ACTIVATE_CUSTOMIZED_VALUE:I = 0x2

.field private static final DIALOG_TURN_OFF_TIME:I = 0x1

.field private static final DIALOG_TURN_ON_TIME:I = 0x0

.field private static final KEY_AUTO_ACTIVATE:Ljava/lang/String; = "auto_activate"

.field private static final KEY_NIGHT_MODE_ENABLED_OP:Ljava/lang/String; = "night_mode_enabled"

.field private static final KEY_NIGHT_MODE_LEVEL_OP:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_NIGHT_MODE_SUMMARY:Ljava/lang/String; = "night_mode_summary"

.field private static final KEY_SET_TIME:Ljava/lang/String; = "set_time"

.field private static final KEY_TURN_OFF_TIME:Ljava/lang/String; = "turn_off_time"

.field private static final KEY_TURN_ON_TIME:Ljava/lang/String; = "turn_on_time"

.field private static final NEVER_AUTO_VALUE:I = 0x0

.field private static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SUNRISE_SUNSET_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPNightMode"


# instance fields
.field private isSupportReadingMode:Z

.field private mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

.field private mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

.field private mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

.field private mTurnOnTimePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 316
    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPNightMode$2;-><init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPNightMode;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private convertAutoMode(I)I
    .locals 1
    .param p1, "value"    # I

    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 112
    const/4 v0, 0x2

    return v0

    .line 114
    :cond_1
    return v0
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .line 260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 261
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 262
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 264
    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 265
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 266
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAutoActivateModePreferenceDescription(I)V
    .locals 3
    .param p1, "value"    # I

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1
    .param p1, "dialogId"    # I

    .line 256
    const/16 v0, 0x270f

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 341
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2
    .param p1, "autoMode"    # I

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    .local v0, "showCustomSchedule":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f160088

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.read_mode.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    .line 77
    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 78
    const-string v1, "night_mode_enabled"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 79
    const-string v1, "auto_activate"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    .line 80
    const-string v1, "set_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 81
    const-string v1, "turn_on_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    .line 82
    const-string v1, "turn_off_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    .line 83
    const-string v1, "night_mode_summary"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/WallOfTextPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

    .line 84
    const-string v1, "night_mode_level_op"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    .line 85
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    .line 90
    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 94
    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    .line 93
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    .line 97
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 98
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 99
    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    .line 98
    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    .line 100
    new-instance v1, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    move v1, v2

    .line 102
    .local v1, "readingmodeEnbale":Z
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 103
    iget-boolean v2, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f120bd1

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/WallOfTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "dialogId"    # I

    .line 208
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    .local v0, "initialTime":Ljava/time/LocalTime;
    goto :goto_1

    .line 213
    .end local v0    # "initialTime":Ljava/time/LocalTime;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 216
    .restart local v0    # "initialTime":Ljava/time/LocalTime;
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 217
    .local v7, "context":Landroid/content/Context;
    nop

    .line 218
    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    .line 219
    .local v8, "use24HourFormat":Z
    new-instance v9, Lcom/oneplus/lib/app/TimePickerDialog;

    new-instance v3, Lcom/oneplus/settings/better/OPNightMode$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/better/OPNightMode$1;-><init>(Lcom/oneplus/settings/better/OPNightMode;I)V

    .line 248
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v9

    move-object v2, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 219
    return-object v9
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "key":Ljava/lang/String;
    const-string v1, "night_mode_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 177
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 179
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForNightMode()V

    .line 181
    .end local v1    # "enabled":Z
    goto :goto_0

    :cond_0
    const-string v1, "auto_activate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 184
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 185
    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    .line 184
    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    .line 187
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoNightMode()V

    .line 190
    .end local v1    # "value":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 195
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "key":Ljava/lang/String;
    const-string v1, "turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    .line 198
    return v2

    .line 199
    :cond_0
    const-string v1, "turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    .line 201
    return v2

    .line 203
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 283
    if-nez p3, :cond_0

    return-void

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x5a

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x38

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 294
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onAutoModeChanged(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    .line 131
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 130
    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    .line 134
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 133
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    .line 137
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 136
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    .line 304
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 308
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    .line 309
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 308
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/16 v1, -0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 314
    return-void
.end method
