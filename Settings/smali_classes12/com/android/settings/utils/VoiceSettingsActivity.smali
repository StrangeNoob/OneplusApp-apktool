.class public abstract Lcom/android/settings/utils/VoiceSettingsActivity;
.super Landroid/app/Activity;
.source "VoiceSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceSettingsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected notifyFailure(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/app/VoiceInteractor$AbortVoiceRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 80
    :cond_0
    return-void
.end method

.method protected notifySuccess(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/VoiceSettingsActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/utils/VoiceSettingsActivity$1;-><init>(Lcom/android/settings/utils/VoiceSettingsActivity;Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/VoiceSettingsActivity;->onVoiceSettingInteraction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "VoiceSettingsActivity"

    const-string v1, "Cannot modify settings without voice interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;->finish()V

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract onVoiceSettingInteraction(Landroid/content/Intent;)Z
.end method
