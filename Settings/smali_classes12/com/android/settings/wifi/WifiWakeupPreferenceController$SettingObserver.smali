.class Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiWakeupPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final WIFI_WAKE_UP_ENABLED_URI:Landroid/net/Uri;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiWakeupPreferenceController;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 214
    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 209
    const-string v0, "wifi_wakeup_enabled"

    .line 210
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->WIFI_WAKE_UP_ENABLED_URI:Landroid/net/Uri;

    .line 216
    iput-object p2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 217
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 229
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->WIFI_WAKE_UP_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 233
    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "register"    # Z

    .line 220
    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->WIFI_WAKE_UP_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    :goto_0
    return-void
.end method
