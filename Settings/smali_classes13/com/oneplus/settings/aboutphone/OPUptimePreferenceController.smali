.class public Lcom/oneplus/settings/aboutphone/OPUptimePreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.source "OPUptimePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 33
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 37
    const/4 v0, 0x1

    return v0
.end method
