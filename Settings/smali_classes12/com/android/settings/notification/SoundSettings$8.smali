.class Lcom/android/settings/notification/SoundSettings$8;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SoundSettings;

    .line 490
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$400(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 495
    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    .line 494
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/SoundSettings;->access$600(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 496
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 500
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$800(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 502
    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    .line 501
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/SoundSettings;->access$600(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 503
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 507
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$900(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 509
    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/SoundSettings;->access$600(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 510
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 511
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 515
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->access$1000(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 517
    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    .line 516
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/SoundSettings;->access$600(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 518
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 519
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$8;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 523
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method
