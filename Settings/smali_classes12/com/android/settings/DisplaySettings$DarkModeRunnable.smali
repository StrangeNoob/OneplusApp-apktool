.class Lcom/android/settings/DisplaySettings$DarkModeRunnable;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DarkModeRunnable"
.end annotation


# instance fields
.field dValue:Z

.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;

    .line 1537
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1538
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DisplaySettings;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;
    .param p2, "value"    # Z

    .line 1540
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1541
    iput-boolean p2, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1542
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1551
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)V

    .line 1552
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$400(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_THEME_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.skin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1556
    const-string v1, "oem_black_mode"

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1557
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$400(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1559
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForThemes()V

    .line 1561
    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1545
    iput-boolean p1, p0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1546
    return-void
.end method
